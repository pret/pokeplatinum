	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov21_021D5AEC
ov21_021D5AEC: ; 0x021D5AEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	add r0, r2, #0
	add r4, r1, #0
	bl ov21_021D5B90
	add r6, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021D5BE0
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl ov21_021D5C1C
	str r6, [r5, #0]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021D5CB4
	str r0, [r5, #0x24]
	ldr r0, _021D5B38 ; =ov21_021D5CB8
	str r0, [r5, #8]
	ldr r0, _021D5B3C ; =ov21_021D5D04
	str r0, [r5, #0xc]
	ldr r0, _021D5B40 ; =ov21_021D5D34
	str r0, [r5, #0x10]
	ldr r0, _021D5B44 ; =ov21_021D5D48
	str r0, [r5, #0x14]
	ldr r0, _021D5B48 ; =ov21_021D5E2C
	str r0, [r5, #0x18]
	ldr r0, _021D5B4C ; =ov21_021D5EA8
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D5B38: .word ov21_021D5CB8
_021D5B3C: .word ov21_021D5D04
_021D5B40: .word ov21_021D5D34
_021D5B44: .word ov21_021D5D48
_021D5B48: .word ov21_021D5E2C
_021D5B4C: .word ov21_021D5EA8
	thumb_func_end ov21_021D5AEC

	thumb_func_start ov21_021D5B50
ov21_021D5B50: ; 0x021D5B50
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021D5BCC
	ldr r0, [r4, #4]
	bl ov21_021D5C08
	ldr r0, [r4, #0x20]
	bl ov21_021D5C7C
	pop {r4, pc}
	thumb_func_end ov21_021D5B50

	thumb_func_start ov21_021D5B68
ov21_021D5B68: ; 0x021D5B68
	ldr r1, [r0, #0x24]
	cmp r1, #1
	beq _021D5B86
	ldr r1, [r0, #0x28]
	cmp r1, #1
	beq _021D5B86
	ldr r1, [r0, #0x2c]
	cmp r1, #1
	beq _021D5B86
	ldr r1, [r0, #0x30]
	cmp r1, #1
	beq _021D5B86
	ldr r0, [r0, #0x34]
	cmp r0, #1
	bne _021D5B8A
_021D5B86:
	mov r0, #0
	bx lr
_021D5B8A:
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D5B68

	thumb_func_start ov21_021D5B90
ov21_021D5B90: ; 0x021D5B90
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x38
	bl sub_02018144
	add r4, r0, #0
	bne _021D5BA2
	bl sub_02022974
_021D5BA2:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x38
	bl sub_020D5124
	add r0, r5, #0
	bl ov21_021D138C
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	mov r0, #1
	str r0, [r4, #0x1c]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D5B90

	thumb_func_start ov21_021D5BCC
ov21_021D5BCC: ; 0x021D5BCC
	push {r4, lr}
	add r4, r0, #0
	bne _021D5BD6
	bl sub_02022974
_021D5BD6:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D5BCC

	thumb_func_start ov21_021D5BE0
ov21_021D5BE0: ; 0x021D5BE0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	bne _021D5BF2
	bl sub_02022974
_021D5BF2:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	add r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D5BE0

	thumb_func_start ov21_021D5C08
ov21_021D5C08: ; 0x021D5C08
	push {r4, lr}
	add r4, r0, #0
	bne _021D5C12
	bl sub_02022974
_021D5C12:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D5C08

	thumb_func_start ov21_021D5C1C
ov21_021D5C1C: ; 0x021D5C1C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ov21_021D5CB4
	add r2, r0, #0
	mov r1, #0x14
	add r0, r5, #0
	mul r1, r2
	bl sub_02018144
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #1
	bl ov21_021D467C
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x14
	add r2, r4, #0
	mov r3, #2
	bl ov21_021D475C
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x28
	add r2, r4, #0
	mov r3, #4
	bl ov21_021D4704
	add r0, r6, #0
	add r0, #0x3c
	add r1, r4, #0
	add r2, r5, #0
	mov r3, #8
	bl ov21_021D4878
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x50
	add r2, r4, #0
	mov r3, #0x10
	bl ov21_021D47F0
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D5C1C

	thumb_func_start ov21_021D5C7C
ov21_021D5C7C: ; 0x021D5C7C
	push {r4, lr}
	add r4, r0, #0
	bne _021D5C86
	bl sub_02022974
_021D5C86:
	add r0, r4, #0
	bl ov21_021D4660
	add r0, r4, #0
	add r0, #0x14
	bl ov21_021D4660
	add r0, r4, #0
	add r0, #0x28
	bl ov21_021D4660
	add r0, r4, #0
	add r0, #0x3c
	bl ov21_021D4660
	add r0, r4, #0
	add r0, #0x50
	bl ov21_021D4660
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov21_021D5C7C

	thumb_func_start ov21_021D5CB4
ov21_021D5CB4: ; 0x021D5CB4
	mov r0, #5
	bx lr
	thumb_func_end ov21_021D5CB4

	thumb_func_start ov21_021D5CB8
ov21_021D5CB8: ; 0x021D5CB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	mov r1, #0x24
	bl sub_02018144
	str r0, [r5, #8]
	cmp r0, #0
	bne _021D5CD0
	bl sub_02022974
_021D5CD0:
	ldr r0, [r5, #8]
	mov r1, #0
	mov r2, #0x24
	bl sub_020D5124
	ldr r1, [r5, #8]
	add r0, r4, #0
	bl ov21_021D5F58
	ldr r0, [r4, #4]
	bl ov21_021D38C0
	mov r1, #1
	str r1, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _021D5CF8
	str r1, [r4, #0x10]
_021D5CF8:
	add r0, r4, #0
	bl ov21_021D5FC4
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D5CB8

	thumb_func_start ov21_021D5D04
ov21_021D5D04: ; 0x021D5D04
	push {r3, lr}
	add r2, r0, #0
	ldr r0, [r2, #0xc]
	ldr r3, [r2, #8]
	cmp r0, #1
	bne _021D5D14
	mov r0, #1
	pop {r3, pc}
_021D5D14:
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _021D5D24
	mov r0, #0
	str r0, [r1, #0x18]
	mov r0, #1
	str r0, [r2, #0]
	b _021D5D2E
_021D5D24:
	ldr r2, [r2, #4]
	add r0, r1, #0
	add r1, r3, #0
	bl ov21_021D5F7C
_021D5D2E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021D5D04

	thumb_func_start ov21_021D5D34
ov21_021D5D34: ; 0x021D5D34
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D5D34

	thumb_func_start ov21_021D5D48
ov21_021D5D48: ; 0x021D5D48
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r6, r2, #0
	ldr r7, [r4, #8]
	cmp r0, #3
	bhi _021D5E20
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D5D64: ; jump table
	.short _021D5D6C - _021D5D64 - 2 ; case 0
	.short _021D5D9A - _021D5D64 - 2 ; case 1
	.short _021D5DE4 - _021D5D64 - 2 ; case 2
	.short _021D5E0C - _021D5D64 - 2 ; case 3
_021D5D6C:
	mov r1, #0x52
	ldr r0, [r4, #4]
	lsl r1, r1, #2
	bl sub_02018144
	add r7, r0, #0
	bne _021D5D7E
	bl sub_02022974
_021D5D7E:
	str r7, [r4, #8]
	add r0, r7, #0
	add r1, r6, #0
	bl ov21_021D6C24
	ldr r1, [r5, #0]
	add r0, r7, #0
	add r2, r6, #0
	bl ov21_021D68C8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D5E24
_021D5D9A:
	mov r0, #0x5d
	ldr r1, [r6, #4]
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021D5DB2
	ldr r1, [r5, #0]
	ldr r3, [r4, #4]
	add r0, r7, #0
	bl ov21_021D6114
	b _021D5DBC
_021D5DB2:
	ldr r1, [r5, #0]
	ldr r3, [r4, #4]
	add r0, r7, #0
	bl ov21_021D61F4
_021D5DBC:
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq _021D5DD0
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl ov21_021D7248
	b _021D5DDC
_021D5DD0:
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl ov21_021D71A8
_021D5DDC:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D5E24
_021D5DE4:
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq _021D5DF6
	add r0, r7, #0
	add r1, r5, #0
	mov r3, #1
	bl ov21_021D72D4
	b _021D5E00
_021D5DF6:
	add r0, r7, #0
	add r1, r5, #0
	mov r3, #1
	bl ov21_021D71E4
_021D5E00:
	cmp r0, #0
	beq _021D5E24
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D5E24
_021D5E0C:
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021D5E28 ; =0x04000050
	mov r1, #1
	mov r2, #8
	mov r3, #0
	bl sub_020BF55C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D5E20:
	bl sub_02022974
_021D5E24:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D5E28: .word 0x04000050
	thumb_func_end ov21_021D5D48

	thumb_func_start ov21_021D5E2C
ov21_021D5E2C: ; 0x021D5E2C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r6, r0, #0
	add r7, r1, #0
	ldr r0, [r5, #0x1c]
	ldr r4, [r7, #8]
	cmp r0, #0
	bne _021D5E40
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D5E40:
	ldr r0, [r5, #4]
	bl ov21_021D3898
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, r0
	beq _021D5E70
	str r0, [r4, r1]
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021D6A58
	ldr r1, [r6, #0]
	ldr r3, [r7, #4]
	add r0, r4, #0
	add r2, r5, #0
	bl ov21_021D6CC8
	ldr r1, [r6, #0]
	add r0, r4, #0
	add r2, r5, #0
	bl ov21_021D68C8
_021D5E70:
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021D69A0
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021D6AE4
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021D6BB0
	ldr r1, [r6, #0]
	ldr r3, [r7, #4]
	add r0, r4, #0
	add r2, r5, #0
	bl ov21_021D6C44
	ldr r1, [r6, #0]
	add r0, r4, #0
	add r2, r5, #0
	bl ov21_021D6F20
	add r0, r5, #0
	bl ov21_021D6F74
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D5E2C

	thumb_func_start ov21_021D5EA8
ov21_021D5EA8: ; 0x021D5EA8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #3
	bhi _021D5F4A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D5EC4: ; jump table
	.short _021D5ECC - _021D5EC4 - 2 ; case 0
	.short _021D5F08 - _021D5EC4 - 2 ; case 1
	.short _021D5F30 - _021D5EC4 - 2 ; case 2
	.short _021D5F46 - _021D5EC4 - 2 ; case 3
_021D5ECC:
	ldr r0, _021D5F54 ; =0x04000050
	mov r3, #0
	strh r3, [r0]
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021D5EF8
	ldr r1, [r5, #0]
	ldr r3, [r4, #4]
	add r0, r6, #0
	bl ov21_021D7160
	ldr r0, [r5, #0]
	add r1, r7, #0
	bl ov21_021D6F64
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	mov r3, #0
	bl ov21_021D7248
	b _021D5F00
_021D5EF8:
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021D71A8
_021D5F00:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D5F4E
_021D5F08:
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021D5F1A
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0
	bl ov21_021D72D4
	b _021D5F24
_021D5F1A:
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0
	bl ov21_021D71E4
_021D5F24:
	cmp r0, #0
	beq _021D5F4E
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D5F4E
_021D5F30:
	ldr r1, [r5, #0]
	add r0, r6, #0
	bl ov21_021D61D8
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D5F4E
_021D5F46:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D5F4A:
	bl sub_02022974
_021D5F4E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D5F54: .word 0x04000050
	thumb_func_end ov21_021D5EA8

	thumb_func_start ov21_021D5F58
ov21_021D5F58: ; 0x021D5F58
	mov r2, #0
	str r2, [r0, #8]
	str r2, [r1, #0]
	mov r0, #0x3c
	str r0, [r1, #4]
	mov r0, #4
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D5F58

	thumb_func_start ov21_021D5F6C
ov21_021D5F6C: ; 0x021D5F6C
	mov r0, #0xa
	lsl r0, r0, #6
	str r0, [r1, #4]
	mov r0, #0
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D5F6C

	thumb_func_start ov21_021D5F7C
ov21_021D5F7C: ; 0x021D5F7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021D601C
	cmp r0, #1
	beq _021D5FC2
	add r0, r5, #0
	bl ov21_021D5FC4
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _021D5FAE
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _021D5FA6
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021D7590
	b _021D5FAE
_021D5FA6:
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021D75DC
_021D5FAE:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _021D5FBC
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D60A4
_021D5FBC:
	add r0, r5, #0
	bl ov21_021D5FD4
_021D5FC2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D5F7C

	thumb_func_start ov21_021D5FC4
ov21_021D5FC4: ; 0x021D5FC4
	mov r1, #0
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D5FC4

	thumb_func_start ov21_021D5FD4
ov21_021D5FD4: ; 0x021D5FD4
	ldr r1, _021D6018 ; =0x021BF67C
	mov r2, #2
	ldr r1, [r1, #0x48]
	tst r2, r1
	beq _021D5FF6
	mov r1, #0x5d
	ldr r2, [r0, #4]
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _021D5FF0
	mov r1, #1
	str r1, [r0, #0x28]
	bx lr
_021D5FF0:
	mov r1, #1
	str r1, [r0, #0x24]
	bx lr
_021D5FF6:
	mov r3, #1
	add r2, r1, #0
	tst r2, r3
	beq _021D6002
	str r3, [r0, #0x2c]
	bx lr
_021D6002:
	lsl r2, r3, #0xa
	tst r2, r1
	beq _021D600C
	str r3, [r0, #0x34]
	bx lr
_021D600C:
	mov r2, #4
	tst r1, r2
	beq _021D6014
	str r3, [r0, #0x30]
_021D6014:
	bx lr
	nop
_021D6018: .word 0x021BF67C
	thumb_func_end ov21_021D5FD4

	thumb_func_start ov21_021D601C
ov21_021D601C: ; 0x021D601C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5, #0x28]
	add r4, r2, #0
	cmp r1, #0
	beq _021D6038
	bl ov21_021D744C
	ldr r0, _021D609C ; =0x000005DD
	bl sub_02005748
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D6038:
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _021D604E
	add r1, r4, #0
	bl ov21_021D7538
	ldr r0, _021D609C ; =0x000005DD
	bl sub_02005748
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D604E:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _021D607A
	ldr r0, [r5, #4]
	bl ov21_021D3898
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl ov21_021D38B0
	ldr r1, _021D60A0 ; =0x000001EE
	cmp r0, r1
	beq _021D607A
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021D7464
	ldr r0, _021D609C ; =0x000005DD
	bl sub_02005748
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D607A:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021D6088
	add r0, r5, #0
	bl ov21_021D747C
	pop {r4, r5, r6, pc}
_021D6088:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _021D6098
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D74B0
	pop {r4, r5, r6, pc}
_021D6098:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D609C: .word 0x000005DD
_021D60A0: .word 0x000001EE
	thumb_func_end ov21_021D601C

	thumb_func_start ov21_021D60A4
ov21_021D60A4: ; 0x021D60A4
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _021D60F4
	ldr r2, [r4, #4]
	ldr r1, [r0, #0xc]
	sub r1, r1, r2
	cmp r1, #0
	ble _021D60BC
	str r1, [r0, #0xc]
	pop {r4, pc}
_021D60BC:
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r4, #0]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ble _021D60F4
	ldr r0, [r4, #8]
	sub r0, r0, #1
	cmp r0, #0
	ble _021D60D4
	str r0, [r4, #8]
	pop {r4, pc}
_021D60D4:
	ldr r0, [r4, #4]
	bl sub_020E17B4
	ldr r1, _021D60F8 ; =0x3FCCCCCD
	bl sub_020E18B0
	bl sub_020E1740
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	sub r1, r0, #1
	mov r0, #4
	sub r0, r0, r1
	str r1, [r4, #0xc]
	lsl r0, r0, #2
	str r0, [r4, #8]
_021D60F4:
	pop {r4, pc}
	nop
_021D60F8: .word 0x3FCCCCCD
	thumb_func_end ov21_021D60A4

	thumb_func_start ov21_021D60FC
ov21_021D60FC: ; 0x021D60FC
	mov r3, #0xa
	lsl r3, r3, #6
	str r3, [r0, #0xc]
	str r2, [r1, #0]
	str r2, [r0, #8]
	bx lr
	thumb_func_end ov21_021D60FC

	thumb_func_start ov21_021D6108
ov21_021D6108: ; 0x021D6108
	ldr r3, _021D6110 ; =ov21_021D3844
	ldr r0, [r0, #4]
	bx r3
	nop
_021D6110: .word ov21_021D3844
	thumb_func_end ov21_021D6108

	thumb_func_start ov21_021D6114
ov21_021D6114: ; 0x021D6114
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	mov r1, #0
	add r5, r0, #0
	add r4, r2, #0
	add r7, r3, #0
	str r1, [sp]
	add r0, r6, #0
	add r2, r1, #0
	add r3, r1, #0
	str r7, [sp, #4]
	bl ov21_021D276C
	add r0, r6, #0
	add r1, r7, #0
	bl ov21_021D62E4
	ldr r0, [r4, #4]
	bl ov21_021D36D8
	add r3, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov21_021D637C
	ldr r0, [r4, #4]
	bl ov21_021D38FC
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl ov21_021D3908
	add r3, r0, #0
	ldr r2, [sp, #8]
	add r0, r6, #0
	add r1, r7, #0
	bl ov21_021D63DC
	add r0, r5, #0
	add r1, r7, #0
	bl ov21_021D6538
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov21_021D65DC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov21_021D6744
	add r0, r6, #0
	add r1, r7, #0
	bl ov21_021D70C0
	str r0, [r5, #0x4c]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov21_021D67EC
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D6994
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D69A0
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D6AE4
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D6B94
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D6BB0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov21_021D6C44
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov21_021D6F20
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D6114

	thumb_func_start ov21_021D61D8
ov21_021D61D8: ; 0x021D61D8
	push {r4, lr}
	add r4, r0, #0
	bl ov21_021D695C
	add r0, r4, #0
	bl ov21_021D6580
	add r0, r4, #0
	bl ov21_021D6940
	add r0, r4, #0
	bl ov21_021D63C0
	pop {r4, pc}
	thumb_func_end ov21_021D61D8

	thumb_func_start ov21_021D61F4
ov21_021D61F4: ; 0x021D61F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	mov r0, #0x20
	str r0, [sp]
	add r6, r3, #0
	mov r2, #0
	add r0, r7, #0
	mov r1, #4
	add r3, r2, #0
	str r6, [sp, #4]
	bl ov21_021D276C
	add r0, r7, #0
	mov r1, #0
	add r2, sp, #0x10
	add r3, r6, #0
	bl ov21_021D27E0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	mov r1, #2
	ldr r0, [r0, #0xc]
	lsl r1, r1, #8
	str r0, [sp, #8]
	bl sub_020C2C54
	ldr r0, [sp, #8]
	mov r2, #0x1e
	add r0, #0x20
	mov r1, #0x20
	lsl r2, r2, #4
	str r0, [sp, #8]
	bl sub_020C00B4
	ldr r0, [sp, #0xc]
	bl sub_020181C4
	add r0, r7, #0
	add r1, r6, #0
	bl ov21_021D62E4
	ldr r0, [r4, #4]
	bl ov21_021D36D8
	add r3, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl ov21_021D637C
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021D6538
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl ov21_021D65DC
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl ov21_021D6744
	add r0, r7, #0
	add r1, r6, #0
	bl ov21_021D70C0
	str r0, [r5, #0x4c]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov21_021D67EC
	ldr r0, [r4, #4]
	bl ov21_021D38FC
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl ov21_021D64B0
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D6994
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D69A0
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D6AE4
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D6B94
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D6BB0
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov21_021D6C44
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov21_021D6F20
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D61F4

	thumb_func_start ov21_021D62E4
ov21_021D62E4: ; 0x021D62E4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r1, #0
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	add r5, r0, #0
	str r4, [sp, #0xc]
	ldr r2, [r5, #0]
	mov r1, #0x1c
	mov r3, #3
	bl ov21_021D2724
	str r4, [sp]
	add r0, r5, #0
	mov r1, #0x26
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r6, r0, #0
	ldrh r0, [r2]
	mov r1, #3
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	bl sub_020198C0
	add r0, r6, #0
	bl sub_020181C4
	str r4, [sp]
	add r0, r5, #0
	mov r1, #0x27
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	add r4, r0, #0
	ldr r2, [sp, #0x10]
	mov r0, #4
	str r0, [sp]
	ldrh r0, [r2]
	mov r1, #3
	mov r3, #1
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	bl sub_020198C0
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #0]
	mov r1, #3
	bl sub_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021D62E4

	thumb_func_start ov21_021D637C
ov21_021D637C: ; 0x021D637C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	add r6, r1, #0
	str r0, [sp, #8]
	add r4, r2, #0
	str r4, [sp, #0xc]
	add r7, r3, #0
	ldr r2, [r6, #0]
	add r0, r6, #0
	mov r1, #0x1c
	mov r3, #2
	bl ov21_021D2724
	cmp r7, #1
	bne _021D63A8
	mov r1, #0x2a
	b _021D63AA
_021D63A8:
	mov r1, #0x28
_021D63AA:
	add r3, r5, #0
	add r0, r6, #0
	mov r2, #1
	add r3, #0xdc
	str r4, [sp]
	bl ov21_021D27B8
	add r5, #0xd8
	str r0, [r5, #0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D637C

	thumb_func_start ov21_021D63C0
ov21_021D63C0: ; 0x021D63C0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd8
	str r1, [r0, #0]
	add r4, #0xdc
	str r1, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D63C0

	thumb_func_start ov21_021D63DC
ov21_021D63DC: ; 0x021D63DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x20
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #0x10]
	bl sub_02023790
	add r4, r0, #0
	ldr r2, _021D64A8 ; =0x000002B9
	mov r0, #0
	mov r1, #0x1a
	add r3, r6, #0
	bl sub_0200B144
	mov r1, #0
	add r2, r4, #0
	add r6, r0, #0
	bl sub_0200B1B8
	mov r0, #0x98
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D64AC ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #4
	add r2, r4, #0
	mov r3, #8
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	mov r1, #1
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #0x98
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D64AC ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #4
	add r2, r4, #0
	mov r3, #0x80
	str r1, [sp, #0xc]
	bl sub_0201D78C
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #3
	mov r3, #2
	bl sub_020238A0
	mov r0, #0xaa
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D64AC ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #4
	add r2, r4, #0
	mov r3, #0x30
	str r1, [sp, #0xc]
	bl sub_0201D78C
	mov r0, #1
	str r0, [sp]
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	mov r2, #3
	mov r3, #2
	bl sub_020238A0
	mov r0, #0xaa
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D64AC ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #4
	add r2, r4, #0
	mov r3, #0xb4
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B190
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D64A8: .word 0x000002B9
_021D64AC: .word 0x00020100
	thumb_func_end ov21_021D63DC

	thumb_func_start ov21_021D64B0
ov21_021D64B0: ; 0x021D64B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x20
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02023790
	add r4, r0, #0
	ldr r2, _021D6530 ; =0x000002B9
	mov r0, #0
	mov r1, #0x1a
	add r3, r6, #0
	bl sub_0200B144
	mov r1, #0x6d
	add r2, r4, #0
	add r6, r0, #0
	bl sub_0200B1B8
	mov r0, #0x98
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D6534 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #4
	add r2, r4, #0
	mov r3, #8
	str r1, [sp, #0xc]
	bl sub_0201D78C
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #3
	mov r3, #2
	bl sub_020238A0
	mov r0, #0xaa
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D6534 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #4
	add r2, r4, #0
	mov r3, #0x30
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B190
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0201C3C0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D6530: .word 0x000002B9
_021D6534: .word 0x00020100
	thumb_func_end ov21_021D64B0

	thumb_func_start ov21_021D6538
ov21_021D6538: ; 0x021D6538
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r0, #2
	mov r1, #0
	add r2, r4, #0
	bl sub_02009714
	add r1, r5, #0
	add r1, #0x80
	str r0, [r1, #0]
	mov r0, #2
	mov r1, #1
	add r2, r4, #0
	bl sub_02009714
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1, #0]
	mov r0, #2
	add r1, r0, #0
	add r2, r4, #0
	bl sub_02009714
	add r1, r5, #0
	add r1, #0x88
	str r0, [r1, #0]
	mov r0, #2
	mov r1, #3
	add r2, r4, #0
	bl sub_02009714
	add r5, #0x8c
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D6538

	thumb_func_start ov21_021D6580
ov21_021D6580: ; 0x021D6580
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x51
	bl sub_02009DC8
	bl sub_0200A4E4
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_02009DC8
	bl sub_0200A6DC
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x6f
	bl sub_02009DC8
	bl sub_0200A4E4
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02009754
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_02009754
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	bl sub_02009754
	add r4, #0x8c
	ldr r0, [r4, #0]
	bl sub_02009754
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D6580

	thumb_func_start ov21_021D65DC
ov21_021D65DC: ; 0x021D65DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl ov21_021D26E0
	add r6, r0, #0
	mov r2, #0x51
	add r0, r5, #0
	str r2, [sp]
	mov r3, #1
	str r3, [sp, #4]
	str r4, [sp, #8]
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_02009A4C
	add r7, r0, #0
	bl sub_0200A3DC
	add r0, r7, #0
	bl sub_02009D4C
	mov r2, #3
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	add r0, r5, #0
	str r4, [sp, #0xc]
	add r0, #0x84
	ldr r0, [r0, #0]
	add r1, r6, #0
	mov r3, #0
	bl sub_02009B04
	add r7, r0, #0
	bl sub_0200A640
	add r0, r7, #0
	bl sub_02009D4C
	mov r2, #0x4f
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	str r4, [sp, #8]
	add r0, #0x88
	ldr r0, [r0, #0]
	add r1, r6, #0
	mov r3, #1
	bl sub_02009BC4
	mov r2, #0x50
	str r2, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r5, #0
	str r4, [sp, #8]
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r1, r6, #0
	mov r3, #1
	bl sub_02009BC4
	mov r0, #0x50
	str r0, [sp]
	sub r0, #0x51
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	mov r2, #3
	str r1, [sp, #0x14]
	add r1, r5, #0
	add r1, #0x84
	ldr r1, [r1, #0]
	mov r3, #0x4f
	str r1, [sp, #0x18]
	add r1, r5, #0
	add r1, #0x88
	ldr r1, [r1, #0]
	str r1, [sp, #0x1c]
	add r1, r5, #0
	add r1, #0x8c
	ldr r1, [r1, #0]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0x90
	mov r1, #0x51
	bl sub_020093B4
	mov r2, #0x6f
	str r2, [sp]
	mov r3, #1
	str r3, [sp, #4]
	add r0, r5, #0
	str r4, [sp, #8]
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_02009A4C
	add r7, r0, #0
	bl sub_0200A3DC
	add r0, r7, #0
	bl sub_02009D4C
	mov r2, #0x6d
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	str r4, [sp, #8]
	add r0, #0x88
	ldr r0, [r0, #0]
	add r1, r6, #0
	mov r3, #1
	bl sub_02009BC4
	mov r2, #0x6e
	str r2, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r5, #0
	str r4, [sp, #8]
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r1, r6, #0
	mov r3, #1
	bl sub_02009BC4
	mov r0, #0x6e
	str r0, [sp]
	sub r0, #0x6f
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	mov r2, #3
	str r1, [sp, #0x14]
	add r1, r5, #0
	add r1, #0x84
	ldr r1, [r1, #0]
	mov r3, #0x6d
	str r1, [sp, #0x18]
	add r1, r5, #0
	add r1, #0x88
	ldr r1, [r1, #0]
	str r1, [sp, #0x1c]
	add r1, r5, #0
	add r1, #0x8c
	ldr r1, [r1, #0]
	add r5, #0xb4
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r5, #0
	mov r1, #0x6f
	bl sub_020093B4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D65DC

	thumb_func_start ov21_021D6744
ov21_021D6744: ; 0x021D6744
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r4, #0
	add r6, r0, #0
	add r3, r1, #0
	add r5, sp, #0
	add r0, r4, #0
	add r1, r4, #0
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	add r5, r6, #0
	str r0, [sp]
	add r0, r6, #0
	add r0, #0x90
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #0x18]
	mov r0, #0x20
	str r2, [sp, #0x1c]
	str r0, [sp, #0x14]
	add r7, r4, #0
_021D6778:
	add r0, sp, #0
	bl sub_02021B90
	add r1, r7, #0
	stmia r5!, {r0}
	bl sub_02021D6C
	add r4, r4, #1
	cmp r4, #9
	blt _021D6778
	mov r5, #0
	str r5, [sp, #0x14]
	add r4, r6, #0
	add r7, sp, #0
_021D6794:
	add r0, r7, #0
	bl sub_02021B90
	mov r1, #1
	str r0, [r4, #0x50]
	bl sub_02021D6C
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #9
	blt _021D6794
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, sp, #0
	bl sub_02021B90
	mov r1, #2
	str r0, [r6, #0x74]
	bl sub_02021D6C
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0xe
	lsl r0, r0, #0xe
	str r0, [sp, #8]
	mov r0, #5
	lsl r0, r0, #0x10
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0xb4
	str r0, [sp, #4]
	add r0, sp, #0
	bl sub_02021B90
	str r0, [r6, #0x7c]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r6, #0x7c]
	mov r1, #1
	bl sub_02021FE0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D6744

	thumb_func_start ov21_021D67EC
ov21_021D67EC: ; 0x021D67EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r1, [sp, #8]
	str r0, [sp, #4]
	mov r1, #0x15
	ldr r0, [sp, #8]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	add r7, r2, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	str r3, [sp, #0xc]
	str r0, [sp, #0x24]
	mov r0, #2
	str r0, [sp, #0x34]
	mov r0, #1
	str r0, [sp, #0x3c]
	add r0, r3, #0
	str r1, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x30]
	str r1, [sp, #0x38]
	str r0, [sp, #0x40]
	ldr r0, [r7, #4]
	bl ov21_021D3898
	sub r4, r0, #4
	ldr r0, [sp, #4]
	ldr r6, [r0, #0x24]
	ldr r0, [r7, #4]
	bl ov21_021D38A4
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
_021D6838:
	ldr r0, [sp, #4]
	lsl r1, r6, #2
	add r5, r0, r1
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021D684C
	bl ov21_021D4D1C
	mov r0, #0
	str r0, [r5, #0x28]
_021D684C:
	cmp r4, #0
	blt _021D68A4
	ldr r0, [sp, #0x10]
	cmp r4, r0
	bge _021D68A4
	ldr r0, [r7, #4]
	add r1, r4, #0
	bl ov21_021D38B0
	add r1, r0, #0
	ldr r0, _021D68C4 ; =0x000001EE
	cmp r1, r0
	beq _021D6892
	ldr r0, [r7, #4]
	bl ov21_021D37DC
	add r3, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [r7, #4]
	ldr r2, [sp, #0xc]
	ldr r3, [r3, #0]
	bl ov21_021D16D8
	ldr r1, [sp, #4]
	str r0, [sp, #0x20]
	str r0, [sp, #0x18]
	ldr r1, [r1, #0x4c]
	add r0, sp, #0x1c
	bl ov21_021D4CB8
	str r0, [r5, #0x28]
	ldr r0, [sp, #0x18]
	bl ov21_021D4DA0
	b _021D68A8
_021D6892:
	add r0, r4, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	add r3, r6, #0
	bl ov21_021D6DF4
	b _021D68A8
_021D68A4:
	mov r0, #0
	str r0, [r5, #0x28]
_021D68A8:
	add r0, r6, #1
	mov r1, #9
	bl sub_020E1F6C
	ldr r0, [sp, #0x14]
	add r6, r1, #0
	add r0, r0, #1
	add r4, r4, #1
	str r0, [sp, #0x14]
	cmp r0, #9
	blt _021D6838
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021D68C4: .word 0x000001EE
	thumb_func_end ov21_021D67EC

	thumb_func_start ov21_021D68C8
ov21_021D68C8: ; 0x021D68C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r6, r1, #0
	bl ov21_021D3898
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl ov21_021D375C
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D37DC
	add r7, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [sp, #8]
	bl ov21_021D38B0
	ldr r1, _021D693C ; =0x000001EE
	cmp r0, r1
	bne _021D6910
	add r0, r6, #0
	mov r1, #0
	bl ov21_021D217C
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	beq _021D6938
	mov r1, #1
	bl sub_02021CAC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021D6910:
	mov r0, #0x38
	str r0, [sp]
	mov r0, #0x50
	str r0, [sp, #4]
	ldr r1, [r4, #4]
	ldr r2, [r7, #0]
	add r0, r6, #0
	mov r3, #2
	bl ov21_021D1890
	add r0, r6, #0
	mov r1, #1
	bl ov21_021D217C
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	beq _021D6938
	mov r1, #0
	bl sub_02021CAC
_021D6938:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D693C: .word 0x000001EE
	thumb_func_end ov21_021D68C8

	thumb_func_start ov21_021D6940
ov21_021D6940: ; 0x021D6940
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021D6946:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021D6950
	bl ov21_021D4D1C
_021D6950:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #9
	blt _021D6946
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D6940

	thumb_func_start ov21_021D695C
ov21_021D695C: ; 0x021D695C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_021D6964:
	ldr r0, [r5, #0]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #9
	blt _021D6964
	mov r5, #0
	add r4, r6, #0
_021D6976:
	ldr r0, [r4, #0x50]
	bl sub_02021BD4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #9
	blt _021D6976
	ldr r0, [r6, #0x74]
	bl sub_02021BD4
	ldr r0, [r6, #0x7c]
	bl sub_02021BD4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D695C

	thumb_func_start ov21_021D6994
ov21_021D6994: ; 0x021D6994
	ldr r3, _021D699C ; =ov21_021D6ED0
	mov r2, #0
	str r2, [r0, #0x24]
	bx r3
	; .align 2, 0
_021D699C: .word ov21_021D6ED0
	thumb_func_end ov21_021D6994

	thumb_func_start ov21_021D69A0
ov21_021D69A0: ; 0x021D69A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	str r1, [sp]
	str r0, [sp, #4]
	mov r4, #0
_021D69AE:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #1
	bne _021D69BA
	add r0, r4, #2
	b _021D69BC
_021D69BA:
	add r0, r4, #0
_021D69BC:
	add r1, r4, #1
	ldr r3, [sp]
	lsl r7, r1, #2
	mov r2, #0xa
	lsl r0, r0, #2
	ldr r1, _021D6A50 ; =0x021E9D14
	str r0, [sp, #8]
	ldr r0, [r1, r0]
	lsl r2, r2, #6
	ldr r6, [r3, #0xc]
	add r3, r2, #0
	ldr r1, [r1, r7]
	sub r3, r3, r6
	bl ov21_021D6BF8
	str r0, [sp, #0xc]
	ldr r3, [sp]
	mov r2, #0xa
	ldr r1, _021D6A54 ; =0x021E9D40
	ldr r0, [sp, #8]
	lsl r2, r2, #6
	ldr r6, [r3, #0xc]
	ldr r0, [r1, r0]
	add r3, r2, #0
	ldr r1, [r1, r7]
	sub r3, r3, r6
	bl ov21_021D6BF8
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	lsl r6, r0, #2
	ldr r0, [r5, r6]
	bl sub_02021C50
	mov r0, #4
	sub r7, r0, r4
	bpl _021D6A0A
	neg r7, r7
_021D6A0A:
	lsl r1, r7, #1
	bpl _021D6A10
	neg r1, r1
_021D6A10:
	ldr r0, [r5, r6]
	add r1, #0x20
	bl sub_02021F58
	cmp r4, #4
	bne _021D6A26
	ldr r0, [r5, r6]
	mov r1, #0
	bl sub_02021F24
	b _021D6A3A
_021D6A26:
	add r1, r7, #6
	cmp r1, #9
	ldr r0, [r5, r6]
	bge _021D6A34
	bl sub_02021F24
	b _021D6A3A
_021D6A34:
	mov r1, #9
	bl sub_02021F24
_021D6A3A:
	ldr r0, [sp, #4]
	mov r1, #9
	add r0, r0, #1
	bl sub_020E1F6C
	add r4, r4, #1
	str r1, [sp, #4]
	cmp r4, #9
	blt _021D69AE
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D6A50: .word 0x021E9D14
_021D6A54: .word 0x021E9D40
	thumb_func_end ov21_021D69A0

	thumb_func_start ov21_021D6A58
ov21_021D6A58: ; 0x021D6A58
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D3898
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D38A4
	add r7, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _021D6AAA
	ldr r0, [r5, #0x24]
	add r0, r0, #1
	cmp r0, #9
	bge _021D6A7E
	b _021D6A80
_021D6A7E:
	mov r0, #0
_021D6A80:
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x24]
	mov r1, #9
	add r0, #8
	bl sub_020E1F6C
	add r0, r6, #4
	cmp r0, r7
	blt _021D6A9E
	lsl r0, r1, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_021D6A9E:
	lsl r0, r1, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_021D6AAA:
	cmp r0, #2
	bne _021D6AD8
	ldr r0, [r5, #0x24]
	sub r0, r0, #1
	bmi _021D6AB6
	b _021D6AB8
_021D6AB6:
	mov r0, #8
_021D6AB8:
	str r0, [r5, #0x24]
	ldr r1, [r5, #0x24]
	sub r0, r6, #4
	bpl _021D6ACC
	lsl r0, r1, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_021D6ACC:
	lsl r0, r1, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_021D6AD8:
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D6ED0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D6A58

	thumb_func_start ov21_021D6AE4
ov21_021D6AE4: ; 0x021D6AE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r1, #0
	str r0, [sp]
	ldr r0, [r7, #4]
	bl ov21_021D3898
	add r5, r0, #0
	ldr r0, [r7, #4]
	bl ov21_021D38A4
	str r0, [sp, #4]
	sub r0, r5, #4
	mov r4, #0
	str r0, [sp, #8]
_021D6B02:
	ldr r0, [sp]
	mov r1, #9
	ldr r0, [r0, #0x24]
	add r0, r0, r4
	bl sub_020E1F6C
	ldr r0, [sp, #8]
	add r5, r1, #0
	mov r6, #0
	add r1, r0, r4
	bmi _021D6B3A
	ldr r0, [sp, #4]
	cmp r1, r0
	bge _021D6B3A
	ldr r0, [r7, #4]
	bl ov21_021D38B0
	add r1, r0, #0
	ldr r0, _021D6B90 ; =0x000001EE
	cmp r1, r0
	beq _021D6B3A
	ldr r0, [r7, #4]
	bl ov21_021D37DC
	ldr r0, [r0, #4]
	cmp r0, #2
	bne _021D6B3A
	mov r6, #1
_021D6B3A:
	ldr r0, [sp]
	lsl r1, r5, #2
	add r5, r0, r1
	ldr r0, [r5, #0x50]
	add r1, r6, #0
	bl sub_02021CAC
	cmp r6, #0
	beq _021D6B86
	ldr r0, [r5, #0]
	bl sub_02021D28
	mov r1, #0x36
	ldr r2, [r0, #0]
	lsl r1, r1, #0xc
	sub r1, r2, r1
	str r1, [sp, #0xc]
	ldr r0, [r0, #4]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x50]
	bl sub_02021C50
	ldr r0, [r5, #0]
	bl sub_02021F48
	add r1, r0, #0
	ldr r0, [r5, #0x50]
	bl sub_02021EF0
	ldr r0, [r5, #0]
	bl sub_02021F74
	add r1, r0, #0
	ldr r0, [r5, #0x50]
	sub r1, r1, #1
	bl sub_02021F58
_021D6B86:
	add r4, r4, #1
	cmp r4, #9
	blt _021D6B02
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D6B90: .word 0x000001EE
	thumb_func_end ov21_021D6AE4

	thumb_func_start ov21_021D6B94
ov21_021D6B94: ; 0x021D6B94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #4]
	bl ov21_021D38A4
	add r1, r0, #0
	mov r0, #0x36
	lsl r0, r0, #0xc
	lsl r1, r1, #0xc
	bl sub_020BCFD0
	str r0, [r4, #0x78]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D6B94

	thumb_func_start ov21_021D6BB0
ov21_021D6BB0: ; 0x021D6BB0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r1, #4]
	bl ov21_021D3898
	add r2, r0, #0
	ldr r0, [r4, #0x78]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	mov r0, #0x3a
	lsl r0, r0, #0xc
	str r1, [sp, #4]
	add r0, r1, r0
	str r0, [sp, #4]
	mov r0, #0x3e
	lsl r0, r0, #0xe
	str r0, [sp]
	ldr r0, [r4, #0x74]
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D6BB0

	thumb_func_start ov21_021D6BF8
ov21_021D6BF8: ; 0x021D6BF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	sub r0, r1, r5
	lsl r2, r3, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	lsl r1, r4, #0xc
	bl sub_020BCFD0
	add r0, r0, r5
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D6BF8

	thumb_func_start ov21_021D6C24
ov21_021D6C24: ; 0x021D6C24
	push {r3, r4, r5, lr}
	mov r2, #0x52
	add r5, r1, #0
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, [r5, #4]
	bl ov21_021D3898
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D6C24

	thumb_func_start ov21_021D6C44
ov21_021D6C44: ; 0x021D6C44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldr r5, [r7, #0x24]
	mov r6, #0
_021D6C4E:
	lsl r0, r5, #2
	add r4, r7, r0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021D6C90
	ldr r0, [r4, #0]
	add r1, sp, #4
	add r2, sp, #0
	bl ov21_021D6CA4
	ldr r0, [r4, #0x28]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r2, [sp]
	bl sub_020128C4
	ldr r0, [r4, #0]
	bl sub_02021F74
	add r1, r0, #0
	ldr r0, [r4, #0x28]
	sub r1, r1, #1
	ldr r0, [r0, #0]
	bl sub_02012A30
	ldr r0, [r4, #0]
	bl sub_02021F48
	add r1, r0, #0
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #0]
	bl sub_02012A90
_021D6C90:
	add r0, r5, #1
	mov r1, #9
	bl sub_020E1F6C
	add r6, r6, #1
	add r5, r1, #0
	cmp r6, #9
	blt _021D6C4E
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D6C44

	thumb_func_start ov21_021D6CA4
ov21_021D6CA4: ; 0x021D6CA4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02021D28
	ldr r1, [r0, #0]
	asr r1, r1, #0xc
	str r1, [r5, #0]
	ldr r0, [r0, #4]
	asr r0, r0, #0xc
	str r0, [r4, #0]
	ldr r0, [r5, #0]
	sub r0, #0x40
	str r0, [r5, #0]
	ldr r0, [r4, #0]
	sub r0, #8
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D6CA4

	thumb_func_start ov21_021D6CC8
ov21_021D6CC8: ; 0x021D6CC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r2, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	bl ov21_021D3898
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl ov21_021D38A4
	ldr r1, [r4, #8]
	str r0, [sp, #0x10]
	cmp r1, #1
	beq _021D6CF0
	cmp r1, #2
	beq _021D6CFA
	b _021D6D00
_021D6CF0:
	ldr r6, [r5, #0x24]
	ldr r0, [sp, #0x14]
	add r6, #8
	add r7, r0, #4
	b _021D6D00
_021D6CFA:
	ldr r0, [sp, #0x14]
	ldr r6, [r5, #0x24]
	sub r7, r0, #4
_021D6D00:
	cmp r1, #0
	bne _021D6D14
	ldr r1, [sp, #8]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	bl ov21_021D67EC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021D6D14:
	add r0, r6, #0
	mov r1, #9
	bl sub_020E1F6C
	ldr r0, [sp, #0x10]
	add r6, r1, #0
	cmp r7, r0
	bge _021D6D5E
	cmp r7, #0
	blt _021D6D5E
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl ov21_021D38B0
	ldr r1, _021D6D74 ; =0x000001EE
	cmp r0, r1
	beq _021D6D4A
	str r6, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	bl ov21_021D6D78
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021D6D4A:
	add r0, r7, #1
	str r0, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r3, r6, #0
	bl ov21_021D6DF4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021D6D5E:
	lsl r4, r6, #2
	add r5, #0x28
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021D6D70
	bl ov21_021D4D1C
	mov r0, #0
	str r0, [r5, r4]
_021D6D70:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D6D74: .word 0x000001EE
	thumb_func_end ov21_021D6CC8

	thumb_func_start ov21_021D6D78
ov21_021D6D78: ; 0x021D6D78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x44]
	add r7, r3, #0
	bl ov21_021D37DC
	str r0, [sp]
	cmp r0, #0
	bne _021D6D96
	bl sub_02022974
_021D6D96:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	ldr r3, [sp]
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x24]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r1, [sp, #0x20]
	str r7, [sp, #0x28]
	ldr r1, [r4, #4]
	ldr r3, [r3, #0]
	add r0, r6, #0
	add r2, r7, #0
	bl ov21_021D16D8
	add r6, r0, #0
	ldr r0, [sp, #0x40]
	add r4, r5, #0
	add r4, #0x28
	lsl r7, r0, #2
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _021D6DDC
	bl ov21_021D4D1C
_021D6DDC:
	str r6, [sp, #8]
	ldr r1, [r5, #0x4c]
	add r0, sp, #4
	bl ov21_021D4CB8
	str r0, [r4, r7]
	add r0, r6, #0
	bl ov21_021D4DA0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D6D78

	thumb_func_start ov21_021D6DF4
ov21_021D6DF4: ; 0x021D6DF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r4, r2, #0
	str r0, [sp, #0x10]
	add r5, r1, #0
	mov r0, #0x20
	add r1, r4, #0
	add r6, r3, #0
	bl sub_02023790
	add r7, r0, #0
	ldr r2, _021D6EC8 ; =0x000002B9
	mov r0, #0
	mov r1, #0x1a
	add r3, r4, #0
	bl sub_0200B144
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r5, r1]
	mov r2, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	add r0, #0x98
	ldr r0, [r0, #0]
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x34]
	mov r0, #1
	str r2, [sp, #0x30]
	str r4, [sp, #0x3c]
	str r0, [sp, #0x38]
	ldr r0, [r5, r1]
	mov r1, #0xf
	bl ov21_021D4D6C
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r1, [sp, #0x58]
	add r0, r7, #0
	mov r2, #3
	mov r3, #2
	bl sub_020238A0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D6ECC ; =0x00030201
	add r2, r7, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	mov r1, #2
	mov r3, #0x16
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	mov r1, #0x63
	add r2, r7, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D6ECC ; =0x00030201
	add r2, r7, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	mov r1, #2
	mov r3, #0x31
	bl sub_0201D78C
	ldr r4, [sp, #0x10]
	lsl r6, r6, #2
	add r4, #0x28
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _021D6EA4
	bl ov21_021D4D1C
_021D6EA4:
	ldr r1, [sp, #0x10]
	str r5, [sp, #0x1c]
	ldr r1, [r1, #0x4c]
	add r0, sp, #0x18
	bl ov21_021D4CB8
	str r0, [r4, r6]
	add r0, r5, #0
	bl ov21_021D4DA0
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_0200B190
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D6EC8: .word 0x000002B9
_021D6ECC: .word 0x00030201
	thumb_func_end ov21_021D6DF4

	thumb_func_start ov21_021D6ED0
ov21_021D6ED0: ; 0x021D6ED0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D3898
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D38A4
	sub r4, r5, #4
	ldr r5, [r6, #0x24]
	str r0, [sp]
	mov r7, #0
_021D6EEC:
	cmp r4, #0
	blt _021D6F02
	ldr r0, [sp]
	cmp r4, r0
	bge _021D6F02
	lsl r0, r5, #2
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_02021CAC
	b _021D6F0C
_021D6F02:
	lsl r0, r5, #2
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_02021CAC
_021D6F0C:
	add r0, r5, #1
	mov r1, #9
	bl sub_020E1F6C
	add r7, r7, #1
	add r5, r1, #0
	add r4, r4, #1
	cmp r7, #9
	blt _021D6EEC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D6ED0

	thumb_func_start ov21_021D6F20
ov21_021D6F20: ; 0x021D6F20
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r2, #0xc]
	mov r0, #0xa
	lsl r0, r0, #6
	sub r0, r0, r1
	lsl r0, r0, #0xc
	mov r2, #0x1f
	asr r1, r0, #0x1f
	lsl r2, r2, #0xc
	mov r3, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #0xa
	lsl r1, r1, #0x12
	bl sub_020BCFD0
	add r5, r0, #0
	add r0, r4, #0
	bl ov21_021D2170
	mov r1, #0x17
	asr r2, r5, #0xc
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D6F20

	thumb_func_start ov21_021D6F64
ov21_021D6F64: ; 0x021D6F64
	push {r3, lr}
	bl ov21_021D2170
	mov r1, #0x17
	mov r2, #0x1f
	bl sub_02007DEC
	pop {r3, pc}
	thumb_func_end ov21_021D6F64

	thumb_func_start ov21_021D6F74
ov21_021D6F74: ; 0x021D6F74
	push {r4, lr}
	mov r1, #0xa
	ldr r0, [r0, #0xc]
	lsl r1, r1, #6
	sub r0, r1, r0
	lsl r3, r0, #0xc
	asr r2, r3, #0x1f
	lsr r0, r3, #0x10
	lsl r4, r2, #0x10
	orr r4, r0
	mov r0, #2
	lsl r3, r3, #0x10
	mov r2, #0
	lsl r0, r0, #0xa
	add r0, r3, r0
	adc r4, r2
	lsl r2, r4, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	lsl r1, r1, #0xc
	bl sub_020BCFD0
	asr r1, r0, #0xc
	mov r0, #0x10
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _021D6FB0 ; =0x04000052
	strh r1, [r0]
	pop {r4, pc}
	; .align 2, 0
_021D6FB0: .word 0x04000052
	thumb_func_end ov21_021D6F74

	thumb_func_start ov21_021D6FB4
ov21_021D6FB4: ; 0x021D6FB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0x14]
	ldr r0, _021D7040 ; =0x00000685
	add r5, r2, #0
	str r1, [sp, #0x18]
	add r4, r3, #0
	bl sub_02005748
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021D6FFA
	cmp r4, #0
	beq _021D6FEC
	ldr r0, [sp, #0x18]
	mov r6, #3
	ldr r0, [r0, #0]
	mov r4, #0
	ldr r0, [r0, #0]
	mov r1, #1
	add r2, r6, #0
	mov r3, #0xc0
	str r4, [sp, #0x1c]
	mov r7, #0xe
	mov r5, #4
	bl sub_02019184
	b _021D7018
_021D6FEC:
	mov r0, #3
	mov r6, #0
	str r0, [sp, #0x1c]
	mov r4, #0xe
	add r7, r6, #0
	mov r5, #4
	b _021D7018
_021D6FFA:
	cmp r4, #0
	beq _021D700C
	mov r0, #0xc
	str r0, [sp, #0x1c]
	mov r4, #0x14
	mov r6, #3
	mov r7, #0xe
	mov r5, #4
	b _021D7018
_021D700C:
	mov r0, #3
	str r0, [sp, #0x1c]
	mov r4, #0xe
	mov r6, #0xc
	mov r7, #0x14
	mov r5, #4
_021D7018:
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x14]
	str r0, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	str r7, [sp, #0xc]
	ldr r1, [sp, #0x18]
	str r5, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r1, [r1, #0]
	add r3, #0xdc
	str r3, [sp, #0x14]
	ldr r1, [r1, #0]
	ldr r3, [r3, #0]
	add r0, #0xe0
	mov r2, #2
	bl ov21_021D1558
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D7040: .word 0x00000685
	thumb_func_end ov21_021D6FB4

	thumb_func_start ov21_021D7044
ov21_021D7044: ; 0x021D7044
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xe0
	add r4, r1, #0
	bl ov21_021D157C
	add r6, r0, #0
	bne _021D708E
	add r0, r5, #0
	add r0, #0xf8
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	sub r0, r0, #1
	mul r0, r1
	mov r1, #1
	lsl r1, r1, #8
	ldr r1, [r5, r1]
	bl sub_020E1F6C
	add r5, #0xf0
	ldr r1, [r5, #0]
	add r0, r0, r1
	lsl r3, r0, #3
	mov r0, #0x2f
	sub r3, #0x70
	mvn r0, r0
	cmp r3, r0
	bge _021D7082
	add r3, r0, #0
_021D7082:
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	mov r2, #3
	bl sub_0201C63C
_021D708E:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D7044

	thumb_func_start ov21_021D7094
ov21_021D7094: ; 0x021D7094
	push {r3, lr}
	ldr r1, [r1, #0x10]
	cmp r1, #0
	bne _021D70AE
	cmp r2, #0
	bne _021D70AE
	ldr r0, [r0, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	mov r2, #3
	mov r3, #0
	bl sub_02019184
_021D70AE:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D70BC ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	pop {r3, pc}
	; .align 2, 0
_021D70BC: .word 0xFFFF1FFF
	thumb_func_end ov21_021D7094

	thumb_func_start ov21_021D70C0
ov21_021D70C0: ; 0x021D70C0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0xf
	mov r2, #2
	bl ov21_021D4D6C
	add r4, r0, #0
	mov r1, #1
	add r2, r5, #0
	bl sub_02012898
	add r5, r0, #0
	add r0, r4, #0
	bl ov21_021D4DA0
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D70C0

	thumb_func_start ov21_021D70E8
ov21_021D70E8: ; 0x021D70E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x74]
	mov r1, #1
	bl sub_02021FE0
	mov r6, #1
	mov r4, #0
	add r7, r6, #0
_021D70FA:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_02021FE0
	ldr r0, [r5, #0x50]
	add r1, r7, #0
	bl sub_02021FE0
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021D7118
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02012AF0
_021D7118:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #9
	blt _021D70FA
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D70E8

	thumb_func_start ov21_021D7124
ov21_021D7124: ; 0x021D7124
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x74]
	mov r1, #0
	bl sub_02021FE0
	mov r4, #0
	add r6, r4, #0
	add r7, r4, #0
_021D7136:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_02021FE0
	ldr r0, [r5, #0x50]
	add r1, r7, #0
	bl sub_02021FE0
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021D7154
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02012AF0
_021D7154:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #9
	blt _021D7136
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D7124

	thumb_func_start ov21_021D7160
ov21_021D7160: ; 0x021D7160
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	add r6, r1, #0
	add r0, r0, #4
	mov r1, #9
	add r5, r2, #0
	add r7, r3, #0
	bl sub_020E1F6C
	lsl r0, r1, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl ov21_021D375C
	add r3, r0, #0
	ldr r0, [r4, #0]
	add r2, r7, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	str r0, [sp, #4]
	ldr r1, [r5, #4]
	add r0, r6, #0
	bl ov21_021D1778
	add r0, r6, #0
	mov r1, #0
	bl ov21_021D238C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D7160

	thumb_func_start ov21_021D71A8
ov21_021D71A8: ; 0x021D71A8
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl ov21_021D6FB4
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _021D71E2
	cmp r4, #0
	beq _021D71D0
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	str r0, [sp]
	mov r0, #4
	sub r2, #0x10
	mov r3, #0x39
	bl sub_0200AAE0
	pop {r3, r4, r5, pc}
_021D71D0:
	mov r0, #1
	str r0, [sp]
	mov r0, #4
	add r1, r0, #0
	sub r1, #0x14
	mov r2, #0
	mov r3, #0x39
	bl sub_0200AAE0
_021D71E2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D71A8

	thumb_func_start ov21_021D71E4
ov21_021D71E4: ; 0x021D71E4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r1, #0
	add r6, r3, #0
	bl ov21_021D7044
	add r7, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #1
	beq _021D7200
	mov r0, #1
	bl sub_0200AC1C
	b _021D7202
_021D7200:
	mov r0, #1
_021D7202:
	cmp r7, #1
	bne _021D7242
	cmp r0, #1
	bne _021D7242
	ldr r0, [r4, #0x10]
	cmp r0, #1
	beq _021D7234
	cmp r6, #0
	bne _021D7234
	mov r0, #0xf
	mvn r0, r0
	mov r1, #0x3f
	mov r2, #1
	bl sub_0200AB4C
	ldr r0, [r5, #0]
	mov r1, #0
	add r0, r0, #4
	bl sub_0201ADA4
	ldr r0, [r5, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02019EBC
_021D7234:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021D7094
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D7242:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D71E4

	thumb_func_start ov21_021D7248
ov21_021D7248: ; 0x021D7248
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl ov21_021D70E8
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov21_021D6FB4
	cmp r4, #0
	bne _021D7278
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021D7394
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021D73F0
_021D7278:
	ldr r0, [r7, #0x10]
	cmp r0, #1
	beq _021D72CE
	cmp r4, #0
	beq _021D72AA
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x28
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #4
	add r2, r1, #0
	sub r2, #0x14
	bl ov21_021D23F8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021D72AA:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x28
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #4
	add r3, r1, #0
	sub r3, #0x14
	bl ov21_021D23F8
_021D72CE:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D7248

	thumb_func_start ov21_021D72D4
ov21_021D72D4: ; 0x021D72D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r2, #0
	add r7, r0, #0
	add r5, r1, #0
	add r6, r3, #0
	bl ov21_021D7044
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	cmp r0, #1
	beq _021D72FA
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D2424
	str r0, [sp, #0xc]
_021D72FA:
	cmp r6, #0
	bne _021D7314
	add r0, r7, #0
	add r1, r5, #0
	bl ov21_021D73C8
	str r0, [sp, #0x10]
	add r0, r7, #0
	add r1, r5, #0
	bl ov21_021D7424
	str r0, [sp, #0x14]
	b _021D731A
_021D7314:
	mov r0, #1
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
_021D731A:
	mov r1, #0
	add r2, sp, #8
_021D731E:
	ldr r0, [r2, #0]
	cmp r0, #0
	beq _021D732C
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #4
	blt _021D731E
_021D732C:
	cmp r1, #4
	bne _021D738A
	cmp r6, #0
	bne _021D7364
	ldr r0, [r4, #0x10]
	cmp r0, #1
	beq _021D737A
	mov r3, #0
	add r0, r3, #0
	str r3, [sp]
	sub r0, #0x10
	str r0, [sp, #4]
	ldr r0, _021D7390 ; =0x04000050
	mov r1, #0x2e
	mov r2, #8
	bl sub_020BF5A0
	ldr r0, [r5, #0]
	mov r1, #0
	add r0, r0, #4
	bl sub_0201ADA4
	ldr r0, [r5, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02019EBC
	b _021D737A
_021D7364:
	add r0, r7, #0
	bl ov21_021D7124
	ldr r0, [r5, #0]
	mov r1, #0
	bl ov21_021D23C0
	ldr r0, [r5, #0]
	mov r1, #0
	bl ov21_021D2360
_021D737A:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021D7094
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D738A:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D7390: .word 0x04000050
	thumb_func_end ov21_021D72D4

	thumb_func_start ov21_021D7394
ov21_021D7394: ; 0x021D7394
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0x48
	add r5, r0, #0
	str r1, [sp]
	mov r0, #4
	add r1, #0xbc
	str r0, [sp, #4]
	add r0, r5, r1
	mov r1, #0x38
	mov r2, #0x30
	mov r3, #0x50
	bl ov21_021D2648
	mov r2, #0x41
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	add r2, r2, #4
	ldr r0, [r4, #0]
	ldr r2, [r5, r2]
	bl ov21_021D2164
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D7394

	thumb_func_start ov21_021D73C8
ov21_021D73C8: ; 0x021D73C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r5, r0
	add r4, r1, #0
	bl ov21_021D2664
	mov r2, #0x41
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	add r2, r2, #4
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r2, [r5, r2]
	bl ov21_021D2164
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D73C8

	thumb_func_start ov21_021D73F0
ov21_021D73F0: ; 0x021D73F0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0x49
	lsl r0, r0, #2
	add r4, r1, #0
	add r0, r5, r0
	mov r1, #0xaa
	mov r2, #0xac
	mov r3, #0x52
	bl ov21_021D2648
	mov r2, #0x49
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	add r2, r2, #4
	ldr r0, [r4, #0]
	ldr r2, [r5, r2]
	bl ov21_021D1848
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D73F0

	thumb_func_start ov21_021D7424
ov21_021D7424: ; 0x021D7424
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x49
	lsl r0, r0, #2
	add r0, r5, r0
	add r4, r1, #0
	bl ov21_021D2664
	mov r2, #0x49
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	add r2, r2, #4
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r2, [r5, r2]
	bl ov21_021D1848
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D7424

	thumb_func_start ov21_021D744C
ov21_021D744C: ; 0x021D744C
	ldr r3, [r0, #0]
	mov r1, #4
	ldr r2, [r3, #0]
	orr r1, r2
	str r1, [r3, #0]
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	mov r1, #2
	str r1, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D744C

	thumb_func_start ov21_021D7464
ov21_021D7464: ; 0x021D7464
	ldr r3, [r1, #0]
	mov r0, #2
	ldr r2, [r3, #0]
	orr r2, r0
	str r2, [r3, #0]
	mov r3, #0
	str r3, [r1, #0x10]
	mov r2, #1
	str r2, [r1, #0x14]
	str r3, [r1, #0xc]
	str r0, [r1, #0x20]
	bx lr
	thumb_func_end ov21_021D7464

	thumb_func_start ov21_021D747C
ov21_021D747C: ; 0x021D747C
	push {r3, lr}
	mov r1, #0x5d
	ldr r2, [r0, #4]
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _021D74A8
	ldr r3, [r0, #0]
	mov r1, #1
	ldr r2, [r3, #0]
	orr r1, r2
	str r1, [r3, #0]
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	mov r1, #2
	str r1, [r0, #0x20]
	ldr r0, _021D74AC ; =0x000005DD
	bl sub_02005748
	mov r0, #1
	pop {r3, pc}
_021D74A8:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_021D74AC: .word 0x000005DD
	thumb_func_end ov21_021D747C

	thumb_func_start ov21_021D74B0
ov21_021D74B0: ; 0x021D74B0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	mov r1, #0x5d
	ldr r0, [r5, #4]
	lsl r1, r1, #6
	ldr r1, [r0, r1]
	cmp r1, #1
	bne _021D74CA
	add sp, #0x10
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D74CA:
	bl ov21_021D36D8
	cmp r0, #0
	bne _021D74D6
	mov r4, #1
	b _021D74D8
_021D74D6:
	mov r4, #0
_021D74D8:
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ov21_021D36A4
	cmp r0, #0
	beq _021D752C
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ov21_021D36C0
	ldr r0, _021D7534 ; =0x000005DD
	bl sub_02005748
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r5, #4]
	add r2, r1, #0
	add r3, r1, #0
	bl ov21_021D3684
	ldr r0, [r5, #4]
	mov r1, #0
	bl ov21_021D36FC
	mov r3, #0
	str r3, [r5, #0xc]
	ldr r2, [r5, #0]
	mov r0, #0x10
	ldr r1, [r2, #0]
	add sp, #0x10
	orr r0, r1
	str r0, [r2, #0]
	str r3, [r5, #0x10]
	str r3, [r5, #0x14]
	mov r0, #2
	str r0, [r5, #0x20]
	str r3, [r5, #0x1c]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D752C:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D7534: .word 0x000005DD
	thumb_func_end ov21_021D74B0

	thumb_func_start ov21_021D7538
ov21_021D7538: ; 0x021D7538
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	bl ov21_021D37BC
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl ov21_021D36D8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [r5, #4]
	add r2, r1, #0
	add r3, r1, #0
	bl ov21_021D3684
	ldr r2, [r5, #0]
	mov r0, #0x10
	ldr r1, [r2, #0]
	orr r0, r1
	str r0, [r2, #0]
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl ov21_021D3794
	mov r2, #0
	str r2, [r5, #0xc]
	mov r0, #0x5d
	ldr r1, [r5, #4]
	lsl r0, r0, #6
	str r2, [r1, r0]
	str r2, [r5, #0x10]
	str r2, [r5, #0x14]
	str r2, [r5, #8]
	mov r0, #2
	str r0, [r5, #0x20]
	str r2, [r5, #0x1c]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D7538

	thumb_func_start ov21_021D7590
ov21_021D7590: ; 0x021D7590
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r4, r1, #0
	sub r0, r0, #1
	str r0, [r5, #0x18]
	bmi _021D75C6
	ldr r1, [r5, #0x1c]
	add r0, r4, #0
	bl ov21_021D6108
	cmp r0, #0
	beq _021D75C0
	ldr r2, [r5, #0x20]
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021D60FC
	mov r0, #1
	str r0, [r4, #0x20]
	ldr r0, _021D75D8 ; =0x0000068B
	bl sub_02005748
	pop {r3, r4, r5, pc}
_021D75C0:
	mov r0, #0
	str r0, [r5, #0x18]
	pop {r3, r4, r5, pc}
_021D75C6:
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021D5F58
	mov r0, #0
	str r0, [r5, #0x14]
	str r0, [r4, #0x20]
	pop {r3, r4, r5, pc}
	nop
_021D75D8: .word 0x0000068B
	thumb_func_end ov21_021D7590

	thumb_func_start ov21_021D75DC
ov21_021D75DC: ; 0x021D75DC
	push {r3, r4, r5, lr}
	ldr r2, _021D76A8 ; =0x021BF67C
	add r4, r1, #0
	ldr r3, [r2, #0x44]
	add r5, r0, #0
	mov r1, #0x40
	add r0, r3, #0
	tst r0, r1
	beq _021D761E
	add r0, r4, #0
	sub r1, #0x41
	bl ov21_021D6108
	cmp r0, #0
	beq _021D7610
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov21_021D60FC
	mov r0, #1
	str r0, [r4, #0x20]
	ldr r0, _021D76AC ; =0x0000068B
	bl sub_02005748
	pop {r3, r4, r5, pc}
_021D7610:
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021D5F58
	mov r0, #0
	str r0, [r4, #0x20]
	pop {r3, r4, r5, pc}
_021D761E:
	mov r0, #0x80
	tst r0, r3
	beq _021D7654
	add r0, r4, #0
	mov r1, #1
	bl ov21_021D6108
	cmp r0, #0
	beq _021D7646
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov21_021D60FC
	mov r0, #1
	str r0, [r4, #0x20]
	ldr r0, _021D76AC ; =0x0000068B
	bl sub_02005748
	pop {r3, r4, r5, pc}
_021D7646:
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021D5F58
	mov r0, #0
	str r0, [r4, #0x20]
	pop {r3, r4, r5, pc}
_021D7654:
	ldr r1, [r2, #0x48]
	mov r0, #0x20
	tst r0, r1
	beq _021D7676
	mov r0, #1
	str r0, [r5, #0x14]
	mov r0, #5
	str r0, [r5, #0x18]
	sub r0, r0, #6
	str r0, [r5, #0x1c]
	mov r0, #2
	str r0, [r5, #0x20]
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021D5F6C
	pop {r3, r4, r5, pc}
_021D7676:
	mov r0, #0x10
	tst r0, r1
	beq _021D7692
	mov r1, #1
	str r1, [r5, #0x14]
	mov r0, #5
	str r0, [r5, #0x18]
	str r1, [r5, #0x1c]
	str r1, [r5, #0x20]
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021D5F6C
	pop {r3, r4, r5, pc}
_021D7692:
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _021D76A4
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021D5F58
	mov r0, #0
	str r0, [r4, #0x20]
_021D76A4:
	pop {r3, r4, r5, pc}
	nop
_021D76A8: .word 0x021BF67C
_021D76AC: .word 0x0000068B
	thumb_func_end ov21_021D75DC

	.rodata


	.global Unk_ov21_021E9D14
Unk_ov21_021E9D14: ; 0x021E9D14
	.incbin "incbin/overlay21_rodata.bin", 0x1F0, 0x21C - 0x1F0

	.global Unk_ov21_021E9D40
Unk_ov21_021E9D40: ; 0x021E9D40
	.incbin "incbin/overlay21_rodata.bin", 0x21C, 0x2C

