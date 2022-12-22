	.include "macros/function.inc"
	.include "include/unk_0200679C.inc"

	

	.text


	thumb_func_start sub_0200679C
sub_0200679C: ; 0x0200679C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r7, r2, #0
	cmp r5, #0
	beq _020067C0
	add r0, r3, #0
	bl sub_02018144
	add r4, r0, #0
	bne _020067B6
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020067B6:
	mov r1, #0
	add r2, r5, #0
	bl memset
	b _020067C2
_020067C0:
	mov r4, #0
_020067C2:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200679C

	thumb_func_start sub_020067D0
sub_020067D0: ; 0x020067D0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201CED0
	cmp r0, #0
	beq _020067E0
	bl sub_020181C4
_020067E0:
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end sub_020067D0