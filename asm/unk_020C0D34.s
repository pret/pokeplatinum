	.include "macros/function.inc"
	.include "include/unk_020C0D34.inc"

	

	.text


	arm_func_start sub_020C0D34
sub_020C0D34: ; 0x020C0D34
	stmfd sp!, {r3, lr}
	bl sub_020BED0C
	mov r1, #6
	mul lr, r0, r1
	ldr r2, _020C0D80 ; =0x020FD950
	ldr r1, _020C0D84 ; =0x020FD952
	ldrh ip, [r2, lr]
	ldr r2, _020C0D88 ; =0x020FD954
	ldrh r3, [r1, lr]
	ldr r1, _020C0D8C ; =0x021CCBD8
	ldrh r2, [r2, lr]
	str r0, [r1, #0x14]
	mov r0, ip, lsl #0xc
	str r0, [r1, #4]
	mov r0, r3, lsl #0xc
	str r0, [r1, #0x18]
	mov r0, r2, lsl #0xc
	str r0, [r1, #0x1c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0D80: .word 0x020FD950
_020C0D84: .word 0x020FD952
_020C0D88: .word 0x020FD954
_020C0D8C: .word 0x021CCBD8
	arm_func_end sub_020C0D34

	arm_func_start sub_020C0D90
sub_020C0D90: ; 0x020C0D90
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r3, _020C0EC8 ; =0x021CCBD8
	mov r7, r0
	ldr r4, [r3, #0x18]
	mov ip, r1
	cmp r4, #0
	ldreq r0, [r3, #4]
	mov r6, r2
	addeq r2, r0, ip
	beq _020C0E7C
	ldr r2, [r3, #0x1c]
	add r0, ip, r6
	cmp r0, r2
	ldrlo r0, [r3, #4]
	addlo r2, r0, ip
	blo _020C0E7C
	cmp ip, r2
	addhs r0, r4, ip
	subhs r2, r0, r2
	bhs _020C0E7C
	ldr r0, _020C0ECC ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	sub r5, r2, ip
	cmp r0, r1
	ldr lr, [r3, #4]
	beq _020C0E1C
	cmp r5, #0x30
	bls _020C0E1C
	mov r1, r7
	mov r3, r5
	add r2, lr, ip
	bl sub_020C4354
	b _020C0E2C
_020C0E1C:
	mov r0, r7
	mov r2, r5
	add r1, lr, ip
	bl sub_020C4B68
_020C0E2C:
	ldr r0, _020C0ECC ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0E64
	mov ip, #0
	str ip, [sp]
	mov r2, r4
	add r1, r7, r5
	sub r3, r6, r5
	str ip, [sp, #4]
	bl sub_020C44F4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C0E64:
	mov r1, r4
	add r0, r7, r5
	sub r2, r6, r5
	bl sub_020C4B68
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C0E7C:
	ldr r0, _020C0ECC ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0EB0
	mov r4, #0
	str r4, [sp]
	mov r1, r7
	mov r3, r6
	str r4, [sp, #4]
	bl sub_020C44F4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C0EB0:
	mov r1, r2
	mov r0, r7
	mov r2, r6
	bl sub_020C4B68
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C0EC8: .word 0x021CCBD8
_020C0ECC: .word 0x02101148
	arm_func_end sub_020C0D90

	arm_func_start sub_020C0ED0
sub_020C0ED0: ; 0x020C0ED0
	stmfd sp!, {r3, lr}
	ldr r0, _020C0F14 ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0EEC
	bl sub_020C458C
_020C0EEC:
	ldr r0, _020C0F18 ; =0x021CCBD8
	ldr r0, [r0, #0x14]
	bl sub_020BE590
	ldr r0, _020C0F18 ; =0x021CCBD8
	mov r1, #0
	str r1, [r0, #0x1c]
	str r1, [r0, #0x18]
	str r1, [r0, #4]
	str r1, [r0, #0x14]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0F14: .word 0x02101148
_020C0F18: .word 0x021CCBD8
	arm_func_end sub_020C0ED0

	arm_func_start sub_020C0F1C
sub_020C0F1C: ; 0x020C0F1C
	stmfd sp!, {r3, lr}
	bl sub_020BED20
	mov r3, r0, asr #4
	ldr r1, _020C0F48 ; =0x021CCBD8
	ldr r2, _020C0F4C ; =0x020FD940
	mov r3, r3, lsl #1
	ldrh r2, [r2, r3]
	str r0, [r1, #0xc]
	mov r0, r2, lsl #0xc
	str r0, [r1, #8]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0F48: .word 0x021CCBD8
_020C0F4C: .word 0x020FD940
	arm_func_end sub_020C0F1C

	arm_func_start sub_020C0F50
sub_020C0F50: ; 0x020C0F50
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r3, _020C0FB4 ; =0x02101148
	ldr lr, _020C0FB8 ; =0x021CCBD8
	ldr r4, [r3, #0]
	mvn ip, #0
	mov r6, r0
	mov r5, r1
	mov r3, r2
	cmp r4, ip
	ldr lr, [lr, #8]
	beq _020C0FA4
	mov ip, #0
	str ip, [sp]
	mov r0, r4
	mov r1, r6
	add r2, lr, r5
	str ip, [sp, #4]
	bl sub_020C44F4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_020C0FA4:
	add r1, lr, r5
	bl sub_020C4B68
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0FB4: .word 0x02101148
_020C0FB8: .word 0x021CCBD8
	arm_func_end sub_020C0F50

	arm_func_start sub_020C0FBC
sub_020C0FBC: ; 0x020C0FBC
	stmfd sp!, {r3, lr}
	ldr r0, _020C0FF8 ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0FD8
	bl sub_020C458C
_020C0FD8:
	ldr r0, _020C0FFC ; =0x021CCBD8
	ldr r0, [r0, #0xc]
	bl sub_020BE768
	ldr r0, _020C0FFC ; =0x021CCBD8
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #8]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0FF8: .word 0x02101148
_020C0FFC: .word 0x021CCBD8
	arm_func_end sub_020C0FBC

	arm_func_start sub_020C1000
sub_020C1000: ; 0x020C1000
	stmfd sp!, {r3, lr}
	bl sub_020BED34
	ldr r1, _020C1080 ; =0x021CCBD8
	cmp r0, #0xc
	str r0, [r1, #0]
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, pc}
_020C101C: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _020C1068 ; case 1
	b _020C1050 ; case 2
	b _020C1050 ; case 3
	b _020C1074 ; case 4
	ldmia sp!, {r3, pc} ; case 5
	ldmia sp!, {r3, pc} ; case 6
	ldmia sp!, {r3, pc} ; case 7
	b _020C105C ; case 8
	ldmia sp!, {r3, pc} ; case 9
	ldmia sp!, {r3, pc} ; case 10
	ldmia sp!, {r3, pc} ; case 11
	b _020C105C ; case 12
_020C1050:
	mov r0, #0x6800000
	str r0, [r1, #0x10]
	ldmia sp!, {r3, pc}
_020C105C:
	ldr r0, _020C1084 ; =0x06840000
	str r0, [r1, #0x10]
	ldmia sp!, {r3, pc}
_020C1068:
	ldr r0, _020C1088 ; =0x067E0000
	str r0, [r1, #0x10]
	ldmia sp!, {r3, pc}
_020C1074:
	ldr r0, _020C108C ; =0x06820000
	str r0, [r1, #0x10]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C1080: .word 0x021CCBD8
_020C1084: .word 0x06840000
_020C1088: .word 0x067E0000
_020C108C: .word 0x06820000
	arm_func_end sub_020C1000

	arm_func_start sub_020C1090
sub_020C1090: ; 0x020C1090
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r2, _020C10F0 ; =0x02101148
	ldr ip, _020C10F4 ; =0x021CCBD8
	ldr lr, [r2]
	mvn r2, #0
	mov r4, r0
	mov r3, r1
	cmp lr, r2
	ldr r2, [ip, #0x10]
	beq _020C10DC
	mov ip, #0
	str ip, [sp]
	mov r0, lr
	mov r1, r4
	str ip, [sp, #4]
	bl sub_020C44F4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_020C10DC:
	mov r1, r2
	mov r2, r3
	bl sub_020C4B68
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C10F0: .word 0x02101148
_020C10F4: .word 0x021CCBD8
	arm_func_end sub_020C1090

	arm_func_start sub_020C10F8
sub_020C10F8: ; 0x020C10F8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r2, _020C115C ; =0x02101148
	ldr ip, _020C1160 ; =0x021CCBD8
	ldr lr, [r2]
	mvn r2, #0
	mov r5, r0
	mov r3, r1
	cmp lr, r2
	ldr r4, [ip, #0x10]
	beq _020C1148
	mov ip, #0
	str ip, [sp]
	mov r0, lr
	mov r1, r5
	add r2, r4, #0x20000
	str ip, [sp, #4]
	bl sub_020C44F4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
_020C1148:
	mov r2, r3
	add r1, r4, #0x20000
	bl sub_020C4B68
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C115C: .word 0x02101148
_020C1160: .word 0x021CCBD8
	arm_func_end sub_020C10F8

	arm_func_start sub_020C1164
sub_020C1164: ; 0x020C1164
	stmfd sp!, {r3, lr}
	ldr r0, _020C11A0 ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C1180
	bl sub_020C458C
_020C1180:
	ldr r0, _020C11A4 ; =0x021CCBD8
	ldr r0, [r0, #0]
	bl sub_020BE850
	ldr r0, _020C11A4 ; =0x021CCBD8
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #0x10]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C11A0: .word 0x02101148
_020C11A4: .word 0x021CCBD8
	arm_func_end sub_020C1164

	.rodata


	.global Unk_020FD940
Unk_020FD940: ; 0x020FD940
	.incbin "incbin/arm9_rodata.bin", 0x18D00, 0x18D10 - 0x18D00

	.global Unk_020FD950
Unk_020FD950: ; 0x020FD950
	.incbin "incbin/arm9_rodata.bin", 0x18D10, 0x60



	.bss


	.global Unk_021CCBD8
Unk_021CCBD8: ; 0x021CCBD8
	.space 0x4

	.global Unk_021CCBDC
Unk_021CCBDC: ; 0x021CCBDC
	.space 0x4

	.global Unk_021CCBE0
Unk_021CCBE0: ; 0x021CCBE0
	.space 0x4

	.global Unk_021CCBE4
Unk_021CCBE4: ; 0x021CCBE4
	.space 0x4

	.global Unk_021CCBE8
Unk_021CCBE8: ; 0x021CCBE8
	.space 0x4

	.global Unk_021CCBEC
Unk_021CCBEC: ; 0x021CCBEC
	.space 0x4

	.global Unk_021CCBF0
Unk_021CCBF0: ; 0x021CCBF0
	.space 0x4

	.global Unk_021CCBF4
Unk_021CCBF4: ; 0x021CCBF4
	.space 0x4

