	.include "macros/function.inc"
	.include "include/unk_020A5948.inc"

	

	.text


	arm_func_start sub_020A5948
sub_020A5948: ; 0x020A5948
	ldr ip, _020A5958 ; =sub_020A5448
	mov r2, r0
	ldmib r2, {r0, r2}
	bx ip
	; .align 2, 0
_020A5958: .word sub_020A5448
	arm_func_end sub_020A5948

	arm_func_start sub_020A595C
sub_020A595C: ; 0x020A595C
	ldr ip, _020A5968 ; =sub_020A55D8
	ldr r0, [r0, #4]
	bx ip
	; .align 2, 0
_020A5968: .word sub_020A55D8
	arm_func_end sub_020A595C

	arm_func_start sub_020A596C
sub_020A596C: ; 0x020A596C
	ldr ip, _020A597C ; =sub_020A57E0
	mov r2, r0
	ldmib r2, {r0, r2}
	bx ip
	; .align 2, 0
_020A597C: .word sub_020A57E0
	arm_func_end sub_020A596C

	arm_func_start sub_020A5980
sub_020A5980: ; 0x020A5980
	bx lr
	arm_func_end sub_020A5980

	arm_func_start sub_020A5984
sub_020A5984: ; 0x020A5984
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #4]
	ldr r2, [r0, #0x28]
	cmp r1, r2
	movhi r0, #0
	ldmhiia sp!, {r3, pc}
	bl sub_020A58F8
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A5984

	arm_func_start sub_020A59A4
sub_020A59A4: ; 0x020A59A4
	ldr ip, _020A59B0 ; =sub_020A5938
	ldr r0, [r0, #4]
	bx ip
	; .align 2, 0
_020A59B0: .word sub_020A5938
	arm_func_end sub_020A59A4

	arm_func_start sub_020A59B4
sub_020A59B4: ; 0x020A59B4
	ldr ip, _020A59CC ; =sub_020C3214
	mov r3, r0
	mov r2, r1
	ldr r0, [r3, #8]
	ldr r1, [r3, #4]
	bx ip
	; .align 2, 0
_020A59CC: .word sub_020C3214
	arm_func_end sub_020A59B4

	arm_func_start sub_020A59D0
sub_020A59D0: ; 0x020A59D0
	ldr ip, _020A59E8 ; =sub_020C331C
	mov r3, r0
	mov r2, r1
	ldr r0, [r3, #8]
	ldr r1, [r3, #4]
	bx ip
	; .align 2, 0
_020A59E8: .word sub_020C331C
	arm_func_end sub_020A59D0

	arm_func_start sub_020A59EC
sub_020A59EC: ; 0x020A59EC
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0]
	ldr r2, [r2, #0]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A59EC

	arm_func_start sub_020A5A00
sub_020A5A00: ; 0x020A5A00
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0]
	ldr r2, [r2, #4]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A5A00

	arm_func_start sub_020A5A14
sub_020A5A14: ; 0x020A5A14
	ldr ip, _020A5A28 ; =0x020F9560
	mov r3, #0
	str ip, [r0]
	stmib r0, {r1, r2, r3}
	bx lr
	; .align 2, 0
_020A5A28: .word 0x020F9560
	arm_func_end sub_020A5A14

	.rodata


	.global Unk_020F9550
Unk_020F9550: ; 0x020F9550
	.incbin "incbin/arm9_rodata.bin", 0x14910, 0x14918 - 0x14910

	.global Unk_020F9558
Unk_020F9558: ; 0x020F9558
	.incbin "incbin/arm9_rodata.bin", 0x14918, 0x14920 - 0x14918

	.global Unk_020F9560
Unk_020F9560: ; 0x020F9560
	.incbin "incbin/arm9_rodata.bin", 0x14920, 0x14928 - 0x14920

	.global Unk_020F9568
Unk_020F9568: ; 0x020F9568
	.incbin "incbin/arm9_rodata.bin", 0x14928, 0x8

