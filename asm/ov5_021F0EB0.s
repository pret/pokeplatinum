	.include "macros/function.inc"
	.include "include/ov5_021F0EB0.inc"

	

	.text


	thumb_func_start ov5_021F0EB0
ov5_021F0EB0: ; 0x021F0EB0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x34
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x34
	bl sub_020D5124
	str r6, [r4, #0]
	mov r0, #0
	str r0, [r4, #0xc]
	str r5, [r4, #0x2c]
	ldr r0, [r5, #0x24]
	str r0, [r4, #0x30]
	bl sub_02020A90
	str r0, [r4, #0x10]
	str r0, [r4, #0x20]
	ldr r0, _021F0EE8 ; =ov5_021F0F2C
	ldr r2, _021F0EEC ; =0x0000FFFF
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021F0EE8: .word ov5_021F0F2C
_021F0EEC: .word 0x0000FFFF
	thumb_func_end ov5_021F0EB0

	thumb_func_start ov5_021F0EF0
ov5_021F0EF0: ; 0x021F0EF0
	push {r3, lr}
	bl sub_0201CED0
	ldr r0, [r0, #8]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0EF0

	thumb_func_start ov5_021F0EFC
ov5_021F0EFC: ; 0x021F0EFC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201CED0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end ov5_021F0EFC

	thumb_func_start ov5_021F0F10
ov5_021F0F10: ; 0x021F0F10
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0201CED0
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r5, [r0, #0xc]
	str r4, [r0, #0x14]
	str r6, [r0, #0x1c]
	str r1, [r0, #0x24]
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021F0F10

	thumb_func_start ov5_021F0F2C
ov5_021F0F2C: ; 0x021F0F2C
	push {r3, lr}
	add r0, r1, #0
	ldr r1, [r1, #0xc]
	lsl r2, r1, #2
	ldr r1, _021F0F3C ; =0x0220020C
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	; .align 2, 0
_021F0F3C: .word 0x0220020C
	thumb_func_end ov5_021F0F2C

	thumb_func_start ov5_021F0F40
ov5_021F0F40: ; 0x021F0F40
	mov r1, #1
	str r1, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F0F40

	thumb_func_start ov5_021F0F48
ov5_021F0F48: ; 0x021F0F48
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021F0F58
	cmp r1, #1
	beq _021F0F62
	pop {r4, pc}
_021F0F58:
	bl ov5_021F0FC8
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021F0F62:
	add r0, r4, #0
	bl ov5_021F0FF8
	cmp r0, #1
	bne _021F0F76
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #8]
_021F0F76:
	add r0, r4, #0
	bl ov5_021F0FB8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0F48

	thumb_func_start ov5_021F0F80
ov5_021F0F80: ; 0x021F0F80
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021F0F90
	cmp r1, #1
	beq _021F0F9A
	pop {r4, pc}
_021F0F90:
	bl ov5_021F0FE0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021F0F9A:
	add r0, r4, #0
	bl ov5_021F0FF8
	cmp r0, #1
	bne _021F0FAE
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #8]
_021F0FAE:
	add r0, r4, #0
	bl ov5_021F0FB8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0F80

	thumb_func_start ov5_021F0FB8
ov5_021F0FB8: ; 0x021F0FB8
	ldr r3, _021F0FC4 ; =sub_02020A50
	add r1, r0, #0
	ldr r0, [r1, #0x20]
	ldr r1, [r1, #0x30]
	bx r3
	nop
_021F0FC4: .word sub_02020A50
	thumb_func_end ov5_021F0FB8

	thumb_func_start ov5_021F0FC8
ov5_021F0FC8: ; 0x021F0FC8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	bl sub_020E1F6C
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ov5_021F0FC8

	thumb_func_start ov5_021F0FE0
ov5_021F0FE0: ; 0x021F0FE0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x20]
	sub r0, r1, r0
	ldr r1, [r4, #0x1c]
	bl sub_020E1F6C
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x10]
	str r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ov5_021F0FE0

	thumb_func_start ov5_021F0FF8
ov5_021F0FF8: ; 0x021F0FF8
	ldr r2, [r0, #0x20]
	ldr r1, [r0, #0x28]
	add r1, r2, r1
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x24]
	add r2, r1, #1
	str r2, [r0, #0x24]
	ldr r1, [r0, #0x1c]
	cmp r2, r1
	blo _021F1016
	str r1, [r0, #0x24]
	ldr r1, [r0, #0x18]
	str r1, [r0, #0x20]
	mov r0, #1
	bx lr
_021F1016:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F0FF8

	.rodata


	.global Unk_ov5_0220020C
Unk_ov5_0220020C: ; 0x0220020C
	.incbin "incbin/overlay5_rodata.bin", 0x78F8, 0x10

