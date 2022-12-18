	.include "macros/function.inc"
	.include "include/ov99_021D3E78.inc"

	

	.text


	thumb_func_start ov99_021D3E78
ov99_021D3E78: ; 0x021D3E78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	str r1, [sp, #0x14]
	mov r0, #0x4b
	mov r1, #0x38
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	beq _021D3F2C
	ldr r0, [sp, #0x14]
	str r6, [r4, #0x20]
	str r0, [r4, #0]
	add r0, #0xc0
	str r0, [r4, #4]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x30]
	str r5, [r4, #8]
	str r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x4b
	bl sub_02023790
	str r0, [r4, #0x30]
	mov r0, #0x4b
	mov r1, #1
	bl sub_0201A778
	str r0, [r4, #0x24]
	mov r3, #0
	lsl r2, r5, #0x18
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r1, [r4, #0x24]
	add r0, r6, #0
	lsr r2, r2, #0x18
	bl sub_0201A7E8
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r4, #0x24]
	bl sub_0201A9F4
	ldr r0, [r4, #0x24]
	bl sub_0201A954
	mov r0, #0x4b
	mov r1, #1
	bl sub_0201A778
	str r0, [r4, #0x28]
	mov r3, #0
	lsl r2, r5, #0x18
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r1, [r4, #0x28]
	add r0, r6, #0
	lsr r2, r2, #0x18
	bl sub_0201A7E8
	ldr r0, _021D3F34 ; =ov99_021D4104
	add r1, r4, #0
	mov r2, #0
	bl sub_0200DA3C
	str r0, [r4, #0x34]
_021D3F2C:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D3F34: .word ov99_021D4104
	thumb_func_end ov99_021D3E78

	thumb_func_start ov99_021D3F38
ov99_021D3F38: ; 0x021D3F38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021D3F46
	bl sub_0200DA58
_021D3F46:
	ldr r0, [r4, #0x30]
	bl sub_020237BC
	ldr r0, [r4, #0x24]
	bl sub_0201A8FC
	ldr r0, [r4, #0x28]
	bl sub_0201A8FC
	ldr r0, [r4, #0x24]
	bl sub_020181C4
	ldr r0, [r4, #0x28]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov99_021D3F38

	thumb_func_start ov99_021D3F6C
ov99_021D3F6C: ; 0x021D3F6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r2, [r5, #0x1c]
	str r1, [sp, #0x18]
	cmp r2, #2
	bne _021D3F80
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021D3F80:
	ldr r1, [r5, #4]
	ldr r0, [sp, #0x18]
	add r6, r1, r0
	cmp r2, #0
	bne _021D4060
	ldr r2, [r5, #0xc]
	mov r0, #6
	add r1, r2, #0
	mul r1, r0
	ldr r0, _021D40F4 ; =0x021D4CE6
	ldrh r0, [r0, r1]
	cmp r6, r0
	blt _021D4060
	ldr r2, _021D40F8 ; =0x021D4CE4
	ldr r0, [r5, #0x2c]
	ldrh r1, [r2, r1]
	ldr r2, [r5, #0x30]
	bl sub_0200B1B8
	ldr r1, [r5, #0xc]
	mov r0, #6
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021D40FC ; =0x021D4CE8
	ldrh r0, [r0, r2]
	cmp r0, #0
	beq _021D3FCA
	mov r0, #0
	ldr r1, [r5, #0x30]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #1
	lsl r1, r1, #8
	sub r0, r1, r0
	lsr r7, r0, #1
	b _021D3FCC
_021D3FCA:
	mov r7, #0x20
_021D3FCC:
	ldr r1, [r5, #0xc]
	mov r0, #6
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021D40F4 ; =0x021D4CE6
	mov r1, #0
	ldrh r0, [r0, r2]
	add r3, r7, #0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D4100 ; =0x00010200
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x24]
	ldr r2, [r5, #0x30]
	bl sub_0201D78C
	cmp r4, #0xf0
	ble _021D4050
	ldr r0, [r5, #0x28]
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D4100 ; =0x00010200
	add r3, r7, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x28]
	ldr r2, [r5, #0x30]
	bl sub_0201D78C
	ldr r1, [r5, #0x28]
	sub r4, #0xf0
	ldrb r2, [r1, #7]
	mov r0, #0x10
	sub r3, r0, r4
	add r4, r0, #0
	sub r0, r0, r3
	lsl r2, r2, #0x13
	lsr r2, r2, #0x10
	str r2, [sp]
	ldrb r2, [r1, #8]
	lsl r0, r0, #0x10
	lsl r3, r3, #0x10
	lsl r2, r2, #0x13
	lsr r2, r2, #0x10
	str r2, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	add r4, #0xf0
	str r4, [sp, #0x10]
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x24]
	ldr r1, [r1, #0xc]
	lsr r3, r3, #0x10
	bl sub_0201ADDC
_021D4050:
	mov r1, #1
	str r1, [r5, #0x18]
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0xec
	blo _021D4060
	str r1, [r5, #0x1c]
_021D4060:
	str r6, [r5, #4]
	ldr r0, [r5, #0x10]
	mov r1, #6
	add r2, r0, #0
	ldr r0, _021D40F4 ; =0x021D4CE6
	mul r2, r1
	ldrh r3, [r0, r2]
	ldr r2, [r5, #0]
	add r0, r3, #0
	add r0, #0x10
	cmp r2, r0
	ble _021D40E6
	lsl r0, r3, #0x18
	lsr r3, r0, #0x18
	cmp r3, #0xf0
	bgt _021D4098
	add r1, #0xfa
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r1, #0
	lsl r3, r3, #0x10
	ldr r0, [r5, #0x24]
	add r2, r1, #0
	lsr r3, r3, #0x10
	bl sub_0201AE78
	b _021D40D4
_021D4098:
	add r1, r3, #0
	sub r1, #0xf0
	mov r0, #0x10
	sub r4, r0, r1
	add r0, #0xf0
	str r0, [sp]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	mov r1, #0
	lsl r3, r3, #0x10
	ldr r0, [r5, #0x24]
	add r2, r1, #0
	lsr r3, r3, #0x10
	bl sub_0201AE78
	mov r1, #0
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0x10
	sub r0, r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
_021D40D4:
	mov r0, #1
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x10]
	add r0, r0, #1
	str r0, [r5, #0x10]
	cmp r0, #0xed
	blo _021D40E6
	mov r0, #2
	str r0, [r5, #0x1c]
_021D40E6:
	ldr r1, [r5, #0]
	ldr r0, [sp, #0x18]
	add r0, r1, r0
	str r0, [r5, #0]
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D40F4: .word 0x021D4CE6
_021D40F8: .word 0x021D4CE4
_021D40FC: .word 0x021D4CE8
_021D4100: .word 0x00010200
	thumb_func_end ov99_021D3F6C

	thumb_func_start ov99_021D4104
ov99_021D4104: ; 0x021D4104
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021D4118
	ldr r0, [r4, #0x24]
	bl sub_0201ACCC
	mov r0, #0
	str r0, [r4, #0x18]
_021D4118:
	ldr r1, [r4, #8]
	ldr r3, [r4, #0]
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r4, #0x20]
	lsr r1, r1, #0x18
	mov r2, #3
	lsr r3, r3, #0x18
	bl sub_02019184
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov99_021D4104

	thumb_func_start ov99_021D4130
ov99_021D4130: ; 0x021D4130
	mov r0, #0xec
	bx lr
	thumb_func_end ov99_021D4130

	.rodata


	.global Unk_ov99_021D4CE4
Unk_ov99_021D4CE4: ; 0x021D4CE4
	.incbin "incbin/overlay99_rodata.bin", 0x618, 0x58E

