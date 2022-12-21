	.include "macros/function.inc"
	.include "include/unk_020C1328.inc"

	

	.text


	arm_func_start sub_020C1328
sub_020C1328: ; 0x020C1328
	bx lr
	arm_func_end sub_020C1328

	arm_func_start sub_020C132C
sub_020C132C: ; 0x020C132C
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0xc
	mul r5, r0, r1
	ldr r2, _020C13A0 ; =0x021CCBF8
	ldr r3, _020C13A4 ; =0x0210114C
	mov r4, r0, lsl #1
	ldr r1, [r2, r5]
	mov r0, #0
	ldrh r3, [r3, r4]
	mov r4, #1
	str r0, [r2, r5]
	cmp r1, #0
	mov r4, r4, lsl r3
	beq _020C1370
	ldr r0, _020C13A8 ; =0x021CCC00
	ldr r0, [r0, r5]
	blx r1
_020C1370:
	ldr r0, _020C13AC ; =0x027E0000
	ldr r1, _020C13B0 ; =0x021CCBFC
	add r0, r0, #0x3000
	ldr r2, [r0, #0xff8]
	ldr r1, [r1, r5]
	orr r2, r2, r4
	str r2, [r0, #0xff8]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl sub_020C164C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C13A0: .word 0x021CCBF8
_020C13A4: .word 0x0210114C
_020C13A8: .word 0x021CCC00
_020C13AC: .word 0x027E0000
_020C13B0: .word 0x021CCBFC
	arm_func_end sub_020C132C

	arm_func_start sub_020C13B4
sub_020C13B4: ; 0x020C13B4
	ldr ip, _020C13C0 ; =sub_020C132C
	mov r0, #0
	bx ip
	; .align 2, 0
_020C13C0: .word sub_020C132C
	arm_func_end sub_020C13B4

	arm_func_start sub_020C13C4
sub_020C13C4: ; 0x020C13C4
	ldr ip, _020C13D0 ; =sub_020C132C
	mov r0, #1
	bx ip
	; .align 2, 0
_020C13D0: .word sub_020C132C
	arm_func_end sub_020C13C4

	arm_func_start sub_020C13D4
sub_020C13D4: ; 0x020C13D4
	ldr ip, _020C13E0 ; =sub_020C132C
	mov r0, #2
	bx ip
	; .align 2, 0
_020C13E0: .word sub_020C132C
	arm_func_end sub_020C13D4

	arm_func_start sub_020C13E4
sub_020C13E4: ; 0x020C13E4
	ldr ip, _020C13F0 ; =sub_020C132C
	mov r0, #3
	bx ip
	; .align 2, 0
_020C13F0: .word sub_020C132C
	arm_func_end sub_020C13E4

	arm_func_start sub_020C13F4
sub_020C13F4: ; 0x020C13F4
	ldr ip, _020C1400 ; =sub_020C132C
	mov r0, #4
	bx ip
	; .align 2, 0
_020C1400: .word sub_020C132C
	arm_func_end sub_020C13F4

	arm_func_start sub_020C1404
sub_020C1404: ; 0x020C1404
	ldr ip, _020C1410 ; =sub_020C132C
	mov r0, #5
	bx ip
	; .align 2, 0
_020C1410: .word sub_020C132C
	arm_func_end sub_020C1404

	arm_func_start sub_020C1414
sub_020C1414: ; 0x020C1414
	ldr ip, _020C1420 ; =sub_020C132C
	mov r0, #6
	bx ip
	; .align 2, 0
_020C1420: .word sub_020C132C
	arm_func_end sub_020C1414

	arm_func_start sub_020C1424
sub_020C1424: ; 0x020C1424
	ldr ip, _020C1430 ; =sub_020C132C
	mov r0, #7
	bx ip
	; .align 2, 0
_020C1430: .word sub_020C132C
	arm_func_end sub_020C1424

	.data


	.global Unk_0210114C
Unk_0210114C: ; 0x0210114C
	.incbin "incbin/arm9_data.bin", 0x246C, 0x10



	.bss


	.global Unk_021CCBF8
Unk_021CCBF8: ; 0x021CCBF8
	.space 0x60

