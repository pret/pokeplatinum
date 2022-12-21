	.include "macros/function.inc"
	.include "include/unk_0202F180.inc"

	

	.text


	thumb_func_start sub_0202F180
sub_0202F180: ; 0x0202F180
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0202F1D0
	add r0, r5, #0
	bl sub_02027560
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0202CD88
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	lsl r2, r2, #0x10
	add r0, r7, #0
	add r1, r6, #0
	lsr r2, r2, #0x10
	bl sub_0202D040
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202736C
	add r0, r5, #0
	bl sub_02056B24
	add r1, r4, #0
	bl sub_02056A48
_0202F1D0:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202F180