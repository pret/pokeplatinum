	.include "macros/function.inc"
	.include "include/unk_020C2D14.inc"

	.extern Unk_021CCED8
	

	.text


	arm_func_start OS_InitArena
OS_InitArena: ; 0x020C2D14
	stmfd sp!, {r3, lr}
	ldr r1, _020C2E14 ; =0x021CCED8
	ldr r0, [r1, #0]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r2, #1
	mov r0, #0
	str r2, [r1, #0]
	bl OS_GetInitArenaHi
	mov r1, r0
	mov r0, #0
	bl OS_SetArenaHi
	mov r0, #0
	bl OS_GetInitArenaLo
	mov r1, r0
	mov r0, #0
	bl OS_SetArenaLo
	mov r0, #2
	mov r1, #0
	bl OS_SetArenaLo
	mov r0, #2
	mov r1, #0
	bl OS_SetArenaHi
	mov r0, #3
	bl OS_GetInitArenaHi
	mov r1, r0
	mov r0, #3
	bl OS_SetArenaHi
	mov r0, #3
	bl OS_GetInitArenaLo
	mov r1, r0
	mov r0, #3
	bl OS_SetArenaLo
	mov r0, #4
	bl OS_GetInitArenaHi
	mov r1, r0
	mov r0, #4
	bl OS_SetArenaHi
	mov r0, #4
	bl OS_GetInitArenaLo
	mov r1, r0
	mov r0, #4
	bl OS_SetArenaLo
	mov r0, #5
	bl OS_GetInitArenaHi
	mov r1, r0
	mov r0, #5
	bl OS_SetArenaHi
	mov r0, #5
	bl OS_GetInitArenaLo
	mov r1, r0
	mov r0, #5
	bl OS_SetArenaLo
	mov r0, #6
	bl OS_GetInitArenaHi
	mov r1, r0
	mov r0, #6
	bl OS_SetArenaHi
	mov r0, #6
	bl OS_GetInitArenaLo
	mov r1, r0
	mov r0, #6
	bl OS_SetArenaLo
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C2E14: .word Unk_021CCED8
	arm_func_end OS_InitArena

	arm_func_start OS_InitArenaEx
OS_InitArenaEx: ; 0x020C2E18
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl OS_GetInitArenaHi
	mov r1, r0
	mov r0, #2
	bl OS_SetArenaHi
	mov r0, #2
	bl OS_GetInitArenaLo
	mov r1, r0
	mov r0, #2
	bl OS_SetArenaLo
	ldr r0, _020C2E78 ; =0x021CCED8
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020C2E64
	bl OS_GetConsoleType
	and r0, r0, #3
	cmp r0, #1
	ldmneia sp!, {r3, pc}
_020C2E64:
	ldr r0, _020C2E7C ; =0x0200002B
	bl OS_SetProtectionRegion1
	ldr r0, _020C2E80 ; =0x023E0021
	bl OS_SetProtectionRegion2
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C2E78: .word Unk_021CCED8
_020C2E7C: .word 0x0200002B
_020C2E80: .word 0x023E0021
	arm_func_end OS_InitArenaEx

	arm_func_start OS_GetArenaHi
OS_GetArenaHi: ; 0x020C2E84
	mov r0, r0, lsl #2
	add r0, r0, #0x2700000
	add r0, r0, #0xff000
	ldr r0, [r0, #0xdc4]
	bx lr
	arm_func_end OS_GetArenaHi

	arm_func_start OS_GetArenaLo
OS_GetArenaLo: ; 0x020C2E98
	mov r0, r0, lsl #2
	add r0, r0, #0x2700000
	add r0, r0, #0xff000
	ldr r0, [r0, #0xda0]
	bx lr
	arm_func_end OS_GetArenaLo

	arm_func_start OS_GetInitArenaHi
OS_GetInitArenaHi: ; 0x020C2EAC
	stmfd sp!, {r3, lr}
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020C2F68
_020C2EBC: ; jump table
	b _020C2ED8 ; case 0
	b _020C2F68 ; case 1
	b _020C2EE0 ; case 2
	b _020C2F10 ; case 3
	b _020C2F18 ; case 4
	b _020C2F58 ; case 5
	b _020C2F60 ; case 6
_020C2ED8:
	ldr r0, _020C2F70 ; =0x023E0000
	ldmia sp!, {r3, pc}
_020C2EE0:
	ldr r0, _020C2F74 ; =0x021CCED8
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020C2F00
	bl OS_GetConsoleType
	and r0, r0, #3
	cmp r0, #1
	bne _020C2F08
_020C2F00:
	mov r0, #0
	ldmia sp!, {r3, pc}
_020C2F08:
	mov r0, #0x2700000
	ldmia sp!, {r3, pc}
_020C2F10:
	mov r0, #0x2000000
	ldmia sp!, {r3, pc}
_020C2F18:
	ldr r0, _020C2F78 ; =0x027E0000
	ldr r1, _020C2F7C ; =0x00000000
	ldr r2, _020C2F80 ; =0x00000800
	add r3, r0, #0x3f80
	cmp r1, #0
	sub r2, r3, r2
	bne _020C2F44
	ldr r1, _020C2F84 ; =0x027E0080
	cmp r0, r1
	movlo r0, r1
	ldmia sp!, {r3, pc}
_020C2F44:
	cmp r1, #0
	ldrlt r0, _020C2F84 ; =0x027E0080
	sublt r0, r0, r1
	subge r0, r2, r1
	ldmia sp!, {r3, pc}
_020C2F58:
	ldr r0, _020C2F88 ; =0x027FF680
	ldmia sp!, {r3, pc}
_020C2F60:
	ldr r0, _020C2F8C ; =0x037F8000
	ldmia sp!, {r3, pc}
_020C2F68:
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C2F70: .word 0x023E0000
_020C2F74: .word Unk_021CCED8
_020C2F78: .word 0x027E0000
_020C2F7C: .word 0x00000000
_020C2F80: .word 0x00000800
_020C2F84: .word 0x027E0080
_020C2F88: .word 0x027FF680
_020C2F8C: .word 0x037F8000
	arm_func_end OS_GetInitArenaHi

	arm_func_start OS_GetInitArenaLo
OS_GetInitArenaLo: ; 0x020C2F90
	stmfd sp!, {r3, lr}
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020C3014
_020C2FA0: ; jump table
	b _020C2FBC ; case 0
	b _020C3014 ; case 1
	b _020C2FC4 ; case 2
	b _020C2FF4 ; case 3
	b _020C2FFC ; case 4
	b _020C3004 ; case 5
	b _020C300C ; case 6
_020C2FBC:
	ldr r0, _020C301C ; =0x02270BC0
	ldmia sp!, {r3, pc}
_020C2FC4:
	ldr r0, _020C3020 ; =0x021CCED8
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020C2FE4
	bl OS_GetConsoleType
	and r0, r0, #3
	cmp r0, #1
	bne _020C2FEC
_020C2FE4:
	mov r0, #0
	ldmia sp!, {r3, pc}
_020C2FEC:
	ldr r0, _020C3024 ; =0x023E0000
	ldmia sp!, {r3, pc}
_020C2FF4:
	ldr r0, _020C3028 ; =0x01FF8680
	ldmia sp!, {r3, pc}
_020C2FFC:
	ldr r0, _020C302C ; =0x027E0080
	ldmia sp!, {r3, pc}
_020C3004:
	ldr r0, _020C3030 ; =0x027FF000
	ldmia sp!, {r3, pc}
_020C300C:
	ldr r0, _020C3034 ; =0x037F8000
	ldmia sp!, {r3, pc}
_020C3014:
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C301C: .word 0x02270BC0
_020C3020: .word Unk_021CCED8
_020C3024: .word 0x023E0000
_020C3028: .word 0x01FF8680
_020C302C: .word 0x027E0080
_020C3030: .word 0x027FF000
_020C3034: .word 0x037F8000
	arm_func_end OS_GetInitArenaLo

	arm_func_start OS_SetArenaHi
OS_SetArenaHi: ; 0x020C3038
	mov r0, r0, lsl #2
	add r0, r0, #0x2700000
	add r0, r0, #0xff000
	str r1, [r0, #0xdc4]
	bx lr
	arm_func_end OS_SetArenaHi

	arm_func_start OS_SetArenaLo
OS_SetArenaLo: ; 0x020C304C
	mov r0, r0, lsl #2
	add r0, r0, #0x2700000
	add r0, r0, #0xff000
	str r1, [r0, #0xda0]
	bx lr
	arm_func_end OS_SetArenaLo

	arm_func_start OS_AllocFromArenaLo
OS_AllocFromArenaLo: ; 0x020C3060
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl OS_GetArenaLo
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r0, r5
	sub r1, r5, #1
	mvn r2, r1
	sub r0, r0, #1
	and r4, r2, r0
	add r0, r4, r6
	add r0, r0, r5
	sub r1, r0, #1
	mov r0, r7
	and r5, r2, r1
	bl OS_GetArenaHi
	cmp r5, r0
	movhi r0, #0
	ldmhiia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r5
	bl OS_SetArenaLo
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end OS_AllocFromArenaLo

	arm_func_start OS_AllocFromArenaHi
OS_AllocFromArenaHi: ; 0x020C30CC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl OS_GetArenaHi
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	sub r1, r5, #1
	mvn r2, r1
	and r0, r0, r2
	sub r1, r0, r6
	mov r0, r4
	and r5, r1, r2
	bl OS_GetArenaLo
	cmp r5, r0
	movlo r0, #0
	ldmloia sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r5
	bl OS_SetArenaHi
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end OS_AllocFromArenaHi

	.bss


	.global Unk_021CCED8
Unk_021CCED8: ; 0x021CCED8
	.space 0x4

	.global Unk_021CCEDC
Unk_021CCEDC: ; 0x021CCEDC
	.space 0x4

