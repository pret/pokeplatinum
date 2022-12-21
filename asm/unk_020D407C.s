	.include "macros/function.inc"
	.include "include/unk_020D407C.inc"

	

	.text


	arm_func_start sub_020D407C
sub_020D407C: ; 0x020D407C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov lr, r1
	mov ip, r2
	str r3, [sp]
	ldr r0, _020D40B4 ; =0x02101574
	mov r1, r4
	mov r2, lr
	mov r3, ip
	bl sub_020D7350
	bl sub_020D3DA0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_020D40B4: .word 0x02101574
	arm_func_end sub_020D407C

	.data


	.global Unk_02101574
Unk_02101574: ; 0x02101574
	.incbin "incbin/arm9_data.bin", 0x2894, 0x37

