	.include "macros/function.inc"
	.include "include/unk_020D3DA0.inc"

	.extern Unk_021D0810
	.extern Unk_021D0820
	.extern Unk_021CCC80
	

	.text


	arm_func_start abort
abort: ; 0x020D3DA0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl raise
	ldr r1, _020D3DC0 ; =0x021D0810
	mov r0, #1
	str r0, [r1, #0xc]
	bl exit
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D3DC0: .word Unk_021D0810
	arm_func_end abort

	arm_func_start exit
exit: ; 0x020D3DC4
	stmfd sp!, {r4, lr}
	ldr r1, _020D3E0C ; =0x021D0810
	mov r4, r0
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _020D3E00
	bl __destroy_global_chain
	ldr r0, _020D3E0C ; =0x021D0810
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020D3E00
	blx r0
	ldr r0, _020D3E0C ; =0x021D0810
	mov r1, #0
	str r1, [r0, #4]
_020D3E00:
	mov r0, r4
	bl __exit
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020D3E0C: .word Unk_021D0810
	arm_func_end exit

	arm_func_start __exit
__exit: ; 0x020D3E10
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020D3F20 ; =0x021D0968
	bl OS_TryLockMutex
	cmp r0, #0
	bne _020D3E48
	ldr r0, _020D3F24 ; =0x021CCC80
	ldr r1, _020D3F28 ; =0x021D0920
	ldr r2, [r0, #4]
	ldr r0, _020D3F2C ; =0x021D0944
	ldr r3, [r2, #0x6c]
	mov r2, #1
	str r3, [r1, #0]
	str r2, [r0, #0]
	b _020D3EA0
_020D3E48:
	ldr r0, _020D3F24 ; =0x021CCC80
	ldr r1, _020D3F28 ; =0x021D0920
	ldr r0, [r0, #4]
	ldr r1, [r1, #0]
	ldr r0, [r0, #0x6c]
	cmp r1, r0
	bne _020D3E78
	ldr r0, _020D3F2C ; =0x021D0944
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	b _020D3EA0
_020D3E78:
	ldr r0, _020D3F20 ; =0x021D0968
	bl OS_LockMutex
	ldr r0, _020D3F24 ; =0x021CCC80
	ldr r1, _020D3F28 ; =0x021D0920
	ldr r2, [r0, #4]
	ldr r0, _020D3F2C ; =0x021D0944
	ldr r3, [r2, #0x6c]
	mov r2, #1
	str r3, [r1, #0]
	str r2, [r0, #0]
_020D3EA0:
	ldr r4, _020D3F30 ; =0x021D0810
	ldr r0, [r4, #8]
	cmp r0, #0
	ble _020D3ED4
	ldr r5, _020D3F34 ; =0x021D0820
_020D3EB4:
	ldr r0, [r4, #8]
	sub r1, r0, #1
	ldr r0, [r5, r1, lsl #2]
	str r1, [r4, #8]
	blx r0
	ldr r0, [r4, #8]
	cmp r0, #0
	bgt _020D3EB4
_020D3ED4:
	ldr r0, _020D3F2C ; =0x021D0944
	ldr r1, [r0, #0]
	subs r1, r1, #1
	str r1, [r0, #0]
	bne _020D3EF0
	ldr r0, _020D3F20 ; =0x021D0968
	bl OS_UnlockMutex
_020D3EF0:
	ldr r0, _020D3F30 ; =0x021D0810
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020D3F10
	blx r0
	ldr r0, _020D3F30 ; =0x021D0810
	mov r1, #0
	str r1, [r0, #0]
_020D3F10:
	mov r0, #0
	bl fflush
	bl _ExitProcess
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D3F20: .word 0x021D0968
_020D3F24: .word Unk_021CCC80
_020D3F28: .word 0x021D0920
_020D3F2C: .word 0x021D0944
_020D3F30: .word Unk_021D0810
_020D3F34: .word Unk_021D0820
	arm_func_end __exit

	.bss


	.global Unk_021D0810
Unk_021D0810: ; 0x021D0810
	.space 0x4

	.global Unk_021D0814
Unk_021D0814: ; 0x021D0814
	.space 0x4

	.global Unk_021D0818
Unk_021D0818: ; 0x021D0818
	.space 0x4

	.global Unk_021D081C
Unk_021D081C: ; 0x021D081C
	.space 0x4

	.global Unk_021D0820
Unk_021D0820: ; 0x021D0820
	.space 0x100

