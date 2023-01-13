	.include "macros/function.inc"
	.include "include/msl_thread.inc"

	

	.text


	arm_func_start sub_020DFB80
sub_020DFB80: ; 0x020DFB80
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	subs r1, r1, #1
	str r1, [r4, #4]
	ldmneia sp!, {r4, pc}
	ldr r1, [r0, #0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	bl sub_020DFBB0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DFB80

	arm_func_start sub_020DFBB0
sub_020DFBB0: ; 0x020DFBB0
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #8]
	subs r1, r1, #1
	str r1, [r0, #8]
	ldmneia sp!, {r3, pc}
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #0]
	ldr r1, [r1, #4]
	blx r1
	ldmia sp!, {r3, pc}
	arm_func_end sub_020DFBB0

	arm_func_start sub_020DFBDC
sub_020DFBDC: ; 0x020DFBDC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr r4, _020DFC58 ; =0x02101B28
	ldr r1, _020DFC5C ; =0x02101B1C
	add r6, sp, #4
	mov r0, r4
	str r1, [sp, #4]
	add r5, sp, #8
	bl strlen
	add r0, r0, #1
	rsb r0, r0, r0, lsl #1
	bl sub_020E3FA8
	mov r1, #0
	strb r1, [sp]
	sub r2, sp, #4
	strb r1, [r2]
	mov r1, r0
	ldr r2, [r2, #0]
	mov r0, r5
	bl sub_020DF9C0
	ldr r0, [r5, #0]
	mov r1, r4
	bl strcpy
	ldr r3, _020DFC60 ; =0x02101B08
	ldr r0, _020DFC64 ; =0x02101B3C
	ldr r2, _020DFC68 ; =sub_020DFB48
	mov r1, r6
	str r3, [sp, #4]
	bl __throw
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020DFC58: .word Unk_02101B28
_020DFC5C: .word 0x02101B1C
_020DFC60: .word 0x02101B08
_020DFC64: .word Unk_02101B3C
_020DFC68: .word sub_020DFB48
	arm_func_end sub_020DFBDC


	.section .exception, 4


	.global Unk_020E45B4
Unk_020E45B4: ; 0x020E45B4
	.incbin "incbin/arm9_exception.bin", 0x5C, 0x18


	.data


	.global Unk_02101B28
Unk_02101B28: ; 0x02101B28
	.incbin "incbin/arm9_data.bin", 0x2E48, 0x2E5C - 0x2E48

	.global Unk_02101B3C
Unk_02101B3C: ; 0x02101B3C
	.incbin "incbin/arm9_data.bin", 0x2E5C, 0x37

