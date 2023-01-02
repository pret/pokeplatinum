	.include "macros/function.inc"
	.include "include/unk_020C5580.inc"

	.extern Unk_021CD020
	.extern Unk_021CD024
	

	.text


	arm_func_start SND_Init
SND_Init: ; 0x020C5580
	stmfd sp!, {r3, lr}
	ldr r1, _020C55B0 ; =0x021CD020
	ldr r0, [r1, #0]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _020C55B4 ; =0x021CD024
	mov r2, #1
	str r2, [r1, #0]
	bl OS_InitMutex
	bl SND_CommandInit
	bl SND_AlarmInit
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C55B0: .word Unk_021CD020
_020C55B4: .word Unk_021CD024
	arm_func_end SND_Init

	arm_func_start SNDi_LockMutex
SNDi_LockMutex: ; 0x020C55B8
	ldr ip, _020C55C4 ; =OS_LockMutex
	ldr r0, _020C55C8 ; =0x021CD024
	bx ip
	; .align 2, 0
_020C55C4: .word OS_LockMutex
_020C55C8: .word Unk_021CD024
	arm_func_end SNDi_LockMutex

	arm_func_start SNDi_UnlockMutex
SNDi_UnlockMutex: ; 0x020C55CC
	ldr ip, _020C55D8 ; =OS_UnlockMutex
	ldr r0, _020C55DC ; =0x021CD024
	bx ip
	; .align 2, 0
_020C55D8: .word OS_UnlockMutex
_020C55DC: .word Unk_021CD024
	arm_func_end SNDi_UnlockMutex

	.bss


	.global Unk_021CD020
Unk_021CD020: ; 0x021CD020
	.space 0x4

	.global Unk_021CD024
Unk_021CD024: ; 0x021CD024
	.space 0x1C

