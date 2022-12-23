	.include "macros/function.inc"
	.include "overlay104/ov104_0222ECE8.inc"

	

	.text


	thumb_func_start ov104_0222ECE8
ov104_0222ECE8: ; 0x0222ECE8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xd9
	lsl r0, r0, #4
	ldrb r1, [r3, r0]
	add r1, r1, #1
	strb r1, [r3, r0]
	bl sub_0203608C
	cmp r4, r0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0222ECE8

	thumb_func_start ov104_0222ED00
ov104_0222ED00: ; 0x0222ED00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222ED24 ; =0x000006FC
	ldr r0, [r4, r0]
	bl sub_02025E38
	ldr r1, _0222ED28 ; =0x0000072C
	mov r0, #0x22
	add r1, r4, r1
	mov r2, #0x2c
	bl sub_020359DC
	cmp r0, #1
	bne _0222ED20
	mov r0, #1
	pop {r4, pc}
_0222ED20:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0222ED24: .word 0x000006FC
_0222ED28: .word 0x0000072C
	thumb_func_end ov104_0222ED00

	thumb_func_start ov104_0222ED2C
ov104_0222ED2C: ; 0x0222ED2C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xd9
	lsl r0, r0, #4
	ldrb r1, [r3, r0]
	add r1, r1, #1
	strb r1, [r3, r0]
	bl sub_0203608C
	cmp r4, r0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0222ED2C

	thumb_func_start ov104_0222ED44
ov104_0222ED44: ; 0x0222ED44
	push {r4, lr}
	ldr r1, _0222ED70 ; =0x0000072C
	mov r3, #0
	add r1, r0, r1
	add r4, r1, #0
_0222ED4E:
	ldrh r2, [r0, #0x18]
	add r3, r3, #1
	add r0, r0, #2
	strh r2, [r4]
	add r4, r4, #2
	cmp r3, #0x14
	blt _0222ED4E
	mov r0, #0x23
	mov r2, #0x2c
	bl sub_020359DC
	cmp r0, #1
	bne _0222ED6C
	mov r0, #1
	pop {r4, pc}
_0222ED6C:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0222ED70: .word 0x0000072C
	thumb_func_end ov104_0222ED44

	thumb_func_start ov104_0222ED74
ov104_0222ED74: ; 0x0222ED74
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0xd9
	add r4, r3, #0
	lsl r0, r0, #4
	ldrb r1, [r4, r0]
	add r5, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r6, r0
	beq _0222EDA6
	bl sub_0203608C
	cmp r0, #0
	beq _0222EDA6
	mov r1, #0
_0222ED98:
	ldrh r0, [r5]
	add r1, r1, #1
	add r5, r5, #2
	strh r0, [r4, #0x18]
	add r4, r4, #2
	cmp r1, #0x14
	blt _0222ED98
_0222EDA6:
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_0222ED74

	thumb_func_start ov104_0222EDA8
ov104_0222EDA8: ; 0x0222EDA8
	push {r3, r4, r5, lr}
	ldr r1, _0222EDD8 ; =0x0000072C
	mov r2, #0x9a
	add r1, r0, r1
	mov r4, #0
	add r5, r1, #0
	lsl r2, r2, #2
_0222EDB6:
	ldrh r3, [r0, r2]
	add r4, r4, #1
	add r0, r0, #2
	strh r3, [r5]
	add r5, r5, #2
	cmp r4, #0x14
	blt _0222EDB6
	mov r0, #0x24
	mov r2, #0x2c
	bl sub_020359DC
	cmp r0, #1
	bne _0222EDD4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0222EDD4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222EDD8: .word 0x0000072C
	thumb_func_end ov104_0222EDA8

	thumb_func_start ov104_0222EDDC
ov104_0222EDDC: ; 0x0222EDDC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0xd9
	add r4, r3, #0
	lsl r0, r0, #4
	ldrb r1, [r4, r0]
	add r5, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r6, r0
	beq _0222EE12
	bl sub_0203608C
	cmp r0, #0
	beq _0222EE12
	mov r0, #0x9a
	mov r2, #0
	lsl r0, r0, #2
_0222EE04:
	ldrh r1, [r5]
	add r2, r2, #1
	add r5, r5, #2
	strh r1, [r4, r0]
	add r4, r4, #2
	cmp r2, #0x14
	blt _0222EE04
_0222EE12:
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_0222EDDC

	thumb_func_start ov104_0222EE14
ov104_0222EE14: ; 0x0222EE14
	push {r3, lr}
	ldr r2, _0222EE34 ; =0x0000072C
	add r3, r0, #0
	strh r1, [r3, r2]
	add r1, r3, r2
	mov r0, #0x25
	mov r2, #0x2c
	bl sub_020359DC
	cmp r0, #1
	bne _0222EE2E
	mov r0, #1
	pop {r3, pc}
_0222EE2E:
	mov r0, #0
	pop {r3, pc}
	nop
_0222EE34: .word 0x0000072C
	thumb_func_end ov104_0222EE14

	thumb_func_start ov104_0222EE38
ov104_0222EE38: ; 0x0222EE38
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xd9
	add r4, r3, #0
	lsl r0, r0, #4
	ldrb r1, [r4, r0]
	add r6, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0222EE58
	ldrh r1, [r6]
	ldr r0, _0222EE5C ; =0x00000D88
	strb r1, [r4, r0]
_0222EE58:
	pop {r4, r5, r6, pc}
	nop
_0222EE5C: .word 0x00000D88
	thumb_func_end ov104_0222EE38

	thumb_func_start ov104_0222EE60
ov104_0222EE60: ; 0x0222EE60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02073C70
	add r4, r0, #0
	ldr r0, _0222EEA0 ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_0207A268
	mov r1, #0x26
	lsl r1, r1, #4
	ldrb r1, [r5, r1]
	bl sub_0207A0FC
	ldr r1, _0222EEA4 ; =0x00000784
	add r2, r4, #0
	add r1, r5, r1
	bl MI_CpuCopy8
	ldr r1, _0222EEA4 ; =0x00000784
	mov r2, #2
	mov r0, #0x26
	add r1, r5, r1
	lsl r2, r2, #8
	bl sub_0203597C
	cmp r0, #1
	bne _0222EE9C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0222EE9C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222EEA0: .word 0x000006FC
_0222EEA4: .word 0x00000784
	thumb_func_end ov104_0222EE60

	thumb_func_start ov104_0222EEA8
ov104_0222EEA8: ; 0x0222EEA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xd9
	add r4, r3, #0
	lsl r0, r0, #4
	ldrb r1, [r4, r0]
	add r6, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0222EED2
	bl sub_02073C70
	ldr r1, _0222EED4 ; =0x00000D8C
	add r2, r0, #0
	ldr r1, [r4, r1]
	add r0, r6, #0
	bl MI_CpuCopy8
_0222EED2:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222EED4: .word 0x00000D8C
	thumb_func_end ov104_0222EEA8

	thumb_func_start ov104_0222EED8
ov104_0222EED8: ; 0x0222EED8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	lsl r0, r0, #8
	add r4, r1, #0
	cmp r2, r0
	ble _0222EEEA
	bl GF_AssertFail
_0222EEEA:
	ldr r0, _0222EEF4 ; =0x00000984
	add r1, r4, r0
	lsl r0, r5, #9
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222EEF4: .word 0x00000984
	thumb_func_end ov104_0222EED8

	thumb_func_start ov104_0222EEF8
ov104_0222EEF8: ; 0x0222EEF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0222EF2C ; =0x00000504
	add r4, r5, r0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_02025E38
	ldrh r0, [r5, #8]
	add r1, r4, #0
	mov r2, #0x3c
	strh r0, [r4, #2]
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #4]
	ldrh r0, [r5, #0xe]
	strh r0, [r4, #6]
	mov r0, #0x16
	bl sub_020359DC
	cmp r0, #1
	bne _0222EF26
	mov r0, #1
	pop {r3, r4, r5, pc}
_0222EF26:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0222EF2C: .word 0x00000504
	thumb_func_end ov104_0222EEF8

	thumb_func_start ov104_0222EF30
ov104_0222EF30: ; 0x0222EF30
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0222EF60 ; =0x00000702
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r5, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r6, r0
	beq _0222EF5C
	ldrh r1, [r5, #2]
	mov r0, #0x16
	lsl r0, r0, #6
	strh r1, [r4, r0]
	ldrh r2, [r5, #4]
	add r1, r0, #2
	sub r0, r0, #2
	strh r2, [r4, r1]
	ldrh r1, [r5, #6]
	strh r1, [r4, r0]
_0222EF5C:
	pop {r4, r5, r6, pc}
	nop
_0222EF60: .word 0x00000702
	thumb_func_end ov104_0222EF30

	thumb_func_start ov104_0222EF64
ov104_0222EF64: ; 0x0222EF64
	push {r4, lr}
	ldr r1, _0222EF90 ; =0x00000504
	mov r3, #0
	add r1, r0, r1
	add r4, r1, #0
_0222EF6E:
	ldrh r2, [r0, #0x18]
	add r3, r3, #1
	add r0, r0, #2
	strh r2, [r4]
	add r4, r4, #2
	cmp r3, #0xe
	blt _0222EF6E
	mov r0, #0x17
	mov r2, #0x3c
	bl sub_020359DC
	cmp r0, #1
	bne _0222EF8C
	mov r0, #1
	pop {r4, pc}
_0222EF8C:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0222EF90: .word 0x00000504
	thumb_func_end ov104_0222EF64

	thumb_func_start ov104_0222EF94
ov104_0222EF94: ; 0x0222EF94
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0222EFC8 ; =0x00000702
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r5, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r6, r0
	beq _0222EFC4
	bl sub_0203608C
	cmp r0, #0
	beq _0222EFC4
	mov r1, #0
_0222EFB6:
	ldrh r0, [r5]
	add r1, r1, #1
	add r5, r5, #2
	strh r0, [r4, #0x18]
	add r4, r4, #2
	cmp r1, #0xe
	blt _0222EFB6
_0222EFC4:
	pop {r4, r5, r6, pc}
	nop
_0222EFC8: .word 0x00000702
	thumb_func_end ov104_0222EF94

	thumb_func_start ov104_0222EFCC
ov104_0222EFCC: ; 0x0222EFCC
	push {r4, r5, r6, lr}
	ldr r1, _0222F030 ; =0x00000504
	ldr r2, _0222F034 ; =0x00000584
	add r1, r0, r1
	mov r4, #0
	add r5, r0, #0
	add r6, r1, #0
_0222EFDA:
	ldrh r3, [r5, r2]
	add r4, r4, #1
	add r5, r5, #2
	strh r3, [r6]
	add r6, r6, #2
	cmp r4, #6
	blt _0222EFDA
	mov r2, #0x59
	mov r5, #0
	add r4, r1, #0
	lsl r2, r2, #4
_0222EFF0:
	add r3, r0, r5
	ldrb r3, [r3, r2]
	add r5, r5, #1
	strh r3, [r4, #0xc]
	add r4, r4, #2
	cmp r5, #6
	blt _0222EFF0
	ldr r4, _0222F038 ; =0x00000598
	add r2, r1, #0
	mov r3, #0
	add r2, #0x18
	add r5, r4, #0
_0222F008:
	ldr r6, [r0, r4]
	add r3, r3, #1
	strh r6, [r2]
	ldr r6, [r0, r5]
	add r0, r0, #4
	lsr r6, r6, #0x10
	strh r6, [r2, #0xc]
	add r2, r2, #2
	cmp r3, #6
	blt _0222F008
	mov r0, #0x18
	mov r2, #0x3c
	bl sub_020359DC
	cmp r0, #1
	bne _0222F02C
	mov r0, #1
	pop {r4, r5, r6, pc}
_0222F02C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222F030: .word 0x00000504
_0222F034: .word 0x00000584
_0222F038: .word 0x00000598
	thumb_func_end ov104_0222EFCC

	thumb_func_start ov104_0222F03C
ov104_0222F03C: ; 0x0222F03C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0222F0B0 ; =0x00000702
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r5, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r6, r0
	beq _0222F0AE
	bl sub_0203608C
	cmp r0, #0
	beq _0222F0AE
	mov r0, #0x95
	mov r2, #0
	add r3, r5, #0
	add r6, r4, #0
	lsl r0, r0, #2
_0222F066:
	ldrh r1, [r3]
	add r2, r2, #1
	add r3, r3, #2
	strh r1, [r6, r0]
	add r6, r6, #2
	cmp r2, #6
	blt _0222F066
	mov r0, #0x26
	mov r6, #0
	add r3, r5, #0
	lsl r0, r0, #4
_0222F07C:
	ldrh r2, [r3, #0xc]
	add r1, r4, r6
	add r6, r6, #1
	add r3, r3, #2
	strb r2, [r1, r0]
	cmp r6, #6
	blt _0222F07C
	mov r2, #0x9a
	lsl r2, r2, #2
	mov r1, #0
	add r5, #0x18
	add r3, r2, #0
	add r6, r2, #0
_0222F096:
	ldrh r0, [r5]
	add r1, r1, #1
	str r0, [r4, r2]
	ldrh r7, [r5, #0xc]
	ldr r0, [r4, r3]
	add r5, r5, #2
	lsl r7, r7, #0x10
	orr r0, r7
	str r0, [r4, r6]
	add r4, r4, #4
	cmp r1, #6
	blt _0222F096
_0222F0AE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222F0B0: .word 0x00000702
	thumb_func_end ov104_0222F03C

	thumb_func_start ov104_0222F0B4
ov104_0222F0B4: ; 0x0222F0B4
	push {r4, r5, r6, lr}
	ldr r1, _0222F118 ; =0x00000504
	ldr r2, _0222F11C ; =0x000003D2
	add r1, r0, r1
	mov r4, #0
	add r5, r0, #0
	add r6, r1, #0
_0222F0C2:
	ldrh r3, [r5, r2]
	add r4, r4, #1
	add r5, r5, #2
	strh r3, [r6]
	add r6, r6, #2
	cmp r4, #4
	blt _0222F0C2
	ldr r2, _0222F120 ; =0x000003DA
	mov r5, #0
	add r4, r1, #0
_0222F0D6:
	add r3, r0, r5
	ldrb r3, [r3, r2]
	add r5, r5, #1
	strh r3, [r4, #8]
	add r4, r4, #2
	cmp r5, #4
	blt _0222F0D6
	mov r4, #0x3e
	add r2, r1, #0
	lsl r4, r4, #4
	mov r3, #0
	add r2, #0x10
	add r5, r4, #0
_0222F0F0:
	ldr r6, [r0, r4]
	add r3, r3, #1
	strh r6, [r2]
	ldr r6, [r0, r5]
	add r0, r0, #4
	lsr r6, r6, #0x10
	strh r6, [r2, #8]
	add r2, r2, #2
	cmp r3, #4
	blt _0222F0F0
	mov r0, #0x19
	mov r2, #0x3c
	bl sub_020359DC
	cmp r0, #1
	bne _0222F114
	mov r0, #1
	pop {r4, r5, r6, pc}
_0222F114:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222F118: .word 0x00000504
_0222F11C: .word 0x000003D2
_0222F120: .word 0x000003DA
	thumb_func_end ov104_0222F0B4

	thumb_func_start ov104_0222F124
ov104_0222F124: ; 0x0222F124
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0222F194 ; =0x00000702
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r5, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r6, r0
	beq _0222F192
	bl sub_0203608C
	cmp r0, #0
	beq _0222F192
	ldr r0, _0222F198 ; =0x000003D2
	mov r2, #0
	add r3, r5, #0
	add r6, r4, #0
_0222F14C:
	ldrh r1, [r3]
	add r2, r2, #1
	add r3, r3, #2
	strh r1, [r6, r0]
	add r6, r6, #2
	cmp r2, #4
	blt _0222F14C
	ldr r0, _0222F19C ; =0x000003DA
	mov r6, #0
	add r3, r5, #0
_0222F160:
	ldrh r2, [r3, #8]
	add r1, r4, r6
	add r6, r6, #1
	add r3, r3, #2
	strb r2, [r1, r0]
	cmp r6, #4
	blt _0222F160
	mov r2, #0x3e
	lsl r2, r2, #4
	mov r1, #0
	add r5, #0x10
	add r3, r2, #0
	add r6, r2, #0
_0222F17A:
	ldrh r0, [r5]
	add r1, r1, #1
	str r0, [r4, r2]
	ldrh r7, [r5, #8]
	ldr r0, [r4, r3]
	add r5, r5, #2
	lsl r7, r7, #0x10
	orr r0, r7
	str r0, [r4, r6]
	add r4, r4, #4
	cmp r1, #4
	blt _0222F17A
_0222F192:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222F194: .word 0x00000702
_0222F198: .word 0x000003D2
_0222F19C: .word 0x000003DA
	thumb_func_end ov104_0222F124

	thumb_func_start ov104_0222F1A0
ov104_0222F1A0: ; 0x0222F1A0
	push {r3, lr}
	ldr r2, _0222F1C0 ; =0x00000504
	add r3, r0, #0
	strh r1, [r3, r2]
	add r1, r3, r2
	mov r0, #0x1a
	mov r2, #0x3c
	bl sub_020359DC
	cmp r0, #1
	bne _0222F1BA
	mov r0, #1
	pop {r3, pc}
_0222F1BA:
	mov r0, #0
	pop {r3, pc}
	nop
_0222F1C0: .word 0x00000504
	thumb_func_end ov104_0222F1A0

	thumb_func_start ov104_0222F1C4
ov104_0222F1C4: ; 0x0222F1C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0222F1E4 ; =0x00000702
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r6, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0222F1E2
	ldrh r1, [r6]
	ldr r0, _0222F1E8 ; =0x0000057C
	strb r1, [r4, r0]
_0222F1E2:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222F1E4: .word 0x00000702
_0222F1E8: .word 0x0000057C
	thumb_func_end ov104_0222F1C4

	thumb_func_start ov104_0222F1EC
ov104_0222F1EC: ; 0x0222F1EC
	push {r3, lr}
	ldr r2, _0222F20C ; =0x00000504
	add r3, r0, #0
	strh r1, [r3, r2]
	add r1, r3, r2
	mov r0, #0x1b
	mov r2, #0x3c
	bl sub_020359DC
	cmp r0, #1
	bne _0222F206
	mov r0, #1
	pop {r3, pc}
_0222F206:
	mov r0, #0
	pop {r3, pc}
	nop
_0222F20C: .word 0x00000504
	thumb_func_end ov104_0222F1EC

	thumb_func_start ov104_0222F210
ov104_0222F210: ; 0x0222F210
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0222F230 ; =0x00000702
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r6, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0222F22E
	ldrh r1, [r6]
	ldr r0, _0222F234 ; =0x0000057D
	strb r1, [r4, r0]
_0222F22E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222F230: .word 0x00000702
_0222F234: .word 0x0000057D
	thumb_func_end ov104_0222F210

	thumb_func_start ov104_0222F238
ov104_0222F238: ; 0x0222F238
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, _0222F310 ; =0x00000504
	add r0, r5, r0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrb r0, [r5, #4]
	bl ov104_0223AA50
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	cmp r4, #0
	ble _0222F28A
	add r7, sp, #0x10
	add r6, sp, #0x14
_0222F25C:
	ldr r0, _0222F314 ; =0x000004D4
	ldr r1, [sp, #8]
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	str r0, [sp, #0xc]
	mov r1, #0x47
	mov r2, #0
	bl sub_02074470
	strb r0, [r7]
	mov r1, #0
	ldr r0, [sp, #0xc]
	add r2, r1, #0
	bl sub_02074470
	stmia r6!, {r0}
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r4
	blt _0222F25C
_0222F28A:
	mov r3, #0
	cmp r4, #0
	ble _0222F2A2
	ldr r2, [sp]
	ldr r0, _0222F318 ; =0x000004E8
_0222F294:
	ldrh r1, [r5, r0]
	add r3, r3, #1
	add r5, r5, #2
	strh r1, [r2]
	add r2, r2, #2
	cmp r3, r4
	blt _0222F294
_0222F2A2:
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
	mov r0, #0
	cmp r4, #0
	ble _0222F2C6
	ldr r1, [sp, #4]
	add r3, sp, #0x10
	lsl r2, r1, #1
	ldr r1, [sp]
	add r2, r1, r2
_0222F2B8:
	ldrb r1, [r3]
	add r0, r0, #1
	add r3, r3, #1
	strh r1, [r2]
	add r2, r2, #2
	cmp r0, r4
	blt _0222F2B8
_0222F2C6:
	ldr r0, [sp, #4]
	mov r3, #0
	add r0, r0, r4
	cmp r4, #0
	ble _0222F2F6
	ldr r5, [sp]
	lsl r6, r4, #1
	ldr r2, [sp]
	lsl r0, r0, #1
	add r5, r5, r6
	add r2, r2, r0
	add r1, sp, #0x14
	add r0, r5, r0
_0222F2E0:
	ldr r5, [r1, #0]
	add r3, r3, #1
	strh r5, [r2]
	ldr r5, [r1, #0]
	add r1, r1, #4
	lsr r5, r5, #0x10
	strh r5, [r0]
	add r2, r2, #2
	add r0, r0, #2
	cmp r3, r4
	blt _0222F2E0
_0222F2F6:
	ldr r1, [sp]
	mov r0, #0x1c
	mov r2, #0x3c
	bl sub_020359DC
	cmp r0, #1
	bne _0222F30A
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0222F30A:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222F310: .word 0x00000504
_0222F314: .word 0x000004D4
_0222F318: .word 0x000004E8
	thumb_func_end ov104_0222F238

	thumb_func_start ov104_0222F31C
ov104_0222F31C: ; 0x0222F31C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0222F3AC ; =0x00000702
	add r4, r3, #0
	ldrb r1, [r4, r0]
	str r2, [sp]
	mov r7, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0222F3A8
	ldrb r0, [r4, #4]
	bl ov104_0223AA50
	add r3, r7, #0
	cmp r0, #0
	ble _0222F356
	ldr r5, [sp]
	ldr r1, _0222F3B0 ; =0x00000584
	add r6, r4, #0
_0222F348:
	ldrh r2, [r5]
	add r3, r3, #1
	add r5, r5, #2
	strh r2, [r6, r1]
	add r6, r6, #2
	cmp r3, r0
	blt _0222F348
_0222F356:
	add r7, r7, r0
	mov r6, #0
	cmp r0, #0
	ble _0222F376
	ldr r1, [sp]
	lsl r2, r7, #1
	add r5, r1, r2
	mov r1, #0x59
	lsl r1, r1, #4
_0222F368:
	ldrh r3, [r5]
	add r2, r4, r6
	add r6, r6, #1
	strb r3, [r2, r1]
	add r5, r5, #2
	cmp r6, r0
	blt _0222F368
_0222F376:
	add r2, r7, r0
	mov r1, #0
	cmp r0, #0
	ble _0222F3A8
	ldr r3, [sp]
	lsl r2, r2, #1
	lsl r6, r0, #1
	add r5, r3, r2
	add r3, r3, r6
	add r6, r3, r2
	ldr r2, _0222F3B4 ; =0x00000598
_0222F38C:
	ldrh r7, [r5]
	ldr r3, _0222F3B4 ; =0x00000598
	add r1, r1, #1
	str r7, [r4, r3]
	ldrh r7, [r6]
	ldr r3, [r4, r3]
	add r5, r5, #2
	lsl r7, r7, #0x10
	orr r3, r7
	str r3, [r4, r2]
	add r4, r4, #4
	add r6, r6, #2
	cmp r1, r0
	blt _0222F38C
_0222F3A8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222F3AC: .word 0x00000702
_0222F3B0: .word 0x00000584
_0222F3B4: .word 0x00000598
	thumb_func_end ov104_0222F31C

	thumb_func_start ov104_0222F3B8
ov104_0222F3B8: ; 0x0222F3B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_0203041C
	ldrh r1, [r5, #0x14]
	ldr r0, _0222F410 ; =0x000003C2
	strh r1, [r5, r0]
	ldrh r1, [r5, #0x16]
	add r0, r0, #2
	strh r1, [r5, r0]
	ldr r0, [r5, #4]
	bl sub_0203068C
	add r4, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E630
	add r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02030698
	ldr r1, _0222F414 ; =0x000003D6
	mov r2, #0x28
	strh r0, [r5, r1]
	sub r1, #0x16
	mov r0, #0x2a
	add r1, r5, r1
	bl sub_020359DC
	cmp r0, #1
	bne _0222F40A
	mov r0, #1
	pop {r4, r5, r6, pc}
_0222F40A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0222F410: .word 0x000003C2
_0222F414: .word 0x000003D6
	thumb_func_end ov104_0222F3B8

	thumb_func_start ov104_0222F418
ov104_0222F418: ; 0x0222F418
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0222F444 ; =0x00000A1A
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r5, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r6, r0
	beq _0222F442
	ldrh r1, [r5, #2]
	ldr r0, _0222F448 ; =0x00000A16
	strh r1, [r4, r0]
	ldrh r2, [r5, #4]
	sub r1, r0, #4
	add r0, r0, #6
	strh r2, [r4, r1]
	ldrh r1, [r5, #0x16]
	strh r1, [r4, r0]
_0222F442:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222F444: .word 0x00000A1A
_0222F448: .word 0x00000A16
	thumb_func_end ov104_0222F418

	thumb_func_start ov104_0222F44C
ov104_0222F44C: ; 0x0222F44C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xf
	mov r2, #0
	add r3, r4, #0
	lsl r0, r0, #6
_0222F458:
	ldrh r1, [r3, #0x30]
	add r2, r2, #1
	strh r1, [r3, r0]
	add r3, r3, #2
	cmp r2, #0xe
	blt _0222F458
	mov r1, #0xf
	lsl r1, r1, #6
	mov r0, #0x2b
	add r1, r4, r1
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _0222F47A
	mov r0, #1
	pop {r4, pc}
_0222F47A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0222F44C

	thumb_func_start ov104_0222F480
ov104_0222F480: ; 0x0222F480
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0222F4B4 ; =0x00000A1A
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r5, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r6, r0
	beq _0222F4B0
	bl sub_0203608C
	cmp r0, #0
	beq _0222F4B0
	mov r1, #0
_0222F4A2:
	ldrh r0, [r5]
	add r1, r1, #1
	add r5, r5, #2
	strh r0, [r4, #0x30]
	add r4, r4, #2
	cmp r1, #0xe
	blt _0222F4A2
_0222F4B0:
	pop {r4, r5, r6, pc}
	nop
_0222F4B4: .word 0x00000A1A
	thumb_func_end ov104_0222F480

	thumb_func_start ov104_0222F4B8
ov104_0222F4B8: ; 0x0222F4B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222F524 ; =0x00000A18
	ldrb r1, [r4, r0]
	mov r0, #0xf
	lsl r0, r0, #6
	strh r1, [r4, r0]
	bl sub_0203608C
	cmp r0, #0
	ldr r1, _0222F528 ; =0x00000A1B
	bne _0222F4F0
	ldrb r0, [r4, r1]
	cmp r0, #0
	bne _0222F4DE
	sub r0, r1, #3
	ldrb r0, [r4, r0]
	strb r0, [r4, r1]
	b _0222F502
_0222F4DE:
	sub r0, r0, #6
	cmp r0, #4
	bne _0222F502
	sub r0, r1, #3
	ldrb r0, [r4, r0]
	cmp r0, #4
	beq _0222F502
	strb r0, [r4, r1]
	b _0222F502
_0222F4F0:
	ldrb r0, [r4, r1]
	cmp r0, #4
	bne _0222F502
	sub r0, r1, #3
	ldrb r0, [r4, r0]
	cmp r0, #4
	beq _0222F502
	add r0, r0, #6
	strb r0, [r4, r1]
_0222F502:
	ldr r0, _0222F528 ; =0x00000A1B
	ldr r1, _0222F52C ; =0x000003C2
	ldrb r0, [r4, r0]
	mov r2, #0x28
	strh r0, [r4, r1]
	sub r1, r1, #2
	mov r0, #0x2c
	add r1, r4, r1
	bl sub_020359DC
	cmp r0, #1
	bne _0222F51E
	mov r0, #1
	pop {r4, pc}
_0222F51E:
	mov r0, #0
	pop {r4, pc}
	nop
_0222F524: .word 0x00000A18
_0222F528: .word 0x00000A1B
_0222F52C: .word 0x000003C2
	thumb_func_end ov104_0222F4B8

	thumb_func_start ov104_0222F530
ov104_0222F530: ; 0x0222F530
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0222F5C4 ; =0x00000A1A
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r5, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r6, r0
	beq _0222F5C2
	ldrh r1, [r5]
	ldr r0, _0222F5C8 ; =0x00000A19
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r0, #0
	bne _0222F594
	ldr r1, _0222F5CC ; =0x00000A1B
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _0222F57A
	cmp r0, #4
	bne _0222F5C2
	sub r0, r1, #2
	ldrb r0, [r4, r0]
	cmp r0, #4
	beq _0222F5C2
	add r2, r0, #6
	sub r0, r1, #3
	strb r2, [r4, r0]
	sub r0, r1, #2
	ldrb r0, [r4, r0]
	add r0, r0, #6
	strb r0, [r4, r1]
	pop {r4, r5, r6, pc}
_0222F57A:
	sub r0, r1, #2
	ldrb r0, [r4, r0]
	add r0, r0, #6
	strb r0, [r4, r1]
	sub r0, r1, #2
	ldrb r0, [r4, r0]
	cmp r0, #4
	beq _0222F5C2
	add r0, r1, #5
	ldr r2, _0222F5D0 ; =0x0000EEDD
	ldr r0, [r4, r0]
	strh r2, [r0]
	pop {r4, r5, r6, pc}
_0222F594:
	ldrh r1, [r5, #2]
	ldr r0, _0222F5CC ; =0x00000A1B
	strb r1, [r4, r0]
	ldrb r1, [r4, r0]
	cmp r1, #4
	beq _0222F5A8
	add r0, r0, #5
	ldr r1, _0222F5D0 ; =0x0000EEDD
	ldr r0, [r4, r0]
	strh r1, [r0]
_0222F5A8:
	ldr r1, _0222F5C8 ; =0x00000A19
	ldrb r0, [r4, r1]
	cmp r0, #4
	bne _0222F5C2
	sub r0, r1, #1
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0222F5C2
	cmp r0, #4
	beq _0222F5C2
	add r2, r0, #6
	add r0, r1, #2
	strb r2, [r4, r0]
_0222F5C2:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222F5C4: .word 0x00000A1A
_0222F5C8: .word 0x00000A19
_0222F5CC: .word 0x00000A1B
_0222F5D0: .word 0x0000EEDD
	thumb_func_end ov104_0222F530

	thumb_func_start ov104_0222F5D4
ov104_0222F5D4: ; 0x0222F5D4
	push {r3, r4, r5, r6, r7, lr}
	add r3, r0, #0
	mov r0, #0x9b
	mov r1, #0xf
	mov r4, #0
	add r5, r3, #0
	lsl r0, r0, #2
	lsl r1, r1, #6
_0222F5E4:
	ldrh r2, [r5, r0]
	add r4, r4, #1
	strh r2, [r5, r1]
	add r5, r5, #2
	cmp r4, #4
	blt _0222F5E4
	mov r0, #0x9d
	mov r1, #0xf2
	mov r5, #0
	add r4, r3, #0
	lsl r0, r0, #2
	lsl r1, r1, #2
_0222F5FC:
	add r2, r3, r5
	ldrb r2, [r2, r0]
	add r5, r5, #1
	strh r2, [r4, r1]
	add r4, r4, #2
	cmp r5, #4
	blt _0222F5FC
	mov r7, #0xf
	lsl r7, r7, #6
	add r1, r3, #0
	mov r5, #0x9e
	add r6, r7, #0
	mov r2, #0
	add r0, r3, #0
	add r1, #0x10
	lsl r5, r5, #2
	add r6, #8
_0222F61E:
	mov r4, #0x9e
	lsl r4, r4, #2
	ldr r4, [r0, r4]
	add r2, r2, #1
	strh r4, [r1, r7]
	ldr r4, [r0, r5]
	add r0, r0, #4
	lsr r4, r4, #0x10
	strh r4, [r1, r6]
	add r1, r1, #2
	cmp r2, #4
	blt _0222F61E
	mov r1, #0xf
	lsl r1, r1, #6
	mov r0, #0x2d
	add r1, r3, r1
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _0222F64C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222F64C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0222F5D4

	thumb_func_start ov104_0222F650
ov104_0222F650: ; 0x0222F650
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0222F6C4 ; =0x00000A1A
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r5, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r6, r0
	beq _0222F6C2
	bl sub_0203608C
	cmp r0, #0
	beq _0222F6C2
	mov r0, #0x9b
	mov r2, #0
	add r3, r5, #0
	add r6, r4, #0
	lsl r0, r0, #2
_0222F67A:
	ldrh r1, [r3]
	add r2, r2, #1
	add r3, r3, #2
	strh r1, [r6, r0]
	add r6, r6, #2
	cmp r2, #4
	blt _0222F67A
	mov r0, #0x9d
	mov r6, #0
	add r3, r5, #0
	lsl r0, r0, #2
_0222F690:
	ldrh r2, [r3, #8]
	add r1, r4, r6
	add r6, r6, #1
	add r3, r3, #2
	strb r2, [r1, r0]
	cmp r6, #4
	blt _0222F690
	mov r2, #0x9e
	lsl r2, r2, #2
	mov r1, #0
	add r5, #0x10
	add r3, r2, #0
	add r6, r2, #0
_0222F6AA:
	ldrh r0, [r5]
	add r1, r1, #1
	str r0, [r4, r2]
	ldrh r7, [r5, #8]
	ldr r0, [r4, r3]
	add r5, r5, #2
	lsl r7, r7, #0x10
	orr r0, r7
	str r0, [r4, r6]
	add r4, r4, #4
	cmp r1, #4
	blt _0222F6AA
_0222F6C2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222F6C4: .word 0x00000A1A
	thumb_func_end ov104_0222F650

	thumb_func_start ov104_0222F6C8
ov104_0222F6C8: ; 0x0222F6C8
	push {r3, lr}
	mov r2, #0xf
	add r3, r0, #0
	lsl r2, r2, #6
	strh r1, [r3, r2]
	add r1, r3, r2
	mov r0, #0x2e
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _0222F6E4
	mov r0, #1
	pop {r3, pc}
_0222F6E4:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov104_0222F6C8

	thumb_func_start ov104_0222F6E8
ov104_0222F6E8: ; 0x0222F6E8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0222F70C ; =0x00000A1A
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r6, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0222F708
	ldrh r1, [r6]
	mov r0, #0xa1
	lsl r0, r0, #4
	strb r1, [r4, r0]
_0222F708:
	pop {r4, r5, r6, pc}
	nop
_0222F70C: .word 0x00000A1A
	thumb_func_end ov104_0222F6E8

	thumb_func_start ov104_0222F710
ov104_0222F710: ; 0x0222F710
	push {r3, lr}
	mov r2, #0xf
	add r3, r0, #0
	lsl r2, r2, #6
	strh r1, [r3, r2]
	add r1, r3, r2
	mov r0, #0x2f
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _0222F72C
	mov r0, #1
	pop {r3, pc}
_0222F72C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov104_0222F710

	thumb_func_start ov104_0222F730
ov104_0222F730: ; 0x0222F730
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0222F750 ; =0x00000A1A
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r6, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0222F74E
	ldrh r1, [r6]
	ldr r0, _0222F754 ; =0x00000A11
	strb r1, [r4, r0]
_0222F74E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222F750: .word 0x00000A1A
_0222F754: .word 0x00000A11
	thumb_func_end ov104_0222F730

	thumb_func_start ov104_0222F758
ov104_0222F758: ; 0x0222F758
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldrb r0, [r7, #0x10]
	mov r1, #0
	bl ov104_0223B7A8
	str r0, [sp]
	bl sub_02073C70
	add r6, r0, #0
	ldr r0, [sp]
	mov r4, #0
	cmp r0, #0
	ble _0222F79C
	mov r0, #0x41
	lsl r0, r0, #4
	add r0, r7, r0
	add r5, r4, #0
	str r0, [sp, #4]
_0222F780:
	ldr r0, [r7, #0x28]
	add r1, r4, #0
	bl sub_0207A0FC
	ldr r1, [sp, #4]
	add r2, r6, #0
	add r1, r1, r5
	bl MI_CpuCopy8
	ldr r0, [sp]
	add r4, r4, #1
	add r5, r5, r6
	cmp r4, r0
	blt _0222F780
_0222F79C:
	mov r1, #0x41
	lsl r1, r1, #4
	mov r2, #2
	mov r0, #0x30
	add r1, r7, r1
	lsl r2, r2, #8
	bl sub_0203597C
	cmp r0, #1
	bne _0222F7B6
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222F7B6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0222F758

	thumb_func_start ov104_0222F7BC
ov104_0222F7BC: ; 0x0222F7BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _0222F848 ; =0x00000A1A
	add r4, r0, #0
	add r0, r3, #0
	ldrb r0, [r0, r1]
	str r2, [sp]
	str r3, [sp, #4]
	add r2, r0, #1
	add r0, r3, #0
	strb r2, [r0, r1]
	bl sub_0203608C
	cmp r4, r0
	beq _0222F844
	ldr r0, [sp, #4]
	mov r1, #0
	ldrb r0, [r0, #0x10]
	bl ov104_0223B7A8
	str r0, [sp, #8]
	bl sub_02073C70
	add r5, r0, #0
	mov r0, #0xb
	bl sub_02073C74
	add r6, r0, #0
	ldr r0, [sp, #8]
	mov r7, #0
	cmp r0, #0
	ble _0222F81E
	add r4, r7, #0
_0222F7FE:
	ldr r0, [sp]
	add r1, r6, #0
	add r0, r0, r4
	add r2, r5, #0
	bl MI_CpuCopy8
	ldr r0, [sp, #4]
	add r1, r6, #0
	ldr r0, [r0, #0x28]
	bl sub_0207A048
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r4, r4, r5
	cmp r7, r0
	blt _0222F7FE
_0222F81E:
	add r0, r6, #0
	bl sub_020181C4
	bl sub_0203608C
	cmp r0, #0
	beq _0222F844
	ldr r0, [sp, #4]
	mov r1, #0
	ldr r0, [r0, #0x28]
	mov r2, #2
	bl sub_0207A184
	ldr r0, [sp, #4]
	mov r1, #1
	ldr r0, [r0, #0x28]
	mov r2, #3
	bl sub_0207A184
_0222F844:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222F848: .word 0x00000A1A
	thumb_func_end ov104_0222F7BC

	thumb_func_start ov104_0222F84C
ov104_0222F84C: ; 0x0222F84C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	lsl r0, r0, #8
	add r4, r1, #0
	cmp r2, r0
	ble _0222F85E
	bl GF_AssertFail
_0222F85E:
	mov r0, #0x61
	lsl r0, r0, #4
	add r1, r4, r0
	lsl r0, r5, #9
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0222F84C

	thumb_func_start ov104_0222F86C
ov104_0222F86C: ; 0x0222F86C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_020305B8
	ldrh r0, [r4, #0x18]
	ldr r1, _0222F89C ; =0x00000426
	strh r0, [r4, r1]
	add r0, r1, #2
	ldrh r2, [r4, #0x1a]
	sub r1, r1, #2
	add r1, r4, r1
	strh r2, [r4, r0]
	mov r0, #0x41
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _0222F896
	mov r0, #1
	pop {r4, pc}
_0222F896:
	mov r0, #0
	pop {r4, pc}
	nop
_0222F89C: .word 0x00000426
	thumb_func_end ov104_0222F86C

	thumb_func_start ov104_0222F8A0
ov104_0222F8A0: ; 0x0222F8A0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0222F8C8 ; =0x00000A7C
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r5, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r6, r0
	beq _0222F8C4
	ldrh r1, [r5, #2]
	ldr r0, _0222F8CC ; =0x00000A78
	strh r1, [r4, r0]
	ldrh r1, [r5, #4]
	sub r0, r0, #2
	strh r1, [r4, r0]
_0222F8C4:
	pop {r4, r5, r6, pc}
	nop
_0222F8C8: .word 0x00000A7C
_0222F8CC: .word 0x00000A78
	thumb_func_end ov104_0222F8A0

	thumb_func_start ov104_0222F8D0
ov104_0222F8D0: ; 0x0222F8D0
	push {r4, lr}
	add r1, r0, #0
	ldr r2, _0222F904 ; =0x00000424
	mov r3, #0
	add r4, r1, #0
_0222F8DA:
	add r0, r4, #0
	add r0, #0x78
	ldrh r0, [r0]
	add r3, r3, #1
	strh r0, [r4, r2]
	add r4, r4, #2
	cmp r3, #0xe
	blt _0222F8DA
	ldr r2, _0222F904 ; =0x00000424
	mov r0, #0x42
	add r1, r1, r2
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _0222F8FE
	mov r0, #1
	pop {r4, pc}
_0222F8FE:
	mov r0, #0
	pop {r4, pc}
	nop
_0222F904: .word 0x00000424
	thumb_func_end ov104_0222F8D0

	thumb_func_start ov104_0222F908
ov104_0222F908: ; 0x0222F908
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0222F940 ; =0x00000A7C
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r5, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r6, r0
	beq _0222F93C
	bl sub_0203608C
	cmp r0, #0
	beq _0222F93C
	mov r2, #0
_0222F92A:
	ldrh r1, [r5]
	add r0, r4, #0
	add r0, #0x78
	add r2, r2, #1
	strh r1, [r0]
	add r5, r5, #2
	add r4, r4, #2
	cmp r2, #0xe
	blt _0222F92A
_0222F93C:
	pop {r4, r5, r6, pc}
	nop
_0222F940: .word 0x00000A7C
	thumb_func_end ov104_0222F908

	thumb_func_start ov104_0222F944
ov104_0222F944: ; 0x0222F944
	push {r3, r4, r5, r6, r7, lr}
	add r3, r0, #0
	mov r0, #0xc5
	ldr r1, _0222F9B8 ; =0x00000424
	mov r4, #0
	add r5, r3, #0
	lsl r0, r0, #2
_0222F952:
	ldrh r2, [r5, r0]
	add r4, r4, #1
	strh r2, [r5, r1]
	add r5, r5, #2
	cmp r4, #4
	blt _0222F952
	mov r0, #0xc7
	ldr r1, _0222F9BC ; =0x0000042C
	mov r5, #0
	add r4, r3, #0
	lsl r0, r0, #2
_0222F968:
	add r2, r3, r5
	ldrb r2, [r2, r0]
	add r5, r5, #1
	strh r2, [r4, r1]
	add r4, r4, #2
	cmp r5, #4
	blt _0222F968
	ldr r7, _0222F9B8 ; =0x00000424
	add r1, r3, #0
	mov r5, #0x32
	add r6, r7, #0
	mov r2, #0
	add r0, r3, #0
	add r1, #0x10
	lsl r5, r5, #4
	add r6, #8
_0222F988:
	mov r4, #0x32
	lsl r4, r4, #4
	ldr r4, [r0, r4]
	add r2, r2, #1
	strh r4, [r1, r7]
	ldr r4, [r0, r5]
	add r0, r0, #4
	lsr r4, r4, #0x10
	strh r4, [r1, r6]
	add r1, r1, #2
	cmp r2, #4
	blt _0222F988
	ldr r1, _0222F9B8 ; =0x00000424
	mov r0, #0x43
	add r1, r3, r1
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _0222F9B4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222F9B4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222F9B8: .word 0x00000424
_0222F9BC: .word 0x0000042C
	thumb_func_end ov104_0222F944

	thumb_func_start ov104_0222F9C0
ov104_0222F9C0: ; 0x0222F9C0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0222FA34 ; =0x00000A7C
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r5, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r6, r0
	beq _0222FA32
	bl sub_0203608C
	cmp r0, #0
	beq _0222FA32
	mov r0, #0xc5
	mov r2, #0
	add r3, r5, #0
	add r6, r4, #0
	lsl r0, r0, #2
_0222F9EA:
	ldrh r1, [r3]
	add r2, r2, #1
	add r3, r3, #2
	strh r1, [r6, r0]
	add r6, r6, #2
	cmp r2, #4
	blt _0222F9EA
	mov r0, #0xc7
	mov r6, #0
	add r3, r5, #0
	lsl r0, r0, #2
_0222FA00:
	ldrh r2, [r3, #8]
	add r1, r4, r6
	add r6, r6, #1
	add r3, r3, #2
	strb r2, [r1, r0]
	cmp r6, #4
	blt _0222FA00
	mov r2, #0x32
	lsl r2, r2, #4
	mov r1, #0
	add r5, #0x10
	add r3, r2, #0
	add r6, r2, #0
_0222FA1A:
	ldrh r0, [r5]
	add r1, r1, #1
	str r0, [r4, r2]
	ldrh r7, [r5, #8]
	ldr r0, [r4, r3]
	add r5, r5, #2
	lsl r7, r7, #0x10
	orr r0, r7
	str r0, [r4, r6]
	add r4, r4, #4
	cmp r1, #4
	blt _0222FA1A
_0222FA32:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222FA34: .word 0x00000A7C
	thumb_func_end ov104_0222F9C0

	thumb_func_start ov104_0222FA38
ov104_0222FA38: ; 0x0222FA38
	push {r3, lr}
	ldr r2, _0222FA58 ; =0x00000424
	add r3, r0, #0
	strh r1, [r3, r2]
	add r1, r3, r2
	mov r0, #0x44
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _0222FA52
	mov r0, #1
	pop {r3, pc}
_0222FA52:
	mov r0, #0
	pop {r3, pc}
	nop
_0222FA58: .word 0x00000424
	thumb_func_end ov104_0222FA38

	thumb_func_start ov104_0222FA5C
ov104_0222FA5C: ; 0x0222FA5C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0222FA7C ; =0x00000A7C
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r6, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0222FA7A
	ldrh r1, [r6]
	ldr r0, _0222FA80 ; =0x00000A74
	strb r1, [r4, r0]
_0222FA7A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222FA7C: .word 0x00000A7C
_0222FA80: .word 0x00000A74
	thumb_func_end ov104_0222FA5C

	thumb_func_start ov104_0222FA84
ov104_0222FA84: ; 0x0222FA84
	push {r3, lr}
	ldr r2, _0222FAA4 ; =0x00000424
	add r3, r0, #0
	strh r1, [r3, r2]
	add r1, r3, r2
	mov r0, #0x45
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _0222FA9E
	mov r0, #1
	pop {r3, pc}
_0222FA9E:
	mov r0, #0
	pop {r3, pc}
	nop
_0222FAA4: .word 0x00000424
	thumb_func_end ov104_0222FA84

	thumb_func_start ov104_0222FAA8
ov104_0222FAA8: ; 0x0222FAA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0222FAC8 ; =0x00000A7C
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r6, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0222FAC6
	ldrh r1, [r6]
	ldr r0, _0222FACC ; =0x00000A75
	strb r1, [r4, r0]
_0222FAC6:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222FAC8: .word 0x00000A7C
_0222FACC: .word 0x00000A75
	thumb_func_end ov104_0222FAA8

	thumb_func_start ov104_0222FAD0
ov104_0222FAD0: ; 0x0222FAD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldrb r0, [r7, #0x10]
	mov r1, #0
	bl ov104_0223BD70
	str r0, [sp]
	bl sub_02073C70
	add r6, r0, #0
	ldr r0, [sp]
	mov r4, #0
	cmp r0, #0
	ble _0222FB12
	ldr r0, _0222FB30 ; =0x00000474
	add r5, r4, #0
	add r0, r7, r0
	str r0, [sp, #4]
_0222FAF6:
	ldr r0, [r7, #0x70]
	add r1, r4, #0
	bl sub_0207A0FC
	ldr r1, [sp, #4]
	add r2, r6, #0
	add r1, r1, r5
	bl MI_CpuCopy8
	ldr r0, [sp]
	add r4, r4, #1
	add r5, r5, r6
	cmp r4, r0
	blt _0222FAF6
_0222FB12:
	ldr r1, _0222FB30 ; =0x00000474
	mov r2, #2
	mov r0, #0x46
	add r1, r7, r1
	lsl r2, r2, #8
	bl sub_0203597C
	cmp r0, #1
	bne _0222FB2A
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222FB2A:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222FB30: .word 0x00000474
	thumb_func_end ov104_0222FAD0

	thumb_func_start ov104_0222FB34
ov104_0222FB34: ; 0x0222FB34
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _0222FBC0 ; =0x00000A7C
	add r4, r0, #0
	add r0, r3, #0
	ldrb r0, [r0, r1]
	str r2, [sp]
	str r3, [sp, #4]
	add r2, r0, #1
	add r0, r3, #0
	strb r2, [r0, r1]
	bl sub_0203608C
	cmp r4, r0
	beq _0222FBBC
	ldr r0, [sp, #4]
	mov r1, #0
	ldrb r0, [r0, #0x10]
	bl ov104_0223BD70
	str r0, [sp, #8]
	bl sub_02073C70
	add r5, r0, #0
	mov r0, #0xb
	bl sub_02073C74
	add r6, r0, #0
	ldr r0, [sp, #8]
	mov r7, #0
	cmp r0, #0
	ble _0222FB96
	add r4, r7, #0
_0222FB76:
	ldr r0, [sp]
	add r1, r6, #0
	add r0, r0, r4
	add r2, r5, #0
	bl MI_CpuCopy8
	ldr r0, [sp, #4]
	add r1, r6, #0
	ldr r0, [r0, #0x70]
	bl sub_0207A048
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r4, r4, r5
	cmp r7, r0
	blt _0222FB76
_0222FB96:
	add r0, r6, #0
	bl sub_020181C4
	bl sub_0203608C
	cmp r0, #0
	beq _0222FBBC
	ldr r0, [sp, #4]
	mov r1, #0
	ldr r0, [r0, #0x70]
	mov r2, #2
	bl sub_0207A184
	ldr r0, [sp, #4]
	mov r1, #1
	ldr r0, [r0, #0x70]
	mov r2, #3
	bl sub_0207A184
_0222FBBC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222FBC0: .word 0x00000A7C
	thumb_func_end ov104_0222FB34

	thumb_func_start ov104_0222FBC4
ov104_0222FBC4: ; 0x0222FBC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	lsl r0, r0, #8
	add r4, r1, #0
	cmp r2, r0
	ble _0222FBD6
	bl GF_AssertFail
_0222FBD6:
	ldr r0, _0222FBE0 ; =0x00000674
	add r1, r4, r0
	lsl r0, r5, #9
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222FBE0: .word 0x00000674
	thumb_func_end ov104_0222FBC4