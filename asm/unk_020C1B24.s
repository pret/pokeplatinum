	.include "macros/function.inc"
	.include "include/unk_020C1B24.inc"

	

	.text


	arm_func_start sub_020C1B24
sub_020C1B24: ; 0x020C1B24
	ldr r1, _020C1B38 ; =0x021CCC5C
	ldr r0, [r1, #0x20]
	add r0, r0, #1
	str r0, [r1, #0x20]
	bx lr
	; .align 2, 0
_020C1B38: .word 0x021CCC5C
	arm_func_end sub_020C1B24

	arm_func_start sub_020C1B3C
sub_020C1B3C: ; 0x020C1B3C
	ldr ip, [r0]
	b _020C1B50
_020C1B44:
	cmp ip, r1
	bxeq lr
	ldr ip, [ip, #0x80]
_020C1B50:
	cmp ip, #0
	beq _020C1B68
	ldr r3, [ip, #0x70]
	ldr r2, [r1, #0x70]
	cmp r3, r2
	bls _020C1B44
_020C1B68:
	cmp ip, #0
	bne _020C1B94
	ldr r2, [r0, #4]
	cmp r2, #0
	streq r1, [r0]
	strne r1, [r2, #0x80]
	str r2, [r1, #0x7c]
	mov r2, #0
	str r2, [r1, #0x80]
	str r1, [r0, #4]
	bx lr
_020C1B94:
	ldr r2, [ip, #0x7c]
	cmp r2, #0
	streq r1, [r0]
	strne r1, [r2, #0x80]
	str r2, [r1, #0x7c]
	str ip, [r1, #0x80]
	str r1, [ip, #0x7c]
	bx lr
	arm_func_end sub_020C1B3C

	arm_func_start sub_020C1BB4
sub_020C1BB4: ; 0x020C1BB4
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _020C1BE0
	ldr r1, [r2, #0x80]
	str r1, [r0, #0]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x7c]
	moveq r1, #0
	streq r1, [r0, #4]
	streq r1, [r2, #0x78]
_020C1BE0:
	mov r0, r2
	bx lr
	arm_func_end sub_020C1BB4

	arm_func_start sub_020C1BE8
sub_020C1BE8: ; 0x020C1BE8
	ldr ip, [r0]
	mov r2, ip
	cmp ip, #0
	beq _020C1C34
_020C1BF8:
	cmp r2, r1
	ldr r3, [r2, #0x80]
	bne _020C1C28
	cmp ip, r2
	ldr ip, [r2, #0x7c]
	streq r3, [r0]
	strne r3, [ip, #0x80]
	ldr r1, [r0, #4]
	cmp r1, r2
	streq ip, [r0, #4]
	strne ip, [r3, #0x7c]
	b _020C1C34
_020C1C28:
	mov r2, r3
	cmp r3, #0
	bne _020C1BF8
_020C1C34:
	mov r0, r2
	bx lr
	arm_func_end sub_020C1BE8

	arm_func_start sub_020C1C3C
sub_020C1C3C: ; 0x020C1C3C
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _020C1C64
	ldr r1, [r2, #0x10]
	str r1, [r0, #0]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x14]
	moveq r1, #0
	streq r1, [r0, #4]
_020C1C64:
	mov r0, r2
	bx lr
	arm_func_end sub_020C1C3C

	arm_func_start sub_020C1C6C
sub_020C1C6C: ; 0x020C1C6C
	stmfd sp!, {r3, lr}
	ldr r1, _020C1CC8 ; =0x021CCC5C
	mov ip, #0
	ldr lr, [r1, #0x2c]
	mov r3, lr
	b _020C1C8C
_020C1C84:
	mov ip, r3
	ldr r3, [r3, #0x68]
_020C1C8C:
	cmp r3, #0
	beq _020C1CA4
	ldr r2, [r3, #0x70]
	ldr r1, [r0, #0x70]
	cmp r2, r1
	blo _020C1C84
_020C1CA4:
	cmp ip, #0
	ldrne r1, [ip, #0x68]
	strne r1, [r0, #0x68]
	strne r0, [ip, #0x68]
	ldmneia sp!, {r3, pc}
	ldr r1, _020C1CC8 ; =0x021CCC5C
	str lr, [r0, #0x68]
	str r0, [r1, #0x2c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C1CC8: .word 0x021CCC5C
	arm_func_end sub_020C1C6C

	arm_func_start sub_020C1CCC
sub_020C1CCC: ; 0x020C1CCC
	ldr r1, _020C1D10 ; =0x021CCC5C
	mov r2, #0
	ldr r1, [r1, #0x2c]
	b _020C1CE4
_020C1CDC:
	mov r2, r1
	ldr r1, [r1, #0x68]
_020C1CE4:
	cmp r1, #0
	cmpne r1, r0
	bne _020C1CDC
	cmp r2, #0
	ldrne r0, [r0, #0x68]
	strne r0, [r2, #0x68]
	bxne lr
	ldr r1, [r0, #0x68]
	ldr r0, _020C1D10 ; =0x021CCC5C
	str r1, [r0, #0x2c]
	bx lr
	; .align 2, 0
_020C1D10: .word 0x021CCC5C
	arm_func_end sub_020C1CCC

	arm_func_start sub_020C1D14
sub_020C1D14: ; 0x020C1D14
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, _020C1DD4 ; =0x021CCC5C
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldrh r0, [r0, #0x26]
	ldr r4, _020C1DD8 ; =0x021CCC80
	cmp r0, #0
	bne _020C1D44
	bl sub_020C3DFC
	cmp r0, #0x12
	bne _020C1D50
_020C1D44:
	mov r0, #1
	strh r0, [r4]
	ldmia sp!, {r4, r5, r6, pc}
_020C1D50:
	ldr r0, _020C1DD4 ; =0x021CCC5C
	ldr r0, [r0, #8]
	ldr r6, [r0, #0]
	bl sub_020C22F8
	mov r5, r0
	cmp r6, r5
	cmpne r5, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x64]
	cmp r0, #2
	beq _020C1D8C
	mov r0, r6
	bl sub_020C2698
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
_020C1D8C:
	ldr r0, _020C1DD4 ; =0x021CCC5C
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _020C1DA8
	mov r0, r6
	mov r1, r5
	blx r2
_020C1DA8:
	ldr r2, [r4, #0xc]
	cmp r2, #0
	beq _020C1DC0
	mov r0, r6
	mov r1, r5
	blx r2
_020C1DC0:
	ldr r1, _020C1DD4 ; =0x021CCC5C
	mov r0, r5
	str r5, [r1, #0x28]
	bl sub_020C26E4
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C1DD4: .word 0x021CCC5C
_020C1DD8: .word 0x021CCC80
	arm_func_end sub_020C1D14

	arm_func_start sub_020C1DDC
sub_020C1DDC: ; 0x020C1DDC
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, _020C1EEC ; =0x021CCC5C
	ldr r1, [r0, #0xc]
	cmp r1, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, pc}
	mov r2, #1
	ldr r1, _020C1EF0 ; =0x021CCC84
	str r2, [r0, #0xc]
	str r1, [r0, #8]
	mov r1, #0x10
	str r1, [r0, #0x164]
	mov r3, #0
	str r3, [r0, #0x160]
	str r2, [r0, #0x158]
	str r3, [r0, #0x15c]
	ldr r2, _020C1EF4 ; =0x00000000
	ldr r1, _020C1EF8 ; =0x021CCD50
	str r3, [r0, #0x168]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x28]
	cmp r2, #0
	ldrle r0, _020C1EFC ; =0x027E0080
	ble _020C1E50
	ldr r1, _020C1F00 ; =0x027E0000
	ldr r0, _020C1F04 ; =0x00000800
	add r1, r1, #0x3f80
	sub r0, r1, r0
_020C1E50:
	ldr r1, _020C1F00 ; =0x027E0000
	sub ip, r0, r2
	add r2, r1, #0x3f80
	ldr r0, _020C1F04 ; =0x00000800
	ldr r1, _020C1EEC ; =0x021CCC5C
	sub r3, r2, r0
	str r3, [r1, #0x188]
	str ip, [r1, #0x184]
	mov r0, #0
	ldr r2, _020C1F08 ; =0xFDDB597D
	str r0, [r1, #0x18c]
	str r2, [r3, #-4]
	ldr r2, [r1, #0x184]
	ldr ip, _020C1F0C ; =0x7BF9DD5B
	ldr r3, _020C1F10 ; =0x021CCC80
	str ip, [r2]
	str r0, [r1, #0x194]
	str r0, [r1, #0x190]
	strh r0, [r1, #0x24]
	ldr r2, _020C1F14 ; =0x027FFFA0
	strh r0, [r1, #0x26]
	str r3, [r2, #0]
	bl sub_020C256C
	mov r2, #0xc8
	str r2, [sp]
	mov ip, #0x1f
	ldr r0, _020C1F18 ; =0x021CCC90
	ldr r1, _020C1F1C ; =sub_020C2594
	ldr r3, _020C1F20 ; =0x021CCED8
	mov r2, #0
	str ip, [sp, #4]
	bl sub_020C1F34
	ldr r0, _020C1EEC ; =0x021CCC5C
	mov r1, #0x20
	str r1, [r0, #0xa4]
	mov r1, #1
	str r1, [r0, #0x98]
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C1EEC: .word 0x021CCC5C
_020C1EF0: .word 0x021CCC84
_020C1EF4: .word 0x00000000
_020C1EF8: .word 0x021CCD50
_020C1EFC: .word 0x027E0080
_020C1F00: .word 0x027E0000
_020C1F04: .word 0x00000800
_020C1F08: .word 0xFDDB597D
_020C1F0C: .word 0x7BF9DD5B
_020C1F10: .word 0x021CCC80
_020C1F14: .word 0x027FFFA0
_020C1F18: .word 0x021CCC90
_020C1F1C: .word sub_020C2594
_020C1F20: .word 0x021CCED8
	arm_func_end sub_020C1DDC

	arm_func_start sub_020C1F24
sub_020C1F24: ; 0x020C1F24
	ldr r0, _020C1F30 ; =0x021CCC68
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020C1F30: .word 0x021CCC68
	arm_func_end sub_020C1F24

	arm_func_start sub_020C1F34
sub_020C1F34: ; 0x020C1F34
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r5, r1
	mov r7, r2
	mov r6, r3
	bl sub_020C3D98
	mov r4, r0
	bl sub_020C1B24
	ldr r2, [sp, #0x1c]
	mov r1, #0
	str r2, [r8, #0x70]
	str r0, [r8, #0x6c]
	str r1, [r8, #0x64]
	mov r0, r8
	str r1, [r8, #0x74]
	bl sub_020C1C6C
	ldr r0, [sp, #0x18]
	mov r1, r5
	str r6, [r8, #0x94]
	sub r5, r6, r0
	sub r2, r6, #4
	mov ip, #0
	str r5, [r8, #0x90]
	str ip, [r8, #0x98]
	ldr r6, _020C2024 ; =0xFDDB597D
	ldr r0, [r8, #0x94]
	ldr r3, _020C2028 ; =0x7BF9DD5B
	str r6, [r0, #-4]
	ldr r0, [r8, #0x90]
	str r3, [r0, #0]
	str ip, [r8, #0xa0]
	mov r0, r8
	str ip, [r8, #0x9c]
	bl sub_020C2614
	ldr r2, _020C202C ; =sub_020C2030
	str r7, [r8, #4]
	str r2, [r8, #0x3c]
	ldr r2, [sp, #0x18]
	add r1, r5, #4
	mov r0, #0
	sub r2, r2, #8
	bl sub_020C4B4C
	mov r1, #0
	str r1, [r8, #0x84]
	str r1, [r8, #0x88]
	mov r0, r8
	str r1, [r8, #0x8c]
	bl sub_020C260C
	mov r0, #0
	str r0, [r8, #0x78]
	str r0, [r8, #0x80]
	add r1, r8, #0xa4
	mov r2, #0xc
	str r0, [r8, #0x7c]
	bl sub_020C4B4C
	mov r1, #0
	mov r0, r4
	str r1, [r8, #0xb0]
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020C2024: .word 0xFDDB597D
_020C2028: .word 0x7BF9DD5B
_020C202C: .word sub_020C2030
	arm_func_end sub_020C1F34

	arm_func_start sub_020C2030
sub_020C2030: ; 0x020C2030
	stmfd sp!, {r3, lr}
	bl sub_020C3D98
	ldr r0, _020C204C ; =0x021CCC5C
	mov r1, #0
	ldr r0, [r0, #0x28]
	bl sub_020C2050
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C204C: .word 0x021CCC5C
	arm_func_end sub_020C2030

	arm_func_start sub_020C2050
sub_020C2050: ; 0x020C2050
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _020C20A4 ; =0x021CCC5C
	mov r5, r0
	ldr r2, [r2, #0x1c]
	mov r4, r1
	cmp r2, #0
	beq _020C2098
	ldr r1, _020C20A8 ; =sub_020C20AC
	bl sub_020C2614
	str r4, [r5, #4]
	ldr r1, [r5, #0]
	mov r0, r5
	orr r1, r1, #0x80
	str r1, [r5, #0]
	mov r1, #1
	str r1, [r5, #0x64]
	bl sub_020C26E4
	ldmia sp!, {r3, r4, r5, pc}
_020C2098:
	mov r0, r4
	bl sub_020C20AC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C20A4: .word 0x021CCC5C
_020C20A8: .word sub_020C20AC
	arm_func_end sub_020C2050

	arm_func_start sub_020C20AC
sub_020C20AC: ; 0x020C20AC
	stmfd sp!, {r3, lr}
	ldr r1, _020C20E0 ; =0x021CCC5C
	ldr r1, [r1, #8]
	ldr r3, [r1, #0]
	ldr r2, [r3, #0xb4]
	cmp r2, #0
	beq _020C20D8
	mov r1, #0
	str r1, [r3, #0xb4]
	blx r2
	bl sub_020C3D98
_020C20D8:
	bl sub_020C20E4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C20E0: .word 0x021CCC5C
	arm_func_end sub_020C20AC

	arm_func_start sub_020C20E4
sub_020C20E4: ; 0x020C20E4
	stmfd sp!, {r4, lr}
	ldr r0, _020C213C ; =0x021CCC5C
	ldr r0, [r0, #8]
	ldr r4, [r0, #0]
	bl sub_020C25A4
	mov r0, r4
	bl sub_020C2AB8
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _020C2114
	mov r1, r4
	bl sub_020C1BE8
_020C2114:
	mov r0, r4
	bl sub_020C1CCC
	mov r1, #2
	add r0, r4, #0x9c
	str r1, [r4, #0x64]
	bl sub_020C2268
	bl sub_020C25D8
	bl sub_020C2320
	bl sub_020C42A8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C213C: .word 0x021CCC5C
	arm_func_end sub_020C20E4

	arm_func_start sub_020C2140
sub_020C2140: ; 0x020C2140
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020C3D98
	ldr r1, _020C21B8 ; =0x021CCC5C
	mov r4, r0
	ldr r0, [r1, #0x28]
	cmp r0, r5
	bne _020C2164
	bl sub_020C20E4
_020C2164:
	bl sub_020C25A4
	mov r0, r5
	bl sub_020C2AB8
	mov r0, r5
	bl sub_020C21BC
	ldr r0, [r5, #0x78]
	cmp r0, #0
	beq _020C218C
	mov r1, r5
	bl sub_020C1BE8
_020C218C:
	mov r0, r5
	bl sub_020C1CCC
	mov r1, #2
	add r0, r5, #0x9c
	str r1, [r5, #0x64]
	bl sub_020C2268
	bl sub_020C25D8
	mov r0, r4
	bl sub_020C3DAC
	bl sub_020C2320
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C21B8: .word 0x021CCC5C
	arm_func_end sub_020C2140

	arm_func_start sub_020C21BC
sub_020C21BC: ; 0x020C21BC
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0xb0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_020C3BB4
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C21BC

	arm_func_start sub_020C21D4
sub_020C21D4: ; 0x020C21D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020C3D98
	ldr r1, [r5, #0x64]
	mov r4, r0
	cmp r1, #2
	beq _020C21F8
	add r0, r5, #0x9c
	bl sub_020C2218
_020C21F8:
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C21D4

	arm_func_start sub_020C2204
sub_020C2204: ; 0x020C2204
	ldr r0, [r0, #0x64]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_020C2204

	arm_func_start sub_020C2218
sub_020C2218: ; 0x020C2218
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl sub_020C3D98
	ldr r1, _020C2264 ; =0x021CCC5C
	mov r4, r0
	ldr r0, [r1, #8]
	cmp r6, #0
	ldr r5, [r0, #0]
	beq _020C224C
	mov r0, r6
	mov r1, r5
	str r6, [r5, #0x78]
	bl sub_020C1B3C
_020C224C:
	mov r0, #0
	str r0, [r5, #0x64]
	bl sub_020C1D14
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C2264: .word 0x021CCC5C
	arm_func_end sub_020C2218

	arm_func_start sub_020C2268
sub_020C2268: ; 0x020C2268
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl sub_020C3D98
	ldr r1, [r7, #0]
	mov r6, r0
	cmp r1, #0
	beq _020C22C4
	beq _020C22B4
	mov r5, #1
	mov r4, #0
_020C2290:
	mov r0, r7
	bl sub_020C1BB4
	str r5, [r0, #0x64]
	str r4, [r0, #0x78]
	str r4, [r0, #0x80]
	str r4, [r0, #0x7c]
	ldr r0, [r7, #0]
	cmp r0, #0
	bne _020C2290
_020C22B4:
	mov r0, #0
	str r0, [r7, #4]
	str r0, [r7, #0]
	bl sub_020C1D14
_020C22C4:
	mov r0, r6
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C2268

	arm_func_start sub_020C22D0
sub_020C22D0: ; 0x020C22D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020C3D98
	mov r1, #1
	mov r4, r0
	str r1, [r5, #0x64]
	bl sub_020C1D14
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C22D0

	arm_func_start sub_020C22F8
sub_020C22F8: ; 0x020C22F8
	ldr r0, _020C231C ; =0x021CCC5C
	ldr r0, [r0, #0x2c]
	b _020C2308
_020C2304:
	ldr r0, [r0, #0x68]
_020C2308:
	cmp r0, #0
	ldrne r1, [r0, #0x64]
	cmpne r1, #1
	bne _020C2304
	bx lr
	; .align 2, 0
_020C231C: .word 0x021CCC5C
	arm_func_end sub_020C22F8

	arm_func_start sub_020C2320
sub_020C2320: ; 0x020C2320
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	mov r4, r0
	bl sub_020C1D14
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r4, pc}
	arm_func_end sub_020C2320

	arm_func_start sub_020C233C
sub_020C233C: ; 0x020C233C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r0, _020C23F0 ; =0x021CCC5C
	mov r4, #0
	mov r5, r4
	mov r6, r4
	ldr r8, [r0, #0x28]
	bl sub_020C3D98
	ldr r1, _020C23F0 ; =0x021CCC5C
	mov r7, r0
	ldr r1, [r1, #0x2c]
	mov r0, r4
	cmp r1, #0
	beq _020C239C
	ldr r2, [r8, #0x70]
_020C2374:
	cmp r1, r8
	moveq r4, r0
	ldr r0, [r1, #0x70]
	cmp r2, r0
	moveq r5, r1
	mov r0, r1
	ldr r1, [r1, #0x68]
	addeq r6, r6, #1
	cmp r1, #0
	bne _020C2374
_020C239C:
	cmp r6, #1
	ble _020C23AC
	cmp r5, r8
	bne _020C23B8
_020C23AC:
	mov r0, r7
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020C23B8:
	cmp r4, #0
	ldrne r0, [r8, #0x68]
	strne r0, [r4, #0x68]
	bne _020C23D4
	ldr r1, [r8, #0x68]
	ldr r0, _020C23F0 ; =0x021CCC5C
	str r1, [r0, #0x2c]
_020C23D4:
	ldr r0, [r5, #0x68]
	str r0, [r8, #0x68]
	str r8, [r5, #0x68]
	bl sub_020C1D14
	mov r0, r7
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020C23F0: .word 0x021CCC5C
	arm_func_end sub_020C233C

	arm_func_start sub_020C23F4
sub_020C23F4: ; 0x020C23F4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, _020C2494 ; =0x021CCC5C
	mov r7, r0
	mov r6, r1
	ldr r8, [r2, #0x2c]
	mov r4, #0
	bl sub_020C3D98
	mov r5, r0
	b _020C2420
_020C2418:
	mov r4, r8
	ldr r8, [r8, #0x68]
_020C2420:
	cmp r8, #0
	cmpne r8, r7
	bne _020C2418
	cmp r8, #0
	ldrne r0, _020C2498 ; =0x021CCC90
	cmpne r8, r0
	bne _020C244C
	mov r0, r5
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020C244C:
	ldr r0, [r8, #0x70]
	cmp r0, r6
	beq _020C2484
	cmp r4, #0
	ldrne r0, [r7, #0x68]
	strne r0, [r4, #0x68]
	bne _020C2474
	ldr r1, [r7, #0x68]
	ldr r0, _020C2494 ; =0x021CCC5C
	str r1, [r0, #0x2c]
_020C2474:
	mov r0, r7
	str r6, [r7, #0x70]
	bl sub_020C1C6C
	bl sub_020C1D14
_020C2484:
	mov r0, r5
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020C2494: .word 0x021CCC5C
_020C2498: .word 0x021CCC90
	arm_func_end sub_020C23F4

	arm_func_start sub_020C249C
sub_020C249C: ; 0x020C249C
	ldr r0, [r0, #0x70]
	bx lr
	arm_func_end sub_020C249C

	arm_func_start sub_020C24A4
sub_020C24A4: ; 0x020C24A4
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x34
	mov r4, r0
	add r0, sp, #8
	bl sub_020C3A0C
	ldr r0, _020C2540 ; =0x021CCC5C
	ldr r0, [r0, #8]
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	bl sub_020C3D98
	ldr r1, _020C2544 ; =0x000082EA
	mov r2, #0
	umull r5, r3, r4, r1
	mla r3, r4, r2, r3
	mla r3, r2, r1, r3
	mov r1, r5, lsr #6
	mov r4, r0
	ldr r5, [sp, #4]
	add r0, sp, #8
	add r2, sp, #4
	str r0, [r5, #0xb0]
	str r2, [sp]
	mov r2, r3, lsr #6
	orr r1, r1, r3, lsl #26
	ldr r3, _020C2548 ; =sub_020C254C
	bl sub_020C3B48
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020C2530
	mov r5, #0
_020C251C:
	mov r0, r5
	bl sub_020C2218
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020C251C
_020C2530:
	mov r0, r4
	bl sub_020C3DAC
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_020C2540: .word 0x021CCC5C
_020C2544: .word 0x000082EA
_020C2548: .word sub_020C254C
	arm_func_end sub_020C24A4

	arm_func_start sub_020C254C
sub_020C254C: ; 0x020C254C
	ldr r2, [r0, #0]
	mov r1, #0
	str r1, [r0, #0]
	ldr ip, _020C2568 ; =sub_020C22D0
	mov r0, r2
	str r1, [r2, #0xb0]
	bx ip
	; .align 2, 0
_020C2568: .word sub_020C22D0
	arm_func_end sub_020C254C

	arm_func_start sub_020C256C
sub_020C256C: ; 0x020C256C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020C3D98
	ldr r1, _020C2590 ; =0x021CCC5C
	ldr r4, [r1, #0x30]
	str r5, [r1, #0x30]
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C2590: .word 0x021CCC5C
	arm_func_end sub_020C256C

	arm_func_start sub_020C2594
sub_020C2594: ; 0x020C2594
	stmfd sp!, {r3, lr}
	bl sub_020C3D84
_020C259C:
	bl sub_020C42B8
	b _020C259C
	arm_func_end sub_020C2594

	arm_func_start sub_020C25A4
sub_020C25A4: ; 0x020C25A4
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	ldr r2, _020C25D4 ; =0x021CCC5C
	mvn r1, #0
	ldr r3, [r2, #4]
	cmp r3, r1
	addlo r1, r3, #1
	movlo r4, r3
	strlo r1, [r2, #4]
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C25D4: .word 0x021CCC5C
	arm_func_end sub_020C25A4

	arm_func_start sub_020C25D8
sub_020C25D8: ; 0x020C25D8
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	ldr r1, _020C2608 ; =0x021CCC5C
	mov r4, #0
	ldr r3, [r1, #4]
	cmp r3, #0
	subne r2, r3, #1
	movne r4, r3
	strne r2, [r1, #4]
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C2608: .word 0x021CCC5C
	arm_func_end sub_020C25D8

	arm_func_start sub_020C260C
sub_020C260C: ; 0x020C260C
	str r1, [r0, #0xb4]
	bx lr
	arm_func_end sub_020C260C

	.bss


	.global Unk_021CCC5C
Unk_021CCC5C: ; 0x021CCC5C
	.space 0x4

	.global Unk_021CCC60
Unk_021CCC60: ; 0x021CCC60
	.space 0x4

	.global Unk_021CCC64
Unk_021CCC64: ; 0x021CCC64
	.space 0x4

	.global Unk_021CCC68
Unk_021CCC68: ; 0x021CCC68
	.space 0x4

	.global Unk_021CCC6C
Unk_021CCC6C: ; 0x021CCC6C
	.space 0x4

	.global Unk_021CCC70
Unk_021CCC70: ; 0x021CCC70
	.space 0x4

	.global Unk_021CCC74
Unk_021CCC74: ; 0x021CCC74
	.space 0x4

	.global Unk_021CCC78
Unk_021CCC78: ; 0x021CCC78
	.space 0x4

	.global Unk_021CCC7C
Unk_021CCC7C: ; 0x021CCC7C
	.space 0x4

	.global Unk_021CCC80
Unk_021CCC80: ; 0x021CCC80
	.space 0x10

	.global Unk_021CCC90
Unk_021CCC90: ; 0x021CCC90
	.space 0xC0

	.global Unk_021CCD50
Unk_021CCD50: ; 0x021CCD50
	.space 0xC0

	.global Unk_021CCE10
Unk_021CCE10: ; 0x021CCE10
	.space 0xC8

