	.include "macros/function.inc"
	.include "include/ov109_021D0D80.inc"

	

	.text


	thumb_func_start ov109_021D0D80
ov109_021D0D80: ; 0x021D0D80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02006840
	add r4, r0, #0
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	mov r0, #2
	bl sub_02017DE0
	mov r2, #2
	mov r0, #3
	mov r1, #0x5f
	lsl r2, r2, #0x12
	bl sub_02017FC8
	ldr r1, _021D0EA8 ; =0x00000DCC
	add r0, r5, #0
	mov r2, #0x5f
	bl sub_0200681C
	ldr r2, _021D0EA8 ; =0x00000DCC
	add r6, r0, #0
	mov r1, #0
	bl memset
	add r0, r6, #0
	str r6, [r4, #0x38]
	add r0, #0xcc
	str r4, [r0, #0]
	add r0, r6, #0
	ldr r1, [r4, #0x34]
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r6, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x1c]
	bl sub_0207A268
	str r0, [r6, #0x24]
	mov r0, #0x9a
	mov r1, #0x5f
	bl sub_02006C24
	mov r1, #0x36
	lsl r1, r1, #6
	str r0, [r6, r1]
	mov r0, #8
	mov r1, #0x5f
	bl sub_0201DBEC
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	add r0, r6, #0
	bl ov109_021D1C28
	ldr r0, _021D0EAC ; =ov109_021D1C00
	add r1, r6, #0
	bl sub_02017798
	add r0, r6, #0
	bl ov109_021D29CC
	add r0, r6, #0
	bl ov109_021D2AF0
	mov r4, #0
	add r5, r4, #0
	bl sub_0203608C
	add r1, r6, #0
	add r1, #0xd4
	mov ip, r1
	add r1, r6, #0
	add r1, #0xcc
	ldr r7, [r1, #0]
	mov r3, #1
	ldr r1, [r7, #0xc]
_021D0E36:
	add r2, r3, #0
	lsl r2, r4
	tst r2, r1
	beq _021D0E44
	cmp r4, r0
	beq _021D0E4A
	add r5, r5, #1
_021D0E44:
	add r4, r4, #1
	cmp r4, #5
	blt _021D0E36
_021D0E4A:
	ldr r1, [r7, #8]
	mov r0, #0xa
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021D0EB0 ; =0x021D5C44
	lsl r1, r5, #1
	add r0, r0, r2
	ldrh r0, [r1, r0]
	lsl r1, r0, #0xc
	mov r0, ip
	str r1, [r0, #0x40]
	bl sub_020041FC
	str r0, [r6, #0x1c]
	add r0, r6, #0
	bl ov109_021D31A8
	add r0, r6, #0
	bl ov109_021D32DC
	add r0, r6, #0
	bl ov109_021D3414
	add r0, r6, #0
	bl ov109_021D3584
	add r0, r6, #0
	bl ov109_021D379C
	add r0, r6, #0
	bl ov109_021D3884
	mov r0, #8
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x5f
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D0EA8: .word 0x00000DCC
_021D0EAC: .word ov109_021D1C00
_021D0EB0: .word 0x021D5C44
	thumb_func_end ov109_021D0D80

	thumb_func_start ov109_021D0EB4
ov109_021D0EB4: ; 0x021D0EB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	bl sub_0201E530
	cmp r0, #1
	beq _021D0ECA
	bl GF_AssertFail
_021D0ECA:
	add r0, r4, #0
	bl ov109_021D31E0
	add r0, r4, #0
	bl ov109_021D3318
	add r0, r4, #0
	bl ov109_021D3450
	add r0, r4, #0
	bl ov109_021D35BC
	add r0, r4, #0
	bl ov109_021D37E0
	add r0, r4, #0
	bl ov109_021D38BC
	add r0, r4, #0
	bl ov109_021D2A58
	add r0, r4, #0
	bl ov109_021D2AF8
	add r0, r4, #0
	bl ov109_021D1C68
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_0201DC3C
	mov r0, #0x36
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02006CA8
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x5f
	bl sub_0201807C
	mov r0, #2
	bl sub_02017DF0
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D0EB4

	thumb_func_start ov109_021D0F2C
ov109_021D0F2C: ; 0x021D0F2C
	push {r3, r4, r5, lr}
	bl sub_0200682C
	add r5, r0, #0
	bl ov109_021D294C
	ldr r4, _021D0F6C ; =0x021D5CBC
_021D0F3A:
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _021D0F3A
	cmp r0, #2
	bne _021D0F50
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D0F50:
	add r0, r5, #0
	bl ov109_021D2A68
	add r0, r5, #0
	bl ov109_021D2C38
	add r0, r5, #0
	bl ov109_021D1C90
	add r0, r5, #0
	bl ov109_021D0F70
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D0F6C: .word 0x021D5CBC
	thumb_func_end ov109_021D0F2C

	thumb_func_start ov109_021D0F70
ov109_021D0F70: ; 0x021D0F70
	mov r1, #0
	str r1, [r0, #0x34]
	str r1, [r0, #0x3c]
	bx lr
	thumb_func_end ov109_021D0F70

	thumb_func_start ov109_021D0F78
ov109_021D0F78: ; 0x021D0F78
	push {r4, lr}
	mov r1, #0
	add r4, r0, #0
	bl ov109_021D2634
	mov r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D0F78

	thumb_func_start ov109_021D0F8C
ov109_021D0F8C: ; 0x021D0F8C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D0FAC
	bl sub_0203608C
	cmp r0, #0
	bne _021D0FA4
	mov r0, #2
	b _021D0FA6
_021D0FA4:
	mov r0, #8
_021D0FA6:
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D0FAC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D0F8C

	thumb_func_start ov109_021D0FB0
ov109_021D0FB0: ; 0x021D0FB0
	push {r4, lr}
	add r4, r0, #0
	bl ov109_021D3ACC
	cmp r0, #0
	beq _021D0FC4
	mov r0, #3
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D0FC4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D0FB0

	thumb_func_start ov109_021D0FC8
ov109_021D0FC8: ; 0x021D0FC8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #1
	add r0, sp, #0
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #8
	add r2, sp, #0
	mov r3, #2
	bl sub_0209BEBC
	cmp r0, #1
	bne _021D0FF2
	mov r0, #4
	str r0, [r4, #0]
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_021D0FF2:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov109_021D0FC8

	thumb_func_start ov109_021D0FF8
ov109_021D0FF8: ; 0x021D0FF8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov109_021D3B04
	add r5, r0, #1
	bl sub_02035E18
	cmp r5, r0
	beq _021D100E
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D100E:
	mov r0, #5
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov109_021D0FF8

	thumb_func_start ov109_021D1018
ov109_021D1018: ; 0x021D1018
	push {r4, lr}
	add r4, r0, #0
	bl ov109_021D3B04
	add r0, r0, #1
	str r0, [r4, #0x30]
	add r0, r4, #0
	add r0, #0xd0
	add r2, r4, #0
	ldr r0, [r0, #0]
	mov r1, #0xd
	add r2, #0x30
	mov r3, #4
	bl sub_0209BEBC
	cmp r0, #1
	bne _021D1042
	mov r0, #0
	str r0, [r4, #0x14]
	mov r0, #6
	str r0, [r4, #0]
_021D1042:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D1018

	thumb_func_start ov109_021D1048
ov109_021D1048: ; 0x021D1048
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r3, [r4, #0x14]
	cmp r3, #0
	bne _021D107C
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0, #2]
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0xc
	add r2, sp, #0
	mov r3, #4
	bl sub_0209BEBC
	cmp r0, #1
	bne _021D1076
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
_021D1076:
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021D107C:
	add r2, r4, #0
	add r2, #0xd0
	ldr r2, [r2, #0]
	mov r0, #1
	add r2, #0x42
	ldrh r2, [r2]
	add r1, r0, #0
	add r5, r0, #0
_021D108C:
	add r6, r5, #0
	lsl r6, r0
	tst r6, r2
	beq _021D10BE
	cmp r1, r3
	blt _021D10BC
	add r1, sp, #0
	strh r0, [r1, #2]
	ldr r0, [r4, #0x14]
	add r2, sp, #0
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0xc
	mov r3, #4
	bl sub_0209BEBC
	cmp r0, #1
	bne _021D10C4
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	b _021D10C4
_021D10BC:
	add r1, r1, #1
_021D10BE:
	add r0, r0, #1
	cmp r0, #5
	blt _021D108C
_021D10C4:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	blt _021D10D0
	mov r0, #7
	str r0, [r4, #0]
_021D10D0:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov109_021D1048

	thumb_func_start ov109_021D10D8
ov109_021D10D8: ; 0x021D10D8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #8
	add r0, sp, #0
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r2, sp, #0
	mov r3, #2
	bl sub_0209BEBC
	cmp r0, #1
	bne _021D10FA
	mov r0, #0xa
	str r0, [r4, #0]
_021D10FA:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov109_021D10D8

	thumb_func_start ov109_021D1100
ov109_021D1100: ; 0x021D1100
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xd0
	mov r2, #0
	ldr r0, [r0, #0]
	mov r1, #9
	add r3, r2, #0
	bl sub_0209BEBC
	cmp r0, #1
	bne _021D1120
	mov r0, #0
	str r0, [r4, #0x10]
	mov r1, #9
	str r1, [r4, #0]
	pop {r4, pc}
_021D1120:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D1100

	thumb_func_start ov109_021D1124
ov109_021D1124: ; 0x021D1124
	push {r4, lr}
	mov r1, #8
	add r4, r0, #0
	bl ov109_021D3AB8
	cmp r0, #1
	bne _021D114A
	ldr r0, [r4, #0x30]
	cmp r0, #2
	bge _021D113C
	bl GF_AssertFail
_021D113C:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bne _021D1146
	bl GF_AssertFail
_021D1146:
	mov r0, #0xa
	str r0, [r4, #0]
_021D114A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D1124

	thumb_func_start ov109_021D1150
ov109_021D1150: ; 0x021D1150
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xca
	bl sub_020364F0
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D1150

	thumb_func_start ov109_021D1164
ov109_021D1164: ; 0x021D1164
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xca
	bl sub_02036540
	cmp r0, #0
	beq _021D1176
	mov r0, #0xc
	str r0, [r4, #0]
_021D1176:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D1164

	thumb_func_start ov109_021D117C
ov109_021D117C: ; 0x021D117C
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0xcc
	add r0, #0xd0
	ldr r2, [r2, #0]
	ldr r0, [r0, #0]
	mov r1, #0xe
	add r2, r2, #4
	mov r3, #4
	bl sub_0209BEBC
	cmp r0, #0
	beq _021D119C
	mov r0, #0xd
	str r0, [r4, #0]
_021D119C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D117C

	thumb_func_start ov109_021D11A0
ov109_021D11A0: ; 0x021D11A0
	push {r4, lr}
	add r4, r0, #0
	mov r2, #0x59
	ldr r1, [r4, #0x24]
	mov r0, #0x83
	lsl r2, r2, #4
	bl sub_0203597C
	cmp r0, #0
	beq _021D11B8
	mov r0, #0xe
	str r0, [r4, #0]
_021D11B8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D11A0

	thumb_func_start ov109_021D11BC
ov109_021D11BC: ; 0x021D11BC
	push {r4, lr}
	add r4, r0, #0
	bl ov109_021D3BC4
	ldr r1, [r4, #0x30]
	cmp r1, r0
	bne _021D11FE
	add r0, r4, #0
	bl ov109_021D3CD8
	cmp r0, #1
	bne _021D11EA
	add r0, r4, #0
	add r0, #0xd0
	mov r2, #0
	ldr r0, [r0, #0]
	mov r1, #0x10
	add r3, r2, #0
	bl sub_0209BEBC
	mov r0, #0x2e
	str r0, [r4, #0]
	b _021D11FE
_021D11EA:
	add r0, r4, #0
	add r0, #0xd0
	mov r2, #0
	ldr r0, [r0, #0]
	mov r1, #0x11
	add r3, r2, #0
	bl sub_0209BEBC
	mov r0, #0xf
	str r0, [r4, #0]
_021D11FE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D11BC

	thumb_func_start ov109_021D1204
ov109_021D1204: ; 0x021D1204
	push {r4, lr}
	add r4, r0, #0
	bl ov109_021D3D3C
	cmp r0, #1
	bne _021D1216
	mov r0, #0x2e
	str r0, [r4, #0]
	b _021D1226
_021D1216:
	add r0, r4, #0
	bl ov109_021D3D1C
	ldr r1, [r4, #0x30]
	cmp r1, r0
	bne _021D1226
	mov r0, #0x10
	str r0, [r4, #0]
_021D1226:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D1204

	thumb_func_start ov109_021D122C
ov109_021D122C: ; 0x021D122C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r1, #0x18
	bl ov109_021D3A94
	add r7, r0, #0
	ldr r0, [r6, #0x2c]
	ldr r2, _021D12A8 ; =0x021D5C44
	str r0, [r7, #0x10]
	ldr r1, [r6, #0x30]
	mov r0, #0xa
	add r3, r1, #0
	str r1, [r7, #0x14]
	mul r3, r0
	ldr r0, [r6, #0x2c]
	mov r4, #0
	lsl r1, r0, #1
	add r0, r2, r3
	ldrh r0, [r1, r0]
	add r5, r6, #0
	str r0, [r7, #4]
_021D1256:
	add r0, r6, #0
	add r1, r4, #0
	bl ov109_021D3B54
	cmp r0, #0
	beq _021D127E
	add r0, r4, #0
	bl sub_02032EE8
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1, #0]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x84
	add r1, #0x98
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_02025EF4
_021D127E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _021D1256
	ldr r0, [r7, #4]
	mov r2, #1
	lsl r1, r0, #0xc
	mov r0, #0x45
	lsl r0, r0, #2
	str r1, [r6, r0]
	mov r0, #0x11
	str r0, [r6, #0]
	ldr r1, _021D12AC ; =0x000004BA
	mov r0, #0xf
	bl sub_02004550
	add r0, r6, #0
	bl ov109_021D2788
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D12A8: .word 0x021D5C44
_021D12AC: .word 0x000004BA
	thumb_func_end ov109_021D122C

	thumb_func_start ov109_021D12B0
ov109_021D12B0: ; 0x021D12B0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #0xc]
	sub r1, r1, #1
	str r1, [r5, #0xc]
	cmp r1, #0
	ble _021D12C6
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D12C6:
	mov r1, #0xf
	str r1, [r5, #0xc]
	bl ov109_021D3AB4
	add r4, r0, #0
	ldr r1, [r4, #0x14]
	mov r0, #0xa
	add r3, r1, #0
	ldr r2, [r4, #0x10]
	mul r3, r0
	ldr r0, _021D1330 ; =0x021D5C80
	lsl r1, r2, #1
	add r0, r0, r3
	ldrh r0, [r1, r0]
	str r0, [sp]
	ldr r0, [r4, #4]
	str r0, [sp, #4]
	mov r0, #0x2d
	lsl r0, r0, #4
	add r1, r5, r0
	mov r0, #0xb0
	mul r0, r2
	add r0, r1, r0
	str r0, [sp, #8]
	lsl r1, r2, #2
	add r1, r5, r1
	add r1, #0x72
	ldrh r1, [r1]
	ldr r3, [r4, #0]
	add r0, r5, #0
	bl ov109_021D2FE0
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	bl _s32_div_f
	str r1, [r4, #0x10]
	ldr r0, [r4, #0]
	add r1, r0, #1
	str r1, [r4, #0]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	bne _021D1328
	mov r0, #0
	str r0, [r5, #0xc]
	mov r0, #0x12
	str r0, [r5, #0]
_021D1328:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D1330: .word 0x021D5C80
	thumb_func_end ov109_021D12B0

	thumb_func_start ov109_021D1334
ov109_021D1334: ; 0x021D1334
	push {r3, r4, r5, r6}
	mov r1, #0x19
	mov r3, #0
	lsl r1, r1, #4
	add r6, r0, r1
	ldr r5, [r0, #0x30]
	add r4, r3, #0
	sub r1, #0x48
_021D1344:
	ldr r2, [r6, r1]
	cmp r2, #1
	bne _021D134C
	add r4, r4, #1
_021D134C:
	add r3, r3, #1
	add r6, #0xb0
	cmp r3, r5
	blt _021D1344
	cmp r4, r5
	bne _021D1362
	mov r1, #0x13
	str r1, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021D1362:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov109_021D1334

	thumb_func_start ov109_021D1368
ov109_021D1368: ; 0x021D1368
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x1e
	ble _021D138C
	mov r0, #0
	str r0, [r4, #0xc]
	bl sub_0203608C
	cmp r0, #0
	bne _021D1388
	mov r0, #0x14
	str r0, [r4, #0]
	b _021D138C
_021D1388:
	mov r0, #0x15
	str r0, [r4, #0]
_021D138C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D1368

	thumb_func_start ov109_021D1390
ov109_021D1390: ; 0x021D1390
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #4
	add r0, sp, #0
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #8
	add r2, sp, #0
	mov r3, #2
	bl sub_0209BEBC
	cmp r0, #1
	bne _021D13B4
	mov r0, #0x16
	str r0, [r4, #0]
_021D13B4:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D1390

	thumb_func_start ov109_021D13BC
ov109_021D13BC: ; 0x021D13BC
	push {r4, lr}
	mov r1, #4
	add r4, r0, #0
	bl ov109_021D3AB8
	cmp r0, #1
	bne _021D13D2
	mov r0, #0x16
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D13D2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D13BC

	thumb_func_start ov109_021D13D8
ov109_021D13D8: ; 0x021D13D8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xca
	bl sub_020364F0
	mov r0, #0x17
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D13D8

	thumb_func_start ov109_021D13EC
ov109_021D13EC: ; 0x021D13EC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xca
	bl sub_02036540
	cmp r0, #0
	beq _021D13FE
	mov r0, #0x18
	str r0, [r4, #0]
_021D13FE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D13EC

	thumb_func_start ov109_021D1404
ov109_021D1404: ; 0x021D1404
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl ov109_021D3990
	add r0, r4, #0
	bl ov109_021D3684
	mov r0, #0x19
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D1404

	thumb_func_start ov109_021D141C
ov109_021D141C: ; 0x021D141C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x5f
	bge _021D142E
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D142E:
	ldr r0, [r5, #0x30]
	mov r4, #0
	cmp r0, #0
	ble _021D1446
_021D1436:
	add r0, r5, #0
	add r1, r4, #0
	bl ov109_021D28A0
	ldr r0, [r5, #0x30]
	add r4, r4, #1
	cmp r4, r0
	blt _021D1436
_021D1446:
	mov r0, #0
	str r0, [r5, #0xc]
	mov r1, #0x1a
	str r1, [r5, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D141C

	thumb_func_start ov109_021D1450
ov109_021D1450: ; 0x021D1450
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203608C
	mov r0, #0x1b
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D1450

	thumb_func_start ov109_021D1460
ov109_021D1460: ; 0x021D1460
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	bl ov109_021D3A14
	cmp r0, #1
	bne _021D1482
	add r0, r4, #0
	bl ov109_021D35F4
	cmp r0, #0
	bne _021D1482
	mov r0, #0x1d
	str r0, [r4, #0]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D1482:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021D1498
	add r0, r4, #0
	bl ov109_021D35F4
	cmp r0, #0
	bne _021D1498
	add r0, r4, #0
	bl ov109_021D35CC
_021D1498:
	add r0, r4, #0
	bl ov109_021D37F0
	cmp r0, #0
	bne _021D14C6
	add r0, r4, #0
	bl ov109_021D29AC
	cmp r0, #1
	bne _021D14C6
	add r0, r4, #0
	bl ov109_021D35F4
	cmp r0, #0
	bne _021D14C0
	add r0, r4, #0
	bl ov109_021D35CC
	mov r0, #1
	str r0, [r4, #0x38]
_021D14C0:
	add r0, r4, #0
	bl ov109_021D37FC
_021D14C6:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021D14E8
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	add r2, r4, #0
	ldr r0, [r0, #0x34]
	mov r1, #0xa
	add r2, #0x38
	mov r3, #1
	bl sub_0209BEBC
	cmp r0, #1
	bne _021D14E8
	mov r0, #0
	str r0, [r4, #0x38]
_021D14E8:
	add r0, r4, #0
	mov r1, #0x4b
	ldr r2, [r4, #8]
	add r0, #0xd4
	lsl r1, r1, #2
	cmp r2, r1
	ldr r2, [r0, #0x48]
	bge _021D1508
	mov r1, #0xe
	add r2, #0xbf
	lsl r1, r1, #0xc
	str r2, [r0, #0x48]
	cmp r2, r1
	blt _021D1516
	str r1, [r0, #0x48]
	b _021D1516
_021D1508:
	mov r1, #1
	sub r2, #0xbf
	lsl r1, r1, #0xe
	str r2, [r0, #0x48]
	cmp r2, r1
	bge _021D1516
	str r1, [r0, #0x48]
_021D1516:
	ldr r5, [r0, #0x48]
	add r0, r4, #0
	bl ov109_021D35E8
	cmp r0, #1
	bne _021D152E
	add r0, r4, #0
	add r0, #0xd4
	lsl r1, r5, #1
	bl ov109_021D2AE4
	b _021D1536
_021D152E:
	add r0, r4, #0
	add r1, r5, #0
	bl ov109_021D39FC
_021D1536:
	ldr r0, [r4, #8]
	add r2, sp, #0
	mov r1, #0x47
	strh r0, [r2, #2]
	lsl r1, r1, #2
	ldr r3, [r4, r1]
	sub r1, #0xc
	asr r0, r3, #0xb
	lsr r0, r0, #0x14
	add r0, r3, r0
	asr r0, r0, #0xc
	strh r0, [r2, #4]
	ldr r1, [r4, r1]
	add r4, #0xd0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r2, #6]
	ldr r0, [r4, #0]
	mov r1, #0xb
	add r2, sp, #0
	mov r3, #8
	bl sub_0209BEBC
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov109_021D1460

	thumb_func_start ov109_021D1570
ov109_021D1570: ; 0x021D1570
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	cmp r0, #1
	bne _021D159A
	add r0, r4, #0
	add r0, #0x5e
	ldrh r0, [r0]
	lsl r1, r0, #0xc
	mov r0, #0x11
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x5c
	ldrsh r1, [r4, r0]
	add r0, #0xc0
	lsl r1, r1, #0xc
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x5a
	ldrh r0, [r0]
	str r0, [r4, #8]
_021D159A:
	add r0, r4, #0
	bl ov109_021D3A14
	cmp r0, #1
	bne _021D15B6
	add r0, r4, #0
	bl ov109_021D35F4
	cmp r0, #0
	bne _021D15B6
	mov r0, #0x1d
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D15B6:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021D15CC
	add r0, r4, #0
	bl ov109_021D35F4
	cmp r0, #0
	bne _021D15CC
	add r0, r4, #0
	bl ov109_021D35CC
_021D15CC:
	add r0, r4, #0
	bl ov109_021D37F0
	cmp r0, #0
	bne _021D15FA
	add r0, r4, #0
	bl ov109_021D29AC
	cmp r0, #1
	bne _021D15FA
	add r0, r4, #0
	bl ov109_021D35F4
	cmp r0, #0
	bne _021D15F4
	add r0, r4, #0
	bl ov109_021D35CC
	mov r0, #1
	str r0, [r4, #0x38]
_021D15F4:
	add r0, r4, #0
	bl ov109_021D37FC
_021D15FA:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021D161C
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	add r2, r4, #0
	ldr r0, [r0, #0x34]
	mov r1, #0xa
	add r2, #0x38
	mov r3, #1
	bl sub_0209BEBC
	cmp r0, #1
	bne _021D161C
	mov r0, #0
	str r0, [r4, #0x38]
_021D161C:
	add r0, r4, #0
	bl ov109_021D35E8
	cmp r0, #1
	bne _021D1638
	mov r1, #0x47
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r0, #0xd4
	lsl r1, r1, #1
	bl ov109_021D2AE4
	b _021D1644
_021D1638:
	mov r1, #0x47
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov109_021D39FC
_021D1644:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D1570

	thumb_func_start ov109_021D1648
ov109_021D1648: ; 0x021D1648
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ov109_021D3990
	add r0, r4, #0
	bl ov109_021D2DF8
	str r0, [r4, #0x28]
	bl sub_0203608C
	ldr r1, [r4, #0x28]
	ldr r1, [r1, #0xc]
	cmp r1, r0
	bne _021D166A
	mov r0, #0x1e
	b _021D166C
_021D166A:
	mov r0, #0x1f
_021D166C:
	str r0, [r4, #0]
	ldr r0, _021D1678 ; =0x000005F1
	bl sub_02005748
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_021D1678: .word 0x000005F1
	thumb_func_end ov109_021D1648

	thumb_func_start ov109_021D167C
ov109_021D167C: ; 0x021D167C
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	lsl r1, r1, #0xe
	bl ov109_021D39FC
	add r0, r4, #0
	bl ov109_021D2DF8
	str r0, [r4, #0x28]
	bl sub_0203608C
	ldr r1, [r4, #0x28]
	ldr r1, [r1, #0xc]
	cmp r1, r0
	beq _021D16A0
	mov r0, #0x1f
	str r0, [r4, #0]
_021D16A0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D167C

	thumb_func_start ov109_021D16A4
ov109_021D16A4: ; 0x021D16A4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	ldr r0, [r6, #0x28]
	ldr r2, [r6, #0x30]
	ldr r1, [r0, #0x1c]
	ldr r3, [r6, #0x2c]
	mov r0, #0xa
	mul r0, r2
	ldr r4, _021D171C ; =0x021D5C80
	lsl r2, r3, #1
	add r0, r4, r0
	ldrh r0, [r2, r0]
	mov r5, #1
	lsl r5, r5, #0xe
	lsl r4, r0, #0xc
	str r1, [sp]
	sub r2, r4, r1
	bpl _021D16D2
	mov r0, #0x5a
	lsl r0, r0, #0xe
	add r0, r4, r0
	sub r2, r0, r1
_021D16D2:
	mov r0, #1
	lsl r0, r0, #0x10
	cmp r2, r0
	bgt _021D16DC
	asr r5, r5, #1
_021D16DC:
	cmp r2, r5
	bge _021D16E2
	add r5, r2, #0
_021D16E2:
	add r0, r6, #0
	add r0, #0xd4
	add r1, r5, #0
	bl ov109_021D2AE4
	add r0, r6, #0
	add r1, r5, #0
	bl ov109_021D2D44
	add r0, sp, #0
	add r1, r5, #0
	bl ov109_021D39D4
	ldr r1, [sp]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	asr r0, r4, #0xb
	lsr r0, r0, #0x14
	add r0, r4, r0
	asr r0, r0, #0xc
	cmp r1, r0
	bne _021D1716
	mov r0, #0x20
	str r0, [r6, #0]
_021D1716:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D171C: .word 0x021D5C80
	thumb_func_end ov109_021D16A4

	thumb_func_start ov109_021D1720
ov109_021D1720: ; 0x021D1720
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xca
	bl sub_020364F0
	mov r0, #0x21
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D1720

	thumb_func_start ov109_021D1734
ov109_021D1734: ; 0x021D1734
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xca
	bl sub_02036540
	cmp r0, #0
	beq _021D1754
	bl sub_0203608C
	cmp r0, #0
	bne _021D1750
	mov r0, #0x22
	str r0, [r4, #0]
	b _021D1754
_021D1750:
	mov r0, #0x23
	str r0, [r4, #0]
_021D1754:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D1734

	thumb_func_start ov109_021D1758
ov109_021D1758: ; 0x021D1758
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	mov r7, #0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	add r0, sp, #0
	strh r1, [r0]
	str r7, [r5, #0x20]
	ldr r0, [r5, #0x30]
	cmp r0, #0
	ble _021D17C6
	mov r0, #0x2d
	lsl r0, r0, #4
	add r6, r5, #0
	add r4, r5, r0
	add r6, #0x20
_021D1784:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _021D178E
	bl GF_AssertFail
_021D178E:
	ldr r1, [r4, #0x1c]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	ldr r1, [r4, #0x10]
	asr r0, r0, #0xc
	lsl r2, r1, #1
	add r1, sp, #0
	add r1, r1, r2
	strh r0, [r1, #4]
	ldr r1, [r4, #0x1c]
	ldr r2, [r5, #0x30]
	add r0, r5, #0
	bl ov109_021D3C08
	cmp r0, #1
	bne _021D17BC
	ldr r2, [r4, #0xc]
	mov r1, #1
	ldr r0, [r6, #0]
	lsl r1, r2
	orr r0, r1
	str r0, [r6, #0]
_021D17BC:
	ldr r0, [r5, #0x30]
	add r7, r7, #1
	add r4, #0xb0
	cmp r7, r0
	blt _021D1784
_021D17C6:
	ldr r1, [r5, #0x20]
	add r0, sp, #0
	strh r1, [r0, #2]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0xf
	add r2, sp, #0
	mov r3, #0x10
	bl sub_0209BEBC
	cmp r0, #1
	bne _021D17E4
	mov r0, #0x24
	str r0, [r5, #0]
_021D17E4:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov109_021D1758

	thumb_func_start ov109_021D17EC
ov109_021D17EC: ; 0x021D17EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	cmp r0, #1
	bne _021D1852
	add r0, r5, #0
	add r0, #0x60
	ldrh r0, [r0]
	add r7, r5, #0
	add r7, #0x60
	lsl r1, r0, #0xc
	mov r0, #0x11
	lsl r0, r0, #4
	str r1, [r5, r0]
	ldr r0, [r5, #0x30]
	mov r6, #0
	cmp r0, #0
	ble _021D1836
	mov r0, #0x2d
	lsl r0, r0, #4
	add r4, r5, r0
_021D1816:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _021D1820
	bl GF_AssertFail
_021D1820:
	ldr r0, [r4, #0x10]
	add r6, r6, #1
	lsl r0, r0, #1
	add r0, r7, r0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0xc
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0x30]
	add r4, #0xb0
	cmp r6, r0
	blt _021D1816
_021D1836:
	ldrh r0, [r7, #2]
	str r0, [r5, #0x20]
	add r0, r5, #0
	bl ov109_021D2A68
	add r0, r5, #0
	bl ov109_021D2C38
	add r0, r5, #0
	bl ov109_021D2DF8
	str r0, [r5, #0x28]
	mov r0, #0x24
	str r0, [r5, #0]
_021D1852:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov109_021D17EC

	thumb_func_start ov109_021D1858
ov109_021D1858: ; 0x021D1858
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	mov r6, #0
	ldr r4, [r0, #0x10]
	ldr r0, [r5, #0x30]
	cmp r0, #0
	ble _021D1896
_021D1868:
	mov r0, #0xb0
	mul r0, r4
	add r1, r5, r0
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r3, [r1, r0]
	add r0, r5, #0
	lsl r1, r3, #2
	add r1, r5, r1
	add r1, #0x98
	ldr r1, [r1, #0]
	add r2, r6, #0
	bl ov109_021D2874
	ldr r7, [r5, #0x30]
	add r0, r4, #1
	add r1, r7, #0
	bl _s32_div_f
	add r6, r6, #1
	add r4, r1, #0
	cmp r6, r7
	blt _021D1868
_021D1896:
	mov r0, #0
	str r0, [r5, #0xc]
	mov r1, #0x25
	str r1, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov109_021D1858

	thumb_func_start ov109_021D18A0
ov109_021D18A0: ; 0x021D18A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x78
	bge _021D18B2
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D18B2:
	mov r4, #0
	str r4, [r5, #0xc]
	ldr r0, [r5, #0x30]
	cmp r0, #0
	ble _021D18CC
_021D18BC:
	add r0, r5, #0
	add r1, r4, #0
	bl ov109_021D28A0
	ldr r0, [r5, #0x30]
	add r4, r4, #1
	cmp r4, r0
	blt _021D18BC
_021D18CC:
	ldr r2, [r5, #0x28]
	add r0, r5, #0
	ldr r2, [r2, #0xc]
	mov r1, #2
	lsl r2, r2, #2
	add r2, r5, r2
	add r2, #0x84
	ldr r2, [r2, #0]
	bl ov109_021D268C
	ldr r0, _021D18F0 ; =0x00000486
	bl sub_02006150
	mov r0, #0x26
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D18F0: .word 0x00000486
	thumb_func_end ov109_021D18A0

	thumb_func_start ov109_021D18F4
ov109_021D18F4: ; 0x021D18F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0x78
	bge _021D1904
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _021D1914
_021D1904:
	bl sub_020061E4
	cmp r0, #0
	bne _021D1914
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0x27
	str r0, [r4, #0]
_021D1914:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D18F4

	thumb_func_start ov109_021D1918
ov109_021D1918: ; 0x021D1918
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov109_021D38F8
	ldr r0, [r5, #0x28]
	ldr r2, [r5, #0x20]
	ldr r0, [r0, #0xc]
	mov r1, #1
	lsl r1, r0
	add r0, r2, #0
	tst r0, r1
	bne _021D1938
	mov r0, #0x2b
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D1938:
	ldr r0, [r5, #0x30]
	lsl r6, r0, #3
	ldr r0, _021D19A0 ; =0x021D5BE4
	ldr r4, [r0, r6]
	ldr r0, _021D19A4 ; =0x021D5BE8
	ldr r7, [r0, r6]
	bl sub_0201D2E8
	sub r1, r7, r4
	add r1, r1, #1
	bl _u32_div_f
	ldr r0, _021D19A0 ; =0x021D5BE4
	add r4, r4, r1
	ldr r0, [r0, r6]
	cmp r4, r0
	bhs _021D195E
	add r4, r0, #0
	b _021D1964
_021D195E:
	cmp r4, r7
	bls _021D1964
	add r4, r7, #0
_021D1964:
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	bl ov109_021D2714
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x1c]
	bl sub_0207D990
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	mov r2, #1
	mov r3, #0x5f
	bl sub_0207D570
	add r4, r0, #0
	ldr r0, _021D19A8 ; =0x00000486
	bl sub_02006150
	cmp r4, #1
	bne _021D1996
	mov r0, #0x28
	b _021D1998
_021D1996:
	mov r0, #0x29
_021D1998:
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D19A0: .word 0x021D5BE4
_021D19A4: .word 0x021D5BE8
_021D19A8: .word 0x00000486
	thumb_func_end ov109_021D1918

	thumb_func_start ov109_021D19AC
ov109_021D19AC: ; 0x021D19AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0x78
	bge _021D19BC
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _021D19CC
_021D19BC:
	bl sub_020061E4
	cmp r0, #0
	bne _021D19CC
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0x2b
	str r0, [r4, #0]
_021D19CC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D19AC

	thumb_func_start ov109_021D19D0
ov109_021D19D0: ; 0x021D19D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0x78
	bge _021D19E0
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _021D19F8
_021D19E0:
	bl sub_020061E4
	cmp r0, #0
	bne _021D19F8
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0x28
	str r0, [r4, #0]
	add r0, r4, #0
	mov r1, #4
	bl ov109_021D2634
_021D19F8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D19D0

	thumb_func_start ov109_021D19FC
ov109_021D19FC: ; 0x021D19FC
	ldr r1, [r0, #0xc]
	cmp r1, #0x78
	bge _021D1A08
	add r1, r1, #1
	str r1, [r0, #0xc]
	b _021D1A10
_021D1A08:
	mov r1, #0
	str r1, [r0, #0xc]
	mov r1, #0x2b
	str r1, [r0, #0]
_021D1A10:
	mov r0, #0
	bx lr
	thumb_func_end ov109_021D19FC

	thumb_func_start ov109_021D1A14
ov109_021D1A14: ; 0x021D1A14
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5f
	mov r1, #0x11
	bl sub_0202C244
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	mov r2, #4
	ldr r0, [r0, #0x2c]
	bl sub_0202B758
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	mov r1, #0x77
	ldr r0, [r0, #0x28]
	bl sub_0202CF28
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	mov r1, #0x2d
	ldr r0, [r0, #0x28]
	bl sub_0202CFEC
	add r0, r4, #0
	mov r1, #0xb
	bl ov109_021D2634
	mov r0, #0xca
	bl sub_020364F0
	ldr r0, _021D1A68 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #8]
	mov r0, #0x2c
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D1A68: .word 0x021BF6DC
	thumb_func_end ov109_021D1A14

	thumb_func_start ov109_021D1A6C
ov109_021D1A6C: ; 0x021D1A6C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xca
	bl sub_02036540
	cmp r0, #0
	beq _021D1A9C
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	ldr r1, [r1, #0xc]
	bl ov109_021D3B70
	add r0, r4, #4
	bl sub_02038ED4
	ldr r0, _021D1AA0 ; =0x00000CA8
	mov r1, #0xa
	add r0, r4, r0
	bl sub_0200E7FC
	ldr r1, _021D1AA4 ; =0x00000DC8
	str r0, [r4, r1]
	mov r0, #0x2d
	str r0, [r4, #0]
_021D1A9C:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D1AA0: .word 0x00000CA8
_021D1AA4: .word 0x00000DC8
	thumb_func_end ov109_021D1A6C

	thumb_func_start ov109_021D1AA8
ov109_021D1AA8: ; 0x021D1AA8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	mov r1, #2
	ldr r0, [r0, #0x1c]
	add r2, r4, #4
	bl sub_02038EDC
	cmp r0, #0
	beq _021D1AD0
	ldr r0, _021D1AD4 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #8]
	ldr r0, _021D1AD8 ; =0x00000DC8
	ldr r0, [r4, r0]
	bl sub_0200EBA0
	mov r0, #0x30
	str r0, [r4, #0]
_021D1AD0:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D1AD4: .word 0x021BF6DC
_021D1AD8: .word 0x00000DC8
	thumb_func_end ov109_021D1AA8

	thumb_func_start ov109_021D1ADC
ov109_021D1ADC: ; 0x021D1ADC
	push {r4, lr}
	mov r1, #0xc
	add r4, r0, #0
	bl ov109_021D2634
	mov r0, #0x2f
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D1ADC

	thumb_func_start ov109_021D1AF0
ov109_021D1AF0: ; 0x021D1AF0
	ldr r1, [r0, #0xc]
	add r1, r1, #1
	str r1, [r0, #0xc]
	cmp r1, #0x78
	blt _021D1B06
	mov r1, #0
	str r1, [r0, #0xc]
	mov r1, #0x30
	str r1, [r0, #0]
	mov r0, #1
	bx lr
_021D1B06:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov109_021D1AF0

	thumb_func_start ov109_021D1B0C
ov109_021D1B0C: ; 0x021D1B0C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021D1B1C
	mov r0, #0xca
	bl sub_020364F0
_021D1B1C:
	add r0, r4, #0
	mov r1, #0xa
	bl ov109_021D2634
	mov r0, #0x31
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D1B0C

	thumb_func_start ov109_021D1B2C
ov109_021D1B2C: ; 0x021D1B2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021D1B58
	mov r0, #0xca
	bl sub_02036540
	cmp r0, #0
	beq _021D1B86
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
	mov r0, #1
	bl sub_02037B58
	bl sub_02036AC4
	mov r0, #0x32
	str r0, [r4, #0]
	b _021D1B86
_021D1B58:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x78
	blt _021D1B86
	mov r0, #0
	add r1, r4, #0
	str r0, [r4, #0xc]
	add r1, #0xd0
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x3c]
	cmp r1, #0
	bne _021D1B82
	add r1, r0, #0
	bl sub_020388F4
	mov r0, #1
	bl sub_02037B58
	bl sub_02036AC4
_021D1B82:
	mov r0, #0x32
	str r0, [r4, #0]
_021D1B86:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D1B2C

	thumb_func_start ov109_021D1B8C
ov109_021D1B8C: ; 0x021D1B8C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035E18
	cmp r0, #1
	bgt _021D1BA0
	mov r0, #0x33
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D1BA0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D1B8C

	thumb_func_start ov109_021D1BA4
ov109_021D1BA4: ; 0x021D1BA4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #8
	mov r1, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x5f
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	ldr r5, [r4, #0x1c]
	bl sub_020041FC
	cmp r5, r0
	beq _021D1BD8
	lsl r1, r5, #0x10
	mov r0, #4
	lsr r1, r1, #0x10
	mov r2, #1
	bl sub_02004550
_021D1BD8:
	mov r0, #0x34
	str r0, [r4, #0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov109_021D1BA4

	thumb_func_start ov109_021D1BE4
ov109_021D1BE4: ; 0x021D1BE4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D1BF8
	mov r0, #0x35
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D1BF8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D1BE4

	thumb_func_start ov109_021D1BFC
ov109_021D1BFC: ; 0x021D1BFC
	mov r0, #2
	bx lr
	thumb_func_end ov109_021D1BFC

	thumb_func_start ov109_021D1C00
ov109_021D1C00: ; 0x021D1C00
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201DCAC
	bl sub_0200C800
	ldr r0, _021D1C20 ; =0x00000D9C
	ldr r0, [r4, r0]
	bl sub_02003694
	ldr r0, _021D1C24 ; =0x00000D84
	ldr r0, [r4, r0]
	bl sub_0201C2B8
	pop {r4, pc}
	nop
_021D1C20: .word 0x00000D9C
_021D1C24: .word 0x00000D84
	thumb_func_end ov109_021D1C00

	thumb_func_start ov109_021D1C28
ov109_021D1C28: ; 0x021D1C28
	push {r4, lr}
	add r4, r0, #0
	bl ov109_021D1CF0
	add r0, r4, #0
	bl ov109_021D1E1C
	add r0, r4, #0
	bl ov109_021D28C4
	add r0, r4, #0
	bl ov109_021D1EC8
	add r0, r4, #0
	bl ov109_021D22B0
	add r0, r4, #0
	bl ov109_021D2368
	add r0, r4, #0
	bl ov109_021D2004
	add r0, r4, #0
	bl ov109_021D24F8
	add r0, r4, #0
	bl ov109_021D2408
	add r0, r4, #0
	bl ov109_021D1D10
	pop {r4, pc}
	thumb_func_end ov109_021D1C28

	thumb_func_start ov109_021D1C68
ov109_021D1C68: ; 0x021D1C68
	push {r4, lr}
	add r4, r0, #0
	bl ov109_021D1DC8
	add r0, r4, #0
	bl ov109_021D24C0
	add r0, r4, #0
	bl ov109_021D25E8
	add r0, r4, #0
	bl ov109_021D2204
	add r0, r4, #0
	bl ov109_021D2308
	add r0, r4, #0
	bl ov109_021D293C
	pop {r4, pc}
	thumb_func_end ov109_021D1C68

	thumb_func_start ov109_021D1C90
ov109_021D1C90: ; 0x021D1C90
	push {r4, lr}
	add r4, r0, #0
	bl sub_020241B4
	bl sub_020203EC
	mov r0, #0
	ldr r2, _021D1CE4 ; =0xFFFFF000
	add r1, r0, #0
	add r3, r0, #0
	bl NNS_G3dGlbLightVector
	ldr r1, _021D1CE8 ; =0x00007FFF
	mov r0, #0
	bl NNS_G3dGlbLightColor
	ldr r0, _021D1CE8 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl NNS_G3dGlbMaterialColorDiffAmb
	ldr r0, _021D1CE8 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl NNS_G3dGlbMaterialColorSpecEmi
	add r0, r4, #0
	bl ov109_021D2AC8
	add r0, r4, #0
	bl ov109_021D2CCC
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	ldr r0, _021D1CEC ; =0x00000D98
	ldr r0, [r4, r0]
	bl sub_0200C7EC
	pop {r4, pc}
	nop
_021D1CE4: .word 0xFFFFF000
_021D1CE8: .word 0x00007FFF
_021D1CEC: .word 0x00000D98
	thumb_func_end ov109_021D1C90

	thumb_func_start ov109_021D1CF0
ov109_021D1CF0: ; 0x021D1CF0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D1D0C ; =0x021D5BBC
	add r3, sp, #0
	mov r2, #5
_021D1CFA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D1CFA
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D1D0C: .word 0x021D5BBC
	thumb_func_end ov109_021D1CF0

	thumb_func_start ov109_021D1D10
ov109_021D1D10: ; 0x021D1D10
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r0, _021D1DC0 ; =0x04000008
	mov r4, #3
	ldrh r1, [r0]
	mov r2, #1
	mov r3, #2
	bic r1, r4
	orr r1, r2
	strh r1, [r0]
	ldrh r1, [r0, #2]
	mov r5, #3
	bic r1, r4
	strh r1, [r0, #2]
	ldrh r1, [r0, #4]
	bic r1, r4
	orr r1, r3
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	bic r1, r4
	orr r1, r5
	strh r1, [r0, #6]
	ldr r1, _021D1DC4 ; =0x04001008
	ldrh r6, [r1]
	bic r6, r4
	strh r6, [r1]
	ldrh r6, [r1, #2]
	bic r6, r4
	orr r2, r6
	strh r2, [r1, #2]
	ldrh r2, [r1, #4]
	bic r2, r4
	orr r2, r3
	strh r2, [r1, #4]
	ldrh r2, [r1, #6]
	bic r2, r4
	orr r2, r5
	strh r2, [r1, #6]
	mov r1, #0xa
	str r1, [sp]
	add r0, #0x48
	mov r1, #4
	mov r2, #0x28
	mov r3, #0xb
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D1DC0: .word 0x04000008
_021D1DC4: .word 0x04001008
	thumb_func_end ov109_021D1D10

	thumb_func_start ov109_021D1DC8
ov109_021D1DC8: ; 0x021D1DC8
	push {r3, lr}
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
	mov r0, #0x10
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
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF74
	pop {r3, pc}
	thumb_func_end ov109_021D1DC8

	thumb_func_start ov109_021D1E1C
ov109_021D1E1C: ; 0x021D1E1C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	ldr r0, _021D1EAC ; =0x04000060
	ldr r1, _021D1EB0 ; =0xFFFFCFFD
	ldrh r2, [r0]
	and r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	add r2, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _021D1EB4 ; =0x0000CFFB
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
	add r3, r4, #0
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	mov r0, #0xda
	ldr r1, _021D1EB8 ; =0x00001084
	mov r2, #0
	lsl r0, r0, #4
_021D1E6A:
	add r2, r2, #1
	strh r1, [r3, r0]
	add r3, r3, #2
	cmp r2, #8
	blt _021D1E6A
	mov r0, #0xda
	lsl r0, r0, #4
	add r0, r4, r0
	bl G3X_SetEdgeColorTable
	ldr r0, _021D1EBC ; =0x00007FFF
	mov r1, #0
	add r2, r0, #0
	mov r3, #0x3f
	str r1, [sp]
	bl G3X_SetClearColor
	ldr r1, _021D1EC0 ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _021D1EC4 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl NNS_GfdInitFrmTexVramManager
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl NNS_GfdInitFrmPlttVramManager
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_021D1EAC: .word 0x04000060
_021D1EB0: .word 0xFFFFCFFD
_021D1EB4: .word 0x0000CFFB
_021D1EB8: .word 0x00001084
_021D1EBC: .word 0x00007FFF
_021D1EC0: .word 0x04000540
_021D1EC4: .word 0xBFFF0000
	thumb_func_end ov109_021D1E1C

	thumb_func_start ov109_021D1EC8
ov109_021D1EC8: ; 0x021D1EC8
	push {r4, r5, lr}
	sub sp, #0x9c
	add r4, r0, #0
	mov r0, #0x5f
	bl sub_02018340
	ldr r1, _021D1FE4 ; =0x00000D84
	ldr r2, _021D1FE8 ; =0x04000304
	str r0, [r4, r1]
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	ldr r5, _021D1FEC ; =0x021D59F4
	orr r0, r1
	strh r0, [r2]
	add r3, sp, #0x8c
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D1FF0 ; =0x021D5AC8
	add r3, sp, #0x70
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
	ldr r0, _021D1FE4 ; =0x00000D84
	mov r3, #0
	ldr r0, [r4, r0]
	bl sub_020183C4
	ldr r0, _021D1FE4 ; =0x00000D84
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02019EBC
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x5f
	bl sub_02019690
	ldr r5, _021D1FF4 ; =0x021D5AE4
	add r3, sp, #0x54
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
	ldr r0, _021D1FE4 ; =0x00000D84
	mov r3, #0
	ldr r0, [r4, r0]
	bl sub_020183C4
	ldr r0, _021D1FE4 ; =0x00000D84
	mov r1, #2
	ldr r0, [r4, r0]
	bl sub_02019EBC
	ldr r5, _021D1FF8 ; =0x021D5B00
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
	ldr r0, _021D1FE4 ; =0x00000D84
	mov r3, #0
	ldr r0, [r4, r0]
	bl sub_020183C4
	ldr r0, _021D1FE4 ; =0x00000D84
	mov r1, #3
	ldr r0, [r4, r0]
	bl sub_02019EBC
	ldr r5, _021D1FFC ; =0x021D5B1C
	add r3, sp, #0x1c
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
	ldr r0, _021D1FE4 ; =0x00000D84
	mov r3, #0
	ldr r0, [r4, r0]
	bl sub_020183C4
	ldr r0, _021D1FE4 ; =0x00000D84
	mov r1, #6
	ldr r0, [r4, r0]
	bl sub_02019EBC
	ldr r5, _021D2000 ; =0x021D5B38
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
	ldr r0, _021D1FE4 ; =0x00000D84
	mov r3, #0
	ldr r0, [r4, r0]
	bl sub_020183C4
	ldr r0, _021D1FE4 ; =0x00000D84
	mov r1, #7
	ldr r0, [r4, r0]
	bl sub_02019EBC
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_021D1FE4: .word 0x00000D84
_021D1FE8: .word 0x04000304
_021D1FEC: .word 0x021D59F4
_021D1FF0: .word 0x021D5AC8
_021D1FF4: .word 0x021D5AE4
_021D1FF8: .word 0x021D5B00
_021D1FFC: .word 0x021D5B1C
_021D2000: .word 0x021D5B38
	thumb_func_end ov109_021D1EC8

	thumb_func_start ov109_021D2004
ov109_021D2004: ; 0x021D2004
	push {r3, r4, r5, lr}
	mov r1, #0x11
	mov r2, #0
	add r4, r0, #0
	bl ov109_021D3A2C
	mov r1, #0xd9
	lsl r1, r1, #4
	add r1, r4, r1
	add r5, r0, #0
	bl NNS_G2dGetUnpackedPaletteData
	mov r0, #0x40
	mov r2, #0
	ldr r1, _021D21F0 ; =0x00000D9C
	str r0, [sp]
	ldr r0, [r4, r1]
	sub r1, #0xc
	ldr r1, [r4, r1]
	add r3, r2, #0
	ldr r1, [r1, #0xc]
	bl sub_02002FBC
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #0
	bl ov109_021D3A2C
	mov r1, #0xd9
	lsl r1, r1, #4
	add r1, r4, r1
	add r5, r0, #0
	bl NNS_G2dGetUnpackedPaletteData
	mov r0, #0x40
	ldr r1, _021D21F0 ; =0x00000D9C
	str r0, [sp]
	ldr r0, [r4, r1]
	sub r1, #0xc
	ldr r1, [r4, r1]
	mov r2, #1
	ldr r1, [r1, #0xc]
	mov r3, #0
	bl sub_02002FBC
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D21F0 ; =0x00000D9C
	ldr r2, _021D21F4 ; =0x0000FFFF
	ldr r0, [r4, r0]
	mov r1, #1
	mov r3, #8
	bl sub_02003A2C
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0
	bl ov109_021D3A2C
	ldr r1, _021D21F8 ; =0x00000D8C
	add r5, r0, #0
	add r1, r4, r1
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, _021D21F8 ; =0x00000D8C
	mov r1, #0
	ldr r3, [r4, r0]
	sub r0, #8
	str r1, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r4, r0]
	ldr r3, [r3, #0x10]
	mov r1, #3
	bl sub_0201958C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #0x16
	mov r2, #0
	bl ov109_021D3A2C
	add r5, r0, #0
	ldr r1, _021D21F8 ; =0x00000D8C
	add r1, r4, r1
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, _021D21F8 ; =0x00000D8C
	mov r1, #0
	ldr r3, [r4, r0]
	sub r0, #8
	str r1, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r4, r0]
	ldr r3, [r3, #0x10]
	mov r1, #6
	bl sub_0201958C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #0
	bl ov109_021D3A2C
	ldr r1, _021D21F8 ; =0x00000D8C
	add r5, r0, #0
	add r1, r4, r1
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, _021D21F8 ; =0x00000D8C
	mov r1, #0
	ldr r3, [r4, r0]
	sub r0, #8
	str r1, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r4, r0]
	ldr r3, [r3, #0x10]
	mov r1, #7
	bl sub_0201958C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #0x13
	mov r2, #0
	bl ov109_021D3A2C
	ldr r1, _021D21FC ; =0x00000D88
	add r5, r0, #0
	add r1, r4, r1
	bl NNS_G2dGetUnpackedScreenData
	ldr r0, _021D21FC ; =0x00000D88
	mov r1, #2
	ldr r3, [r4, r0]
	sub r0, r0, #4
	add r2, r3, #0
	ldr r0, [r4, r0]
	ldr r3, [r3, #8]
	add r2, #0xc
	bl sub_02019574
	ldr r0, _021D2200 ; =0x00000D84
	mov r1, #2
	ldr r0, [r4, r0]
	bl sub_02019448
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #0
	bl ov109_021D3A2C
	ldr r1, _021D21FC ; =0x00000D88
	add r5, r0, #0
	add r1, r4, r1
	bl NNS_G2dGetUnpackedScreenData
	ldr r0, _021D21FC ; =0x00000D88
	mov r1, #3
	ldr r3, [r4, r0]
	sub r0, r0, #4
	add r2, r3, #0
	ldr r0, [r4, r0]
	ldr r3, [r3, #8]
	add r2, #0xc
	bl sub_02019574
	ldr r0, _021D2200 ; =0x00000D84
	mov r1, #3
	ldr r0, [r4, r0]
	bl sub_02019448
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #0
	bl ov109_021D3A2C
	ldr r1, _021D21FC ; =0x00000D88
	add r5, r0, #0
	add r1, r4, r1
	bl NNS_G2dGetUnpackedScreenData
	ldr r0, _021D21FC ; =0x00000D88
	mov r1, #6
	ldr r3, [r4, r0]
	sub r0, r0, #4
	add r2, r3, #0
	ldr r0, [r4, r0]
	ldr r3, [r3, #8]
	add r2, #0xc
	bl sub_02019574
	ldr r0, _021D2200 ; =0x00000D84
	mov r1, #6
	ldr r0, [r4, r0]
	bl sub_02019448
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0
	bl ov109_021D3A2C
	ldr r1, _021D21FC ; =0x00000D88
	add r5, r0, #0
	add r1, r4, r1
	bl NNS_G2dGetUnpackedScreenData
	ldr r0, _021D21FC ; =0x00000D88
	mov r1, #7
	ldr r3, [r4, r0]
	sub r0, r0, #4
	add r2, r3, #0
	ldr r0, [r4, r0]
	ldr r3, [r3, #8]
	add r2, #0xc
	bl sub_02019574
	ldr r0, _021D2200 ; =0x00000D84
	mov r1, #7
	ldr r0, [r4, r0]
	bl sub_02019448
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	nop
_021D21F0: .word 0x00000D9C
_021D21F4: .word 0x0000FFFF
_021D21F8: .word 0x00000D8C
_021D21FC: .word 0x00000D88
_021D2200: .word 0x00000D84
	thumb_func_end ov109_021D2004

	thumb_func_start ov109_021D2204
ov109_021D2204: ; 0x021D2204
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D2244 ; =0x00000D84
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02019044
	ldr r0, _021D2244 ; =0x00000D84
	mov r1, #2
	ldr r0, [r4, r0]
	bl sub_02019044
	ldr r0, _021D2244 ; =0x00000D84
	mov r1, #3
	ldr r0, [r4, r0]
	bl sub_02019044
	ldr r0, _021D2244 ; =0x00000D84
	mov r1, #6
	ldr r0, [r4, r0]
	bl sub_02019044
	ldr r0, _021D2244 ; =0x00000D84
	mov r1, #7
	ldr r0, [r4, r0]
	bl sub_02019044
	ldr r0, _021D2244 ; =0x00000D84
	ldr r0, [r4, r0]
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
_021D2244: .word 0x00000D84
	thumb_func_end ov109_021D2204

	thumb_func_start ov109_021D2248
ov109_021D2248: ; 0x021D2248
	push {r3, r4, r5, lr}
	mov r2, #0
	add r5, r0, #0
	bl ov109_021D3A2C
	ldr r1, _021D2284 ; =0x00000D88
	add r4, r0, #0
	add r1, r5, r1
	bl NNS_G2dGetUnpackedScreenData
	ldr r0, _021D2284 ; =0x00000D88
	mov r1, #6
	ldr r3, [r5, r0]
	sub r0, r0, #4
	add r2, r3, #0
	ldr r0, [r5, r0]
	ldr r3, [r3, #8]
	add r2, #0xc
	bl sub_02019574
	ldr r0, _021D2288 ; =0x00000D84
	mov r1, #6
	ldr r0, [r5, r0]
	bl sub_02019448
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	nop
_021D2284: .word 0x00000D88
_021D2288: .word 0x00000D84
	thumb_func_end ov109_021D2248

	thumb_func_start ov109_021D228C
ov109_021D228C: ; 0x021D228C
	ldr r3, _021D2294 ; =ov109_021D2248
	mov r1, #0x1a
	bx r3
	nop
_021D2294: .word ov109_021D2248
	thumb_func_end ov109_021D228C

	thumb_func_start ov109_021D2298
ov109_021D2298: ; 0x021D2298
	ldr r3, _021D22A0 ; =ov109_021D2248
	mov r1, #0x18
	bx r3
	nop
_021D22A0: .word ov109_021D2248
	thumb_func_end ov109_021D2298

	thumb_func_start ov109_021D22A4
ov109_021D22A4: ; 0x021D22A4
	ldr r3, _021D22AC ; =ov109_021D2248
	mov r1, #0x19
	bx r3
	nop
_021D22AC: .word ov109_021D2248
	thumb_func_end ov109_021D22A4

	thumb_func_start ov109_021D22B0
ov109_021D22B0: ; 0x021D22B0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5f
	bl sub_02002F38
	ldr r1, _021D2304 ; =0x00000D9C
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02003858
	ldr r0, _021D2304 ; =0x00000D9C
	mov r2, #2
	ldr r0, [r4, r0]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x5f
	bl sub_02002F70
	ldr r0, _021D2304 ; =0x00000D9C
	mov r1, #2
	ldr r0, [r4, r0]
	lsl r2, r1, #8
	mov r3, #0x5f
	bl sub_02002F70
	ldr r0, _021D2304 ; =0x00000D9C
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r2, r1, #9
	mov r3, #0x5f
	bl sub_02002F70
	ldr r0, _021D2304 ; =0x00000D9C
	mov r2, #2
	ldr r0, [r4, r0]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x5f
	bl sub_02002F70
	pop {r4, pc}
	; .align 2, 0
_021D2304: .word 0x00000D9C
	thumb_func_end ov109_021D22B0

	thumb_func_start ov109_021D2308
ov109_021D2308: ; 0x021D2308
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D2340 ; =0x00000D9C
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02002FA0
	ldr r0, _021D2340 ; =0x00000D9C
	mov r1, #2
	ldr r0, [r4, r0]
	bl sub_02002FA0
	ldr r0, _021D2340 ; =0x00000D9C
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02002FA0
	ldr r0, _021D2340 ; =0x00000D9C
	mov r1, #3
	ldr r0, [r4, r0]
	bl sub_02002FA0
	ldr r0, _021D2340 ; =0x00000D9C
	ldr r0, [r4, r0]
	bl sub_02002F54
	pop {r4, pc}
	nop
_021D2340: .word 0x00000D9C
	thumb_func_end ov109_021D2308

	thumb_func_start ov109_021D2344
ov109_021D2344: ; 0x021D2344
	push {r3, lr}
	add r3, r1, #0
	mov r1, #0
	str r1, [sp]
	ldr r1, _021D2360 ; =0x00000D9C
	lsl r3, r3, #0x18
	ldr r0, [r0, r1]
	ldr r2, _021D2364 ; =0x0000FFFF
	mov r1, #1
	lsr r3, r3, #0x18
	bl sub_02003A2C
	pop {r3, pc}
	nop
_021D2360: .word 0x00000D9C
_021D2364: .word 0x0000FFFF
	thumb_func_end ov109_021D2344

	thumb_func_start ov109_021D2368
ov109_021D2368: ; 0x021D2368
	push {r3, r4, lr}
	sub sp, #0x4c
	ldr r3, _021D23F4 ; =0x021D5B74
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x2c
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021D23F8 ; =0x021D5A28
	add r2, sp, #0x18
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	mov r0, #0x5f
	bl sub_0200C6E4
	ldr r1, _021D23FC ; =0x00000D94
	add r2, sp, #0x18
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, sp, #0x2c
	mov r3, #0x20
	bl sub_0200C73C
	ldr r3, _021D2400 ; =0x021D5A50
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, _021D23FC ; =0x00000D94
	ldr r0, [r4, r0]
	bl sub_0200C704
	ldr r1, _021D2404 ; =0x00000D98
	mov r2, #0xff
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	bl sub_0200C7C0
	cmp r0, #0
	bne _021D23D8
	bl GF_AssertFail
_021D23D8:
	ldr r1, _021D23FC ; =0x00000D94
	add r2, sp, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200CB30
	cmp r0, #0
	bne _021D23EE
	bl GF_AssertFail
_021D23EE:
	add sp, #0x4c
	pop {r3, r4, pc}
	nop
_021D23F4: .word 0x021D5B74
_021D23F8: .word 0x021D5A28
_021D23FC: .word 0x00000D94
_021D2400: .word 0x021D5A50
_021D2404: .word 0x00000D98
	thumb_func_end ov109_021D2368

	thumb_func_start ov109_021D2408
ov109_021D2408: ; 0x021D2408
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r2, _021D24BC ; =0x00000D94
	add r1, r2, #4
	ldr r6, [r0, r2]
	add r2, #8
	ldr r5, [r0, r1]
	ldr r7, [r0, r2]
	mov r0, #1
	bl sub_02009704
	mov r0, #0x7a
	mov r1, #0x5f
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0xe
	bl sub_0200CC3C
	str r4, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #5
	str r0, [sp, #0x14]
	add r0, r7, #0
	mov r1, #2
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0xd
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0xc
	bl sub_0200CE54
	add r0, r4, #0
	bl sub_02006CA8
	bl sub_02039734
	mov r0, #0x5f
	bl sub_020394A8
	add r1, sp, #0x18
	add r4, r0, #0
	bl NNS_G2dGetUnpackedPaletteData
	mov r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	ldr r1, [r1, #0xc]
	mov r2, #2
	mov r3, #0xe0
	bl sub_02002FBC
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D24BC: .word 0x00000D94
	thumb_func_end ov109_021D2408

	thumb_func_start ov109_021D24C0
ov109_021D24C0: ; 0x021D24C0
	push {r4, lr}
	ldr r1, _021D24DC ; =0x00000D94
	add r4, r0, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200D0B0
	ldr r0, _021D24DC ; =0x00000D94
	ldr r0, [r4, r0]
	bl sub_0200C8D4
	pop {r4, pc}
	nop
_021D24DC: .word 0x00000D94
	thumb_func_end ov109_021D24C0

	thumb_func_start ov109_021D24E0
ov109_021D24E0: ; 0x021D24E0
	add r2, r1, #0
	ldr r1, _021D24F0 ; =0x00000D94
	add r3, r0, #0
	ldr r0, [r3, r1]
	add r1, r1, #4
	ldr r1, [r3, r1]
	ldr r3, _021D24F4 ; =sub_0200CE6C
	bx r3
	; .align 2, 0
_021D24F0: .word 0x00000D94
_021D24F4: .word sub_0200CE6C
	thumb_func_end ov109_021D24E0

	thumb_func_start ov109_021D24F8
ov109_021D24F8: ; 0x021D24F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, _021D25D8 ; =0x00000C9C
	mov r1, #0
	str r1, [sp]
	mov r1, #0x5f
	add r4, r6, r0
	str r1, [sp, #4]
	add r0, #0xe8
	mov r1, #1
	ldr r0, [r6, r0]
	add r2, r1, #0
	mov r3, #0xf
	bl sub_0200DAA4
	add r0, r6, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	mov r1, #1
	ldr r0, [r0, #0x18]
	mov r2, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x5f
	str r0, [sp, #4]
	ldr r0, _021D25DC ; =0x00000D84
	mov r3, #0xe
	ldr r0, [r6, r0]
	bl sub_0200DD0C
	add r0, r6, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x18]
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	ldr r0, _021D25E0 ; =0x00000D9C
	mov r1, #0x26
	ldr r0, [r6, r0]
	mov r3, #0x5f
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xf0
	str r0, [sp, #8]
	ldr r0, _021D25E0 ; =0x00000D9C
	mov r1, #0xe
	ldr r0, [r6, r0]
	mov r2, #7
	mov r3, #0x5f
	bl sub_02003050
	mov r2, #0x5e
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x5f
	bl sub_0200B144
	str r0, [r4, #4]
	mov r0, #0x5f
	bl sub_0200B358
	str r0, [r4, #8]
	ldr r0, _021D25DC ; =0x00000D84
	add r1, r4, #0
	ldr r0, [r6, r0]
	ldr r2, _021D25E4 ; =0x021D59B8
	add r1, #0xc
	bl sub_0201A8D4
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x5f
	bl sub_02023790
	str r0, [r4, #0x6c]
	mov r4, #0
	add r5, r6, #0
	mov r7, #8
_021D25B0:
	add r0, r7, #0
	mov r1, #0x5f
	bl sub_02023790
	add r1, r5, #0
	add r1, #0x98
	add r4, r4, #1
	add r5, r5, #4
	str r0, [r1, #0]
	cmp r4, #5
	blt _021D25B0
	add r0, r6, #0
	add r6, #0xcc
	ldr r1, [r6, #0]
	ldr r1, [r1, #8]
	bl ov109_021D27AC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D25D8: .word 0x00000C9C
_021D25DC: .word 0x00000D84
_021D25E0: .word 0x00000D9C
_021D25E4: .word 0x021D59B8
	thumb_func_end ov109_021D24F8

	thumb_func_start ov109_021D25E8
ov109_021D25E8: ; 0x021D25E8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021D2630 ; =0x00000C9C
	add r4, r5, r0
	add r6, r4, #0
	add r6, #0xc
	add r0, r6, #0
	bl sub_0201ACF4
	add r0, r6, #0
	bl sub_0201A8FC
	add r0, r5, #0
	bl ov109_021D27F0
	ldr r0, [r4, #4]
	bl sub_0200B190
	ldr r0, [r4, #8]
	bl sub_0200B3F0
	ldr r0, [r4, #0x6c]
	bl sub_020237BC
	mov r4, #0
_021D261A:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _021D261A
	pop {r4, r5, r6, pc}
	nop
_021D2630: .word 0x00000C9C
	thumb_func_end ov109_021D25E8

	thumb_func_start ov109_021D2634
ov109_021D2634: ; 0x021D2634
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r1, #0
	ldr r1, _021D2688 ; =0x00000C9C
	add r4, r0, r1
	add r5, r4, #0
	add r5, #0xc
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xa
	mov r3, #0xe
	bl sub_0200E060
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x6c]
	add r1, r6, #0
	bl sub_0200B1B8
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r4, #0x6c]
	add r0, r5, #0
	mov r1, #1
	bl sub_0201D738
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D2688: .word 0x00000C9C
	thumb_func_end ov109_021D2634

	thumb_func_start ov109_021D268C
ov109_021D268C: ; 0x021D268C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	ldr r1, _021D2710 ; =0x00000C9C
	add r6, r2, #0
	add r4, r0, r1
	add r5, r4, #0
	add r5, #0xc
	bl sub_0203608C
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0200B498
	ldr r0, [r4, #8]
	mov r1, #2
	add r2, r6, #0
	bl sub_0200B498
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x5f
	bl sub_02023790
	add r6, r0, #0
	ldr r0, [r4, #4]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0200B1B8
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x6c]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xa
	mov r3, #0xe
	bl sub_0200E060
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r4, #0x6c]
	add r0, r5, #0
	mov r1, #1
	bl sub_0201D738
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2710: .word 0x00000C9C
	thumb_func_end ov109_021D268C

	thumb_func_start ov109_021D2714
ov109_021D2714: ; 0x021D2714
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	ldr r1, _021D2784 ; =0x00000C9C
	add r4, r0, r1
	add r5, r4, #0
	ldr r0, [r4, #8]
	mov r1, #0
	add r5, #0xc
	bl sub_0200B70C
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x5f
	bl sub_02023790
	add r6, r0, #0
	ldr r0, [r4, #4]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0200B1B8
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x6c]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xa
	mov r3, #0xe
	bl sub_0200E060
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r4, #0x6c]
	add r0, r5, #0
	mov r1, #1
	bl sub_0201D738
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D2784: .word 0x00000C9C
	thumb_func_end ov109_021D2714

	thumb_func_start ov109_021D2788
ov109_021D2788: ; 0x021D2788
	push {r3, r4, r5, lr}
	ldr r4, _021D27A8 ; =0x00000CA8
	add r5, r0, #0
	add r0, r5, r4
	mov r1, #1
	bl sub_0200E084
	add r0, r5, r4
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, r4
	bl sub_0201A9A4
	pop {r3, r4, r5, pc}
	nop
_021D27A8: .word 0x00000CA8
	thumb_func_end ov109_021D2788

	thumb_func_start ov109_021D27AC
ov109_021D27AC: ; 0x021D27AC
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	add r7, r0, #0
	ldr r0, [sp]
	ldr r1, _021D27E4 ; =0x00000C9C
	lsl r2, r0, #2
	ldr r0, _021D27E8 ; =0x021D5A68
	mov r6, #0
	ldr r4, [r0, r2]
	ldr r0, [sp]
	str r0, [r7, r1]
	cmp r0, #0
	ble _021D27E2
	add r5, r7, r1
	add r5, #0x1c
_021D27CA:
	ldr r0, _021D27EC ; =0x00000D84
	add r1, r5, #0
	ldr r0, [r7, r0]
	add r2, r4, #0
	bl sub_0201A8D4
	ldr r0, [sp]
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, r0
	blt _021D27CA
_021D27E2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D27E4: .word 0x00000C9C
_021D27E8: .word 0x021D5A68
_021D27EC: .word 0x00000D84
	thumb_func_end ov109_021D27AC

	thumb_func_start ov109_021D27F0
ov109_021D27F0: ; 0x021D27F0
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021D281C ; =0x00000C9C
	add r6, r0, #0
	ldr r0, [r6, r7]
	mov r4, #0
	cmp r0, #0
	ble _021D2818
	add r5, r6, r7
	add r5, #0x1c
_021D2802:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	ldr r0, [r6, r7]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _021D2802
_021D2818:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D281C: .word 0x00000C9C
	thumb_func_end ov109_021D27F0

	thumb_func_start ov109_021D2820
ov109_021D2820: ; 0x021D2820
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	ldr r1, _021D2870 ; =0x00000CB8
	lsl r4, r2, #4
	add r5, r0, r1
	mov r1, #1
	add r7, r3, #0
	add r0, r5, r4
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200DC48
	add r0, r5, r4
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	mov r3, #0x40
	bl sub_02002EEC
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r0, r5, r4
	add r2, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2870: .word 0x00000CB8
	thumb_func_end ov109_021D2820

	thumb_func_start ov109_021D2874
ov109_021D2874: ; 0x021D2874
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r5, r3, #0
	ldr r4, _021D289C ; =0x00010200
	bl sub_0203608C
	cmp r5, r0
	bne _021D288C
	mov r4, #0xc1
	lsl r4, r4, #0xa
_021D288C:
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r4, #0
	bl ov109_021D2820
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D289C: .word 0x00010200
	thumb_func_end ov109_021D2874

	thumb_func_start ov109_021D28A0
ov109_021D28A0: ; 0x021D28A0
	push {r3, r4, r5, lr}
	ldr r2, _021D28C0 ; =0x00000CB8
	lsl r4, r1, #4
	add r5, r0, r2
	add r0, r5, r4
	mov r1, #1
	bl sub_0200E084
	add r0, r5, r4
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, r4
	bl sub_0201A9A4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D28C0: .word 0x00000CB8
	thumb_func_end ov109_021D28A0

	thumb_func_start ov109_021D28C4
ov109_021D28C4: ; 0x021D28C4
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _021D292C ; =0x00000D0C
	add r4, r5, r0
	mov r0, #0x5f
	bl sub_020203AC
	str r0, [r4, #0x1c]
	mov r2, #0
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	ldr r0, _021D2930 ; =0x0000E93F
	str r2, [r4, #0x10]
	strh r0, [r4, #0x14]
	strh r2, [r4, #0x16]
	ldr r0, _021D2934 ; =0x00143000
	ldr r1, _021D292C ; =0x00000D0C
	strh r2, [r4, #0x18]
	str r0, [r5, r1]
	ldr r0, _021D2938 ; =0x00000444
	str r0, [r4, #4]
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r3, [r4, #4]
	add r0, r4, #0
	lsl r3, r3, #0x10
	ldr r1, [r5, r1]
	add r0, #8
	add r2, #0x14
	lsr r3, r3, #0x10
	bl sub_020206D0
	mov r1, #0
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	str r1, [sp, #0xc]
	str r1, [sp, #0x14]
	ldr r1, [r4, #0x1c]
	add r0, sp, #0xc
	bl sub_02020680
	ldr r0, [r4, #0x1c]
	bl sub_020203D4
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D292C: .word 0x00000D0C
_021D2930: .word 0x0000E93F
_021D2934: .word 0x00143000
_021D2938: .word 0x00000444
	thumb_func_end ov109_021D28C4

	thumb_func_start ov109_021D293C
ov109_021D293C: ; 0x021D293C
	ldr r1, _021D2944 ; =0x00000D28
	ldr r3, _021D2948 ; =sub_020203B8
	ldr r0, [r0, r1]
	bx r3
	; .align 2, 0
_021D2944: .word 0x00000D28
_021D2948: .word sub_020203B8
	thumb_func_end ov109_021D293C

	thumb_func_start ov109_021D294C
ov109_021D294C: ; 0x021D294C
	push {r4, r5, r6, lr}
	ldr r1, _021D298C ; =0x00000D2C
	mov r6, #0
	add r5, r0, r1
	add r0, r5, #0
	add r0, #0x10
	mov r1, #2
	add r2, r6, #0
	mov r4, #3
	bl sub_0201E564
	add r2, r5, #0
	add r2, #0x18
	mov r0, #1
_021D2968:
	ldrh r1, [r2, #0x16]
	cmp r1, #1
	bne _021D2978
	ldrh r1, [r2, #0x12]
	add r6, r0, #0
	str r1, [r5, #0]
	ldrh r1, [r2, #0x14]
	str r1, [r5, #4]
_021D2978:
	sub r2, #8
	sub r4, r4, #1
	bpl _021D2968
	ldr r0, [r5, #0xc]
	eor r0, r6
	and r0, r6
	str r0, [r5, #8]
	str r6, [r5, #0xc]
	pop {r4, r5, r6, pc}
	nop
_021D298C: .word 0x00000D2C
	thumb_func_end ov109_021D294C

	thumb_func_start ov109_021D2990
ov109_021D2990: ; 0x021D2990
	ldr r1, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #0x20
	blt _021D29A8
	cmp r0, #0x9f
	bgt _021D29A8
	cmp r1, #0x40
	blt _021D29A8
	cmp r1, #0xbf
	bgt _021D29A8
	mov r0, #1
	bx lr
_021D29A8:
	mov r0, #0
	bx lr
	thumb_func_end ov109_021D2990

	thumb_func_start ov109_021D29AC
ov109_021D29AC: ; 0x021D29AC
	push {r3, lr}
	ldr r1, _021D29C8 ; =0x00000D2C
	add r0, r0, r1
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021D29C4
	bl ov109_021D2990
	cmp r0, #1
	bne _021D29C4
	mov r0, #1
	pop {r3, pc}
_021D29C4:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_021D29C8: .word 0x00000D2C
	thumb_func_end ov109_021D29AC

	thumb_func_start ov109_021D29CC
ov109_021D29CC: ; 0x021D29CC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	add r4, r6, #0
	ldr r0, [r0, #8]
	mov r2, #0x36
	lsl r5, r0, #2
	mov r0, #0x5f
	ldr r3, _021D2A4C ; =0x021D5A80
	str r0, [sp]
	mov r1, #0
	add r4, #0xd4
	add r0, r4, #0
	str r1, [sp, #4]
	lsl r2, r2, #6
	ldr r2, [r6, r2]
	ldr r3, [r3, r5]
	add r0, #0x54
	bl sub_0207389C
	add r0, r4, #0
	add r0, #0x54
	bl sub_020738EC
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x68
	add r1, #0x54
	bl sub_02073B70
	ldr r1, _021D2A50 ; =0x021D5A98
	mov r0, #0
	add r2, r4, #0
	ldr r1, [r1, r5]
	str r0, [r4, #0x3c]
	str r1, [r4, #0x44]
	mov r1, #1
	lsl r1, r1, #0xc
	str r1, [r4, #0x18]
	str r1, [r4, #0x1c]
	str r1, [r4, #0x20]
	add r1, r4, #0
	add r1, #0x4c
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0x4e
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0x50
	strh r0, [r1]
	add r6, #0xd4
	ldr r1, _021D2A54 ; =0xFFFDC000
	str r0, [r6, #0]
	str r1, [r4, #4]
	str r0, [r4, #8]
	ldmia r4!, {r0, r1}
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D2A4C: .word 0x021D5A80
_021D2A50: .word 0x021D5A98
_021D2A54: .word 0xFFFDC000
	thumb_func_end ov109_021D29CC

	thumb_func_start ov109_021D2A58
ov109_021D2A58: ; 0x021D2A58
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r3, _021D2A64 ; =sub_0207395C
	add r0, r0, r1
	bx r3
	nop
_021D2A64: .word sub_0207395C
	thumb_func_end ov109_021D2A58

	thumb_func_start ov109_021D2A68
ov109_021D2A68: ; 0x021D2A68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0xd4
	ldr r0, [r4, #0x3c]
	str r0, [sp]
	ldr r1, [r4, #0x40]
	add r0, sp, #0
	bl ov109_021D39D4
	ldr r1, [r4, #0x44]
	add r0, sp, #0
	bl ov109_021D39D4
	ldr r1, [sp]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	mov r1, #0x5a
	asr r0, r0, #0xc
	lsl r1, r1, #2
	sub r0, r1, r0
	bl _s32_div_f
	add r0, r4, #0
	add r0, #0x4e
	strh r1, [r0]
	add r5, #0xd4
	ldr r1, [r5, #0]
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x24]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0xc]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x34]
	ldr r2, [r4, #0x28]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0x10]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x38]
	ldr r2, [r4, #0x2c]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov109_021D2A68

	thumb_func_start ov109_021D2AC8
ov109_021D2AC8: ; 0x021D2AC8
	push {r3, lr}
	add r3, r0, #0
	add r3, #0xd4
	add r0, r3, #0
	add r1, r3, #0
	add r2, r3, #0
	add r0, #0x68
	add r1, #0xc
	add r2, #0x18
	add r3, #0x4c
	bl sub_02073BC8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov109_021D2AC8

	thumb_func_start ov109_021D2AE4
ov109_021D2AE4: ; 0x021D2AE4
	ldr r3, _021D2AEC ; =ov109_021D39D4
	add r0, #0x3c
	bx r3
	nop
_021D2AEC: .word ov109_021D39D4
	thumb_func_end ov109_021D2AE4

	thumb_func_start ov109_021D2AF0
ov109_021D2AF0: ; 0x021D2AF0
	ldr r3, _021D2AF4 ; =ov109_021D2B00
	bx r3
	; .align 2, 0
_021D2AF4: .word ov109_021D2B00
	thumb_func_end ov109_021D2AF0

	thumb_func_start ov109_021D2AF8
ov109_021D2AF8: ; 0x021D2AF8
	ldr r3, _021D2AFC ; =ov109_021D2BD4
	bx r3
	; .align 2, 0
_021D2AFC: .word ov109_021D2BD4
	thumb_func_end ov109_021D2AF8

	thumb_func_start ov109_021D2B00
ov109_021D2B00: ; 0x021D2B00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	mov r0, #0x5f
	mov r1, #0
	str r0, [sp]
	mov r2, #0x36
	mov r5, #0x19
	lsl r5, r5, #4
	str r1, [sp, #4]
	lsl r2, r2, #6
	ldr r2, [r7, r2]
	add r0, r7, r5
	add r3, r1, #0
	bl sub_0207389C
	add r0, r7, r5
	bl sub_020738EC
	mov r0, #0x5f
	str r0, [sp]
	mov r1, #0
	mov r2, #0x36
	add r0, r7, r5
	str r1, [sp, #4]
	lsl r2, r2, #6
	ldr r2, [r7, r2]
	add r0, #0x14
	mov r3, #5
	bl sub_0207389C
	add r0, r7, r5
	add r0, #0x14
	bl sub_020738EC
	add r4, r7, r5
	ldr r0, _021D2BCC ; =0x021D5A14
	add r4, #0x28
	str r0, [sp, #0xc]
	ldr r0, _021D2BD0 ; =0x021D5A3C
	add r5, r7, r5
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0x10]
	add r5, #0x8c
	add r6, r4, #0
_021D2B5C:
	mov r0, #0x5f
	str r0, [sp]
	mov r0, #0
	mov r2, #0x36
	str r0, [sp, #4]
	ldr r3, [sp, #0xc]
	lsl r2, r2, #6
	ldr r2, [r7, r2]
	ldr r3, [r3, #0]
	add r0, r4, #0
	mov r1, #0
	bl sub_0207389C
	add r0, r4, #0
	bl sub_020738EC
	mov r0, #0x5f
	str r0, [sp]
	mov r0, #0
	mov r2, #0x36
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	lsl r2, r2, #6
	ldr r2, [r7, r2]
	ldr r3, [r3, #0]
	add r0, r5, #0
	mov r1, #0
	bl sub_020739B4
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x5f
	bl sub_02073A3C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02073A5C
	ldr r0, [sp, #0x10]
	add r4, #0x14
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r5, #0x24
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r6, #0x14
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	cmp r0, #5
	blt _021D2B5C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D2BCC: .word 0x021D5A14
_021D2BD0: .word 0x021D5A3C
	thumb_func_end ov109_021D2B00

	thumb_func_start ov109_021D2BD4
ov109_021D2BD4: ; 0x021D2BD4
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x19
	add r5, r0, #0
	lsl r7, r7, #4
	add r0, r5, r7
	bl sub_0207395C
	add r0, r5, r7
	add r0, #0x14
	bl sub_0207395C
	add r4, r5, r7
	add r5, r5, r7
	mov r6, #0
	add r4, #0x28
	add r5, #0x8c
_021D2BF4:
	add r0, r4, #0
	bl sub_0207395C
	add r0, r5, #0
	bl sub_020739F0
	add r6, r6, #1
	add r4, #0x14
	add r5, #0x24
	cmp r6, #5
	blt _021D2BF4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov109_021D2BD4

	thumb_func_start ov109_021D2C0C
ov109_021D2C0C: ; 0x021D2C0C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x19
	add r5, r0, #0
	add r0, r4, #0
	lsl r1, r1, #4
	add r0, #0x5c
	add r1, r5, r1
	bl sub_02073B70
	mov r0, #1
	str r0, [r4, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl ov109_021D2EC0
	add r0, r5, #0
	add r1, r4, #0
	bl ov109_021D2F68
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov109_021D2C0C

	thumb_func_start ov109_021D2C38
ov109_021D2C38: ; 0x021D2C38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x30]
	mov r1, #0x19
	lsl r1, r1, #4
	add r4, r5, r1
	str r0, [sp, #0xc]
	cmp r0, #0
	ble _021D2CC4
	sub r1, #0x50
	add r0, r4, r1
	str r0, [sp, #8]
	mov r0, #0x4b
	lsl r0, r0, #4
	add r0, r4, r0
	str r0, [sp]
	ldr r0, _021D2CC8 ; =0x0000071C
	str r4, [sp, #4]
	add r7, r4, #0
	add r6, r4, r0
_021D2C66:
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D2C7C
	mov r1, #0x41
	lsl r1, r1, #2
	ldr r0, [sp, #8]
	add r1, r5, r1
	bl ov109_021D2D78
_021D2C7C:
	mov r0, #0x4b
	ldr r1, [sp, #4]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021D2C90
	ldr r1, [sp]
	add r0, r5, #0
	bl ov109_021D2EF4
_021D2C90:
	ldr r0, _021D2CC8 ; =0x0000071C
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _021D2CA0
	add r0, r5, #0
	add r1, r6, #0
	bl ov109_021D2FA4
_021D2CA0:
	ldr r0, [sp, #8]
	add r4, #0xb0
	add r0, #0xb0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r7, #0x68
	add r0, #0x7c
	str r0, [sp, #4]
	ldr r0, [sp]
	add r6, #0x68
	add r0, #0x7c
	str r0, [sp]
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _021D2C66
_021D2CC4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2CC8: .word 0x0000071C
	thumb_func_end ov109_021D2C38

	thumb_func_start ov109_021D2CCC
ov109_021D2CCC: ; 0x021D2CCC
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, [r0, #0x30]
	mov r7, #0
	str r1, [sp]
	mov r1, #0x19
	lsl r1, r1, #4
	add r2, r0, r1
	mov r0, #0x4b
	lsl r0, r0, #4
	add r4, r2, r0
	ldr r0, _021D2D40 ; =0x0000071C
	sub r1, #0x50
	add r5, r2, r0
	ldr r0, [sp]
	add r6, r2, r1
	cmp r0, #0
	ble _021D2D3E
_021D2CEE:
	ldr r0, [r6, #4]
	cmp r0, #0
	beq _021D2D08
	add r0, r6, #0
	add r1, r6, #0
	add r2, r6, #0
	add r3, r6, #0
	add r0, #0x5c
	add r1, #0x44
	add r2, #0x38
	add r3, #0x24
	bl sub_02073BC8
_021D2D08:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D2D20
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r0, #0x24
	add r1, #0x18
	add r2, #0xc
	add r3, r4, #4
	bl sub_02073BC8
_021D2D20:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D2D30
	add r0, r5, #0
	add r0, #0x10
	add r1, r5, #4
	bl sub_02073BB4
_021D2D30:
	ldr r0, [sp]
	add r7, r7, #1
	add r6, #0xb0
	add r4, #0x7c
	add r5, #0x68
	cmp r7, r0
	blt _021D2CEE
_021D2D3E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2D40: .word 0x0000071C
	thumb_func_end ov109_021D2CCC

	thumb_func_start ov109_021D2D44
ov109_021D2D44: ; 0x021D2D44
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r7, [r0, #0x30]
	mov r6, #0
	add r4, r0, r1
	cmp r7, #0
	ble _021D2D76
	sub r1, #0x34
	add r5, r4, r1
_021D2D5A:
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D2D6C
	ldr r1, [sp]
	add r0, r5, #0
	bl ov109_021D39D4
_021D2D6C:
	add r6, r6, #1
	add r4, #0xb0
	add r5, #0xb0
	cmp r6, r7
	blt _021D2D5A
_021D2D76:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov109_021D2D44

	thumb_func_start ov109_021D2D78
ov109_021D2D78: ; 0x021D2D78
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	str r0, [sp]
	ldr r1, [r5, #0x20]
	add r0, sp, #0
	bl ov109_021D39D4
	ldr r1, [sp]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r6, r0, #0x10
	add r0, r6, #0
	bl sub_0201D1D4
	ldr r2, [r5, #0x50]
	ldr r1, [r4, #0]
	add r2, r2, r1
	mov r1, #0x16
	mul r1, r0
	add r0, r2, r1
	str r0, [r5, #0x44]
	mov r0, #6
	ldr r1, [r5, #0x54]
	lsl r0, r0, #0xc
	sub r1, r1, r0
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [r5, #0x48]
	add r0, r6, #0
	bl sub_0201D15C
	ldr r2, [r5, #0x58]
	ldr r1, [r4, #8]
	add r2, r2, r1
	mov r1, #0x16
	mul r1, r0
	add r0, r2, r1
	str r0, [r5, #0x4c]
	ldr r1, [r5, #0x2c]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5, #0x24]
	ldr r1, [r5, #0x30]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5, #0x26]
	ldr r1, [r5, #0x34]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5, #0x28]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov109_021D2D78

	thumb_func_start ov109_021D2DF8
ov109_021D2DF8: ; 0x021D2DF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r1, #0x19
	ldr r6, [r0, #0x30]
	lsl r1, r1, #4
	add r1, r0, r1
	mov lr, r1
	ldr r0, [r0, #0x2c]
	mov r1, #0xa
	add r2, r6, #0
	mul r2, r1
	ldr r1, _021D2EB8 ; =0x021D5C80
	lsl r4, r0, #1
	add r0, r1, r2
	ldrh r0, [r4, r0]
	mov r3, #0
	add r1, sp, #4
	lsl r5, r0, #0xc
	ldr r0, _021D2EBC ; =0x0000FFFF
	add r2, sp, #0x18
_021D2E20:
	stmia r1!, {r3}
	add r3, r3, #1
	stmia r2!, {r0}
	cmp r3, r6
	blt _021D2E20
	mov r3, #0
	cmp r6, #0
	ble _021D2E58
	mov r0, #0x5a
	lsl r0, r0, #0xe
	mov r1, lr
	add r2, sp, #0x18
	add r7, r5, r0
_021D2E3A:
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	sub r0, r5, r4
	bpl _021D2E46
	sub r0, r7, r4
_021D2E46:
	asr r4, r0, #0xb
	lsr r4, r4, #0x14
	add r4, r0, r4
	asr r0, r4, #0xc
	add r3, r3, #1
	stmia r2!, {r0}
	add r1, #0xb0
	cmp r3, r6
	blt _021D2E3A
_021D2E58:
	mov r7, #1
	cmp r6, #1
	ble _021D2EA2
	add r0, sp, #8
	str r0, [sp]
	add r5, sp, #0x18
_021D2E64:
	ldr r0, [sp]
	add r2, sp, #4
	ldr r0, [r0, #0]
	mov ip, r0
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r0, r7, #1
	lsl r3, r0, #2
	add r2, r2, r3
	b _021D2E7E
_021D2E78:
	str r3, [r2, #4]
	sub r2, r2, #4
	sub r0, r0, #1
_021D2E7E:
	cmp r0, #0
	blt _021D2E8C
	ldr r3, [r2, #0]
	lsl r4, r3, #2
	ldr r4, [r5, r4]
	cmp r4, r1
	bgt _021D2E78
_021D2E8C:
	lsl r1, r0, #2
	add r0, sp, #4
	add r1, r0, r1
	mov r0, ip
	str r0, [r1, #4]
	ldr r0, [sp]
	add r7, r7, #1
	add r0, r0, #4
	str r0, [sp]
	cmp r7, r6
	blt _021D2E64
_021D2EA2:
	mov r1, #5
	lsl r1, r1, #6
	mov r0, lr
	add r2, r0, r1
	ldr r1, [sp, #4]
	mov r0, #0xb0
	mul r0, r1
	add r0, r2, r0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021D2EB8: .word 0x021D5C80
_021D2EBC: .word 0x0000FFFF
	thumb_func_end ov109_021D2DF8

	thumb_func_start ov109_021D2EC0
ov109_021D2EC0: ; 0x021D2EC0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x19
	lsl r0, r0, #4
	add r3, r5, r0
	mov r0, #0x4b
	lsl r0, r0, #4
	add r2, r3, r0
	ldr r4, [r1, #0x10]
	mov r0, #0x7c
	mul r0, r4
	mov r6, #1
	add r4, r2, r0
	str r6, [r2, r0]
	add r0, r4, #0
	add r3, #0x14
	str r1, [r4, #0x78]
	add r0, #0x24
	add r1, r3, #0
	bl sub_02073B70
	add r0, r5, #0
	add r1, r4, #0
	bl ov109_021D2EF4
	pop {r4, r5, r6, pc}
	thumb_func_end ov109_021D2EC0

	thumb_func_start ov109_021D2EF4
ov109_021D2EF4: ; 0x021D2EF4
	push {r4, r5}
	add r3, r1, #0
	mov r0, #0
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	strh r0, [r3, #8]
	ldr r5, [r3, #0x78]
	add r4, r3, #0
	add r5, #0x44
	add r4, #0x18
	ldmia r5!, {r0, r1}
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	ldr r0, [r3, #0x78]
	ldr r1, [r2, #0]
	ldr r0, [r0, #0x50]
	sub r0, r1, r0
	str r0, [r2, #0]
	ldr r0, [r3, #0x78]
	ldr r1, [r3, #0x1c]
	ldr r0, [r0, #0x54]
	sub r0, r1, r0
	str r0, [r3, #0x1c]
	ldr r0, [r3, #0x78]
	ldr r1, [r3, #0x20]
	ldr r0, [r0, #0x58]
	sub r0, r1, r0
	str r0, [r3, #0x20]
	mov r0, #2
	ldr r1, [r3, #0x1c]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r3, #0x1c]
	ldr r0, [r3, #0x78]
	ldr r1, [r0, #0x54]
	cmp r1, #0
	bge _021D2F44
	neg r1, r1
_021D2F44:
	asr r0, r1, #6
	lsr r0, r0, #0x19
	add r0, r1, r0
	asr r1, r0, #7
	mov r0, #2
	lsl r0, r0, #0xa
	cmp r1, r0
	ble _021D2F56
	add r1, r0, #0
_021D2F56:
	mov r0, #1
	lsl r0, r0, #0xc
	sub r0, r0, r1
	str r0, [r3, #0xc]
	str r0, [r3, #0x10]
	str r0, [r3, #0x14]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov109_021D2EF4

	thumb_func_start ov109_021D2F68
ov109_021D2F68: ; 0x021D2F68
	push {r3, r4, r5, lr}
	mov r2, #0x19
	lsl r2, r2, #4
	add r3, r0, r2
	ldr r0, _021D2FA0 ; =0x0000071C
	ldr r4, [r1, #0x10]
	add r2, r3, r0
	add r5, r4, #0
	mov r0, #0x68
	mul r5, r0
	mov r4, #1
	str r4, [r2, r5]
	add r4, r3, #0
	add r0, r2, r5
	str r1, [r0, #0x64]
	ldr r2, [r1, #0x10]
	mov r1, #0x14
	add r4, #0x28
	mul r1, r2
	add r1, r4, r1
	mov r4, #0x24
	add r3, #0x8c
	mul r4, r2
	add r0, #0x10
	add r2, r3, r4
	bl sub_02073B90
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D2FA0: .word 0x0000071C
	thumb_func_end ov109_021D2F68

	thumb_func_start ov109_021D2FA4
ov109_021D2FA4: ; 0x021D2FA4
	push {r3, r4, r5, lr}
	add r2, r1, #0
	ldr r5, [r2, #0x64]
	add r3, r0, #0
	add r5, #0x44
	ldmia r5!, {r0, r1}
	add r4, r2, #4
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	mov r0, #5
	ldr r1, [r2, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [r2, #8]
	mov r0, #0x87
	lsl r0, r0, #2
	add r3, r3, r0
	ldr r0, [r2, #0x64]
	mov r2, #1
	ldr r1, [r0, #0x10]
	mov r0, #0x24
	mul r0, r1
	mov r1, #1
	add r0, r3, r0
	lsl r1, r1, #0xc
	bl sub_02073AC0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov109_021D2FA4

	thumb_func_start ov109_021D2FE0
ov109_021D2FE0: ; 0x021D2FE0
	push {r3, r4, r5, lr}
	ldr r4, [sp, #0x18]
	add r5, r0, #0
	str r1, [r4, #0xc]
	str r2, [r4, #0x10]
	ldr r0, [sp, #0x10]
	str r3, [r4, #0x14]
	str r2, [r4, #0x18]
	lsl r0, r0, #0xc
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x14]
	mov r1, #0x18
	lsl r0, r0, #0xc
	str r0, [r4, #0x20]
	mov r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #0x5f
	bl sub_02018184
	add r1, r0, #0
	add r3, r1, #0
	mov r2, #0x18
	mov r0, #0
_021D3012:
	strb r0, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _021D3012
	ldr r0, _021D3028 ; =ov109_021D302C
	str r5, [r1, #0x14]
	mov r2, #0
	str r4, [r1, #0x10]
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D3028: .word ov109_021D302C
	thumb_func_end ov109_021D2FE0

	thumb_func_start ov109_021D302C
ov109_021D302C: ; 0x021D302C
	push {r4, r5, r6, lr}
	ldr r4, _021D305C ; =0x021D59D8
	add r6, r0, #0
	add r5, r1, #0
_021D3034:
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _021D3034
	cmp r0, #2
	bne _021D3058
	ldr r0, [r5, #0x10]
	mov r1, #1
	str r1, [r0, #8]
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_021D3058:
	pop {r4, r5, r6, pc}
	nop
_021D305C: .word 0x021D59D8
	thumb_func_end ov109_021D302C

	thumb_func_start ov109_021D3060
ov109_021D3060: ; 0x021D3060
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	ldr r1, [r4, #0x10]
	lsl r0, r0, #0xc
	str r0, [r1, #0x38]
	str r0, [r1, #0x3c]
	str r0, [r1, #0x40]
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [r1, #0x54]
	ldr r0, [r4, #0x14]
	bl ov109_021D2C0C
	mov r0, #2
	lsl r0, r0, #0xe
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D3060

	thumb_func_start ov109_021D308C
ov109_021D308C: ; 0x021D308C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x10]
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #0x54]
	sub r0, r1, r0
	str r0, [r4, #0x54]
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021D30B6
	mov r0, #0x1a
	ldr r1, [r4, #0x54]
	lsl r0, r0, #0xe
	cmp r1, r0
	bgt _021D30B6
	mov r0, #1
	str r0, [r5, #8]
	mov r0, #0x65
	lsl r0, r0, #4
	bl sub_02005748
_021D30B6:
	mov r0, #2
	ldr r1, [r4, #0x54]
	lsl r0, r0, #0x10
	cmp r1, r0
	bgt _021D30C6
	str r0, [r4, #0x54]
	mov r0, #2
	str r0, [r5, #0]
_021D30C6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov109_021D308C

	thumb_func_start ov109_021D30CC
ov109_021D30CC: ; 0x021D30CC
	push {r3, lr}
	mov r1, #1
	ldr r3, [r0, #0xc]
	lsl r1, r1, #0xc
	ldr r2, [r0, #0x10]
	cmp r3, r1
	ble _021D30E4
	sub r3, r3, r1
	str r3, [r0, #0xc]
	cmp r3, r1
	bge _021D30E4
	str r1, [r0, #0xc]
_021D30E4:
	ldr r3, [r2, #0x54]
	ldr r1, [r0, #0xc]
	sub r1, r3, r1
	str r1, [r2, #0x54]
	cmp r1, #0
	bgt _021D310A
	mov r1, #0
	str r1, [r2, #0x54]
	ldr r3, [r2, #0xc]
	ldr r0, [r0, #0x14]
	lsl r1, r3, #2
	add r1, r0, r1
	add r1, #0x98
	ldr r1, [r1, #0]
	ldr r2, [r2, #0x14]
	bl ov109_021D2874
	mov r0, #2
	pop {r3, pc}
_021D310A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov109_021D30CC

	thumb_func_start ov109_021D3110
ov109_021D3110: ; 0x021D3110
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5, #4]
	add r6, r0, #0
	ldr r4, [r5, #0x1c]
	cmp r1, #0
	beq _021D3124
	cmp r1, #1
	beq _021D313A
	pop {r4, r5, r6, pc}
_021D3124:
	add r1, r4, #0
	bl ov109_021D3328
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [r5, #0x10]
	ldr r0, _021D317C ; =0xFFFFFBBC
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_021D313A:
	ldr r1, [r4, #0x54]
	ldr r0, [r5, #0x10]
	add r0, r1, r0
	str r0, [r4, #0x54]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	str r0, [r5, #0x10]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	cmp r0, #0xf
	blt _021D317A
	mov r1, #0
	str r1, [r5, #8]
	str r1, [r5, #0x10]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021D3166
	mov r0, #1
	str r0, [r5, #0xc]
	pop {r4, r5, r6, pc}
_021D3166:
	str r1, [r4, #0x54]
	add r0, r6, #0
	add r1, r4, #0
	bl ov109_021D3460
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x20
	bl memset
_021D317A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D317C: .word 0xFFFFFBBC
	thumb_func_end ov109_021D3110

	thumb_func_start ov109_021D3180
ov109_021D3180: ; 0x021D3180
	push {r4, r5, r6, lr}
	ldr r0, _021D31A4 ; =0x00000AB4
	add r6, r1, #0
	add r5, r6, r0
	mov r4, #0
_021D318A:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D3198
	add r0, r6, #0
	add r1, r5, #0
	bl ov109_021D3110
_021D3198:
	add r4, r4, #1
	add r5, #0x20
	cmp r4, #5
	blt _021D318A
	pop {r4, r5, r6, pc}
	nop
_021D31A4: .word 0x00000AB4
	thumb_func_end ov109_021D3180

	thumb_func_start ov109_021D31A8
ov109_021D31A8: ; 0x021D31A8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D31D8 ; =0x00000AB4
	mov r1, #0
	add r0, r4, r0
	mov r2, #0xa0
	bl memset
	mov r2, #1
	ldr r0, _021D31DC ; =ov109_021D3180
	add r1, r4, #0
	lsl r2, r2, #8
	bl sub_0200D9E8
	mov r1, #0xdb
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021D31D4
	bl GF_AssertFail
_021D31D4:
	pop {r4, pc}
	nop
_021D31D8: .word 0x00000AB4
_021D31DC: .word ov109_021D3180
	thumb_func_end ov109_021D31A8

	thumb_func_start ov109_021D31E0
ov109_021D31E0: ; 0x021D31E0
	mov r1, #0xdb
	lsl r1, r1, #4
	ldr r3, _021D31EC ; =sub_0200DA58
	ldr r0, [r0, r1]
	bx r3
	nop
_021D31EC: .word sub_0200DA58
	thumb_func_end ov109_021D31E0

	thumb_func_start ov109_021D31F0
ov109_021D31F0: ; 0x021D31F0
	push {r3, lr}
	ldr r2, _021D3214 ; =0x00000AB4
	add r3, r0, r2
	mov r2, #0
_021D31F8:
	ldr r0, [r3, #0]
	cmp r0, #0
	bne _021D3206
	mov r0, #1
	str r0, [r3, #0]
	str r1, [r3, #0x1c]
	pop {r3, pc}
_021D3206:
	add r2, r2, #1
	add r3, #0x20
	cmp r2, #5
	blt _021D31F8
	bl GF_AssertFail
	pop {r3, pc}
	; .align 2, 0
_021D3214: .word 0x00000AB4
	thumb_func_end ov109_021D31F0

	thumb_func_start ov109_021D3218
ov109_021D3218: ; 0x021D3218
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x19
	lsl r1, r1, #4
	add r4, r0, r1
	sub r1, #0x50
	ldr r7, [r0, #0x30]
	str r0, [sp]
	mov r6, #0
	add r5, r4, r1
_021D322A:
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D323C
	ldr r0, [sp]
	add r1, r5, #0
	bl ov109_021D31F0
_021D323C:
	add r6, r6, #1
	add r4, #0xb0
	add r5, #0xb0
	cmp r6, r7
	blt _021D322A
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov109_021D3218

	thumb_func_start ov109_021D3248
ov109_021D3248: ; 0x021D3248
	ldr r1, _021D3264 ; =0x00000AB4
	add r2, r0, r1
	mov r1, #0
_021D324E:
	ldr r0, [r2, #0]
	cmp r0, #0
	beq _021D3258
	mov r0, #1
	bx lr
_021D3258:
	add r1, r1, #1
	add r2, #0x20
	cmp r1, #5
	blt _021D324E
	mov r0, #0
	bx lr
	; .align 2, 0
_021D3264: .word 0x00000AB4
	thumb_func_end ov109_021D3248

	thumb_func_start ov109_021D3268
ov109_021D3268: ; 0x021D3268
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r4, [r5, #0x10]
	cmp r0, #0
	beq _021D327A
	cmp r0, #1
	beq _021D328A
	pop {r3, r4, r5, pc}
_021D327A:
	mov r0, #6
	lsl r0, r0, #0xe
	str r0, [r5, #0xc]
	mov r0, #0
	str r0, [r4, #0x30]
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_021D328A:
	add r0, r4, #0
	ldr r1, [r5, #0xc]
	add r0, #0x30
	bl ov109_021D39D4
	mov r0, #1
	ldr r1, [r4, #0x30]
	lsl r0, r0, #0xe
	cmp r1, r0
	bge _021D32B6
	ldr r1, [r5, #0xc]
	lsr r1, r1, #1
	str r1, [r5, #0xc]
	cmp r1, r0
	bge _021D32B6
	mov r1, #0
	str r1, [r4, #0x30]
	mov r0, #0x14
_021D32AE:
	strb r1, [r5]
	add r5, r5, #1
	sub r0, r0, #1
	bne _021D32AE
_021D32B6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D3268

	thumb_func_start ov109_021D32B8
ov109_021D32B8: ; 0x021D32B8
	push {r3, r4, r5, lr}
	ldr r0, _021D32D8 ; =0x00000B54
	mov r4, #0
	add r5, r1, r0
_021D32C0:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D32CC
	add r0, r5, #0
	bl ov109_021D3268
_021D32CC:
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #5
	blt _021D32C0
	pop {r3, r4, r5, pc}
	nop
_021D32D8: .word 0x00000B54
	thumb_func_end ov109_021D32B8

	thumb_func_start ov109_021D32DC
ov109_021D32DC: ; 0x021D32DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D3308 ; =0x00000B54
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x64
	bl memset
	ldr r0, _021D330C ; =ov109_021D32B8
	ldr r2, _021D3310 ; =0x00000101
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _021D3314 ; =0x00000DB4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021D3304
	bl GF_AssertFail
_021D3304:
	pop {r4, pc}
	nop
_021D3308: .word 0x00000B54
_021D330C: .word ov109_021D32B8
_021D3310: .word 0x00000101
_021D3314: .word 0x00000DB4
	thumb_func_end ov109_021D32DC

	thumb_func_start ov109_021D3318
ov109_021D3318: ; 0x021D3318
	ldr r1, _021D3320 ; =0x00000DB4
	ldr r3, _021D3324 ; =sub_0200DA58
	ldr r0, [r0, r1]
	bx r3
	; .align 2, 0
_021D3320: .word 0x00000DB4
_021D3324: .word sub_0200DA58
	thumb_func_end ov109_021D3318

	thumb_func_start ov109_021D3328
ov109_021D3328: ; 0x021D3328
	push {r4, lr}
	ldr r2, _021D336C ; =0x00000B54
	mov r3, #0
	add r0, r0, r2
	add r4, r0, #0
_021D3332:
	ldr r2, [r4, #0]
	cmp r2, #1
	bne _021D3344
	ldr r2, [r4, #0x10]
	cmp r2, r1
	bne _021D3344
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
_021D3344:
	add r3, r3, #1
	add r4, #0x14
	cmp r3, #5
	blt _021D3332
	mov r3, #0
_021D334E:
	ldr r2, [r0, #0]
	cmp r2, #0
	bne _021D335C
	mov r2, #1
	str r2, [r0, #0]
	str r1, [r0, #0x10]
	pop {r4, pc}
_021D335C:
	add r3, r3, #1
	add r0, #0x14
	cmp r3, #5
	blt _021D334E
	bl GF_AssertFail
	pop {r4, pc}
	nop
_021D336C: .word 0x00000B54
	thumb_func_end ov109_021D3328

	thumb_func_start ov109_021D3370
ov109_021D3370: ; 0x021D3370
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r4, [r5, #0x14]
	cmp r0, #0
	beq _021D3382
	cmp r0, #1
	beq _021D339A
	pop {r4, r5, r6, pc}
_021D3382:
	mov r0, #0
	str r0, [r4, #0x34]
	str r0, [r5, #0x10]
	mov r0, #0x1e
	lsl r0, r0, #0xc
	str r0, [r5, #8]
	mov r0, #5
	lsl r0, r0, #0xe
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_021D339A:
	ldr r1, [r5, #0x10]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D15C
	ldr r2, [r5, #8]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r2, r1, #0xc
	add r1, r2, #0
	mul r1, r0
	mov r0, #0
	str r0, [r4, #0x34]
	add r0, r4, #0
	add r0, #0x34
	bl ov109_021D39D4
	add r0, r5, #0
	ldr r1, [r5, #0xc]
	add r0, #0x10
	ldr r6, [r5, #0x10]
	bl ov109_021D39D4
	ldr r0, [r5, #0x10]
	cmp r0, r6
	bge _021D33EC
	ldr r0, [r5, #8]
	lsr r0, r0, #1
	str r0, [r5, #8]
	bne _021D33EC
	mov r1, #0
	str r1, [r4, #0x34]
	mov r0, #0x18
_021D33E4:
	strb r1, [r5]
	add r5, r5, #1
	sub r0, r0, #1
	bne _021D33E4
_021D33EC:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov109_021D3370

	thumb_func_start ov109_021D33F0
ov109_021D33F0: ; 0x021D33F0
	push {r3, r4, r5, lr}
	ldr r0, _021D3410 ; =0x00000BB8
	mov r4, #0
	add r5, r1, r0
_021D33F8:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D3404
	add r0, r5, #0
	bl ov109_021D3370
_021D3404:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #5
	blt _021D33F8
	pop {r3, r4, r5, pc}
	nop
_021D3410: .word 0x00000BB8
	thumb_func_end ov109_021D33F0

	thumb_func_start ov109_021D3414
ov109_021D3414: ; 0x021D3414
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D3440 ; =0x00000BB8
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x78
	bl memset
	ldr r0, _021D3444 ; =ov109_021D33F0
	ldr r2, _021D3448 ; =0x00000102
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _021D344C ; =0x00000DB8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021D343C
	bl GF_AssertFail
_021D343C:
	pop {r4, pc}
	nop
_021D3440: .word 0x00000BB8
_021D3444: .word ov109_021D33F0
_021D3448: .word 0x00000102
_021D344C: .word 0x00000DB8
	thumb_func_end ov109_021D3414

	thumb_func_start ov109_021D3450
ov109_021D3450: ; 0x021D3450
	ldr r1, _021D3458 ; =0x00000DB8
	ldr r3, _021D345C ; =sub_0200DA58
	ldr r0, [r0, r1]
	bx r3
	; .align 2, 0
_021D3458: .word 0x00000DB8
_021D345C: .word sub_0200DA58
	thumb_func_end ov109_021D3450

	thumb_func_start ov109_021D3460
ov109_021D3460: ; 0x021D3460
	push {r4, lr}
	ldr r2, _021D34A4 ; =0x00000BB8
	mov r3, #0
	add r0, r0, r2
	add r4, r0, #0
_021D346A:
	ldr r2, [r4, #0]
	cmp r2, #1
	bne _021D347C
	ldr r2, [r4, #0x14]
	cmp r2, r1
	bne _021D347C
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
_021D347C:
	add r3, r3, #1
	add r4, #0x18
	cmp r3, #5
	blt _021D346A
	mov r3, #0
_021D3486:
	ldr r2, [r0, #0]
	cmp r2, #0
	bne _021D3494
	mov r2, #1
	str r2, [r0, #0]
	str r1, [r0, #0x14]
	pop {r4, pc}
_021D3494:
	add r3, r3, #1
	add r0, #0x18
	cmp r3, #5
	blt _021D3486
	bl GF_AssertFail
	pop {r4, pc}
	nop
_021D34A4: .word 0x00000BB8
	thumb_func_end ov109_021D3460

	thumb_func_start ov109_021D34A8
ov109_021D34A8: ; 0x021D34A8
	push {r4, lr}
	add r4, r1, #0
	ldr r2, [r4, #0]
	add r1, r0, #0
	add r1, #0xd4
	cmp r2, #5
	bhi _021D3564
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D34C2: ; jump table
	.short _021D3564 - _021D34C2 - 2 ; case 0
	.short _021D34CE - _021D34C2 - 2 ; case 1
	.short _021D34DE - _021D34C2 - 2 ; case 2
	.short _021D34F6 - _021D34C2 - 2 ; case 3
	.short _021D351C - _021D34C2 - 2 ; case 4
	.short _021D354E - _021D34C2 - 2 ; case 5
_021D34CE:
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D34DE:
	mov r0, #1
	ldr r2, [r1, #0x34]
	lsl r0, r0, #0xc
	sub r2, r2, r0
	ldr r0, _021D3568 ; =0xFFFF8000
	str r2, [r1, #0x34]
	cmp r2, r0
	bgt _021D3564
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_021D34F6:
	mov r2, #2
	ldr r3, [r1, #0x34]
	lsl r2, r2, #0xc
	add r2, r3, r2
	str r2, [r1, #0x34]
	bmi _021D3564
	mov r2, #0
	str r2, [r1, #0x34]
	bl ov109_021D3218
	mov r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, _021D356C ; =0x00000657
	bl sub_02005748
	pop {r4, pc}
_021D351C:
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x28]
	ldr r0, [r4, #0x10]
	neg r0, r0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	add r2, r0, #1
	mov r0, #3
	str r2, [r4, #0xc]
	tst r0, r2
	bne _021D3564
	mov r0, #1
	ldr r2, [r4, #0x10]
	lsl r0, r0, #0xc
	cmp r2, r0
	bgt _021D3548
	mov r0, #0
	str r0, [r1, #0x28]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_021D3548:
	asr r0, r2, #1
	str r0, [r4, #0x10]
	pop {r4, pc}
_021D354E:
	bl ov109_021D3248
	cmp r0, #0
	bne _021D3564
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #4]
	str r0, [r4, #0]
	ldr r0, _021D3570 ; =0x00000631
	bl sub_02005748
_021D3564:
	pop {r4, pc}
	nop
_021D3568: .word 0xFFFF8000
_021D356C: .word 0x00000657
_021D3570: .word 0x00000631
	thumb_func_end ov109_021D34A8

	thumb_func_start ov109_021D3574
ov109_021D3574: ; 0x021D3574
	mov r2, #0xc3
	ldr r3, _021D3580 ; =ov109_021D34A8
	lsl r2, r2, #4
	add r0, r1, #0
	add r1, r1, r2
	bx r3
	; .align 2, 0
_021D3580: .word ov109_021D34A8
	thumb_func_end ov109_021D3574

	thumb_func_start ov109_021D3584
ov109_021D3584: ; 0x021D3584
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xc3
	lsl r0, r0, #4
	add r2, r4, r0
	mov r1, #0x14
	mov r0, #0
_021D3592:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021D3592
	ldr r0, _021D35B4 ; =ov109_021D3574
	add r1, r4, #0
	mov r2, #0xff
	bl sub_0200D9E8
	ldr r1, _021D35B8 ; =0x00000DBC
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021D35B2
	bl GF_AssertFail
_021D35B2:
	pop {r4, pc}
	; .align 2, 0
_021D35B4: .word ov109_021D3574
_021D35B8: .word 0x00000DBC
	thumb_func_end ov109_021D3584

	thumb_func_start ov109_021D35BC
ov109_021D35BC: ; 0x021D35BC
	ldr r1, _021D35C4 ; =0x00000DBC
	ldr r3, _021D35C8 ; =sub_0200DA58
	ldr r0, [r0, r1]
	bx r3
	; .align 2, 0
_021D35C4: .word 0x00000DBC
_021D35C8: .word sub_0200DA58
	thumb_func_end ov109_021D35BC

	thumb_func_start ov109_021D35CC
ov109_021D35CC: ; 0x021D35CC
	push {r4, lr}
	mov r1, #0xc3
	lsl r1, r1, #4
	add r4, r0, r1
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021D35DE
	bl GF_AssertFail
_021D35DE:
	mov r0, #1
	str r0, [r4, #8]
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D35CC

	thumb_func_start ov109_021D35E8
ov109_021D35E8: ; 0x021D35E8
	ldr r1, _021D35F0 ; =0x00000C34
	ldr r0, [r0, r1]
	bx lr
	nop
_021D35F0: .word 0x00000C34
	thumb_func_end ov109_021D35E8

	thumb_func_start ov109_021D35F4
ov109_021D35F4: ; 0x021D35F4
	ldr r1, _021D35FC ; =0x00000C38
	ldr r0, [r0, r1]
	bx lr
	nop
_021D35FC: .word 0x00000C38
	thumb_func_end ov109_021D35F4

	thumb_func_start ov109_021D3600
ov109_021D3600: ; 0x021D3600
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D3616
	cmp r0, #1
	beq _021D366A
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021D3616:
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bge _021D364C
	ldr r5, _021D3680 ; =0x021D59E4
	add r3, sp, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0
	bgt _021D364C
	mov r0, #0x1e
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_021D364C:
	mov r1, #6
	ldr r0, [r4, #0x14]
	lsl r1, r1, #0xa
	bl sub_0200D34C
	ldr r0, [r4, #0x14]
	bl sub_0200D3B8
	cmp r0, #0
	bne _021D367C
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D366A:
	ldr r0, [r4, #0x14]
	bl sub_0200D0F4
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_021D367C:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D3680: .word 0x021D59E4
	thumb_func_end ov109_021D3600

	thumb_func_start ov109_021D3684
ov109_021D3684: ; 0x021D3684
	push {r4, r5, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #0x5f
	mov r1, #0x18
	bl sub_02018184
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021D369A:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021D369A
	mov r1, #0x80
	add r0, sp, #0
	strh r1, [r0]
	mov r1, #0x64
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r0, #5
	str r0, [sp, #0x18]
	mov r0, #6
	str r0, [sp, #0x1c]
	mov r0, #7
	str r0, [sp, #0x20]
	sub r0, #8
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x30]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r1, sp, #0
	bl ov109_021D24E0
	str r0, [r4, #0x14]
	bl sub_0200D330
	ldr r0, _021D36FC ; =ov109_021D3600
	add r1, r4, #0
	mov r2, #0
	str r5, [r4, #0x10]
	bl sub_0200D9E8
	add r4, r0, #0
	bne _021D36F6
	bl GF_AssertFail
_021D36F6:
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, pc}
	; .align 2, 0
_021D36FC: .word ov109_021D3600
	thumb_func_end ov109_021D3684

	thumb_func_start ov109_021D3700
ov109_021D3700: ; 0x021D3700
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	cmp r1, #4
	bhi _021D3780
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D3718: ; jump table
	.short _021D3780 - _021D3718 - 2 ; case 0
	.short _021D3722 - _021D3718 - 2 ; case 1
	.short _021D3736 - _021D3718 - 2 ; case 2
	.short _021D3752 - _021D3718 - 2 ; case 3
	.short _021D376C - _021D3718 - 2 ; case 4
_021D3722:
	bl ov109_021D228C
	ldr r0, _021D3784 ; =0x000005E4
	bl sub_02005748
	mov r0, #0
	str r0, [r4, #4]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_021D3736:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #2
	blt _021D3780
	mov r0, #0
	str r0, [r4, #4]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	add r0, r5, #0
	bl ov109_021D22A4
	pop {r3, r4, r5, pc}
_021D3752:
	ldr r1, [r4, #4]
	add r1, r1, #1
	str r1, [r4, #4]
	cmp r1, #4
	blt _021D3780
	bl ov109_021D228C
	mov r0, #0
	str r0, [r4, #4]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_021D376C:
	ldr r1, [r4, #4]
	add r1, r1, #1
	str r1, [r4, #4]
	cmp r1, #2
	blt _021D3780
	bl ov109_021D2298
	mov r0, #0
	strh r0, [r4, #2]
	strh r0, [r4]
_021D3780:
	pop {r3, r4, r5, pc}
	nop
_021D3784: .word 0x000005E4
	thumb_func_end ov109_021D3700

	thumb_func_start ov109_021D3788
ov109_021D3788: ; 0x021D3788
	ldr r2, _021D3794 ; =0x00000C44
	ldr r3, _021D3798 ; =ov109_021D3700
	add r0, r1, #0
	add r1, r1, r2
	bx r3
	nop
_021D3794: .word 0x00000C44
_021D3798: .word ov109_021D3700
	thumb_func_end ov109_021D3788

	thumb_func_start ov109_021D379C
ov109_021D379C: ; 0x021D379C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D37D4 ; =0x00000C44
	ldr r2, _021D37D8 ; =0x00000103
	add r1, r4, r0
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r0, [r1, #4]
	strb r0, [r1, #5]
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	ldr r0, _021D37DC ; =ov109_021D3788
	add r1, r4, #0
	bl sub_0200D9E8
	mov r1, #0x37
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021D37D0
	bl GF_AssertFail
_021D37D0:
	pop {r4, pc}
	nop
_021D37D4: .word 0x00000C44
_021D37D8: .word 0x00000103
_021D37DC: .word ov109_021D3788
	thumb_func_end ov109_021D379C

	thumb_func_start ov109_021D37E0
ov109_021D37E0: ; 0x021D37E0
	mov r1, #0x37
	lsl r1, r1, #6
	ldr r3, _021D37EC ; =sub_0200DA58
	ldr r0, [r0, r1]
	bx r3
	nop
_021D37EC: .word sub_0200DA58
	thumb_func_end ov109_021D37E0

	thumb_func_start ov109_021D37F0
ov109_021D37F0: ; 0x021D37F0
	ldr r1, _021D37F8 ; =0x00000C46
	ldrh r0, [r0, r1]
	bx lr
	nop
_021D37F8: .word 0x00000C46
	thumb_func_end ov109_021D37F0

	thumb_func_start ov109_021D37FC
ov109_021D37FC: ; 0x021D37FC
	push {r4, lr}
	ldr r1, _021D3814 ; =0x00000C44
	add r4, r0, r1
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _021D380C
	bl GF_AssertFail
_021D380C:
	mov r0, #1
	strh r0, [r4, #2]
	strh r0, [r4]
	pop {r4, pc}
	; .align 2, 0
_021D3814: .word 0x00000C44
	thumb_func_end ov109_021D37FC

	thumb_func_start ov109_021D3818
ov109_021D3818: ; 0x021D3818
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _021D385E
	cmp r0, #1
	beq _021D3828
	cmp r0, #2
	beq _021D384C
	bx lr
_021D3828:
	ldr r0, [r1, #4]
	lsl r2, r0, #2
	ldr r0, _021D3860 ; =0x021D5F20
	ldr r0, [r0, r2]
	lsl r2, r0, #0xc
	ldr r0, [r1, #0xc]
	str r2, [r0, #0x54]
	ldr r0, [r1, #4]
	add r0, r0, #1
	str r0, [r1, #4]
	cmp r0, #0x10
	blt _021D385E
	mov r0, #0
	str r0, [r1, #4]
	ldr r0, [r1, #0]
	add r0, r0, #1
	str r0, [r1, #0]
	bx lr
_021D384C:
	ldr r0, [r1, #8]
	add r0, r0, #1
	str r0, [r1, #8]
	cmp r0, #0xf
	blt _021D385E
	mov r0, #0
	str r0, [r1, #8]
	mov r0, #1
	str r0, [r1, #0]
_021D385E:
	bx lr
	; .align 2, 0
_021D3860: .word 0x021D5F20
	thumb_func_end ov109_021D3818

	thumb_func_start ov109_021D3864
ov109_021D3864: ; 0x021D3864
	push {r4, r5, r6, lr}
	ldr r0, _021D3880 ; =0x00000C4C
	add r6, r1, #0
	add r5, r6, r0
	mov r4, #0
_021D386E:
	add r0, r6, #0
	add r1, r5, #0
	bl ov109_021D3818
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #5
	blt _021D386E
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D3880: .word 0x00000C4C
	thumb_func_end ov109_021D3864

	thumb_func_start ov109_021D3884
ov109_021D3884: ; 0x021D3884
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D38B0 ; =0x00000C4C
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x50
	bl memset
	mov r2, #0x41
	ldr r0, _021D38B4 ; =ov109_021D3864
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	ldr r1, _021D38B8 ; =0x00000DC4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021D38AE
	bl GF_AssertFail
_021D38AE:
	pop {r4, pc}
	; .align 2, 0
_021D38B0: .word 0x00000C4C
_021D38B4: .word ov109_021D3864
_021D38B8: .word 0x00000DC4
	thumb_func_end ov109_021D3884

	thumb_func_start ov109_021D38BC
ov109_021D38BC: ; 0x021D38BC
	ldr r1, _021D38C4 ; =0x00000DC4
	ldr r3, _021D38C8 ; =sub_0200DA58
	ldr r0, [r0, r1]
	bx r3
	; .align 2, 0
_021D38C4: .word 0x00000DC4
_021D38C8: .word sub_0200DA58
	thumb_func_end ov109_021D38BC

	thumb_func_start ov109_021D38CC
ov109_021D38CC: ; 0x021D38CC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _021D38F4 ; =0x00000C4C
	ldr r2, [r5, #0xc]
	add r1, r0, r1
	lsl r0, r2, #4
	add r4, r1, r0
	cmp r2, #5
	blt _021D38E2
	bl GF_AssertFail
_021D38E2:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D38EC
	bl GF_AssertFail
_021D38EC:
	mov r0, #1
	str r0, [r4, #0]
	str r5, [r4, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D38F4: .word 0x00000C4C
	thumb_func_end ov109_021D38CC

	thumb_func_start ov109_021D38F8
ov109_021D38F8: ; 0x021D38F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r0, [r0, #0x20]
	mov r1, #0x19
	str r0, [sp, #4]
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r7, [r0, #0x30]
	mov r6, #0
	add r4, r0, r1
	cmp r7, #0
	ble _021D3944
	sub r1, #0x50
	add r5, r4, r1
_021D3916:
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D393A
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #1
	add r2, r0, #0
	lsl r2, r1
	ldr r0, [sp, #4]
	tst r0, r2
	beq _021D393A
	ldr r0, [sp]
	add r1, r5, #0
	bl ov109_021D38CC
_021D393A:
	add r6, r6, #1
	add r4, #0xb0
	add r5, #0xb0
	cmp r6, r7
	blt _021D3916
_021D3944:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov109_021D38F8

	thumb_func_start ov109_021D3948
ov109_021D3948: ; 0x021D3948
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	mov r4, #0
	cmp r0, #1
	ldr r0, [r5, #8]
	bne _021D3966
	sub r0, r0, #1
	str r0, [r5, #8]
	cmp r0, #0
	bgt _021D3974
	str r4, [r5, #8]
	mov r4, #1
	b _021D3974
_021D3966:
	add r0, r0, #1
	str r0, [r5, #8]
	cmp r0, #8
	blt _021D3974
	mov r0, #8
	str r0, [r5, #8]
	mov r4, #1
_021D3974:
	ldr r0, [r5, #0]
	ldr r1, [r5, #8]
	bl ov109_021D2344
	cmp r4, #1
	bne _021D398C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_021D398C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov109_021D3948

	thumb_func_start ov109_021D3990
ov109_021D3990: ; 0x021D3990
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021D39CC ; =0x021D59AC
	add r4, r1, #0
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x20]
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0x5f
	mov r1, #0xc
	bl sub_02018184
	add r1, r0, #0
	str r5, [r1, #0]
	lsl r2, r4, #2
	add r0, sp, #0
	ldr r0, [r0, r2]
	str r4, [r1, #4]
	str r0, [r1, #8]
	ldr r0, _021D39D0 ; =ov109_021D3948
	mov r2, #0
	bl sub_0200D9E8
	cmp r0, #0
	bne _021D39C8
	bl GF_AssertFail
_021D39C8:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D39CC: .word 0x021D59AC
_021D39D0: .word ov109_021D3948
	thumb_func_end ov109_021D3990

	thumb_func_start ov109_021D39D4
ov109_021D39D4: ; 0x021D39D4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r0, r0, r1
	str r0, [r4, #0]
	bpl _021D39EC
	mov r0, #0x5a
	lsl r0, r0, #0xe
_021D39E4:
	ldr r1, [r4, #0]
	add r1, r1, r0
	str r1, [r4, #0]
	bmi _021D39E4
_021D39EC:
	mov r1, #0x5a
	ldr r0, [r4, #0]
	lsl r1, r1, #0xe
	bl _s32_div_f
	str r1, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D39D4

	thumb_func_start ov109_021D39FC
ov109_021D39FC: ; 0x021D39FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0xd4
	bl ov109_021D2AE4
	add r0, r5, #0
	add r1, r4, #0
	bl ov109_021D2D44
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov109_021D39FC

	thumb_func_start ov109_021D3A14
ov109_021D3A14: ; 0x021D3A14
	ldr r1, [r0, #8]
	add r2, r1, #1
	mov r1, #0x96
	lsl r1, r1, #2
	str r2, [r0, #8]
	cmp r2, r1
	bge _021D3A26
	mov r0, #0
	bx lr
_021D3A26:
	str r1, [r0, #8]
	mov r0, #1
	bx lr
	thumb_func_end ov109_021D3A14

	thumb_func_start ov109_021D3A2C
ov109_021D3A2C: ; 0x021D3A2C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #0x36
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r6, r1, #0
	add r5, r2, #0
	bl sub_02006D84
	add r1, r0, #0
	cmp r5, #1
	bne _021D3A4C
	mov r0, #0x5f
	bl sub_02018144
	b _021D3A52
_021D3A4C:
	mov r0, #0x5f
	bl sub_02018184
_021D3A52:
	add r5, r0, #0
	mov r0, #0x36
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r1, r6, #0
	add r2, r5, #0
	bl sub_02006D28
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov109_021D3A2C

	thumb_func_start ov109_021D3A68
ov109_021D3A68: ; 0x021D3A68
	cmp r1, #0
	beq _021D3A6E
	str r1, [r0, #0x34]
_021D3A6E:
	bx lr
	thumb_func_end ov109_021D3A68

	thumb_func_start ov109_021D3A70
ov109_021D3A70: ; 0x021D3A70
	mov r2, #1
	str r2, [r0, #0x3c]
	ldrh r3, [r1]
	add r2, r0, #0
	add r2, #0x58
	strh r3, [r2]
	add r2, r0, #0
	ldrh r3, [r1, #2]
	add r2, #0x5a
	strh r3, [r2]
	add r2, r0, #0
	ldrh r3, [r1, #4]
	add r2, #0x5c
	add r0, #0x5e
	strh r3, [r2]
	ldrh r1, [r1, #6]
	strh r1, [r0]
	bx lr
	thumb_func_end ov109_021D3A70

	thumb_func_start ov109_021D3A94
ov109_021D3A94: ; 0x021D3A94
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0x20
	blo _021D3AA0
	bl GF_AssertFail
_021D3AA0:
	add r0, r4, #0
	add r0, #0xac
	mov r1, #0
	mov r2, #0x20
	bl memset
	add r4, #0xac
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov109_021D3A94

	thumb_func_start ov109_021D3AB4
ov109_021D3AB4: ; 0x021D3AB4
	add r0, #0xac
	bx lr
	thumb_func_end ov109_021D3AB4

	thumb_func_start ov109_021D3AB8
ov109_021D3AB8: ; 0x021D3AB8
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r0, #0x40
	ldrh r0, [r0]
	tst r0, r1
	beq _021D3AC8
	mov r0, #1
	bx lr
_021D3AC8:
	mov r0, #0
	bx lr
	thumb_func_end ov109_021D3AB8

	thumb_func_start ov109_021D3ACC
ov109_021D3ACC: ; 0x021D3ACC
	push {r3, r4}
	add r1, r0, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, #0xcc
	ldr r1, [r1, #0]
	add r0, #0x42
	ldr r1, [r1, #8]
	ldrh r4, [r0]
	mov r2, #0
	sub r3, r1, #1
	cmp r4, #0
	beq _021D3AF2
	mov r0, #1
_021D3AE8:
	add r1, r4, #0
	and r1, r0
	add r2, r2, r1
	lsr r4, r4, #1
	bne _021D3AE8
_021D3AF2:
	cmp r2, r3
	blt _021D3AFC
	mov r0, #1
	pop {r3, r4}
	bx lr
_021D3AFC:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov109_021D3ACC

	thumb_func_start ov109_021D3B04
ov109_021D3B04: ; 0x021D3B04
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r2, #0
	add r0, #0x42
	ldrh r3, [r0]
	cmp r3, #0
	beq _021D3B1E
	mov r0, #1
_021D3B14:
	add r1, r3, #0
	and r1, r0
	add r2, r2, r1
	lsr r3, r3, #1
	bne _021D3B14
_021D3B1E:
	add r0, r2, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov109_021D3B04

	thumb_func_start ov109_021D3B24
ov109_021D3B24: ; 0x021D3B24
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4]
	lsl r2, r0, #2
	add r0, r5, r2
	add r0, #0x70
	strh r1, [r0]
	add r0, r5, r2
	ldrh r1, [r4, #2]
	add r0, #0x72
	strh r1, [r0]
	bl sub_0203608C
	ldrh r1, [r4, #2]
	cmp r1, r0
	bne _021D3B4C
	ldrh r0, [r4]
	str r0, [r5, #0x2c]
_021D3B4C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov109_021D3B24

	thumb_func_start ov109_021D3B50
ov109_021D3B50: ; 0x021D3B50
	str r1, [r0, #0x30]
	bx lr
	thumb_func_end ov109_021D3B50

	thumb_func_start ov109_021D3B54
ov109_021D3B54: ; 0x021D3B54
	cmp r1, #0
	beq _021D3B6C
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r0, #0x42
	ldrh r2, [r0]
	mov r0, #1
	lsl r0, r1
	tst r0, r2
	bne _021D3B6C
	mov r0, #0
	bx lr
_021D3B6C:
	mov r0, #1
	bx lr
	thumb_func_end ov109_021D3B54

	thumb_func_start ov109_021D3B70
ov109_021D3B70: ; 0x021D3B70
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r5, r1, #0
	ldr r6, [r4, #0x24]
	bl sub_0209C188
	add r7, r0, #0
	lsl r0, r5, #2
	add r0, r4, r0
	add r4, #0xcc
	ldr r1, [r4, #0]
	ldr r5, [r0, #0x44]
	ldr r1, [r1, #4]
	add r0, r6, #0
	bl sub_0207A0FC
	add r4, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0207A0FC
	add r5, r0, #0
	bl sub_0203608C
	bl sub_02032EE8
	add r1, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r5, #0
	mov r2, #5
	mov r3, #0
	bl sub_0209304C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020775EC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov109_021D3B70

	thumb_func_start ov109_021D3BC4
ov109_021D3BC4: ; 0x021D3BC4
	add r0, #0xd0
	ldr r1, [r0, #0]
	mov r0, #0x46
	ldrsh r3, [r1, r0]
	mov r2, #0
	cmp r3, #0
	beq _021D3BDE
	mov r0, #1
_021D3BD4:
	add r1, r3, #0
	and r1, r0
	add r2, r2, r1
	lsr r3, r3, #1
	bne _021D3BD4
_021D3BDE:
	add r0, r2, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov109_021D3BC4

	thumb_func_start ov109_021D3BE4
ov109_021D3BE4: ; 0x021D3BE4
	lsl r1, r1, #2
	add r0, r0, r1
	str r2, [r0, #0x44]
	bx lr
	thumb_func_end ov109_021D3BE4

	thumb_func_start ov109_021D3BEC
ov109_021D3BEC: ; 0x021D3BEC
	push {r3, r4}
	add r4, r0, #0
	add r4, #0x60
	mov r3, #8
_021D3BF4:
	ldrh r2, [r1]
	add r1, r1, #2
	strh r2, [r4]
	add r4, r4, #2
	sub r3, r3, #1
	bne _021D3BF4
	mov r1, #1
	str r1, [r0, #0x40]
	pop {r3, r4}
	bx lr
	thumb_func_end ov109_021D3BEC

	thumb_func_start ov109_021D3C08
ov109_021D3C08: ; 0x021D3C08
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	mov r1, #0x11
	add r3, r0, #0
	lsl r1, r1, #4
	ldr r1, [r3, r1]
	add r0, sp, #0x14
	neg r1, r1
	add r4, r2, #0
	bl ov109_021D39D4
	ldr r0, [sp, #0x14]
	ldr r1, _021D3C8C ; =0xFFFFC000
	str r0, [sp]
	add r0, sp, #0
	bl ov109_021D39D4
	ldr r1, [sp]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r5, r0, #0xc
	ldr r0, [sp, #0x14]
	mov r1, #5
	str r0, [sp]
	add r0, sp, #0
	lsl r1, r1, #0xc
	bl ov109_021D39D4
	ldr r1, [sp]
	ldr r2, _021D3C90 ; =0x021D5C14
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r1, r4, #3
	add r3, r2, r1
	ldr r2, [r2, r1]
	asr r0, r0, #0xc
	ldr r3, [r3, #4]
	cmp r2, #0
	beq _021D3C80
_021D3C5A:
	ldrh r4, [r3]
	cmp r5, r4
	blo _021D3C66
	ldrh r1, [r3, #2]
	cmp r5, r1
	bls _021D3C70
_021D3C66:
	cmp r0, r4
	blo _021D3C7A
	ldrh r1, [r3, #2]
	cmp r0, r1
	bhi _021D3C7A
_021D3C70:
	mov r0, #1
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
_021D3C7A:
	add r3, r3, #4
	sub r2, r2, #1
	bne _021D3C5A
_021D3C80:
	mov r0, #0
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_021D3C8C: .word 0xFFFFC000
_021D3C90: .word 0x021D5C14
	thumb_func_end ov109_021D3C08

	thumb_func_start ov109_021D3C94
ov109_021D3C94: ; 0x021D3C94
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_0207A0F8
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _021D3CD2
_021D3CA4:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _021D3CCC
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _021D3CCC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3CCC:
	add r5, r5, #1
	cmp r5, r6
	blt _021D3CA4
_021D3CD2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov109_021D3C94

	thumb_func_start ov109_021D3CD8
ov109_021D3CD8: ; 0x021D3CD8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	bl ov109_021D3C94
	cmp r0, #1
	bne _021D3CEA
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D3CEA:
	mov r4, #0
_021D3CEC:
	add r0, r5, #0
	add r1, r4, #0
	bl ov109_021D3B54
	cmp r0, #0
	beq _021D3D10
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_0209C188
	bl ov109_021D3C94
	cmp r0, #1
	bne _021D3D10
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D3D10:
	add r4, r4, #1
	cmp r4, #5
	blt _021D3CEC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov109_021D3CD8

	thumb_func_start ov109_021D3D1C
ov109_021D3D1C: ; 0x021D3D1C
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r2, #0
	add r0, #0x4a
	ldrh r3, [r0]
	cmp r3, #0
	beq _021D3D36
	mov r0, #1
_021D3D2C:
	add r1, r3, #0
	and r1, r0
	add r2, r2, r1
	lsr r3, r3, #1
	bne _021D3D2C
_021D3D36:
	add r0, r2, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov109_021D3D1C

	thumb_func_start ov109_021D3D3C
ov109_021D3D3C: ; 0x021D3D3C
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0
	beq _021D3D4C
	mov r0, #1
	bx lr
_021D3D4C:
	mov r0, #0
	bx lr
	thumb_func_end ov109_021D3D3C

	.rodata


	.global Unk_ov109_021D59AC
Unk_ov109_021D59AC: ; 0x021D59AC
	.incbin "incbin/overlay109_rodata.bin", 0x0, 0x4 - 0x0

	.global Unk_ov109_021D59B0
Unk_ov109_021D59B0: ; 0x021D59B0
	.incbin "incbin/overlay109_rodata.bin", 0x4, 0xC - 0x4

	.global Unk_ov109_021D59B8
Unk_ov109_021D59B8: ; 0x021D59B8
	.incbin "incbin/overlay109_rodata.bin", 0xC, 0x14 - 0xC

	.global Unk_ov109_021D59C0
Unk_ov109_021D59C0: ; 0x021D59C0
	.incbin "incbin/overlay109_rodata.bin", 0x14, 0x1C - 0x14

	.global Unk_ov109_021D59C8
Unk_ov109_021D59C8: ; 0x021D59C8
	.incbin "incbin/overlay109_rodata.bin", 0x1C, 0x24 - 0x1C

	.global Unk_ov109_021D59D0
Unk_ov109_021D59D0: ; 0x021D59D0
	.incbin "incbin/overlay109_rodata.bin", 0x24, 0x2C - 0x24

	.global Unk_ov109_021D59D8
Unk_ov109_021D59D8: ; 0x021D59D8
	.incbin "incbin/overlay109_rodata.bin", 0x2C, 0x38 - 0x2C

	.global Unk_ov109_021D59E4
Unk_ov109_021D59E4: ; 0x021D59E4
	.incbin "incbin/overlay109_rodata.bin", 0x38, 0x48 - 0x38

	.global Unk_ov109_021D59F4
Unk_ov109_021D59F4: ; 0x021D59F4
	.incbin "incbin/overlay109_rodata.bin", 0x48, 0x58 - 0x48

	.global Unk_ov109_021D5A04
Unk_ov109_021D5A04: ; 0x021D5A04
	.incbin "incbin/overlay109_rodata.bin", 0x58, 0x68 - 0x58

	.global Unk_ov109_021D5A14
Unk_ov109_021D5A14: ; 0x021D5A14
	.incbin "incbin/overlay109_rodata.bin", 0x68, 0x7C - 0x68

	.global Unk_ov109_021D5A28
Unk_ov109_021D5A28: ; 0x021D5A28
	.incbin "incbin/overlay109_rodata.bin", 0x7C, 0x90 - 0x7C

	.global Unk_ov109_021D5A3C
Unk_ov109_021D5A3C: ; 0x021D5A3C
	.incbin "incbin/overlay109_rodata.bin", 0x90, 0xA4 - 0x90

	.global Unk_ov109_021D5A50
Unk_ov109_021D5A50: ; 0x021D5A50
	.incbin "incbin/overlay109_rodata.bin", 0xA4, 0xBC - 0xA4

	.global Unk_ov109_021D5A68
Unk_ov109_021D5A68: ; 0x021D5A68
	.incbin "incbin/overlay109_rodata.bin", 0xBC, 0xD4 - 0xBC

	.global Unk_ov109_021D5A80
Unk_ov109_021D5A80: ; 0x021D5A80
	.incbin "incbin/overlay109_rodata.bin", 0xD4, 0xEC - 0xD4

	.global Unk_ov109_021D5A98
Unk_ov109_021D5A98: ; 0x021D5A98
	.incbin "incbin/overlay109_rodata.bin", 0xEC, 0x104 - 0xEC

	.global Unk_ov109_021D5AB0
Unk_ov109_021D5AB0: ; 0x021D5AB0
	.incbin "incbin/overlay109_rodata.bin", 0x104, 0x11C - 0x104

	.global Unk_ov109_021D5AC8
Unk_ov109_021D5AC8: ; 0x021D5AC8
	.incbin "incbin/overlay109_rodata.bin", 0x11C, 0x138 - 0x11C

	.global Unk_ov109_021D5AE4
Unk_ov109_021D5AE4: ; 0x021D5AE4
	.incbin "incbin/overlay109_rodata.bin", 0x138, 0x154 - 0x138

	.global Unk_ov109_021D5B00
Unk_ov109_021D5B00: ; 0x021D5B00
	.incbin "incbin/overlay109_rodata.bin", 0x154, 0x170 - 0x154

	.global Unk_ov109_021D5B1C
Unk_ov109_021D5B1C: ; 0x021D5B1C
	.incbin "incbin/overlay109_rodata.bin", 0x170, 0x18C - 0x170

	.global Unk_ov109_021D5B38
Unk_ov109_021D5B38: ; 0x021D5B38
	.incbin "incbin/overlay109_rodata.bin", 0x18C, 0x1A8 - 0x18C

	.global Unk_ov109_021D5B54
Unk_ov109_021D5B54: ; 0x021D5B54
	.incbin "incbin/overlay109_rodata.bin", 0x1A8, 0x1C8 - 0x1A8

	.global Unk_ov109_021D5B74
Unk_ov109_021D5B74: ; 0x021D5B74
	.incbin "incbin/overlay109_rodata.bin", 0x1C8, 0x1E8 - 0x1C8

	.global Unk_ov109_021D5B94
Unk_ov109_021D5B94: ; 0x021D5B94
	.incbin "incbin/overlay109_rodata.bin", 0x1E8, 0x210 - 0x1E8

	.global Unk_ov109_021D5BBC
Unk_ov109_021D5BBC: ; 0x021D5BBC
	.incbin "incbin/overlay109_rodata.bin", 0x210, 0x238 - 0x210

	.global Unk_ov109_021D5BE4
Unk_ov109_021D5BE4: ; 0x021D5BE4
	.incbin "incbin/overlay109_rodata.bin", 0x238, 0x268 - 0x238

	.global Unk_ov109_021D5C14
Unk_ov109_021D5C14: ; 0x021D5C14
	.incbin "incbin/overlay109_rodata.bin", 0x268, 0x298 - 0x268

	.global Unk_ov109_021D5C44
Unk_ov109_021D5C44: ; 0x021D5C44
	.incbin "incbin/overlay109_rodata.bin", 0x298, 0x2D4 - 0x298

	.global Unk_ov109_021D5C80
Unk_ov109_021D5C80: ; 0x021D5C80
	.incbin "incbin/overlay109_rodata.bin", 0x2D4, 0x310 - 0x2D4

	.global Unk_ov109_021D5CBC
Unk_ov109_021D5CBC: ; 0x021D5CBC
	.incbin "incbin/overlay109_rodata.bin", 0x310, 0xD8


	.data


	.global Unk_ov109_021D5F20
Unk_ov109_021D5F20: ; 0x021D5F20
	.incbin "incbin/overlay109_data.bin", 0x0, 0x40

