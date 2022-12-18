	.include "macros/function.inc"
	.include "include/ov5_021E779C.inc"

	

	.text


	thumb_func_start ov5_021E779C
ov5_021E779C: ; 0x021E779C
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r1, r6, #0
	bl sub_020E1F6C
	add r4, r1, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020E1F6C
	cmp r4, r1
	bne _021E77BA
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E77BA:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021E779C

	thumb_func_start ov5_021E77C0
ov5_021E77C0: ; 0x021E77C0
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r1, r6, #0
	bl sub_020E1F6C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020E1F6C
	cmp r4, r0
	bne _021E77DE
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E77DE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021E77C0

	thumb_func_start ov5_021E77E4
ov5_021E77E4: ; 0x021E77E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x30
	add r4, r1, #0
	mul r4, r0
	add r1, r5, r4
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _021E77FC
	ldr r0, [r1, #0xc]
	bl ov5_021E9640
_021E77FC:
	add r1, r5, r4
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _021E780A
	ldr r0, [r1, #0x10]
	bl ov5_021EF23C
_021E780A:
	mov r1, #1
	add r0, r5, r4
	str r1, [r0, #0x28]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021E77E4

	thumb_func_start ov5_021E7814
ov5_021E7814: ; 0x021E7814
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021E7824
	ldr r0, [r4, #8]
	bl ov5_021E9640
_021E7824:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021E7830
	ldr r0, [r4, #0xc]
	bl ov5_021EF23C
_021E7830:
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	pop {r4, pc}
	thumb_func_end ov5_021E7814

	thumb_func_start ov5_021E7838
ov5_021E7838: ; 0x021E7838
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r5, [sp, #0x2c]
	ldr r4, [sp, #0x38]
	cmp r0, #1
	bne _021E7890
	mov r1, #0
	add r2, r4, #0
	sub r0, r1, #1
_021E7850:
	add r1, r1, #1
	stmia r2!, {r0}
	cmp r1, #4
	blt _021E7850
	cmp r5, #1
	bne _021E7876
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _021E786A
	mov r0, #0
	add sp, #0x10
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021E786A:
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	add sp, #0x10
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021E7876:
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	str r0, [r4, #4]
	cmp r5, #2
	bge _021E7884
	b _021E79A4
_021E7884:
	mov r0, #2
	str r0, [r4, #8]
	mov r0, #3
	add sp, #0x10
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_021E7890:
	add r0, r3, #0
	cmp r1, r0
	bge _021E789A
	bl sub_02022974
_021E789A:
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #8]
	cmp r0, r1
	bge _021E78A6
	bl sub_02022974
_021E78A6:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x28]
	sub r1, r1, r0
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r7, r0, #5
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	sub r0, r0, r3
	asr r1, r0, #4
	lsr r1, r1, #0x1b
	add r1, r0, r1
	ldr r0, [sp, #0x34]
	asr r6, r1, #5
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl ov5_021E8ABC
	ldr r1, [sp, #0x34]
	bl ov5_021E935C
	add r1, r6, #0
	mul r1, r5
	add r1, r7, r1
	cmp r0, #3
	bhi _021E79A0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E78EC: ; jump table
	.short _021E78F4 - _021E78EC - 2 ; case 0
	.short _021E791C - _021E78EC - 2 ; case 1
	.short _021E7946 - _021E78EC - 2 ; case 2
	.short _021E7972 - _021E78EC - 2 ; case 3
_021E78F4:
	sub r2, r1, r5
	str r1, [r4, #0xc]
	sub r0, r2, #1
	str r0, [r4, #0]
	str r2, [r4, #4]
	sub r0, r1, #1
	str r0, [r4, #8]
	sub r0, r7, #1
	bpl _021E790E
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0]
	str r0, [r4, #8]
_021E790E:
	sub r0, r6, #1
	bpl _021E79A4
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021E791C:
	str r1, [r4, #8]
	sub r0, r1, r5
	str r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #4]
	add r0, r1, #1
	str r0, [r4, #0xc]
	add r0, r7, #1
	cmp r0, r5
	blt _021E7938
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #4]
	str r0, [r4, #0xc]
_021E7938:
	sub r0, r6, #1
	bpl _021E79A4
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021E7946:
	str r1, [r4, #4]
	sub r0, r1, #1
	add r1, r1, r5
	str r0, [r4, #0]
	sub r0, r1, #1
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	sub r0, r7, #1
	bpl _021E7960
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0]
	str r0, [r4, #8]
_021E7960:
	ldr r0, [sp, #0x30]
	add r1, r6, #1
	cmp r1, r0
	ble _021E79A4
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_021E7972:
	str r1, [r4, #0]
	add r0, r1, #1
	str r0, [r4, #4]
	add r0, r1, r5
	str r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #0xc]
	add r0, r7, #1
	cmp r0, r5
	blt _021E798E
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #4]
	str r0, [r4, #0xc]
_021E798E:
	ldr r0, [sp, #0x30]
	add r1, r6, #1
	cmp r1, r0
	ble _021E79A4
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021E79A0:
	bl sub_02022974
_021E79A4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E7838

	thumb_func_start ov5_021E79A8
ov5_021E79A8: ; 0x021E79A8
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r0, #0
	sub r7, r6, #1
_021E79B0:
	ldr r1, _021E7A40 ; =0x0000086C
	mov r0, #4
	bl sub_02018144
	lsl r4, r6, #2
	add r1, r5, r4
	add r1, #0x90
	str r0, [r1, #0]
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0, #0]
	ldr r0, _021E7A44 ; =0x00000864
	mov r1, #0
	str r1, [r2, r0]
	add r2, r5, r4
	add r2, #0x90
	ldr r3, [r2, #0]
	ldr r2, _021E7A48 ; =0x00000854
	ldr r1, [r5, #0]
	add r0, r6, #0
	add r2, r3, r2
	bl ov5_021EEB84
	add r2, r5, r4
	add r2, #0x90
	ldr r3, [r2, #0]
	ldr r2, _021E7A4C ; =0x00000858
	ldr r1, [r5, #0]
	add r0, r6, #0
	add r2, r3, r2
	bl ov5_021EEB90
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021E7A0C
	mov r0, #4
	bl ov5_021E15F4
	add r1, r5, r4
	add r1, #0x90
	ldr r2, [r1, #0]
	ldr r1, _021E7A50 ; =0x00000868
	str r0, [r2, r1]
	b _021E7A18
_021E7A0C:
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0, #0]
	ldr r0, _021E7A50 ; =0x00000868
	mov r1, #0
	str r1, [r2, r0]
_021E7A18:
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0, #0]
	mov r0, #0x86
	lsl r0, r0, #4
	str r7, [r1, r0]
	add r1, r5, r4
	add r1, #0x90
	mov r2, #2
	ldr r1, [r1, #0]
	add r0, r7, #0
	lsl r2, r2, #0xa
	bl sub_020C4BB8
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021E79B0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E7A40: .word 0x0000086C
_021E7A44: .word 0x00000864
_021E7A48: .word 0x00000854
_021E7A4C: .word 0x00000858
_021E7A50: .word 0x00000868
	thumb_func_end ov5_021E79A8

	thumb_func_start ov5_021E7A54
ov5_021E7A54: ; 0x021E7A54
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r0, #0
	add r7, r6, #0
_021E7A5C:
	ldr r1, _021E7AB8 ; =0x0000086C
	mov r0, #4
	bl sub_02018144
	lsl r4, r6, #2
	add r1, r5, r4
	add r1, #0x90
	str r0, [r1, #0]
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, _021E7ABC ; =0x00000864
	str r7, [r1, r0]
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021E7A92
	mov r0, #4
	bl ov5_021E15F4
	add r1, r5, r4
	add r1, #0x90
	ldr r2, [r1, #0]
	ldr r1, _021E7AC0 ; =0x00000868
	str r0, [r2, r1]
	b _021E7A9C
_021E7A92:
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, _021E7AC0 ; =0x00000868
	str r7, [r1, r0]
_021E7A9C:
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0, #0]
	mov r1, #0
	mov r0, #0x86
	mvn r1, r1
	lsl r0, r0, #4
	str r1, [r2, r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021E7A5C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E7AB8: .word 0x0000086C
_021E7ABC: .word 0x00000864
_021E7AC0: .word 0x00000868
	thumb_func_end ov5_021E7A54

	thumb_func_start ov5_021E7AC4
ov5_021E7AC4: ; 0x021E7AC4
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r0, #0
	add r7, r6, #0
_021E7ACC:
	ldr r1, _021E7B3C ; =0x0000086C
	mov r0, #4
	bl sub_02018144
	lsl r4, r6, #2
	add r1, r5, r4
	add r1, #0x90
	str r0, [r1, #0]
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, _021E7B40 ; =0x00000864
	add r2, r5, r4
	str r7, [r1, r0]
	add r2, #0x90
	ldr r3, [r2, #0]
	ldr r2, _021E7B44 ; =0x00000854
	ldr r1, [r5, #0]
	add r0, r6, #0
	add r2, r3, r2
	bl ov5_021EEB84
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021E7B14
	mov r0, #4
	bl ov5_021E15F4
	add r1, r5, r4
	add r1, #0x90
	ldr r2, [r1, #0]
	ldr r1, _021E7B48 ; =0x00000868
	str r0, [r2, r1]
	b _021E7B20
_021E7B14:
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0, #0]
	ldr r0, _021E7B48 ; =0x00000868
	mov r1, #0
	str r1, [r2, r0]
_021E7B20:
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0, #0]
	mov r1, #0
	mov r0, #0x86
	mvn r1, r1
	lsl r0, r0, #4
	str r1, [r2, r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021E7ACC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E7B3C: .word 0x0000086C
_021E7B40: .word 0x00000864
_021E7B44: .word 0x00000854
_021E7B48: .word 0x00000868
	thumb_func_end ov5_021E7AC4

	thumb_func_start ov5_021E7B4C
ov5_021E7B4C: ; 0x021E7B4C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r7, r4, #0
_021E7B54:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, _021E7BA0 ; =0x00000864
	add r2, r5, r6
	str r7, [r1, r0]
	add r2, #0x90
	ldr r3, [r2, #0]
	ldr r2, _021E7BA4 ; =0x00000854
	ldr r1, [r5, #0]
	add r0, r4, #0
	add r2, r3, r2
	bl ov5_021EEB84
	add r0, r5, r6
	add r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, _021E7BA8 ; =0x00000868
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021E7B84
	bl ov5_021E1610
_021E7B84:
	add r0, r5, r6
	add r0, #0x90
	ldr r2, [r0, #0]
	mov r1, #0
	mov r0, #0x86
	mvn r1, r1
	lsl r0, r0, #4
	str r1, [r2, r0]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021E7B54
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E7BA0: .word 0x00000864
_021E7BA4: .word 0x00000854
_021E7BA8: .word 0x00000868
	thumb_func_end ov5_021E7B4C

	thumb_func_start ov5_021E7BAC
ov5_021E7BAC: ; 0x021E7BAC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	cmp r6, #0
	beq _021E7BD2
	mov r0, #4
	mov r1, #0x10
	bl sub_02018184
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	mov r3, #0x10
	str r4, [sp]
	bl sub_02006DC8
	b _021E7BE8
_021E7BD2:
	bl sub_02022974
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x43
	add r1, r7, #0
	mov r2, #4
	mov r3, #0
	bl sub_02006B38
	add r4, r0, #0
_021E7BE8:
	ldr r0, [r4, #0]
	str r0, [r5, #0]
	ldr r0, [r4, #4]
	str r0, [r5, #0xc]
	ldr r0, [r4, #8]
	str r0, [r5, #4]
	ldr r0, [r4, #0xc]
	str r0, [r5, #8]
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E7BAC

	thumb_func_start ov5_021E7C00
ov5_021E7C00: ; 0x021E7C00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r4, [sp, #0x40]
	lsl r6, r0, #2
	add r0, r4, r6
	ldr r0, [r0, #0x18]
	str r1, [sp, #0xc]
	ldr r5, [sp, #0x3c]
	cmp r0, #0
	blt _021E7CC0
	ldr r1, [sp, #0x38]
	mul r1, r3
	cmp r0, r1
	bge _021E7CC0
	add r1, r2, #0
	bl sub_02039F74
	add r1, r0, #0
	ldr r0, _021E7CC4 ; =0x0000FFFF
	cmp r1, r0
	beq _021E7CC0
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r2, sp, #0x10
	bl ov5_021E7BAC
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x10]
	ldr r2, [r4, r6]
	bl sub_02006E18
	ldr r1, [r4, r6]
	ldr r0, _021E7CC8 ; =0x00000868
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _021E7C64
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	ldr r2, [sp, #0xc]
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x1c]
	bl ov5_021E16CC
_021E7C64:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	ldr r0, [sp, #0xc]
	ldr r7, [r4, r6]
	bl ov5_021EFA8C
	ldr r3, _021E7CCC ; =0x00000864
	str r0, [sp]
	add r0, r7, r3
	add r2, r3, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x10
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xf8
	sub r2, #0x64
	sub r3, #0x10
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x14]
	add r2, r7, r2
	add r3, r7, r3
	bl ov5_021E976C
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	add r3, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x14]
	ldr r2, [r4, r6]
	ldr r6, _021E7CD0 ; =0x00000858
	add r5, #0xf8
	add r0, r2, r6
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r5, r6, #4
	ldr r1, [sp, #0x18]
	ldr r2, [r2, r5]
	add r3, #0x14
	bl ov5_021EF1F0
	str r0, [r4, #0xc]
_021E7CC0:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E7CC4: .word 0x0000FFFF
_021E7CC8: .word 0x00000868
_021E7CCC: .word 0x00000864
_021E7CD0: .word 0x00000858
	thumb_func_end ov5_021E7C00

	thumb_func_start ov5_021E7CD4
ov5_021E7CD4: ; 0x021E7CD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x2c
	mov ip, r2
	ldr r2, _021E7D88 ; =0x00000820
	add r7, r1, #0
	add r2, sp
	ldr r4, [r2, #0x18]
	lsl r6, r0, #2
	add r0, r4, r6
	ldr r0, [r0, #0x18]
	add r1, r3, #0
	ldr r5, [r2, #0x14]
	cmp r0, #0
	blt _021E7D7C
	ldr r2, [r2, #0x10]
	mul r2, r1
	cmp r0, r2
	bge _021E7D7C
	mov r1, ip
	bl sub_02039F74
	add r1, r0, #0
	ldr r0, _021E7D8C ; =0x0000FFFF
	cmp r1, r0
	beq _021E7D7C
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r2, sp, #0xc
	bl ov5_021E7BAC
	add r0, r5, #0
	add r0, #0xf8
	mov r1, #2
	ldr r0, [r0, #0]
	lsl r1, r1, #0xa
	add r2, sp, #0x1c
	bl sub_02006E18
	ldr r1, [r4, r6]
	ldr r0, _021E7D90 ; =0x00000868
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _021E7D4A
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	add r2, r7, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x18]
	bl ov5_021E16CC
_021E7D4A:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	add r0, r7, #0
	ldr r6, [r4, r6]
	bl ov5_021EFA8C
	ldr r3, _021E7D94 ; =0x00000864
	str r0, [sp]
	add r0, r6, r3
	add r2, r3, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x10
	str r0, [sp, #8]
	add r5, #0xf8
	sub r2, #0x64
	sub r3, #0x10
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x10]
	add r2, r6, r2
	add r3, r6, r3
	bl ov5_021E976C
	str r0, [r4, #8]
_021E7D7C:
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021E7D88: .word 0x00000820
_021E7D8C: .word 0x0000FFFF
_021E7D90: .word 0x00000868
_021E7D94: .word 0x00000864
	thumb_func_end ov5_021E7CD4

	thumb_func_start ov5_021E7D98
ov5_021E7D98: ; 0x021E7D98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r4, [sp, #0x38]
	lsl r6, r0, #2
	add r0, r4, r6
	ldr r0, [r0, #0x18]
	add r7, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r5, [sp, #0x34]
	cmp r0, #0
	blt _021E7E1C
	ldr r3, [sp, #0x30]
	mul r3, r2
	cmp r0, r3
	bge _021E7E1C
	bl sub_02039F74
	add r1, r0, #0
	ldr r0, _021E7E20 ; =0x0000FFFF
	cmp r1, r0
	beq _021E7E1C
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r2, sp, #0xc
	bl ov5_021E7BAC
	add r0, r5, #0
	add r0, #0xf8
	mov r1, #2
	ldr r0, [r0, #0]
	lsl r1, r1, #0xa
	bl sub_02006E28
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x18]
	bl sub_02006E28
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	add r0, r7, #0
	ldr r6, [r4, r6]
	bl ov5_021EFA8C
	ldr r3, _021E7E24 ; =0x00000864
	str r0, [sp]
	add r0, r6, r3
	add r2, r3, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x10
	str r0, [sp, #8]
	add r5, #0xf8
	sub r2, #0x64
	sub r3, #0x10
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x10]
	add r2, r6, r2
	add r3, r6, r3
	bl ov5_021E976C
	str r0, [r4, #8]
_021E7E1C:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021E7E20: .word 0x0000FFFF
_021E7E24: .word 0x00000864
	thumb_func_end ov5_021E7D98

	thumb_func_start ov5_021E7E28
ov5_021E7E28: ; 0x021E7E28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	str r0, [sp, #0xc]
	str r2, [sp, #4]
	ldr r6, [sp, #0x44]
	add r1, r0, #0
	bmi _021E7F0C
	ldr r2, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	add r5, r2, #0
	mul r5, r1
	add r1, r0, #0
	cmp r1, r5
	bge _021E7F0C
	add r1, r3, #0
	bl sub_02039F74
	add r1, r0, #0
	ldr r0, _021E7F10 ; =0x0000FFFF
	cmp r1, r0
	beq _021E7F0C
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r2, sp, #0x10
	bl ov5_021E7BAC
	add r5, r6, #0
	add r0, r6, #0
	add r0, #0xf8
	lsl r4, r4, #2
	add r5, #0x90
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x10]
	ldr r2, [r5, r4]
	bl sub_02006E18
	ldr r1, [r5, r4]
	ldr r0, _021E7F14 ; =0x00000868
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _021E7E94
	add r0, r6, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	ldr r2, [sp, #4]
	str r0, [sp]
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x1c]
	bl ov5_021E16CC
_021E7E94:
	ldr r0, [r5, r4]
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	bl ov5_021EFA8C
	str r0, [sp]
	add r0, r6, #0
	mov r7, #2
	add r0, #0xf8
	ldr r2, [sp, #8]
	lsl r7, r7, #0xa
	add r2, r2, r7
	ldr r3, [sp, #8]
	add r7, #0x54
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x14]
	add r3, r3, r7
	bl ov5_021E97AC
	ldr r1, [sp, #0x40]
	cmp r1, #1
	bne _021E7EC4
	bl ov5_021D53A4
_021E7EC4:
	ldr r0, _021E7F18 ; =0x00000864
	ldr r1, [r5, r4]
	mov r2, #1
	str r2, [r1, r0]
	mov ip, r0
	add r0, r6, #0
	mov r2, ip
	mov r3, ip
	add r0, #0xf8
	ldr r7, [r5, r4]
	sub r2, #8
	sub r3, #0xc
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x18]
	ldr r2, [r7, r2]
	ldr r3, [r7, r3]
	bl ov5_021EF158
	mov r2, #0x86
	ldr r1, [r5, r4]
	ldr r0, [sp, #0xc]
	lsl r2, r2, #4
	str r0, [r1, r2]
	add r0, r6, #0
	add r0, #0xfc
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _021E7F0C
	mov r0, #1
	lsl r0, r0, #8
	ldr r4, [r5, r4]
	add r2, #8
	ldr r0, [r6, r0]
	ldr r1, [sp, #0xc]
	ldr r2, [r4, r2]
	blx r3
_021E7F0C:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E7F10: .word 0x0000FFFF
_021E7F14: .word 0x00000868
_021E7F18: .word 0x00000864
	thumb_func_end ov5_021E7E28

	thumb_func_start ov5_021E7F1C
ov5_021E7F1C: ; 0x021E7F1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x2c
	str r2, [sp, #4]
	ldr r2, _021E7FE0 ; =0x00000820
	add r7, r0, #0
	add r2, sp
	add r4, r1, #0
	ldr r5, [r2, #0x1c]
	cmp r7, #0
	blt _021E7FD2
	ldr r1, [r2, #0x10]
	ldr r2, [r2, #0x14]
	mul r2, r1
	cmp r7, r2
	bge _021E7FD2
	add r1, r3, #0
	bl sub_02039F74
	add r1, r0, #0
	ldr r0, _021E7FE4 ; =0x0000FFFF
	cmp r1, r0
	beq _021E7FD2
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r2, sp, #0xc
	bl ov5_021E7BAC
	add r0, r5, #0
	add r0, #0xf8
	mov r1, #2
	ldr r0, [r0, #0]
	lsl r1, r1, #0xa
	add r2, sp, #0x1c
	bl sub_02006E18
	add r6, r5, #0
	lsl r4, r4, #2
	add r6, #0x90
	ldr r1, [r6, r4]
	ldr r0, _021E7FE8 ; =0x00000868
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _021E7F92
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	ldr r2, [sp, #4]
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x18]
	bl ov5_021E16CC
_021E7F92:
	ldr r0, [r6, r4]
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	bl ov5_021EFA8C
	str r0, [sp]
	add r5, #0xf8
	ldr r0, [r5, #0]
	mov r5, #2
	ldr r2, [sp, #8]
	lsl r5, r5, #0xa
	add r2, r2, r5
	ldr r3, [sp, #8]
	add r5, #0x54
	ldr r1, [sp, #0x10]
	add r3, r3, r5
	bl ov5_021E97AC
	ldr r1, _021E7FE0 ; =0x00000820
	add r1, sp
	ldr r1, [r1, #0x18]
	cmp r1, #1
	bne _021E7FC4
	bl ov5_021D53A4
_021E7FC4:
	ldr r1, [r6, r4]
	ldr r0, _021E7FEC ; =0x00000864
	mov r2, #1
	str r2, [r1, r0]
	ldr r1, [r6, r4]
	sub r0, r0, #4
	str r7, [r1, r0]
_021E7FD2:
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021E7FE0: .word 0x00000820
_021E7FE4: .word 0x0000FFFF
_021E7FE8: .word 0x00000868
_021E7FEC: .word 0x00000864
	thumb_func_end ov5_021E7F1C

	thumb_func_start ov5_021E7FF0
ov5_021E7FF0: ; 0x021E7FF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	str r0, [sp, #0xc]
	str r2, [sp, #4]
	ldr r7, [sp, #0x44]
	add r1, r0, #0
	bmi _021E80AA
	ldr r2, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	add r5, r2, #0
	mul r5, r1
	add r1, r0, #0
	cmp r1, r5
	bge _021E80AA
	add r1, r3, #0
	bl sub_02039F74
	add r1, r0, #0
	ldr r0, _021E80B0 ; =0x0000FFFF
	cmp r1, r0
	beq _021E80AA
	add r0, r7, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r2, sp, #0x10
	bl ov5_021E7BAC
	add r5, r7, #0
	add r0, r7, #0
	add r0, #0xf8
	lsl r4, r4, #2
	add r5, #0x90
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x10]
	ldr r2, [r5, r4]
	bl sub_02006E18
	ldr r1, [r5, r4]
	ldr r0, _021E80B4 ; =0x00000868
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _021E805C
	add r0, r7, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	ldr r2, [sp, #4]
	str r0, [sp]
	add r0, r7, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x1c]
	bl ov5_021E16CC
_021E805C:
	add r0, r7, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x14]
	bl sub_02006E28
	ldr r0, [r5, r4]
	ldr r3, _021E80B8 ; =0x0000085C
	mov ip, r0
	add r0, r7, #0
	mov r2, ip
	add r0, #0xf8
	ldr r2, [r2, r3]
	sub r3, r3, #4
	mov r6, ip
	str r3, [sp, #8]
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x18]
	ldr r3, [r6, r3]
	bl ov5_021EF158
	mov r2, #0x86
	ldr r1, [r5, r4]
	ldr r0, [sp, #0xc]
	lsl r2, r2, #4
	str r0, [r1, r2]
	add r0, r7, #0
	add r0, #0xfc
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _021E80AA
	mov r0, #1
	lsl r0, r0, #8
	ldr r4, [r5, r4]
	add r2, #8
	ldr r0, [r7, r0]
	ldr r1, [sp, #0xc]
	ldr r2, [r4, r2]
	blx r3
_021E80AA:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E80B0: .word 0x0000FFFF
_021E80B4: .word 0x00000868
_021E80B8: .word 0x0000085C
	thumb_func_end ov5_021E7FF0

	thumb_func_start ov5_021E80BC
ov5_021E80BC: ; 0x021E80BC
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _021E80CC
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021E80CC
	mov r0, #1
	bx lr
_021E80CC:
	mov r0, #0
	bx lr
	thumb_func_end ov5_021E80BC

	thumb_func_start ov5_021E80D0
ov5_021E80D0: ; 0x021E80D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	str r3, [sp]
	add r0, sp, #0x10
	add r7, r1, #0
	ldrb r1, [r0, #0x14]
	mov r0, #0x30
	str r2, [sp, #8]
	add r5, r1, #0
	mul r5, r0
	add r0, r4, #0
	str r0, [sp, #4]
	add r0, #0x2c
	str r0, [sp, #4]
	ldr r0, [r0, r5]
	cmp r0, #0
	beq _021E80F8
	bl sub_02022974
_021E80F8:
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0, r5]
	add r6, r4, r5
	add r0, sp, #0x10
	add r1, r6, #0
	ldrb r2, [r0, #0x18]
	add r1, #0x30
	add r5, r4, #0
	strb r2, [r1]
	add r2, r6, #0
	ldr r1, [sp, #8]
	str r7, [r6, #0x1c]
	str r1, [r6, #0x20]
	ldr r1, [sp]
	add r2, #0x24
	strb r1, [r2]
	ldrb r0, [r0, #0x10]
	add r1, r6, #0
	add r1, #0x25
	strb r0, [r1]
	ldr r1, [sp]
	add r5, #0x90
	lsl r3, r1, #2
	ldr r1, [r5, r3]
	lsl r2, r0, #2
	str r1, [r6, #4]
	ldr r0, [r5, r2]
	add r1, r6, #0
	str r0, [r6, #8]
	add r1, #0x26
	mov r0, #0
	strb r0, [r1]
	str r0, [r6, #0x28]
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021E814E
	add r1, r4, #0
	add r1, #0xb4
	mov r0, #0
	str r0, [r1, #0]
_021E814E:
	mov r1, #0x86
	ldr r0, [r5, r3]
	lsl r1, r1, #4
	str r7, [r0, r1]
	ldr r2, [r5, r2]
	ldr r0, [sp, #8]
	str r0, [r2, r1]
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xa0
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xa1
	ldrb r0, [r0]
	add r4, #0xa1
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E80D0

	thumb_func_start ov5_021E8188
ov5_021E8188: ; 0x021E8188
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0xa2
	ldrb r1, [r0]
	add r4, r5, #0
	mov r0, #0x30
	add r2, r1, #0
	mul r2, r0
	add r0, #0xd4
	add r3, r5, #4
	ldr r0, [r5, r0]
	add r6, r3, r2
	add r4, #0xcc
	cmp r0, #0
	bne _021E81D8
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _021E81D8
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021E8240
	ldr r0, [r4, #0x14]
	ldr r1, [r0, #0]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0]
	cmp r1, r0
	ble _021E81C6
	bl sub_02022974
_021E81C6:
	ldr r0, [r4, #0x10]
	ldr r1, [r0, #0]
	ldr r0, [r4, #0x14]
	ldr r0, [r0, #0]
	sub r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _021E81DA
_021E81D8:
	b _021E8320
_021E81DA:
	ldr r1, [r4, #0xc]
	add r2, sp, #0x10
	ldr r0, [r1, #0]
	ldr r1, [r1, #8]
	add r3, sp, #0xc
	bl ov5_021E9230
	str r5, [sp]
	mov r3, #0x43
	lsl r3, r3, #2
	ldr r2, [r5, r3]
	add r3, #8
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r3, [r5, r3]
	bl ov5_021E8F90
	ldr r2, [r4, #0xc]
	add r3, r4, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021E8222
	mov r0, #1
	bl sub_02038AE0
	cmp r0, #0
	bne _021E8302
_021E8222:
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021E8236
	bl sub_02022974
_021E8236:
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	b _021E8320
_021E8240:
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0]
	ldr r7, [r2, #0]
	cmp r3, r7
	beq _021E8258
	ldr r1, [r4, #8]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _021E8258
	bl sub_02022974
	b _021E8320
_021E8258:
	cmp r3, r7
	bne _021E8264
	ldr r1, [r4, #8]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _021E8320
_021E8264:
	mov r3, #1
	str r3, [r4, #0x18]
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0]
	ldr r1, [r2, #0]
	cmp r0, r1
	beq _021E82B8
	cmp r0, r1
	ble _021E8282
	str r4, [r4, #0x10]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x14]
	mov r0, #3
	strb r0, [r4, #0x1c]
	b _021E8288
_021E8282:
	str r2, [r4, #0x10]
	str r4, [r4, #0x14]
	strb r3, [r4, #0x1c]
_021E8288:
	ldr r0, [r4, #0]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021E82A2
	mov r0, #1
	bl sub_02038AE0
	cmp r0, #0
	bne _021E8302
_021E82A2:
	ldr r0, [r4, #0]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021E8318
	bl sub_02022974
	b _021E8318
_021E82B8:
	add r1, r5, #0
	add r1, #0xd8
	add r0, r5, #0
	ldr r1, [r1, #0]
	add r0, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #8]
	cmp r0, r1
	ble _021E82DA
	add r0, r4, #0
	add r0, #8
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	add r0, #8
	str r0, [r4, #0x14]
	mov r0, #4
	b _021E82E6
_021E82DA:
	add r2, #8
	add r0, r4, #0
	str r2, [r4, #0x10]
	add r0, #8
	str r0, [r4, #0x14]
	mov r0, #2
_021E82E6:
	strb r0, [r4, #0x1c]
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021E8304
	mov r0, #1
	bl sub_02038AE0
	cmp r0, #0
	beq _021E8304
_021E8302:
	b _021E8550
_021E8304:
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021E8318
	bl sub_02022974
_021E8318:
	ldrb r0, [r4, #0x1c]
	add r1, r5, #0
	bl ov5_021E9190
_021E8320:
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #3
	bls _021E832C
	b _021E84A6
_021E832C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8338: ; jump table
	.short _021E8340 - _021E8338 - 2 ; case 0
	.short _021E8396 - _021E8338 - 2 ; case 1
	.short _021E84A6 - _021E8338 - 2 ; case 2
	.short _021E8492 - _021E8338 - 2 ; case 3
_021E8340:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	add r1, r6, r0
	add r1, #0x20
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x80
	ldr r1, [r1, #0]
	cmp r1, #1
	beq _021E8380
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r4, r5, #0
	str r1, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r4, #0xf4
	add r1, r5, #0
	add r2, r5, #0
	add r3, r5, #0
	ldr r4, [r4, #0]
	add r1, #0xb8
	add r2, #0xbc
	add r3, #0xc0
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	ldr r4, [r4, #4]
	blx r4
_021E8380:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	add r6, #0x22
	mov r1, #1
	add r0, r0, #1
	strb r0, [r6]
	add r0, r5, #0
	add r0, #0xb4
	str r1, [r0, #0]
	b _021E84A6
_021E8396:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	sub r0, r0, #1
	add r0, r6, r0
	add r0, #0x20
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _021E83CE
	add r0, r6, #0
	bl ov5_021E7814
	add r1, r6, #0
	add r1, #0x22
	ldrb r1, [r1]
	mov r0, #0
	sub r1, r1, #1
	add r1, r6, r1
	add r1, #0x20
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x80
	str r0, [r1, #0]
_021E83CE:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #2
	bhi _021E84A6
	add r0, r6, #0
	add r0, #0x10
	bl ov5_021E80BC
	cmp r0, #1
	bne _021E84A6
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #2
	blo _021E83F4
	mov r0, #1
	str r0, [r6, #0x24]
	b _021E83FC
_021E83F4:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0, #0]
_021E83FC:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	ldr r2, [r6, r0]
	ldr r0, _021E8554 ; =0x00000864
	ldr r1, [r2, r0]
	cmp r1, #1
	bne _021E8452
	sub r0, #0x10
	ldr r0, [r2, r0]
	bl sub_020B3C0C
	cmp r0, #0
	beq _021E843C
	add r2, r0, #0
	add r2, #8
	beq _021E8430
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _021E8430
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _021E8432
_021E8430:
	mov r1, #0
_021E8432:
	cmp r1, #0
	beq _021E843C
	ldr r1, [r1, #0]
	add r4, r0, r1
	b _021E843E
_021E843C:
	mov r4, #0
_021E843E:
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl ov5_021EFAC0
	cmp r0, #1
	bne _021E8452
	add r0, r4, #0
	bl ov5_021D53A4
_021E8452:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	mov r2, #0x86
	lsl r2, r2, #4
	sub r0, r0, #1
	lsl r0, r0, #2
	ldr r4, [r6, r0]
	ldr r1, [r4, r2]
	cmp r1, #0
	blt _021E84A6
	add r0, r5, #0
	add r0, #0xc0
	ldr r3, [r0, #0]
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mul r0, r3
	cmp r1, r0
	bge _021E84A6
	add r0, r5, #0
	add r0, #0xfc
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _021E84A6
	mov r0, #1
	lsl r0, r0, #8
	add r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r4, r2]
	blx r3
	b _021E84A6
_021E8492:
	add r6, #0x10
	add r0, r6, #0
	bl ov5_021E80BC
	cmp r0, #1
	bne _021E84A6
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa0
	strb r1, [r0]
_021E84A6:
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021E84C8
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa1
	strb r1, [r0]
	mov r0, #2
	add r5, #0xb4
	add sp, #0x14
	str r0, [r5, #0]
	pop {r4, r5, r6, r7, pc}
_021E84C8:
	add r0, r5, #0
	bl ov5_021E8DAC
	cmp r0, #1
	bne _021E8550
	add r0, r5, #0
	add r0, #0xa2
	ldrb r1, [r0]
	mov r0, #0x30
	mov r2, #0
	mul r0, r1
	add r0, r5, r0
	str r2, [r0, #0x2c]
	add r0, r5, #0
	bl ov5_021E8DBC
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xa0
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa2
	ldrb r0, [r0]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r5, #0
	add r1, r2, r1
	add r0, #0xa2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	beq _021E851E
	mov r1, #0
	b _021E852E
_021E851E:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa1
	strb r1, [r0]
	mov r1, #2
_021E852E:
	add r0, r5, #0
	add r0, #0xb4
	str r1, [r0, #0]
	ldr r0, [r5, #0x6c]
	cmp r0, #1
	bne _021E8550
	mov r0, #0
	str r0, [r5, #0x6c]
	add r0, r5, #0
	add r0, #0x70
	ldrb r0, [r0]
	add r1, r5, #0
	bl ov5_021E8DD4
	add r0, r5, #0
	bl ov5_021E8D50
_021E8550:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021E8554: .word 0x00000864
	thumb_func_end ov5_021E8188

	thumb_func_start ov5_021E8558
ov5_021E8558: ; 0x021E8558
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, [sp, #0x34]
	str r2, [sp, #0x10]
	add r7, r0, #0
	ldr r0, [r4, #0x6c]
	add r5, r3, #0
	str r1, [sp, #0xc]
	ldr r6, [sp, #0x30]
	cmp r0, #1
	bne _021E8572
	bl sub_02022974
_021E8572:
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #0x14
	bl ov5_021E8C58
	cmp r0, #1
	bne _021E85F0
	add r1, sp, #0x14
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov5_021E77E4
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #2
	blo _021E85D4
	mov r0, #1
	str r0, [r4, #0x6c]
	ldr r0, [sp, #0xc]
	str r7, [r4, #0x74]
	str r0, [r4, #0x78]
	add r1, r4, #0
	ldr r0, [sp, #0x10]
	add r1, #0x7c
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x7d
	strb r5, [r0]
	ldr r0, [sp, #0x10]
	add r2, r4, #0
	add r2, #0x90
	lsl r1, r0, #2
	ldr r0, [r2, r1]
	str r0, [r4, #0x64]
	lsl r0, r5, #2
	ldr r3, [r2, r0]
	str r3, [r4, #0x68]
	add r4, #0x70
	strb r6, [r4]
	ldr r3, [r2, r1]
	mov r1, #0x86
	lsl r1, r1, #4
	str r7, [r3, r1]
	ldr r2, [r2, r0]
	ldr r0, [sp, #0xc]
	add sp, #0x18
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
_021E85D4:
	add r0, r4, #0
	str r5, [sp]
	add r0, #0xa1
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	add r1, r7, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r3, [sp, #0x10]
	add r0, r4, #0
	bl ov5_021E80D0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E85F0:
	add r0, r4, #0
	str r5, [sp]
	add r0, #0xa1
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	add r1, r7, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r3, [sp, #0x10]
	add r0, r4, #0
	bl ov5_021E80D0
	cmp r0, #1
	beq _021E8610
	bl sub_02022974
_021E8610:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E8558

	thumb_func_start ov5_021E8614
ov5_021E8614: ; 0x021E8614
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r6, #0
	lsl r5, r0, #2
	add r4, #0x90
	ldr r1, [r4, r5]
	ldr r0, _021E8660 ; =0x00000864
	mov r2, #0
	str r2, [r1, r0]
	ldr r1, [r4, r5]
	sub r0, #8
	ldr r0, [r1, r0]
	bl ov5_021EF1DC
	ldr r1, [r4, r5]
	ldr r0, _021E8664 ; =0x00000868
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021E863E
	bl ov5_021E1610
_021E863E:
	add r3, r6, #0
	add r3, #0x90
	mov r0, #0
	mov r2, #0x86
	ldr r1, [r3, r5]
	mvn r0, r0
	lsl r2, r2, #4
	str r0, [r1, r2]
	ldr r1, [r3, r5]
	sub r2, #0x60
	bl sub_020C4BB8
	add r0, r6, r5
	mov r1, #1
	add r0, #0x80
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021E8660: .word 0x00000864
_021E8664: .word 0x00000868
	thumb_func_end ov5_021E8614

	thumb_func_start ov5_021E8668
ov5_021E8668: ; 0x021E8668
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r5, r1, #0
	add r1, r4, #0
	add r6, r0, #0
	add r7, r2, #0
	str r3, [sp]
	bl ov5_021E8614
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021E8614
	add r4, #0x90
	lsl r1, r6, #2
	lsl r5, r5, #2
	lsl r2, r7, #2
	ldr r0, [r4, r1]
	ldr r3, [r4, r5]
	ldr r6, [r4, r2]
	str r6, [r4, r1]
	ldr r1, [sp]
	lsl r6, r1, #2
	ldr r1, [r4, r6]
	str r1, [r4, r5]
	str r0, [r4, r2]
	str r3, [r4, r6]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E8668

	thumb_func_start ov5_021E86A0
ov5_021E86A0: ; 0x021E86A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #8]
	add r7, r0, #0
	ldr r0, [sp, #8]
	add r6, r2, #0
	cmp r0, #4
	bls _021E86B2
	b _021E89C6
_021E86B2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E86BE: ; jump table
	.short _021E89C6 - _021E86BE - 2 ; case 0
	.short _021E8838 - _021E86BE - 2 ; case 1
	.short _021E8914 - _021E86BE - 2 ; case 2
	.short _021E8766 - _021E86BE - 2 ; case 3
	.short _021E86C8 - _021E86BE - 2 ; case 4
_021E86C8:
	mov r0, #2
	mov r1, #3
	mov r2, #0
	mov r3, #1
	str r6, [sp]
	bl ov5_021E8668
	add r0, r6, #0
	add r0, #0xad
	ldrb r0, [r0]
	cmp r0, #2
	bne _021E8712
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0, #0]
	mov r0, #1
	sub r5, r7, r2
	str r0, [sp, #0x10]
	mov r0, #0
	sub r4, r5, #1
	str r0, [sp, #0xc]
	cmp r5, #0
	bge _021E86FC
	sub r5, r0, #1
	add r4, r5, #0
	b _021E8748
_021E86FC:
	cmp r4, #0
	blt _021E870C
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021E77C0
	cmp r0, #0
	bne _021E8748
_021E870C:
	mov r4, #0
	mvn r4, r4
	b _021E8748
_021E8712:
	cmp r0, #3
	bne _021E8744
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0, #0]
	mov r0, #0
	sub r5, r7, r2
	str r0, [sp, #0x10]
	mov r0, #1
	add r4, r5, #1
	str r0, [sp, #0xc]
	cmp r5, #0
	bge _021E8732
	sub r5, r0, #2
	add r4, r5, #0
	b _021E8748
_021E8732:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021E77C0
	cmp r0, #0
	bne _021E8748
	mov r4, #0
	mvn r4, r4
	b _021E8748
_021E8744:
	bl sub_02022974
_021E8748:
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #8]
	lsl r2, r2, #0x18
	str r0, [sp]
	lsl r3, r3, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	str r6, [sp, #4]
	bl ov5_021E8558
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021E8766:
	mov r0, #1
	mov r1, #3
	mov r2, #0
	mov r3, #2
	str r6, [sp]
	bl ov5_021E8668
	add r0, r6, #0
	add r0, #0xad
	ldrb r0, [r0]
	cmp r0, #1
	bne _021E87C4
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0, #0]
	sub r5, r7, #1
	sub r0, r7, r2
	sub r4, r0, #1
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0xc]
	cmp r5, #0
	blt _021E87A2
	add r0, r5, #0
	add r1, r7, #0
	bl ov5_021E77C0
	cmp r0, #0
	bne _021E87A8
_021E87A2:
	mov r5, #0
	mvn r5, r5
	add r4, r5, #0
_021E87A8:
	cmp r4, #0
	blt _021E87BE
	add r2, r6, #0
	add r2, #0xc0
	ldr r2, [r2, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021E779C
	cmp r0, #0
	bne _021E881A
_021E87BE:
	mov r4, #0
	mvn r4, r4
	b _021E881A
_021E87C4:
	cmp r0, #3
	bne _021E8816
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0, #0]
	sub r5, r7, #1
	add r0, r7, r2
	sub r4, r0, #1
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0xc]
	cmp r5, #0
	blt _021E87EC
	add r0, r5, #0
	add r1, r7, #0
	bl ov5_021E77C0
	cmp r0, #0
	bne _021E87F2
_021E87EC:
	mov r5, #0
	mvn r5, r5
	add r4, r5, #0
_021E87F2:
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0, #0]
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mul r0, r2
	cmp r0, r4
	ble _021E8810
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021E779C
	cmp r0, #0
	bne _021E881A
_021E8810:
	mov r4, #0
	mvn r4, r4
	b _021E881A
_021E8816:
	bl sub_02022974
_021E881A:
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #8]
	lsl r2, r2, #0x18
	str r0, [sp]
	lsl r3, r3, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	str r6, [sp, #4]
	bl ov5_021E8558
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021E8838:
	mov r0, #0
	mov r1, #2
	mov r2, #1
	mov r3, #3
	str r6, [sp]
	bl ov5_021E8668
	add r0, r6, #0
	add r0, #0xad
	ldrb r0, [r0]
	cmp r0, #0
	bne _021E88A6
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0, #0]
	add r5, r7, #1
	sub r0, r7, r2
	add r4, r0, #1
	mov r0, #3
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mul r0, r2
	cmp r0, r5
	ble _021E887C
	add r0, r5, #0
	add r1, r7, #0
	bl ov5_021E77C0
	cmp r0, #0
	bne _021E8882
_021E887C:
	mov r5, #0
	mvn r5, r5
	add r4, r5, #0
_021E8882:
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0, #0]
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mul r0, r2
	cmp r0, r4
	ble _021E88A0
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021E779C
	cmp r0, #0
	bne _021E88F6
_021E88A0:
	mov r4, #0
	mvn r4, r4
	b _021E88F6
_021E88A6:
	cmp r0, #2
	bne _021E88F6
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0, #0]
	add r5, r7, #1
	add r0, r7, r2
	add r4, r0, #1
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mul r0, r2
	cmp r0, r5
	ble _021E88D6
	add r0, r5, #0
	add r1, r7, #0
	bl ov5_021E77C0
	cmp r0, #0
	bne _021E88DC
_021E88D6:
	mov r5, #0
	mvn r5, r5
	add r4, r5, #0
_021E88DC:
	cmp r4, #0
	blt _021E88F2
	add r2, r6, #0
	add r2, #0xc0
	ldr r2, [r2, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021E779C
	cmp r0, #0
	bne _021E88F6
_021E88F2:
	mov r4, #0
	mvn r4, r4
_021E88F6:
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #8]
	lsl r2, r2, #0x18
	str r0, [sp]
	lsl r3, r3, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	str r6, [sp, #4]
	bl ov5_021E8558
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021E8914:
	mov r0, #0
	mov r1, #1
	mov r2, #2
	mov r3, #3
	str r6, [sp]
	bl ov5_021E8668
	add r0, r6, #0
	add r0, #0xad
	ldrb r0, [r0]
	cmp r0, #0
	bne _021E8964
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0, #0]
	mov r0, #3
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r5, r7, r2
	mul r0, r2
	sub r4, r5, #1
	cmp r0, r5
	bgt _021E8952
	ldr r0, [sp, #0xc]
	sub r5, r0, #3
	add r4, r5, #0
	b _021E89A8
_021E8952:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021E77C0
	cmp r0, #0
	bne _021E89A8
	mov r4, #0
	mvn r4, r4
	b _021E89A8
_021E8964:
	cmp r0, #1
	bne _021E89A4
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0, #0]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r5, r7, r2
	mul r0, r2
	add r4, r5, #1
	cmp r0, r5
	bgt _021E898E
	ldr r0, [sp, #0xc]
	sub r5, r0, #4
	add r4, r5, #0
	b _021E89A8
_021E898E:
	cmp r0, r4
	ble _021E899E
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021E77C0
	cmp r0, #0
	bne _021E89A8
_021E899E:
	mov r4, #0
	mvn r4, r4
	b _021E89A8
_021E89A4:
	bl sub_02022974
_021E89A8:
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #8]
	lsl r2, r2, #0x18
	str r0, [sp]
	lsl r3, r3, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	str r6, [sp, #4]
	bl ov5_021E8558
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021E89C6:
	bl sub_02022974
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E86A0

	thumb_func_start ov5_021E89D0
ov5_021E89D0: ; 0x021E89D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r1, #0
	add r4, r5, #0
	lsl r6, r0, #2
	mov r0, #0x86
	add r3, sp, #0x38
	mov r1, #0
	str r1, [r3, #0]
	str r1, [r3, #4]
	str r2, [sp, #4]
	add r2, r5, #0
	add r4, #0x90
	str r1, [r3, #8]
	add r2, #0xbc
	ldr r1, [r4, r6]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	bl ov5_021E901C
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [sp, #0x38]
	ldr r0, [r5, r1]
	add r0, r2, r0
	str r0, [sp, #0x38]
	add r0, r1, #4
	ldr r2, [sp, #0x3c]
	ldr r0, [r5, r0]
	add r1, #8
	add r0, r2, r0
	str r0, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	ldr r0, [r5, r1]
	add r0, r2, r0
	str r0, [sp, #0x40]
	ldr r1, [r4, r6]
	ldr r0, _021E8A8C ; =0x00000864
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _021E8A5A
	ldr r3, _021E8A90 ; =0x021FAEA0
	add r2, sp, #0x2c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _021E8A94 ; =0x021FAEB8
	str r0, [r2, #0]
	add r2, sp, #8
	mov r7, #4
_021E8A3C:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _021E8A3C
	ldr r0, [r3, #0]
	add r3, sp, #0x2c
	str r0, [r2, #0]
	mov r0, #2
	ldr r1, [r4, r6]
	lsl r0, r0, #0xa
	add r0, r1, r0
	add r1, sp, #0x38
	add r2, sp, #8
	bl sub_0201CA74
_021E8A5A:
	ldr r2, [r4, r6]
	ldr r0, _021E8A8C ; =0x00000864
	ldr r1, [r2, r0]
	cmp r1, #1
	bne _021E8A86
	add r0, r0, #4
	ldr r4, [r2, r0]
	cmp r4, #0
	beq _021E8A86
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl ov5_021EFAC0
	add r2, r0, #0
	str r4, [sp]
	add r5, #0xb8
	ldr r1, [r5, #0]
	ldr r3, [sp, #4]
	add r0, sp, #0x38
	bl ov5_021E17CC
_021E8A86:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021E8A8C: .word 0x00000864
_021E8A90: .word 0x021FAEA0
_021E8A94: .word 0x021FAEB8
	thumb_func_end ov5_021E89D0

	thumb_func_start ov5_021E8A98
ov5_021E8A98: ; 0x021E8A98
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r1, #0
	add r6, r0, #0
	add r1, r7, #0
	bl sub_020E2178
	add r4, r1, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020E2178
	lsr r0, r0, #5
	add r1, r0, #0
	lsr r2, r4, #5
	mul r1, r5
	add r0, r2, r1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E8A98

	thumb_func_start ov5_021E8ABC
ov5_021E8ABC: ; 0x021E8ABC
	push {r3, r4}
	sub r4, r0, r2
	ldr r2, [sp, #8]
	sub r0, r1, r3
	mul r0, r2
	add r0, r4, r0
	pop {r3, r4}
	bx lr
	thumb_func_end ov5_021E8ABC

	thumb_func_start ov5_021E8ACC
ov5_021E8ACC: ; 0x021E8ACC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r1, #0
	add r6, r0, #0
	add r1, r7, #0
	bl sub_020E2178
	add r4, r1, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020E2178
	lsr r0, r0, #5
	add r1, r0, #0
	lsr r2, r4, #5
	mul r1, r5
	add r0, r2, r1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E8ACC

	thumb_func_start ov5_021E8AF0
ov5_021E8AF0: ; 0x021E8AF0
	push {r3, lr}
	cmp r0, #0
	bne _021E8AFA
	mov r0, #3
	pop {r3, pc}
_021E8AFA:
	cmp r0, #1
	bne _021E8B02
	mov r0, #2
	pop {r3, pc}
_021E8B02:
	cmp r0, #2
	bne _021E8B0A
	mov r0, #1
	pop {r3, pc}
_021E8B0A:
	cmp r0, #3
	bne _021E8B12
	mov r0, #0
	pop {r3, pc}
_021E8B12:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021E8AF0

	thumb_func_start ov5_021E8B1C
ov5_021E8B1C: ; 0x021E8B1C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	cmp r0, #4
	bhi _021E8B7C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8B32: ; jump table
	.short _021E8B7C - _021E8B32 - 2 ; case 0
	.short _021E8B3C - _021E8B32 - 2 ; case 1
	.short _021E8B52 - _021E8B32 - 2 ; case 2
	.short _021E8B60 - _021E8B32 - 2 ; case 3
	.short _021E8B74 - _021E8B32 - 2 ; case 4
_021E8B3C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020E1F6C
	add r0, r1, #1
	cmp r0, r5
	blt _021E8B4E
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021E8B4E:
	add r0, r4, #1
	pop {r3, r4, r5, pc}
_021E8B52:
	lsl r1, r1, #5
	add r0, r4, r5
	mul r1, r5
	cmp r0, r1
	blt _021E8B82
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021E8B60:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020E1F6C
	sub r0, r1, #1
	bpl _021E8B70
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021E8B70:
	sub r0, r4, #1
	pop {r3, r4, r5, pc}
_021E8B74:
	sub r0, r4, r5
	bpl _021E8B82
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021E8B7C:
	bl sub_02022974
	mov r0, #0
_021E8B82:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021E8B1C

	thumb_func_start ov5_021E8B84
ov5_021E8B84: ; 0x021E8B84
	cmp r0, #4
	bhi _021E8BBC
	add r2, r0, r0
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E8B94: ; jump table
	.short _021E8BBC - _021E8B94 - 2 ; case 0
	.short _021E8BB6 - _021E8B94 - 2 ; case 1
	.short _021E8BA6 - _021E8B94 - 2 ; case 2
	.short _021E8BAE - _021E8B94 - 2 ; case 3
	.short _021E8B9E - _021E8B94 - 2 ; case 4
_021E8B9E:
	sub r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021E8BA6:
	add r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021E8BAE:
	sub r0, r1, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021E8BB6:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
_021E8BBC:
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021E8B84

	thumb_func_start ov5_021E8BC0
ov5_021E8BC0: ; 0x021E8BC0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl ov5_021E8B84
	cmp r5, r0
	bge _021E8BF2
	sub r0, r0, r5
	cmp r0, #1
	bne _021E8BDE
	ldrb r0, [r4]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	b _021E8C1E
_021E8BDE:
	cmp r0, #2
	bne _021E8BEC
	ldrb r0, [r4]
	sub r0, r0, #2
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	b _021E8C1E
_021E8BEC:
	bl sub_02022974
	b _021E8C1E
_021E8BF2:
	cmp r5, r0
	ble _021E8C1A
	sub r0, r5, r0
	cmp r0, #1
	bne _021E8C06
	ldrb r0, [r4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	b _021E8C1E
_021E8C06:
	cmp r0, #2
	bne _021E8C14
	ldrb r0, [r4]
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	b _021E8C1E
_021E8C14:
	bl sub_02022974
	b _021E8C1E
_021E8C1A:
	bl sub_02022974
_021E8C1E:
	strb r6, [r4]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021E8BC0

	thumb_func_start ov5_021E8C24
ov5_021E8C24: ; 0x021E8C24
	push {r3, lr}
	cmp r0, #4
	bhi _021E8C50
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8C36: ; jump table
	.short _021E8C50 - _021E8C36 - 2 ; case 0
	.short _021E8C48 - _021E8C36 - 2 ; case 1
	.short _021E8C44 - _021E8C36 - 2 ; case 2
	.short _021E8C4C - _021E8C36 - 2 ; case 3
	.short _021E8C40 - _021E8C36 - 2 ; case 4
_021E8C40:
	mov r0, #2
	pop {r3, pc}
_021E8C44:
	mov r0, #4
	pop {r3, pc}
_021E8C48:
	mov r0, #3
	pop {r3, pc}
_021E8C4C:
	mov r0, #1
	pop {r3, pc}
_021E8C50:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov5_021E8C24

	thumb_func_start ov5_021E8C58
ov5_021E8C58: ; 0x021E8C58
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	mov r4, #0
_021E8C62:
	ldr r0, [r5, #0x2c]
	cmp r0, #1
	bne _021E8C7E
	add r0, r6, #0
	bl ov5_021E8C24
	add r1, r5, #0
	add r1, #0x30
	ldrb r1, [r1]
	cmp r1, r0
	bne _021E8C7E
	strb r4, [r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E8C7E:
	add r4, r4, #1
	add r5, #0x30
	cmp r4, #2
	blt _021E8C62
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E8C58

	thumb_func_start ov5_021E8C8C
ov5_021E8C8C: ; 0x021E8C8C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xa1
	ldrb r1, [r0]
	mov r0, #0x30
	add r4, r5, #0
	mul r0, r1
	add r0, r5, r0
	ldr r0, [r0, #0x2c]
	add r4, #0x64
	cmp r0, #0
	beq _021E8CA8
	bl sub_02022974
_021E8CA8:
	add r1, r5, #0
	add r1, #0xa1
	ldrb r2, [r1]
	mov r1, #0x30
	mov r0, #1
	add r3, r2, #0
	mul r3, r1
	add r2, r5, r3
	add r3, r5, #0
	str r0, [r2, #0x2c]
	add r3, #0xa1
	ldrb r3, [r3]
	ldrb r2, [r4, #0xc]
	add r6, r3, #0
	mul r6, r1
	add r3, r5, r6
	add r3, #0x30
	strb r2, [r3]
	add r3, r5, #0
	add r3, #0xa1
	ldrb r3, [r3]
	ldr r2, [r4, #0x10]
	add r6, r3, #0
	mul r6, r1
	add r3, r5, r6
	str r2, [r3, #0x1c]
	add r3, r5, #0
	add r3, #0xa1
	ldrb r3, [r3]
	ldr r2, [r4, #0x14]
	add r6, r3, #0
	mul r6, r1
	add r3, r5, r6
	str r2, [r3, #0x20]
	add r3, r5, #0
	add r3, #0xa1
	ldrb r3, [r3]
	ldrb r2, [r4, #0x18]
	add r6, r3, #0
	mul r6, r1
	add r3, r5, r6
	add r3, #0x24
	strb r2, [r3]
	add r3, r5, #0
	add r3, #0xa1
	ldrb r3, [r3]
	ldrb r2, [r4, #0x19]
	add r6, r3, #0
	mul r6, r1
	add r3, r5, r6
	add r3, #0x25
	strb r2, [r3]
	add r3, r5, #0
	add r3, #0xa1
	ldrb r3, [r3]
	ldr r2, [r4, #0]
	add r6, r3, #0
	mul r6, r1
	add r3, r5, r6
	str r2, [r3, #4]
	add r2, r5, #0
	add r2, #0xa1
	ldrb r2, [r2]
	ldr r4, [r4, #4]
	add r3, r2, #0
	mul r3, r1
	add r2, r5, r3
	add r3, r5, #0
	str r4, [r2, #8]
	add r3, #0xa1
	ldrb r3, [r3]
	mov r2, #0
	add r4, r3, #0
	mul r4, r1
	add r3, r5, r4
	add r3, #0x26
	strb r2, [r3]
	add r3, r5, #0
	add r3, #0xa1
	ldrb r3, [r3]
	mul r1, r3
	add r1, r5, r1
	str r2, [r1, #0x28]
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021E8C8C

	thumb_func_start ov5_021E8D50
ov5_021E8D50: ; 0x021E8D50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r4, r5, #0
	add r4, #0x64
	cmp r0, #2
	blo _021E8D64
	bl sub_02022974
_021E8D64:
	add r0, r5, #0
	bl ov5_021E8C8C
	cmp r0, #1
	beq _021E8D72
	bl sub_02022974
_021E8D72:
	mov r0, #0x86
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	str r2, [r1, r0]
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #4]
	str r2, [r1, r0]
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xa0
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa1
	ldrb r0, [r0]
	add r5, #0xa1
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021E8D50

	thumb_func_start ov5_021E8DAC
ov5_021E8DAC: ; 0x021E8DAC
	add r1, r0, #0
	add r1, #0xa2
	ldrb r2, [r1]
	mov r1, #0x30
	mul r1, r2
	add r0, r0, r1
	ldr r0, [r0, #0x28]
	bx lr
	thumb_func_end ov5_021E8DAC

	thumb_func_start ov5_021E8DBC
ov5_021E8DBC: ; 0x021E8DBC
	mov r3, #0
	add r2, r3, #0
_021E8DC0:
	lsl r1, r3, #2
	add r1, r0, r1
	add r1, #0x80
	str r2, [r1, #0]
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #4
	blo _021E8DC0
	bx lr
	thumb_func_end ov5_021E8DBC

	thumb_func_start ov5_021E8DD4
ov5_021E8DD4: ; 0x021E8DD4
	cmp r0, #4
	bhi _021E8E24
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8DE4: ; jump table
	.short _021E8E24 - _021E8DE4 - 2 ; case 0
	.short _021E8DFC - _021E8DE4 - 2 ; case 1
	.short _021E8E0A - _021E8DE4 - 2 ; case 2
	.short _021E8E18 - _021E8DE4 - 2 ; case 3
	.short _021E8DEE - _021E8DE4 - 2 ; case 4
_021E8DEE:
	add r0, r1, #0
	mov r2, #1
	add r0, #0x88
	str r2, [r0, #0]
	add r1, #0x8c
	str r2, [r1, #0]
	bx lr
_021E8DFC:
	add r0, r1, #0
	mov r2, #1
	add r0, #0x80
	str r2, [r0, #0]
	add r1, #0x88
	str r2, [r1, #0]
	bx lr
_021E8E0A:
	add r0, r1, #0
	mov r2, #1
	add r0, #0x80
	str r2, [r0, #0]
	add r1, #0x84
	str r2, [r1, #0]
	bx lr
_021E8E18:
	add r0, r1, #0
	mov r2, #1
	add r0, #0x84
	str r2, [r0, #0]
	add r1, #0x8c
	str r2, [r1, #0]
_021E8E24:
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021E8DD4

	thumb_func_start ov5_021E8E28
ov5_021E8E28: ; 0x021E8E28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov5_021E79A8
	ldr r0, [sp, #0x38]
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r2, r6, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0xc]
	add r0, sp, #0x14
	str r0, [sp, #0x10]
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov5_021E7838
	mov r4, #0
	add r7, sp, #0x14
_021E8E68:
	lsl r6, r4, #2
	bl ov5_021EF13C
	add r1, r5, r6
	add r1, #0x90
	ldr r2, [r1, #0]
	ldr r1, _021E8EC8 ; =0x0000085C
	str r0, [r2, r1]
	add r0, r5, r6
	add r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, _021E8EC8 ; =0x0000085C
	ldr r0, [r1, r0]
	bl ov5_021EF248
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl ov5_021EFAC0
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	add r2, r5, #0
	str r1, [sp]
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r3, r5, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r2, #0xb8
	add r3, #0xbc
	ldr r0, [r7, r6]
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	add r1, r4, #0
	bl ov5_021E7E28
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021E8E68
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021E8EC8: .word 0x0000085C
	thumb_func_end ov5_021E8E28

	thumb_func_start ov5_021E8ECC
ov5_021E8ECC: ; 0x021E8ECC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov5_021E7AC4
	ldr r0, [sp, #0x38]
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r2, r6, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0xc]
	add r0, sp, #0x14
	str r0, [sp, #0x10]
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov5_021E7838
	mov r4, #0
	add r7, r4, #0
_021E8F0C:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, _021E8F5C ; =0x0000085C
	str r7, [r1, r0]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl ov5_021EFAC0
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	add r2, r5, #0
	str r1, [sp]
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r3, r5, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r0, sp, #0x14
	add r2, #0xb8
	add r3, #0xbc
	ldr r0, [r0, r6]
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	add r1, r4, #0
	bl ov5_021E7F1C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021E8F0C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021E8F5C: .word 0x0000085C
	thumb_func_end ov5_021E8ECC

	thumb_func_start ov5_021E8F60
ov5_021E8F60: ; 0x021E8F60
	push {r4, lr}
	add r1, r0, #0
	mov r3, #0
	add r1, #0xa2
	strb r3, [r1]
	add r1, r0, #0
	add r1, #0xa1
	strb r3, [r1]
	add r1, r0, #0
	add r1, #0xa0
	strb r3, [r1]
	add r4, r0, #0
	add r2, r3, #0
	mov r1, #1
_021E8F7C:
	str r2, [r4, #0x2c]
	str r1, [r4, #0x28]
	add r3, r3, #1
	add r4, #0x30
	cmp r3, #2
	blt _021E8F7C
	bl ov5_021E8DBC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E8F60

	thumb_func_start ov5_021E8F90
ov5_021E8F90: ; 0x021E8F90
	push {r3, r4, r5, lr}
	mov r5, #0x41
	ldr r4, [sp, #0x10]
	lsl r5, r5, #2
	ldr r5, [r4, r5]
	cmp r5, #1
	bne _021E8FC6
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	cmp r0, #1
	ble _021E8FAE
	add r0, r2, #0
	add r0, #0x1f
	b _021E8FB2
_021E8FAE:
	add r0, r2, #0
	add r0, #0x10
_021E8FB2:
	add r1, r4, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	cmp r1, #1
	ble _021E8FC2
	add r1, r3, #0
	add r1, #0x1f
	b _021E8FC6
_021E8FC2:
	add r1, r3, #0
	add r1, #0x10
_021E8FC6:
	add r5, r4, #0
	add r5, #0xc8
	ldr r5, [r5, #0]
	str r5, [sp]
	bl ov5_021E8ABC
	add r1, r4, #0
	add r1, #0xa8
	str r0, [r1, #0]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xa8
	add r1, #0xc8
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl ov5_021E935C
	add r1, r4, #0
	add r1, #0xad
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0xad
	ldrb r0, [r0]
	bl ov5_021E8AF0
	add r1, r4, #0
	add r1, #0xac
	strb r0, [r1]
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r0, #0xa8
	add r1, #0xc0
	add r2, #0xc8
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	bl ov5_021E8ACC
	add r4, #0xa4
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021E8F90

	thumb_func_start ov5_021E901C
ov5_021E901C: ; 0x021E901C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	mov r2, #1
	add r5, r3, #0
	lsl r2, r2, #0x14
	str r2, [r5, #0]
	str r2, [r5, #8]
	mov r2, #0
	add r4, r0, #0
	mvn r2, r2
	str r1, [sp, #4]
	cmp r4, r2
	beq _021E907E
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r6, r0, #0x10
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r7, #0
	bl sub_02039E10
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_02039E88
	add r1, r0, #0
	ldr r0, [sp, #8]
	add r2, r6, #0
	str r0, [sp]
	add r0, r7, #0
	add r3, r4, #0
	bl sub_02039E8C
	lsl r0, r0, #0xf
	str r0, [r5, #4]
	ldr r1, [r5, #0]
	lsl r0, r6, #0x15
	add r0, r1, r0
	str r0, [r5, #0]
	ldr r1, [r5, #8]
	lsl r0, r4, #0x15
	add r0, r1, r0
	str r0, [r5, #8]
_021E907E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E901C

	thumb_func_start ov5_021E9084
ov5_021E9084: ; 0x021E9084
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp]
	mov r1, #0x49
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	str r2, [sp, #4]
	add r6, r3, #0
	bl sub_02018144
	mov r2, #0x49
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020C4CF4
	cmp r6, #0
	bne _021E90B6
	add r0, r4, #0
	ldr r1, _021E9148 ; =0x021FAE98
	add r0, #0xf4
	str r1, [r0, #0]
	mov r7, #1
	b _021E90CA
_021E90B6:
	cmp r6, #1
	bne _021E90C6
	add r0, r4, #0
	ldr r1, _021E914C ; =0x021FAE90
	add r0, #0xf4
	str r1, [r0, #0]
	mov r7, #0
	b _021E90CA
_021E90C6:
	bl sub_02022974
_021E90CA:
	add r0, r7, #0
	bl ov5_021EEAC8
	str r0, [r4, #0]
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0xb8
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xbc
	str r5, [r0, #0]
	add r0, r5, #0
	bl sub_02039E10
	add r1, r4, #0
	add r1, #0xc0
	str r0, [r1, #0]
	add r0, r5, #0
	bl sub_02039E20
	add r1, r4, #0
	add r1, #0xc4
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r1, r0, #5
	add r0, r4, #0
	add r0, #0xc8
	str r1, [r0, #0]
	add r1, r4, #0
	ldr r0, [sp, #4]
	add r1, #0xf0
	str r0, [r1, #0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0xec
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov5_021E8F60
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb0
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #2
	add r0, #0xb4
	str r1, [r0, #0]
	mov r0, #0x43
	mov r1, #4
	bl sub_02006C24
	add r1, r4, #0
	add r1, #0xf8
	str r0, [r1, #0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xfc
	str r1, [r0, #0]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E9148: .word 0x021FAE98
_021E914C: .word 0x021FAE90
	thumb_func_end ov5_021E9084

	thumb_func_start ov5_021E9150
ov5_021E9150: ; 0x021E9150
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0x45
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r3, [r5, r6]
	sub r6, #8
	str r3, [sp]
	add r3, r5, #0
	add r3, #0xc8
	ldr r3, [r3, #0]
	add r4, r1, #0
	str r3, [sp, #4]
	ldr r3, [r5, r6]
	add r6, r5, #0
	add r6, #0xf4
	ldr r6, [r6, #0]
	add r7, r2, #0
	ldr r6, [r6, #0]
	blx r6
	mov r3, #0x43
	str r5, [sp]
	lsl r3, r3, #2
	ldr r2, [r5, r3]
	add r3, #8
	ldr r3, [r5, r3]
	add r0, r4, #0
	add r1, r7, #0
	bl ov5_021E8F90
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E9150

	thumb_func_start ov5_021E9190
ov5_021E9190: ; 0x021E9190
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r2, r5, #0
	add r3, r5, #0
	add r1, #0xc4
	add r2, #0xc8
	add r3, #0xa8
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	add r6, r0, #0
	bl ov5_021E8B1C
	add r1, r5, #0
	add r2, r5, #0
	add r1, #0xc0
	add r2, #0xc8
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	add r7, r0, #0
	bl ov5_021E8A98
	add r1, r5, #0
	add r1, #0xc8
	add r4, r0, #0
	ldr r1, [r1, #0]
	add r0, r7, #0
	bl ov5_021E935C
	add r1, r5, #0
	add r1, #0xa4
	ldr r1, [r1, #0]
	cmp r1, r4
	bne _021E91F8
	add r1, r5, #0
	add r1, #0xad
	ldrb r1, [r1]
	cmp r1, r0
	beq _021E91F8
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov5_021E86A0
	add r1, r5, #0
	add r1, #0xad
	add r5, #0xac
	ldrb r1, [r1]
	add r0, r6, #0
	add r2, r5, #0
	bl ov5_021E8BC0
_021E91F8:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E9190

	thumb_func_start ov5_021E91FC
ov5_021E91FC: ; 0x021E91FC
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r1, #0
	sub r7, r4, #1
_021E9206:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x90
	ldr r1, [r0, #0]
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, r7
	beq _021E9222
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov5_021E89D0
_021E9222:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021E9206
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E91FC

	thumb_func_start ov5_021E9230
ov5_021E9230: ; 0x021E9230
	push {r3, r4}
	asr r4, r0, #0xf
	lsr r4, r4, #0x10
	add r4, r0, r4
	asr r0, r4, #0x10
	str r0, [r2, #0]
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r0, r0, #0x10
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021E9230

	thumb_func_start ov5_021E924C
ov5_021E924C: ; 0x021E924C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02017ACC
	bl sub_020A6988
	bl sub_020A6CF0
	mov r4, #0
	add r6, r5, #4
	mov r7, #0x30
_021E9262:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl ov5_021E7814
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021E9262
	mov r6, #0
	add r7, r6, #0
_021E927A:
	lsl r4, r6, #2
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0, #0]
	ldr r0, _021E92D8 ; =0x00000864
	mov r1, #0
	str r1, [r2, r0]
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, _021E92DC ; =0x0000085C
	ldr r0, [r1, r0]
	bl ov5_021EF1D0
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, _021E92E0 ; =0x00000868
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021E92A8
	bl ov5_021E1608
_021E92A8:
	add r0, r5, r4
	add r0, #0x90
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r5, r4
	add r0, #0x90
	str r7, [r0, #0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021E927A
	add r0, r5, #0
	mov r1, #3
	add r0, #0xb4
	str r1, [r0, #0]
	add r0, r5, #0
	mov r1, #1
	add r0, #0xb0
	str r1, [r0, #0]
	add r5, #0xec
	str r7, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E92D8: .word 0x00000864
_021E92DC: .word 0x0000085C
_021E92E0: .word 0x00000868
	thumb_func_end ov5_021E924C

	thumb_func_start ov5_021E92E4
ov5_021E92E4: ; 0x021E92E4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_02006CA8
	ldr r0, [r4, #0]
	bl ov5_021EEB48
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E92E4

	thumb_func_start ov5_021E9300
ov5_021E9300: ; 0x021E9300
	add r1, r0, #0
	add r1, #0xb0
	ldr r1, [r1, #0]
	cmp r1, #1
	bne _021E9316
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021E9316
	mov r0, #1
	bx lr
_021E9316:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021E9300

	thumb_func_start ov5_021E931C
ov5_021E931C: ; 0x021E931C
	push {r4, r5}
	add r5, r0, #0
	add r4, r1, #0
	add r2, r4, #0
	add r3, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0xcc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r4, #0xd8
	str r0, [r2, #0]
	str r5, [r4, #0]
	pop {r4, r5}
	bx lr
	thumb_func_end ov5_021E931C

	thumb_func_start ov5_021E9338
ov5_021E9338: ; 0x021E9338
	mov r1, #0
	add r0, #0xd8
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov5_021E9338

	thumb_func_start ov5_021E9340
ov5_021E9340: ; 0x021E9340
	lsl r0, r0, #2
	add r0, r1, r0
	add r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, _021E9350 ; =0x00000868
	ldr r0, [r1, r0]
	str r0, [r2, #0]
	bx lr
	; .align 2, 0
_021E9350: .word 0x00000868
	thumb_func_end ov5_021E9340

	thumb_func_start ov5_021E9354
ov5_021E9354: ; 0x021E9354
	add r0, #0xac
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021E9354

	thumb_func_start ov5_021E935C
ov5_021E935C: ; 0x021E935C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020E2178
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1b
	sub r1, r1, r2
	mov r0, #0x1b
	ror r1, r0
	mov r0, #0x1f
	and r0, r4
	add r1, r2, r1
	cmp r0, #0x10
	bge _021E9384
	cmp r1, #0x10
	bge _021E9380
	mov r0, #0
	pop {r4, pc}
_021E9380:
	mov r0, #2
	pop {r4, pc}
_021E9384:
	cmp r1, #0x10
	bge _021E938C
	mov r0, #1
	pop {r4, pc}
_021E938C:
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov5_021E935C

	thumb_func_start ov5_021E9390
ov5_021E9390: ; 0x021E9390
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	cmp r0, r5
	bne _021E93A6
	add r4, #0xac
	ldrb r0, [r4]
	pop {r3, r4, r5, pc}
_021E93A6:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _021E93B2
	bl sub_02022974
_021E93B2:
	add r0, r4, #0
	add r0, #0xac
	ldrb r1, [r0]
	cmp r1, #3
	bls _021E93BE
	b _021E955C
_021E93BE:
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E93CA: ; jump table
	.short _021E93D2 - _021E93CA - 2 ; case 0
	.short _021E9434 - _021E93CA - 2 ; case 1
	.short _021E9498 - _021E93CA - 2 ; case 2
	.short _021E94FA - _021E93CA - 2 ; case 3
_021E93D2:
	add r0, r4, #0
	add r0, #0xa4
	add r2, r4, #0
	ldr r0, [r0, #0]
	add r2, #0xc0
	ldr r2, [r2, #0]
	sub r3, r5, r0
	cmp r2, r3
	bne _021E93EC
	add r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021E93EC:
	cmp r3, #1
	bne _021E9406
	add r1, r5, #0
	bl ov5_021E77C0
	cmp r0, #0
	beq _021E9406
	add r4, #0xac
	ldrb r0, [r4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021E9406:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xa4
	add r1, #0xc0
	ldr r2, [r1, #0]
	ldr r0, [r0, #0]
	add r3, r2, #1
	sub r1, r5, r0
	cmp r3, r1
	bne _021E9430
	add r1, r5, #0
	bl ov5_021E77C0
	cmp r0, #0
	bne _021E9430
	add r4, #0xac
	ldrb r0, [r4]
	add r0, r0, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021E9430:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021E9434:
	add r0, r4, #0
	add r0, #0xa4
	add r2, r4, #0
	ldr r0, [r0, #0]
	add r2, #0xc0
	ldr r2, [r2, #0]
	sub r3, r5, r0
	cmp r2, r3
	bne _021E944E
	add r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021E944E:
	sub r1, r0, r5
	cmp r1, #1
	bne _021E946A
	add r1, r5, #0
	bl ov5_021E77C0
	cmp r0, #0
	beq _021E946A
	add r4, #0xac
	ldrb r0, [r4]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021E946A:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xa4
	add r1, #0xc0
	ldr r2, [r1, #0]
	ldr r0, [r0, #0]
	sub r3, r2, #1
	sub r1, r5, r0
	cmp r3, r1
	bne _021E9494
	add r1, r5, #0
	bl ov5_021E77C0
	cmp r0, #0
	bne _021E9494
	add r4, #0xac
	ldrb r0, [r4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021E9494:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021E9498:
	add r0, r4, #0
	add r0, #0xa4
	add r2, r4, #0
	ldr r0, [r0, #0]
	add r2, #0xc0
	ldr r2, [r2, #0]
	sub r3, r0, r5
	cmp r2, r3
	bne _021E94B2
	sub r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021E94B2:
	sub r1, r2, #1
	cmp r1, r3
	bne _021E94CE
	add r1, r5, #0
	bl ov5_021E77C0
	cmp r0, #0
	bne _021E94CE
	add r4, #0xac
	ldrb r0, [r4]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021E94CE:
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	sub r1, r5, r0
	cmp r1, #1
	bne _021E94F6
	add r2, r4, #0
	add r2, #0xc0
	ldr r2, [r2, #0]
	add r1, r5, #0
	bl ov5_021E77C0
	cmp r0, #0
	beq _021E94F6
	add r4, #0xac
	ldrb r0, [r4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021E94F6:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021E94FA:
	add r0, r4, #0
	add r0, #0xa4
	add r2, r4, #0
	ldr r0, [r0, #0]
	add r2, #0xc0
	ldr r2, [r2, #0]
	sub r3, r0, r5
	cmp r2, r3
	bne _021E9514
	sub r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021E9514:
	add r1, r2, #1
	cmp r1, r3
	bne _021E9530
	add r1, r5, #0
	bl ov5_021E77C0
	cmp r0, #0
	bne _021E9530
	add r4, #0xac
	ldrb r0, [r4]
	sub r0, r0, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021E9530:
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	sub r1, r0, r5
	cmp r1, #1
	bne _021E9558
	add r2, r4, #0
	add r2, #0xc0
	ldr r2, [r2, #0]
	add r1, r5, #0
	bl ov5_021E77C0
	cmp r0, #0
	beq _021E9558
	add r4, #0xac
	ldrb r0, [r4]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021E9558:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021E955C:
	mov r0, #4
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021E9390

	thumb_func_start ov5_021E9560
ov5_021E9560: ; 0x021E9560
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #4
	blo _021E956E
	bl sub_02022974
_021E956E:
	lsl r0, r5, #2
	add r0, r4, r0
	add r0, #0x90
	ldr r1, [r0, #0]
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021E9560

	thumb_func_start ov5_021E9580
ov5_021E9580: ; 0x021E9580
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x43
	lsl r0, r0, #2
	str r3, [sp]
	ldr r3, [r5, r0]
	add r0, #8
	ldr r0, [r5, r0]
	sub r6, r1, r3
	sub r4, r2, r0
	add r0, r5, #0
	asr r2, r4, #4
	add r0, #0xc0
	lsr r2, r2, #0x1b
	ldr r1, [r0, #0]
	asr r0, r6, #4
	add r2, r4, r2
	lsr r0, r0, #0x1b
	asr r2, r2, #5
	add r0, r6, r0
	add r3, r2, #0
	asr r0, r0, #5
	mul r3, r1
	add r7, r0, r3
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mul r0, r1
	cmp r7, r0
	blo _021E95CA
	mov r0, #1
	bl sub_02038AE0
	cmp r0, #0
	beq _021E95CA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E95CA:
	add r0, r5, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mul r0, r1
	cmp r7, r0
	blo _021E95E0
	bl sub_02022974
_021E95E0:
	add r0, r5, #0
	add r0, #0xc8
	ldr r1, [r0, #0]
	add r0, r4, #0
	mul r0, r1
	add r0, r6, r0
	bl ov5_021E935C
	add r1, r0, #0
	add r0, r7, #0
	add r2, r5, #0
	bl ov5_021E9390
	ldr r1, [sp]
	cmp r1, #0
	beq _021E9602
	strb r0, [r1]
_021E9602:
	cmp r0, #3
	bls _021E960A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E960A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E9580

	thumb_func_start ov5_021E9610
ov5_021E9610: ; 0x021E9610
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, _021E9620 ; =0x0000085C
	ldr r0, [r1, r0]
	bx lr
	nop
_021E9620: .word 0x0000085C
	thumb_func_end ov5_021E9610

	thumb_func_start ov5_021E9624
ov5_021E9624: ; 0x021E9624
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0x90
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021E9624

	thumb_func_start ov5_021E9630
ov5_021E9630: ; 0x021E9630
	add r3, r0, #0
	add r3, #0xfc
	str r1, [r3, #0]
	mov r1, #1
	lsl r1, r1, #8
	str r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021E9630

	thumb_func_start ov5_021E9640
ov5_021E9640: ; 0x021E9640
	push {r3, lr}
	bl sub_0201CED0
	mov r1, #1
	str r1, [r0, #0x1c]
	pop {r3, pc}
	thumb_func_end ov5_021E9640

	thumb_func_start ov5_021E964C
ov5_021E964C: ; 0x021E964C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _021E965C
	mov r0, #5
	strb r0, [r4, #0x14]
_021E965C:
	ldrb r0, [r4, #0x14]
	cmp r0, #5
	bls _021E9664
	b _021E9768
_021E9664:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E9670: ; jump table
	.short _021E967C - _021E9670 - 2 ; case 0
	.short _021E96AC - _021E9670 - 2 ; case 1
	.short _021E96E2 - _021E9670 - 2 ; case 2
	.short _021E9700 - _021E9670 - 2 ; case 3
	.short _021E9768 - _021E9670 - 2 ; case 4
	.short _021E9756 - _021E9670 - 2 ; case 5
_021E967C:
	mov r0, #0
	str r0, [r4, #0x24]
	mov r0, #0xe
	ldr r5, [r4, #4]
	lsl r0, r0, #0xc
	cmp r5, r0
	bgt _021E968E
	mov r0, #2
	b _021E9692
_021E968E:
	add r5, r0, #0
	mov r0, #1
_021E9692:
	strb r0, [r4, #0x14]
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0]
	ldr r3, [r2, #0]
	ldr r2, [r4, #0x24]
	add r1, r5, #0
	add r2, r3, r2
	bl sub_02006E18
	ldr r0, [r4, #0x24]
	add r0, r0, r5
	str r0, [r4, #0x24]
	pop {r4, r5, r6, pc}
_021E96AC:
	ldr r2, [r4, #0x24]
	ldr r0, [r4, #4]
	sub r5, r0, r2
	mov r0, #0xe
	lsl r0, r0, #0xc
	cmp r5, r0
	ble _021E96C0
	add r5, r0, #0
	mov r6, #0
	b _021E96C2
_021E96C0:
	mov r6, #1
_021E96C2:
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0]
	ldr r3, [r3, #0]
	add r1, r5, #0
	add r2, r3, r2
	bl sub_02006E18
	cmp r6, #0
	beq _021E96DA
	mov r0, #2
	strb r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_021E96DA:
	ldr r0, [r4, #0x24]
	add r0, r0, r5
	str r0, [r4, #0x24]
	pop {r4, r5, r6, pc}
_021E96E2:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021E96FA
	bl sub_0201CA5C
	cmp r0, #1
	bne _021E96FA
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0]
	bl sub_0201CBB0
_021E96FA:
	mov r0, #3
	strb r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_021E9700:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0]
	bl sub_020B3C0C
	add r5, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, #1
	beq _021E9714
	bl sub_02022974
_021E9714:
	cmp r5, #0
	beq _021E9738
	add r1, r5, #0
	add r1, #8
	beq _021E972C
	ldrb r0, [r5, #9]
	cmp r0, #0
	bls _021E972C
	ldrh r0, [r5, #0xe]
	add r0, r1, r0
	add r0, r0, #4
	b _021E972E
_021E972C:
	mov r0, #0
_021E972E:
	cmp r0, #0
	beq _021E9738
	ldr r0, [r0, #0]
	add r5, r5, r0
	b _021E973A
_021E9738:
	mov r5, #0
_021E973A:
	cmp r5, #0
	bne _021E9742
	bl sub_02022974
_021E9742:
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl sub_020AE608
	ldr r0, [r4, #0x18]
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #5
	strb r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_021E9756:
	ldr r0, [r4, #0x20]
	mov r1, #0
	str r1, [r0, #0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_021E9768:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021E964C

	thumb_func_start ov5_021E976C
ov5_021E976C: ; 0x021E976C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #4
	mov r1, #0x28
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018184
	add r1, r0, #0
	str r5, [r1, #0]
	str r4, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [sp, #0x18]
	str r7, [r1, #0xc]
	str r0, [r1, #0x10]
	mov r2, #0
	ldr r0, [sp, #0x1c]
	strb r2, [r1, #0x14]
	str r0, [r1, #0x18]
	str r2, [r0, #0]
	ldr r0, [sp, #0x20]
	str r0, [r1, #0x20]
	str r2, [r1, #0x1c]
	ldr r0, _021E97A8 ; =ov5_021E964C
	mov r2, #1
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E97A8: .word ov5_021E964C
	thumb_func_end ov5_021E976C

	thumb_func_start ov5_021E97AC
ov5_021E97AC: ; 0x021E97AC
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r2, #0
	ldr r2, [r4, #0]
	bl sub_02006E18
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021E97D6
	bl sub_0201CA5C
	cmp r0, #1
	bne _021E97D6
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x10]
	bl sub_0201CBB0
	cmp r0, #0
	bne _021E97D6
	bl sub_02022974
_021E97D6:
	ldr r0, [r4, #0]
	bl sub_020B3C0C
	ldrb r0, [r0, #9]
	cmp r0, #1
	beq _021E97E6
	bl sub_02022974
_021E97E6:
	ldr r0, [r4, #0]
	bl sub_020B3C0C
	cmp r0, #0
	beq _021E9810
	add r2, r0, #0
	add r2, #8
	beq _021E9804
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _021E9804
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _021E9806
_021E9804:
	mov r1, #0
_021E9806:
	cmp r1, #0
	beq _021E9810
	ldr r1, [r1, #0]
	add r4, r0, r1
	b _021E9812
_021E9810:
	mov r4, #0
_021E9812:
	cmp r4, #0
	bne _021E981A
	bl sub_02022974
_021E981A:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020AE608
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021E97AC

	thumb_func_start ov5_021E9828
ov5_021E9828: ; 0x021E9828
	add r0, #0xf8
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021E9828

	thumb_func_start ov5_021E9830
ov5_021E9830: ; 0x021E9830
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x49
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	add r6, r2, #0
	bl sub_02018144
	mov r2, #0x49
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	bl ov5_021EEBC0
	str r0, [r4, #0]
	add r0, r4, #0
	add r0, #0xb8
	str r7, [r0, #0]
	add r0, r4, #0
	add r0, #0xbc
	str r5, [r0, #0]
	cmp r5, #0
	beq _021E988C
	add r0, r5, #0
	bl sub_02039E10
	add r1, r4, #0
	add r1, #0xc0
	str r0, [r1, #0]
	add r0, r5, #0
	bl sub_02039E20
	add r1, r4, #0
	add r1, #0xc4
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r1, r0, #5
	add r0, r4, #0
	add r0, #0xc8
	str r1, [r0, #0]
_021E988C:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xec
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov5_021E8F60
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb0
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #2
	add r0, #0xb4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xf8
	str r6, [r0, #0]
	cmp r6, #0
	bne _021E98C2
	mov r0, #0x43
	mov r1, #4
	bl sub_02006C24
	add r1, r4, #0
	add r1, #0xf8
	str r0, [r1, #0]
_021E98C2:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E9830

	thumb_func_start ov5_021E98C8
ov5_021E98C8: ; 0x021E98C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xb8
	str r2, [r0, #0]
	add r0, r5, #0
	add r4, r1, #0
	add r0, #0xbc
	str r4, [r0, #0]
	add r0, r4, #0
	add r6, r3, #0
	bl sub_02039E10
	add r1, r5, #0
	add r1, #0xc0
	str r0, [r1, #0]
	add r0, r4, #0
	bl sub_02039E20
	add r1, r5, #0
	add r1, #0xc4
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r1, r0, #5
	add r0, r5, #0
	add r0, #0xc8
	str r1, [r0, #0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xec
	str r1, [r0, #0]
	add r0, r5, #0
	bl ov5_021E8F60
	add r0, r5, #0
	mov r1, #0
	add r0, #0xb0
	str r1, [r0, #0]
	add r0, r5, #0
	mov r1, #2
	add r0, #0xb4
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xf8
	str r6, [r0, #0]
	cmp r6, #0
	bne _021E9934
	mov r0, #0x43
	mov r1, #4
	bl sub_02006C24
	add r5, #0xf8
	str r0, [r5, #0]
_021E9934:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021E98C8

	thumb_func_start ov5_021E9938
ov5_021E9938: ; 0x021E9938
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r0, #0
	add r7, r6, #0
_021E9940:
	lsl r4, r6, #2
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0, #0]
	ldr r0, _021E9990 ; =0x00000864
	mov r1, #0
	str r1, [r2, r0]
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, _021E9994 ; =0x00000868
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021E9960
	bl ov5_021E1608
_021E9960:
	add r0, r5, r4
	add r0, #0x90
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r5, r4
	add r0, #0x90
	str r7, [r0, #0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021E9940
	add r0, r5, #0
	mov r1, #3
	add r0, #0xb4
	str r1, [r0, #0]
	add r0, r5, #0
	mov r1, #1
	add r0, #0xb0
	str r1, [r0, #0]
	add r5, #0xec
	str r7, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E9990: .word 0x00000864
_021E9994: .word 0x00000868
	thumb_func_end ov5_021E9938

	thumb_func_start ov5_021E9998
ov5_021E9998: ; 0x021E9998
	push {r4, r5, r6, lr}
	ldr r6, _021E99C0 ; =0x00000868
	add r5, r0, #0
	mov r4, #0
_021E99A0:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x90
	ldr r0, [r0, #0]
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021E99B2
	bl ov5_021E1610
_021E99B2:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021E99A0
	pop {r4, r5, r6, pc}
	nop
_021E99C0: .word 0x00000868
	thumb_func_end ov5_021E9998

	thumb_func_start ov5_021E99C4
ov5_021E99C4: ; 0x021E99C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov5_021EEB48
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E99C4

	thumb_func_start ov5_021E99D8
ov5_021E99D8: ; 0x021E99D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0x45
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r3, [r5, r6]
	sub r6, #8
	str r3, [sp]
	add r3, r5, #0
	add r3, #0xc8
	ldr r3, [r3, #0]
	add r4, r1, #0
	str r3, [sp, #4]
	ldr r3, [r5, r6]
	add r7, r2, #0
	bl ov5_021E9A14
	mov r3, #0x43
	str r5, [sp]
	lsl r3, r3, #2
	ldr r2, [r5, r3]
	add r3, #8
	ldr r3, [r5, r3]
	add r0, r4, #0
	add r1, r7, #0
	bl ov5_021E8F90
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021E99D8

	thumb_func_start ov5_021E9A14
ov5_021E9A14: ; 0x021E9A14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov5_021E7AC4
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r2, r6, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0xc]
	add r0, sp, #0x14
	str r0, [sp, #0x10]
	add r0, r3, #0
	sub r0, #0x10
	sub r3, #8
	ldr r0, [r5, r0]
	ldr r3, [r5, r3]
	bl ov5_021E7838
	mov r4, #0
	add r7, r4, #0
_021E9A58:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, _021E9AA8 ; =0x0000085C
	str r7, [r1, r0]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl ov5_021EFAC0
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	add r2, r5, #0
	str r1, [sp]
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r3, r5, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r0, sp, #0x14
	add r2, #0xb8
	add r3, #0xbc
	ldr r0, [r0, r6]
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	add r1, r4, #0
	bl ov5_021E9B70
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021E9A58
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021E9AA8: .word 0x0000085C
	thumb_func_end ov5_021E9A14

	thumb_func_start ov5_021E9AAC
ov5_021E9AAC: ; 0x021E9AAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl ov5_021E7B4C
	mov r3, #0x45
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r1, r6, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	str r0, [sp, #0xc]
	add r0, r3, #0
	str r4, [sp, #0x10]
	sub r0, #0x10
	sub r3, #8
	ldr r0, [r5, r0]
	ldr r3, [r5, r3]
	bl ov5_021E7838
	mov r3, #0
	ldr r1, _021E9B0C ; =0x00000864
	add r2, r3, #0
_021E9AF6:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r3, r3, #1
	add r5, r5, #4
	str r2, [r0, r1]
	cmp r3, #4
	blt _021E9AF6
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021E9B0C: .word 0x00000864
	thumb_func_end ov5_021E9AAC

	thumb_func_start ov5_021E9B10
ov5_021E9B10: ; 0x021E9B10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	add r6, r5, #0
	add r6, #0x90
	lsl r7, r4, #2
	str r2, [sp, #0x10]
	ldr r1, [r6, r7]
	ldr r0, _021E9B68 ; =0x0000085C
	mov r2, #0
	str r2, [r1, r0]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl ov5_021EFAC0
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	add r2, r5, #0
	str r1, [sp]
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r2, #0xb8
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r5, #0xbc
	lsl r1, r4, #0x18
	ldr r0, [sp, #0x10]
	ldr r2, [r2, #0]
	ldr r3, [r5, #0]
	lsr r1, r1, #0x18
	bl ov5_021E9B70
	ldr r1, [r6, r7]
	ldr r0, _021E9B6C ; =0x00000864
	mov r2, #0
	str r2, [r1, r0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021E9B68: .word 0x0000085C
_021E9B6C: .word 0x00000864
	thumb_func_end ov5_021E9B10

	thumb_func_start ov5_021E9B70
ov5_021E9B70: ; 0x021E9B70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	add r4, r1, #0
	str r2, [sp, #4]
	ldr r5, [sp, #0x3c]
	cmp r7, #0
	blt _021E9BFE
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x34]
	mul r1, r2
	cmp r7, r1
	bge _021E9BFE
	add r1, r3, #0
	bl sub_02039F74
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r2, sp, #0xc
	bl ov5_021E7BAC
	add r0, r5, #0
	add r0, #0xf8
	mov r1, #2
	ldr r2, [sp, #0x18]
	lsl r1, r1, #0xa
	ldr r0, [r0, #0]
	add r1, r2, r1
	bl sub_02006E28
	add r6, r5, #0
	lsl r4, r4, #2
	add r6, #0x90
	ldr r1, [r6, r4]
	ldr r0, _021E9C04 ; =0x00000854
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x10]
	bl sub_020C2C54
	ldr r0, [r6, r4]
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	bl ov5_021EFA8C
	str r0, [sp]
	add r5, #0xf8
	ldr r0, [r5, #0]
	mov r5, #2
	ldr r2, [sp, #8]
	lsl r5, r5, #0xa
	add r2, r2, r5
	ldr r3, [sp, #8]
	add r5, #0x54
	ldr r1, [sp, #0x10]
	add r3, r3, r5
	bl ov5_021E97AC
	ldr r1, [sp, #0x38]
	cmp r1, #1
	bne _021E9BF0
	bl ov5_021D53A4
_021E9BF0:
	ldr r1, [r6, r4]
	ldr r0, _021E9C08 ; =0x00000864
	mov r2, #1
	str r2, [r1, r0]
	ldr r1, [r6, r4]
	sub r0, r0, #4
	str r7, [r1, r0]
_021E9BFE:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021E9C04: .word 0x00000854
_021E9C08: .word 0x00000864
	thumb_func_end ov5_021E9B70

	thumb_func_start ov5_021E9C0C
ov5_021E9C0C: ; 0x021E9C0C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r4, #0
	add r5, r6, #0
_021E9C16:
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0, #0]
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r1, [r1, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021E9C36
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	add r2, r7, #0
	bl ov5_021E9C40
_021E9C36:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021E9C16
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021E9C0C

	thumb_func_start ov5_021E9C40
ov5_021E9C40: ; 0x021E9C40
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r2, r0, #0
	add r5, r1, #0
	add r1, sp, #0x30
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	ldr r4, _021E9CCC ; =0x021FAEAC
	str r0, [r1, #8]
	ldmia r4!, {r0, r1}
	add r3, sp, #0x24
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	ldr r6, _021E9CD0 ; =0x021FAEDC
	str r0, [r3, #0]
	add r4, sp, #0
	mov r3, #4
_021E9C64:
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _021E9C64
	ldr r0, [r6, #0]
	lsl r6, r2, #2
	str r0, [r4, #0]
	add r4, r5, #0
	add r4, #0x90
	mov r0, #0x86
	add r2, r5, #0
	add r2, #0xbc
	ldr r1, [r4, r6]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	add r3, sp, #0x30
	bl ov5_021E901C
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [sp, #0x30]
	ldr r0, [r5, r1]
	add r0, r2, r0
	str r0, [sp, #0x30]
	add r0, r1, #4
	ldr r2, [sp, #0x34]
	ldr r0, [r5, r0]
	add r1, #8
	add r0, r2, r0
	str r0, [sp, #0x34]
	ldr r2, [sp, #0x38]
	ldr r0, [r5, r1]
	add r0, r2, r0
	str r0, [sp, #0x38]
	ldr r2, [r4, r6]
	ldr r0, _021E9CD4 ; =0x00000864
	ldr r1, [r2, r0]
	cmp r1, #1
	bne _021E9CC8
	sub r0, #0x64
	add r0, r2, r0
	add r1, sp, #0x30
	add r2, sp, #0
	add r3, sp, #0x24
	bl sub_0201CA74
_021E9CC8:
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021E9CCC: .word 0x021FAEAC
_021E9CD0: .word 0x021FAEDC
_021E9CD4: .word 0x00000864
	thumb_func_end ov5_021E9C40

	thumb_func_start ov5_021E9CD8
ov5_021E9CD8: ; 0x021E9CD8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #4
_021E9CE0:
	add r0, r4, #0
	bl ov5_021E7814
	add r6, r6, #1
	add r4, #0x30
	cmp r6, #2
	blt _021E9CE0
	mov r3, #0
	ldr r1, _021E9D38 ; =0x00000864
	add r2, r5, #0
	add r4, r3, #0
_021E9CF6:
	add r0, r2, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r3, r3, #1
	add r2, r2, #4
	str r4, [r0, r1]
	cmp r3, #4
	blt _021E9CF6
	add r0, r5, #0
	mov r1, #3
	add r0, #0xb4
	str r1, [r0, #0]
	mov r1, #1
	add r0, r5, #0
	add r0, #0xb0
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xec
	str r4, [r0, #0]
	sub r6, r1, #2
	lsl r7, r1, #0xb
_021E9D20:
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1, #0]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_020C4BB8
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021E9D20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E9D38: .word 0x00000864
	thumb_func_end ov5_021E9CD8

	thumb_func_start ov5_021E9D3C
ov5_021E9D3C: ; 0x021E9D3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, r2, #0
	add r4, r3, #0
	str r1, [sp, #0x10]
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	str r2, [sp, #0x14]
	bl ov5_021EEC24
	add r1, r4, #0
	add r1, #0xbc
	ldr r1, [r1, #0]
	add r0, r5, #0
	bl sub_02039D90
	mov r0, #0
	ldr r3, [sp, #0x14]
	mov ip, r0
	add r5, r4, #0
_021E9D66:
	add r2, r3, #4
	add r6, r5, #4
	mov r7, #6
_021E9D6C:
	ldmia r2!, {r0, r1}
	stmia r6!, {r0, r1}
	sub r7, r7, #1
	bne _021E9D6C
	mov r0, ip
	add r0, r0, #1
	add r3, #0x30
	add r5, #0x30
	mov ip, r0
	cmp r0, #2
	blt _021E9D66
	ldr r2, [sp, #0x14]
	mov r5, #0
	add r3, r4, #0
_021E9D88:
	add r0, r2, #0
	add r0, #0x80
	ldr r1, [r0, #0]
	add r0, r3, #0
	add r0, #0x80
	add r5, r5, #1
	str r1, [r0, #0]
	add r2, r2, #4
	add r3, r3, #4
	cmp r5, #4
	blt _021E9D88
	ldr r0, [sp, #0x14]
	ldr r5, [sp, #0x14]
	add r0, #0xa0
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0xa0
	strb r1, [r0]
	ldr r0, [sp, #0x14]
	add r6, r4, #0
	add r0, #0xa1
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0xa1
	strb r1, [r0]
	ldr r0, [sp, #0x14]
	add r0, #0xa2
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0xa2
	strb r1, [r0]
	ldr r0, [sp, #0x14]
	add r0, #0xa4
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xa4
	str r1, [r0, #0]
	ldr r0, [sp, #0x14]
	add r0, #0xa8
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xa8
	str r1, [r0, #0]
	ldr r0, [sp, #0x14]
	add r0, #0xac
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0xac
	strb r1, [r0]
	ldr r0, [sp, #0x14]
	add r0, #0xad
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0xad
	strb r1, [r0]
	mov r0, #0
	str r0, [sp, #0x18]
_021E9DFA:
	add r0, r6, #0
	add r1, r5, #0
	add r0, #0x90
	add r1, #0x90
	ldr r2, [r1, #0]
	mov r1, #2
	lsl r1, r1, #0xa
	ldr r0, [r0, #0]
	add r3, r2, r1
	add r2, r0, r1
	mov r7, #0xa
_021E9E10:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _021E9E10
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, _021E9F90 ; =0x00000854
	ldr r2, [r1, r0]
	add r1, r6, #0
	add r1, #0x90
	ldr r1, [r1, #0]
	str r2, [r1, r0]
	add r1, r5, #0
	add r1, #0x90
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #0x10
	ldr r1, [r2, r1]
	add r2, r6, #0
	add r2, #0x90
	ldr r3, [r2, #0]
	add r2, r0, #0
	add r2, #0x10
	str r1, [r3, r2]
	add r1, r5, #0
	add r1, #0x90
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xc
	ldr r2, [r2, r1]
	add r1, r6, #0
	add r1, #0x90
	ldr r1, [r1, #0]
	add r0, #0xc
	str r2, [r1, r0]
	ldr r0, [sp, #0x18]
	add r5, r5, #4
	add r0, r0, #1
	add r6, r6, #4
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _021E9DFA
	add r1, r4, #0
	ldr r0, [sp, #0x10]
	add r1, #0xb8
	str r0, [r1, #0]
	ldr r0, [sp, #0x14]
	ldr r5, [sp, #0x14]
	add r0, #0xc0
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0, #0]
	ldr r0, [sp, #0x14]
	add r3, r4, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [sp, #0x14]
	add r5, #0xcc
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r3, #0xcc
	lsl r1, r0, #5
	add r0, r4, #0
	add r0, #0xc8
	str r1, [r0, #0]
	mov r2, #4
_021E9EA2:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E9EA2
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	mov r3, #0x41
	lsl r3, r3, #2
	ldr r0, [sp, #0x14]
	add r1, r3, #0
	ldr r0, [r0, r3]
	add r1, #8
	str r0, [r4, r3]
	ldr r0, [sp, #0x14]
	ldr r1, [r0, r1]
	add r0, r3, #0
	add r0, #8
	str r1, [r4, r0]
	add r1, r3, #0
	ldr r0, [sp, #0x14]
	add r1, #0xc
	ldr r1, [r0, r1]
	add r0, r3, #0
	add r0, #0xc
	str r1, [r4, r0]
	add r1, r3, #0
	ldr r0, [sp, #0x14]
	add r1, #0x10
	ldr r1, [r0, r1]
	add r0, r3, #0
	add r0, #0x10
	str r1, [r4, r0]
	add r1, r3, #0
	ldr r0, [sp, #0x14]
	add r1, #0x14
	add r5, r0, r1
	add r0, r3, #0
	add r0, #0x14
	add r2, r4, r0
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x44]
	str r0, [r2, #0]
	add r2, r3, #0
	str r4, [sp]
	add r2, #8
	add r3, #0x10
	ldr r0, [sp, #0x40]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl ov5_021E8F90
	add r0, r4, #0
	mov r7, #0
	add r0, #0xb0
	str r7, [r0, #0]
	ldr r0, [sp, #0x14]
	add r5, r4, #0
	add r0, #0xb4
	str r0, [sp, #0x14]
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xb4
	str r1, [r0, #0]
	add r6, sp, #0x1c
_021E9F26:
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0, #0]
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	stmia r6!, {r0}
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, _021E9F94 ; =0x0000085C
	ldr r0, [r1, r0]
	bl ov5_021EF248
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #4
	blt _021E9F26
	mov r5, #0
	add r6, sp, #0x1c
_021E9F4E:
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl ov5_021EFAC0
	add r1, r4, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	add r2, r4, #0
	str r1, [sp]
	add r1, r4, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r3, r4, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	add r2, #0xb8
	add r3, #0xbc
	lsl r1, r5, #0x18
	ldr r0, [r6, #0]
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	lsr r1, r1, #0x18
	bl ov5_021E7FF0
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #4
	blt _021E9F4E
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021E9F90: .word 0x00000854
_021E9F94: .word 0x0000085C
	thumb_func_end ov5_021E9D3C

	thumb_func_start ov5_021E9F98
ov5_021E9F98: ; 0x021E9F98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r1, #0]
	ldr r1, [sp]
	ldr r1, [r1, #0]
	bl ov5_021EEC24
	ldr r0, [sp, #4]
	ldr r1, [sp]
	add r0, #0xbc
	add r1, #0xbc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_02039D90
	ldr r5, [sp, #4]
	ldr r6, [sp]
	mov r7, #0
_021E9FC0:
	add r4, r5, #4
	add r3, r6, #4
	mov r2, #6
_021E9FC6:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E9FC6
	add r7, r7, #1
	add r5, #0x30
	add r6, #0x30
	cmp r7, #2
	blt _021E9FC0
	ldr r2, [sp, #4]
	ldr r3, [sp]
	mov r4, #0
_021E9FDE:
	add r0, r2, #0
	add r0, #0x80
	ldr r1, [r0, #0]
	add r0, r3, #0
	add r0, #0x80
	add r4, r4, #1
	str r1, [r0, #0]
	add r2, r2, #4
	add r3, r3, #4
	cmp r4, #4
	blt _021E9FDE
	ldr r0, [sp, #4]
	ldr r5, [sp, #4]
	add r0, #0xa0
	ldrb r1, [r0]
	ldr r0, [sp]
	ldr r6, [sp]
	add r0, #0xa0
	strb r1, [r0]
	ldr r0, [sp, #4]
	mov r7, #0
	add r0, #0xa1
	ldrb r1, [r0]
	ldr r0, [sp]
	add r0, #0xa1
	strb r1, [r0]
	ldr r0, [sp, #4]
	add r0, #0xa2
	ldrb r1, [r0]
	ldr r0, [sp]
	add r0, #0xa2
	strb r1, [r0]
	ldr r0, [sp, #4]
	add r0, #0xa4
	ldr r1, [r0, #0]
	ldr r0, [sp]
	add r0, #0xa4
	str r1, [r0, #0]
	ldr r0, [sp, #4]
	add r0, #0xa8
	ldr r1, [r0, #0]
	ldr r0, [sp]
	add r0, #0xa8
	str r1, [r0, #0]
	ldr r0, [sp, #4]
	add r0, #0xac
	ldrb r1, [r0]
	ldr r0, [sp]
	add r0, #0xac
	strb r1, [r0]
	ldr r0, [sp, #4]
	add r0, #0xad
	ldrb r1, [r0]
	ldr r0, [sp]
	add r0, #0xad
	strb r1, [r0]
_021EA04E:
	add r0, r6, #0
	add r1, r5, #0
	add r0, #0x90
	add r1, #0x90
	ldr r2, [r1, #0]
	mov r1, #2
	lsl r1, r1, #0xa
	ldr r0, [r0, #0]
	add r4, r2, r1
	add r3, r0, r1
	mov r2, #0xa
_021EA064:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021EA064
	ldr r0, [r4, #0]
	add r7, r7, #1
	str r0, [r3, #0]
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, _021EA170 ; =0x00000854
	ldr r2, [r1, r0]
	add r1, r6, #0
	add r1, #0x90
	ldr r1, [r1, #0]
	str r2, [r1, r0]
	add r1, r5, #0
	add r1, #0x90
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #0x10
	ldr r1, [r2, r1]
	add r2, r6, #0
	add r2, #0x90
	ldr r3, [r2, #0]
	add r2, r0, #0
	add r2, #0x10
	str r1, [r3, r2]
	add r1, r5, #0
	add r1, #0x90
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xc
	ldr r2, [r2, r1]
	add r1, r6, #0
	add r1, #0x90
	ldr r1, [r1, #0]
	add r0, #0xc
	str r2, [r1, r0]
	add r5, r5, #4
	add r6, r6, #4
	cmp r7, #4
	blt _021EA04E
	ldr r0, [sp, #4]
	ldr r4, [sp, #4]
	add r0, #0xb8
	ldr r1, [r0, #0]
	ldr r0, [sp]
	ldr r3, [sp]
	add r0, #0xb8
	str r1, [r0, #0]
	ldr r0, [sp, #4]
	add r4, #0xcc
	add r0, #0xc0
	ldr r1, [r0, #0]
	ldr r0, [sp]
	add r3, #0xcc
	add r0, #0xc0
	str r1, [r0, #0]
	ldr r0, [sp, #4]
	mov r2, #4
	add r0, #0xc4
	ldr r1, [r0, #0]
	ldr r0, [sp]
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [sp, #4]
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r1, r0, #5
	ldr r0, [sp]
	add r0, #0xc8
	str r1, [r0, #0]
_021EA0F6:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021EA0F6
	ldr r0, [r4, #0]
	ldr r1, [sp, #4]
	str r0, [r3, #0]
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r2, [r1, r0]
	ldr r1, [sp]
	str r2, [r1, r0]
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r2, #8
	ldr r3, [r1, r2]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #8
	str r3, [r1, r2]
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r2, #0xc
	ldr r3, [r1, r2]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0xc
	str r3, [r1, r2]
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r2, #0x10
	ldr r3, [r1, r2]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x10
	str r3, [r1, r2]
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r2, #0x14
	add r3, r1, r2
	ldr r1, [sp]
	add r0, #0x14
	add r2, r1, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #0
	str r0, [r2, #0]
	ldr r0, [sp]
	add r0, #0xb0
	str r1, [r0, #0]
	ldr r0, [sp, #4]
	add r0, #0xb4
	str r0, [sp, #4]
	ldr r1, [r0, #0]
	ldr r0, [sp]
	add r0, #0xb4
	str r0, [sp]
	str r1, [r0, #0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021EA170: .word 0x00000854
	thumb_func_end ov5_021E9F98

	thumb_func_start ov5_021EA174
ov5_021EA174: ; 0x021EA174
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0xa2
	ldrb r1, [r0]
	add r4, r5, #0
	mov r0, #0x30
	add r2, r1, #0
	mul r2, r0
	add r0, #0xd4
	add r3, r5, #4
	ldr r0, [r5, r0]
	add r6, r3, r2
	add r4, #0xcc
	cmp r0, #0
	bne _021EA1C4
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _021EA1C4
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021EA22C
	ldr r0, [r4, #0x14]
	ldr r1, [r0, #0]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0]
	cmp r1, r0
	ble _021EA1B2
	bl sub_02022974
_021EA1B2:
	ldr r0, [r4, #0x10]
	ldr r1, [r0, #0]
	ldr r0, [r4, #0x14]
	ldr r0, [r0, #0]
	sub r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _021EA1C6
_021EA1C4:
	b _021EA30C
_021EA1C6:
	ldr r1, [r4, #0xc]
	add r2, sp, #0x10
	ldr r0, [r1, #0]
	ldr r1, [r1, #8]
	add r3, sp, #0xc
	bl ov5_021E9230
	str r5, [sp]
	mov r3, #0x43
	lsl r3, r3, #2
	ldr r2, [r5, r3]
	add r3, #8
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r3, [r5, r3]
	bl ov5_021E8F90
	ldr r2, [r4, #0xc]
	add r3, r4, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021EA20E
	mov r0, #1
	bl sub_02038AE0
	cmp r0, #0
	bne _021EA2EE
_021EA20E:
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021EA222
	bl sub_02022974
_021EA222:
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	b _021EA30C
_021EA22C:
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0]
	ldr r7, [r2, #0]
	cmp r3, r7
	beq _021EA244
	ldr r1, [r4, #8]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _021EA244
	bl sub_02022974
	b _021EA30C
_021EA244:
	cmp r3, r7
	bne _021EA250
	ldr r1, [r4, #8]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _021EA30C
_021EA250:
	mov r3, #1
	str r3, [r4, #0x18]
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0]
	ldr r1, [r2, #0]
	cmp r0, r1
	beq _021EA2A4
	cmp r0, r1
	ble _021EA26E
	str r4, [r4, #0x10]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x14]
	mov r0, #3
	strb r0, [r4, #0x1c]
	b _021EA274
_021EA26E:
	str r2, [r4, #0x10]
	str r4, [r4, #0x14]
	strb r3, [r4, #0x1c]
_021EA274:
	ldr r0, [r4, #0]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021EA28E
	mov r0, #1
	bl sub_02038AE0
	cmp r0, #0
	bne _021EA2EE
_021EA28E:
	ldr r0, [r4, #0]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021EA304
	bl sub_02022974
	b _021EA304
_021EA2A4:
	add r1, r5, #0
	add r1, #0xd8
	add r0, r5, #0
	ldr r1, [r1, #0]
	add r0, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #8]
	cmp r0, r1
	ble _021EA2C6
	add r0, r4, #0
	add r0, #8
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	add r0, #8
	str r0, [r4, #0x14]
	mov r0, #4
	b _021EA2D2
_021EA2C6:
	add r2, #8
	add r0, r4, #0
	str r2, [r4, #0x10]
	add r0, #8
	str r0, [r4, #0x14]
	mov r0, #2
_021EA2D2:
	strb r0, [r4, #0x1c]
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021EA2F0
	mov r0, #1
	bl sub_02038AE0
	cmp r0, #0
	beq _021EA2F0
_021EA2EE:
	b _021EA536
_021EA2F0:
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021EA304
	bl sub_02022974
_021EA304:
	ldrb r0, [r4, #0x1c]
	add r1, r5, #0
	bl ov5_021E9190
_021EA30C:
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #3
	bls _021EA318
	b _021EA48C
_021EA318:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EA324: ; jump table
	.short _021EA32C - _021EA324 - 2 ; case 0
	.short _021EA37C - _021EA324 - 2 ; case 1
	.short _021EA48C - _021EA324 - 2 ; case 2
	.short _021EA478 - _021EA324 - 2 ; case 3
_021EA32C:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	add r1, r6, r0
	add r1, #0x20
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x80
	ldr r1, [r1, #0]
	cmp r1, #1
	beq _021EA366
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r2, r5, #0
	str r1, [sp]
	str r5, [sp, #4]
	add r1, r5, #0
	add r3, r5, #0
	str r6, [sp, #8]
	add r1, #0xb8
	add r2, #0xbc
	add r3, #0xc0
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	bl ov5_021E7D98
_021EA366:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	add r6, #0x22
	mov r1, #1
	add r0, r0, #1
	strb r0, [r6]
	add r0, r5, #0
	add r0, #0xb4
	str r1, [r0, #0]
	b _021EA48C
_021EA37C:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	sub r0, r0, #1
	add r0, r6, r0
	add r0, #0x20
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _021EA3B4
	add r0, r6, #0
	bl ov5_021E7814
	add r1, r6, #0
	add r1, #0x22
	ldrb r1, [r1]
	mov r0, #0
	sub r1, r1, #1
	add r1, r6, r1
	add r1, #0x20
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x80
	str r0, [r1, #0]
_021EA3B4:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #2
	bhi _021EA48C
	add r0, r6, #0
	add r0, #0x10
	bl ov5_021E80BC
	cmp r0, #1
	bne _021EA48C
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #2
	blo _021EA3DA
	mov r0, #1
	str r0, [r6, #0x24]
	b _021EA3E2
_021EA3DA:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0, #0]
_021EA3E2:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	ldr r2, [r6, r0]
	ldr r0, _021EA53C ; =0x00000864
	ldr r1, [r2, r0]
	cmp r1, #1
	bne _021EA438
	sub r0, #0x10
	ldr r0, [r2, r0]
	bl sub_020B3C0C
	cmp r0, #0
	beq _021EA422
	add r2, r0, #0
	add r2, #8
	beq _021EA416
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _021EA416
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _021EA418
_021EA416:
	mov r1, #0
_021EA418:
	cmp r1, #0
	beq _021EA422
	ldr r1, [r1, #0]
	add r4, r0, r1
	b _021EA424
_021EA422:
	mov r4, #0
_021EA424:
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl ov5_021EFAC0
	cmp r0, #1
	bne _021EA438
	add r0, r4, #0
	bl ov5_021D53A4
_021EA438:
	add r0, r5, #0
	add r0, #0xfc
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _021EA48C
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	mov r2, #0x86
	lsl r2, r2, #4
	sub r0, r0, #1
	lsl r0, r0, #2
	ldr r4, [r6, r0]
	ldr r1, [r4, r2]
	cmp r1, #0
	blt _021EA48C
	add r0, r5, #0
	add r6, r5, #0
	add r0, #0xc0
	add r6, #0xc4
	ldr r0, [r0, #0]
	ldr r6, [r6, #0]
	mul r6, r0
	cmp r1, r6
	bge _021EA48C
	mov r0, #1
	lsl r0, r0, #8
	add r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r4, r2]
	blx r3
	b _021EA48C
_021EA478:
	add r6, #0x10
	add r0, r6, #0
	bl ov5_021E80BC
	cmp r0, #1
	bne _021EA48C
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa0
	strb r1, [r0]
_021EA48C:
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EA4AE
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa1
	strb r1, [r0]
	mov r0, #2
	add r5, #0xb4
	add sp, #0x14
	str r0, [r5, #0]
	pop {r4, r5, r6, r7, pc}
_021EA4AE:
	add r0, r5, #0
	bl ov5_021E8DAC
	cmp r0, #1
	bne _021EA536
	add r0, r5, #0
	add r0, #0xa2
	ldrb r1, [r0]
	mov r0, #0x30
	mov r2, #0
	mul r0, r1
	add r0, r5, r0
	str r2, [r0, #0x2c]
	add r0, r5, #0
	bl ov5_021E8DBC
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xa0
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa2
	ldrb r0, [r0]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r5, #0
	add r1, r2, r1
	add r0, #0xa2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EA504
	mov r1, #0
	b _021EA514
_021EA504:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa1
	strb r1, [r0]
	mov r1, #2
_021EA514:
	add r0, r5, #0
	add r0, #0xb4
	str r1, [r0, #0]
	ldr r0, [r5, #0x6c]
	cmp r0, #1
	bne _021EA536
	mov r0, #0
	str r0, [r5, #0x6c]
	add r0, r5, #0
	add r0, #0x70
	ldrb r0, [r0]
	add r1, r5, #0
	bl ov5_021E8DD4
	add r0, r5, #0
	bl ov5_021E8D50
_021EA536:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021EA53C: .word 0x00000864
	thumb_func_end ov5_021EA174

	thumb_func_start ov5_021EA540
ov5_021EA540: ; 0x021EA540
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xb8
	str r2, [r0, #0]
	add r0, r5, #0
	add r4, r1, #0
	add r0, #0xbc
	str r4, [r0, #0]
	add r0, r4, #0
	bl sub_02039E10
	add r1, r5, #0
	add r1, #0xc0
	str r0, [r1, #0]
	add r0, r4, #0
	bl sub_02039E20
	add r1, r5, #0
	add r1, #0xc4
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r1, r0, #5
	add r0, r5, #0
	add r0, #0xc8
	str r1, [r0, #0]
	add r0, r5, #0
	bl ov5_021E8F60
	add r0, r5, #0
	mov r1, #0
	add r0, #0xb0
	str r1, [r0, #0]
	mov r0, #2
	add r5, #0xb4
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EA540

	thumb_func_start ov5_021EA58C
ov5_021EA58C: ; 0x021EA58C
	push {r4, r5, lr}
	sub sp, #0x14
	mov r4, #0x45
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	str r0, [sp, #0xc]
	add r0, r4, #0
	str r3, [sp, #0x10]
	sub r0, #0x10
	sub r4, #8
	ldr r0, [r5, r0]
	ldr r3, [r5, r4]
	bl ov5_021E7838
	mov r3, #0
	ldr r1, _021EA5DC ; =0x00000864
	add r2, r3, #0
_021EA5C8:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r3, r3, #1
	add r5, r5, #4
	str r2, [r0, r1]
	cmp r3, #4
	blt _021EA5C8
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_021EA5DC: .word 0x00000864
	thumb_func_end ov5_021EA58C

	thumb_func_start ov5_021EA5E0
ov5_021EA5E0: ; 0x021EA5E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	add r4, r5, #0
	add r4, #0x90
	lsl r6, r7, #2
	ldr r0, [r4, r6]
	ldr r3, _021EA66C ; =0x00000864
	mov r1, #0
	str r1, [r0, r3]
	str r2, [sp, #0x10]
	lsl r0, r7, #0x18
	ldr r2, [r4, r6]
	sub r3, #0x10
	ldr r1, [r5, #0]
	lsr r0, r0, #0x18
	add r2, r2, r3
	bl ov5_021EEB84
	lsl r0, r7, #0x18
	ldr r3, [r4, r6]
	ldr r2, _021EA670 ; =0x00000858
	ldr r1, [r5, #0]
	lsr r0, r0, #0x18
	add r2, r3, r2
	bl ov5_021EEB90
	mov r0, #0
	mov r2, #0x86
	ldr r1, [r4, r6]
	mvn r0, r0
	lsl r2, r2, #4
	str r0, [r1, r2]
	ldr r1, [r4, r6]
	sub r2, #0x60
	bl sub_020C4BB8
	ldr r1, [r4, r6]
	ldr r0, _021EA674 ; =0x0000085C
	ldr r0, [r1, r0]
	bl ov5_021EF248
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl ov5_021EFAC0
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	add r2, r5, #0
	str r1, [sp]
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r2, #0xb8
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r5, #0xbc
	lsl r1, r7, #0x18
	ldr r0, [sp, #0x10]
	ldr r2, [r2, #0]
	ldr r3, [r5, #0]
	lsr r1, r1, #0x18
	bl ov5_021E7E28
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021EA66C: .word 0x00000864
_021EA670: .word 0x00000858
_021EA674: .word 0x0000085C
	thumb_func_end ov5_021EA5E0

	thumb_func_start ov5_021EA678
ov5_021EA678: ; 0x021EA678
	push {r4, r5}
	mov r4, #0x43
	lsl r4, r4, #2
	str r1, [r0, r4]
	add r5, r4, #4
	str r2, [r0, r5]
	add r5, r4, #0
	add r5, #8
	str r3, [r0, r5]
	lsl r5, r1, #0x10
	add r1, r4, #0
	add r1, #0xc
	str r5, [r0, r1]
	add r1, r4, #0
	lsl r2, r2, #0x10
	add r1, #0x10
	str r2, [r0, r1]
	lsl r1, r3, #0x10
	add r4, #0x14
	str r1, [r0, r4]
	pop {r4, r5}
	bx lr
	thumb_func_end ov5_021EA678

	thumb_func_start ov5_021EA6A4
ov5_021EA6A4: ; 0x021EA6A4
	mov r2, #0x41
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov5_021EA6A4

	thumb_func_start ov5_021EA6AC
ov5_021EA6AC: ; 0x021EA6AC
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov5_021EA6AC

	thumb_func_start ov5_021EA6B4
ov5_021EA6B4: ; 0x021EA6B4
	mov r1, #0x45
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov5_021EA6B4

	thumb_func_start ov5_021EA6BC
ov5_021EA6BC: ; 0x021EA6BC
	add r3, r1, #0
	mov r1, #0x46
	lsl r1, r1, #2
	add r2, r0, r1
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EA6BC

	thumb_func_start ov5_021EA6D0
ov5_021EA6D0: ; 0x021EA6D0
	mov r2, #0x42
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov5_021EA6D0

	thumb_func_start ov5_021EA6D8
ov5_021EA6D8: ; 0x021EA6D8
	add r0, #0xbc
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EA6D8

	thumb_func_start ov5_021EA6E0
ov5_021EA6E0: ; 0x021EA6E0
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, _021EA6F0 ; =0x00000864
	str r2, [r1, r0]
	bx lr
	nop
_021EA6F0: .word 0x00000864
	thumb_func_end ov5_021EA6E0

	thumb_func_start ov5_021EA6F4
ov5_021EA6F4: ; 0x021EA6F4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r3, #0x43
	add r0, r1, #0
	str r4, [sp]
	lsl r3, r3, #2
	add r1, r2, #0
	ldr r2, [r4, r3]
	add r3, #8
	ldr r3, [r4, r3]
	bl ov5_021E8F90
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021EA6F4

	.rodata


	.global Unk_ov5_021FAE90
Unk_ov5_021FAE90: ; 0x021FAE90
	.incbin "incbin/overlay5_rodata.bin", 0x257C, 0x2584 - 0x257C

	.global Unk_ov5_021FAE98
Unk_ov5_021FAE98: ; 0x021FAE98
	.incbin "incbin/overlay5_rodata.bin", 0x2584, 0x258C - 0x2584

	.global Unk_ov5_021FAEA0
Unk_ov5_021FAEA0: ; 0x021FAEA0
	.incbin "incbin/overlay5_rodata.bin", 0x258C, 0x2598 - 0x258C

	.global Unk_ov5_021FAEAC
Unk_ov5_021FAEAC: ; 0x021FAEAC
	.incbin "incbin/overlay5_rodata.bin", 0x2598, 0x25A4 - 0x2598

	.global Unk_ov5_021FAEB8
Unk_ov5_021FAEB8: ; 0x021FAEB8
	.incbin "incbin/overlay5_rodata.bin", 0x25A4, 0x25C8 - 0x25A4

	.global Unk_ov5_021FAEDC
Unk_ov5_021FAEDC: ; 0x021FAEDC
	.incbin "incbin/overlay5_rodata.bin", 0x25C8, 0x24

