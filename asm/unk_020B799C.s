	.include "macros/function.inc"
	.include "include/unk_020B799C.inc"

	

	.text


	arm_func_start sub_020B799C
sub_020B799C: ; 0x020B799C
	stmfd sp!, {r3, lr}
	ldr r0, _020B7A10 ; =0x021C8A00
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldmneia sp!, {r3, pc}
	mov r1, #1
	str r1, [r0, #0xc]
	bl sub_020C5580
	ldr r0, _020B7A14 ; =sub_020B7A80
	ldr r1, _020B7A10 ; =0x021C8A00
	mov r2, #0
	str r0, [r1, #0x10]
	ldr r0, _020B7A18 ; =sub_020B7AB8
	str r2, [r1, #0x14]
	str r0, [r1, #0x1c]
	ldr r0, _020B7A1C ; =0x021C8A10
	str r2, [r1, #0x20]
	bl sub_020CB848
	ldr r0, _020B7A20 ; =0x021C8A1C
	bl sub_020CB860
	bl sub_020B7BE4
	bl sub_020B90FC
	bl sub_020B82A0
	ldr r0, _020B7A10 ; =0x021C8A00
	mvn r1, #0
	strb r1, [r0]
	mov r1, #1
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020B7A10: .word 0x021C8A00
_020B7A14: .word sub_020B7A80
_020B7A18: .word sub_020B7AB8
_020B7A1C: .word 0x021C8A10
_020B7A20: .word 0x021C8A1C
	arm_func_end sub_020B799C

	arm_func_start sub_020B7A24
sub_020B7A24: ; 0x020B7A24
	stmfd sp!, {r4, lr}
	mov r4, #0
_020B7A2C:
	mov r0, r4
	bl sub_020C56B4
	cmp r0, #0
	bne _020B7A2C
	bl sub_020B8354
	bl sub_020B9114
	bl sub_020BB070
	mov r0, #0
	bl sub_020C5884
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B7A24

	arm_func_start sub_020B7A54
sub_020B7A54: ; 0x020B7A54
	ldr ip, _020B7A5C ; =sub_020C5464
	bx ip
	; .align 2, 0
_020B7A5C: .word sub_020C5464
	arm_func_end sub_020B7A54

	arm_func_start sub_020B7A60
sub_020B7A60: ; 0x020B7A60
	stmfd sp!, {r3, lr}
	cmp r0, #0
	beq _020B7A78
	mov r0, #0x40
	bl sub_020C54AC
	ldmia sp!, {r3, pc}
_020B7A78:
	bl sub_020C54CC
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B7A60

	arm_func_start sub_020B7A80
sub_020B7A80: ; 0x020B7A80
	stmfd sp!, {r4, lr}
	bl sub_020B95F8
	mov r0, #0
	mov r1, r0
	mov r2, r0
	mov r3, r0
	bl sub_020C522C
	bl sub_020C5AAC
	mov r4, r0
	mov r0, #1
	bl sub_020C5884
	mov r0, r4
	bl sub_020C5A40
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B7A80

	arm_func_start sub_020B7AB8
sub_020B7AB8: ; 0x020B7AB8
	ldr ip, _020B7AC0 ; =sub_020B9658
	bx ip
	; .align 2, 0
_020B7AC0: .word sub_020B9658
	arm_func_end sub_020B7AB8

	.bss


	.global Unk_021C8A00
Unk_021C8A00: ; 0x021C8A00
	.space 0x4

	.global Unk_021C8A04
Unk_021C8A04: ; 0x021C8A04
	.space 0x4

	.global Unk_021C8A08
Unk_021C8A08: ; 0x021C8A08
	.space 0x4

	.global Unk_021C8A0C
Unk_021C8A0C: ; 0x021C8A0C
	.space 0x4

	.global Unk_021C8A10
Unk_021C8A10: ; 0x021C8A10
	.space 0xC

	.global Unk_021C8A1C
Unk_021C8A1C: ; 0x021C8A1C
	.space 0x24

	.global Unk_021C8A40
Unk_021C8A40: ; 0x021C8A40
	.space 0x23C0

