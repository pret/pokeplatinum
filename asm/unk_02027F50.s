	.include "macros/function.inc"
	.include "include/unk_02027F50.inc"

	

	.text


	thumb_func_start sub_02027F50
sub_02027F50: ; 0x02027F50
	ldr r3, _02027F58 ; =sub_020C4CF4
	mov r1, #0
	mov r2, #0x24
	bx r3
	; .align 2, 0
_02027F58: .word sub_020C4CF4
	thumb_func_end sub_02027F50

	thumb_func_start sub_02027F5C
sub_02027F5C: ; 0x02027F5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02027F50
	str r4, [r5, #0]
	add r0, r5, #4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02027F5C

	thumb_func_start sub_02027F6C
sub_02027F6C: ; 0x02027F6C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, r1
	beq _02027F7A
	bl sub_02022974
_02027F7A:
	add r0, r4, #4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02027F6C

	thumb_func_start sub_02027F80
sub_02027F80: ; 0x02027F80
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_02027F80