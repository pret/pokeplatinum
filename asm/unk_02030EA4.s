	.include "macros/function.inc"
	.include "include/unk_02030EA4.inc"

	

	.text


	thumb_func_start sub_02030EA4
sub_02030EA4: ; 0x02030EA4
	mov r0, #8
	bx lr
	thumb_func_end sub_02030EA4

	thumb_func_start sub_02030EA8
sub_02030EA8: ; 0x02030EA8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02030EA4
	add r2, r0, #0
	mov r0, #0
	add r1, r4, #0
	bl sub_020C4B4C
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02030EA8

	thumb_func_start sub_02030EC4
sub_02030EC4: ; 0x02030EC4
	ldr r3, _02030ECC ; =sub_020245BC
	mov r1, #0x24
	bx r3
	nop
_02030ECC: .word sub_020245BC
	thumb_func_end sub_02030EC4

	thumb_func_start sub_02030ED0
sub_02030ED0: ; 0x02030ED0
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_02030ED0

	thumb_func_start sub_02030ED4
sub_02030ED4: ; 0x02030ED4
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_02030ED4

	thumb_func_start sub_02030ED8
sub_02030ED8: ; 0x02030ED8
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_02030ED8

	thumb_func_start sub_02030EDC
sub_02030EDC: ; 0x02030EDC
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_02030EDC