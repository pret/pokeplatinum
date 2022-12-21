	.include "macros/function.inc"
	.include "include/unk_020C4808.inc"

	

	.text


	arm_func_start sub_020C4808
sub_020C4808: ; 0x020C4808
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r2, #0
	bne _020C482C
	cmp r3, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [sp, #8]
	blx r3
	ldmia sp!, {r4, pc}
_020C482C:
	ldr r0, _020C48F4 ; =0x021CD000
_020C4830:
	ldr ip, [r0]
	cmp ip, #0
	bne _020C4830
	ldr ip, _020C48F8 ; =0x04000600
_020C4840:
	ldr r0, [ip]
	and r0, r0, #0x7000000
	mov r0, r0, lsr #0x18
	tst r0, #2
	beq _020C4840
	ldr ip, _020C48F4 ; =0x021CD000
	mov r0, #1
	str r0, [ip]
	str r4, [ip, #4]
	str r1, [ip, #8]
	str r2, [ip, #0xc]
	str r3, [ip, #0x10]
	ldr lr, [sp, #8]
	mov r0, r4
	mov r3, #0
	str lr, [ip, #0x14]
	bl sub_020C46F4
	mov r0, r4
	bl sub_020C458C
	bl sub_020C3D98
	ldr r1, _020C48F8 ; =0x04000600
	mov r4, r0
	ldr r0, [r1, #0]
	ldr r1, _020C48F4 ; =0x021CD000
	and r0, r0, #0xc0000000
	mov r2, r0, lsr #0x1e
	mov r0, #0x200000
	str r2, [r1, #0x18]
	bl sub_020C14D4
	ldr r1, _020C48F4 ; =0x021CD000
	ldr r2, _020C48F8 ; =0x04000600
	str r0, [r1, #0x1c]
	ldr r0, [r2, #0]
	ldr r1, _020C48FC ; =sub_020C4900
	bic r0, r0, #0xc0000000
	orr r3, r0, #0x40000000
	mov r0, #0x200000
	str r3, [r2, #0]
	bl sub_020C144C
	mov r0, #0x200000
	bl sub_020C161C
	bl sub_020C4900
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C48F4: .word 0x021CD000
_020C48F8: .word 0x04000600
_020C48FC: .word sub_020C4900
	arm_func_end sub_020C4808

	arm_func_start sub_020C4900
sub_020C4900: ; 0x020C4900
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020C499C ; =0x021CD000
	ldr r5, [r0, #0xc]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _020C499C ; =0x021CD000
	cmp r5, #0x1d8
	ldr r1, [r0, #0xc]
	movhs r5, #0x1d8
	ldr r4, [r0, #8]
	subs r1, r1, r5
	str r1, [r0, #0xc]
	add r1, r4, r5
	str r1, [r0, #8]
	bne _020C4978
	ldr r0, [r0, #4]
	ldr r1, _020C49A0 ; =sub_020C49AC
	mov r2, #0
	bl sub_020C1560
	ldr r0, _020C499C ; =0x021CD000
	mov r3, #0x3bc00000
	rsb r3, r3, #0
	ldr r0, [r0, #4]
	ldr r2, _020C49A4 ; =0x04000400
	mov r1, r4
	orr r3, r3, r5, lsr #2
	bl sub_01FF8480
	mov r0, #0x200000
	bl sub_020C167C
	ldmia sp!, {r3, r4, r5, pc}
_020C4978:
	ldr r3, _020C49A8 ; =0x84400000
	ldr r0, [r0, #4]
	ldr r2, _020C49A4 ; =0x04000400
	mov r1, r4
	orr r3, r3, r5, lsr #2
	bl sub_01FF8480
	mov r0, #0x200000
	bl sub_020C167C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C499C: .word 0x021CD000
_020C49A0: .word sub_020C49AC
_020C49A4: .word 0x04000400
_020C49A8: .word 0x84400000
	arm_func_end sub_020C4900

	arm_func_start sub_020C49AC
sub_020C49AC: ; 0x020C49AC
	stmfd sp!, {r3, lr}
	mov r0, #0x200000
	bl sub_020C164C
	ldr r2, _020C4A04 ; =0x04000600
	ldr r0, _020C4A08 ; =0x021CD000
	ldr r1, [r2, #0]
	ldr r3, [r0, #0x18]
	bic r1, r1, #0xc0000000
	orr r1, r1, r3, lsl #30
	str r1, [r2, #0]
	ldr r1, [r0, #0x1c]
	mov r0, #0x200000
	bl sub_020C144C
	ldr r0, _020C4A08 ; =0x021CD000
	mov r1, #0
	str r1, [r0, #0]
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	blx r1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C4A04: .word 0x04000600
_020C4A08: .word 0x021CD000
	arm_func_end sub_020C49AC

	arm_func_start sub_020C4A0C
sub_020C4A0C: ; 0x020C4A0C
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r2
	mov r6, r0
	mov r5, r1
	bne _020C4A34
	cmp r3, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [sp, #0x10]
	blx r3
	ldmia sp!, {r4, r5, r6, pc}
_020C4A34:
	ldr r0, _020C4AB8 ; =0x021CD000
_020C4A38:
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _020C4A38
	ldr r2, _020C4AB8 ; =0x021CD000
	mov r0, #1
	str r0, [r2, #0]
	str r6, [r2, #4]
	ldr ip, [sp, #0x10]
	str r3, [r2, #0x10]
	mov r0, r6
	mov r1, #0x38000000
	str ip, [r2, #0x14]
	bl sub_020C4670
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #0
	bl sub_020C46F4
	mov r0, r6
	bl sub_020C458C
	mov r0, r6
	ldr r1, _020C4ABC ; =sub_020C4AC4
	mov r2, #0
	bl sub_020C1560
	mov r0, r6
	mov r1, r5
	ldr r2, _020C4AC0 ; =0x04000400
	mov r3, #0x3c00000
	rsb r3, r3, #0
	orr r3, r3, r4, lsr #2
	bl sub_01FF8480
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C4AB8: .word 0x021CD000
_020C4ABC: .word sub_020C4AC4
_020C4AC0: .word 0x04000400
	arm_func_end sub_020C4A0C

	arm_func_start sub_020C4AC4
sub_020C4AC4: ; 0x020C4AC4
	stmfd sp!, {r3, lr}
	ldr r0, _020C4AEC ; =0x021CD000
	mov r1, #0
	str r1, [r0, #0]
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	blx r1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C4AEC: .word 0x021CD000
	arm_func_end sub_020C4AC4

	.bss


	.global Unk_021CD000
Unk_021CD000: ; 0x021CD000
	.space 0x20

