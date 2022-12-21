	.include "macros/function.inc"
	.include "include/unk_0209C390.inc"

	

	.text


	thumb_func_start sub_0209C390
sub_0209C390: ; 0x0209C390
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02039A58
	add r4, r0, #0
	bl sub_02039A60
	add r1, r0, #0
	add r0, r4, #0
	add r2, r5, #0
	bl sub_02032798
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0209C390

	thumb_func_start sub_0209C3AC
sub_0209C3AC: ; 0x0209C3AC
	push {r4, lr}
	bl sub_02039A58
	add r4, r0, #0
	bl sub_02039A60
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	bl sub_02032798
	pop {r4, pc}
	thumb_func_end sub_0209C3AC

	thumb_func_start sub_0209C3C4
sub_0209C3C4: ; 0x0209C3C4
	mov r0, #0
	bx lr
	thumb_func_end sub_0209C3C4

	thumb_func_start sub_0209C3C8
sub_0209C3C8: ; 0x0209C3C8
	mov r0, #8
	bx lr
	thumb_func_end sub_0209C3C8

	thumb_func_start sub_0209C3CC
sub_0209C3CC: ; 0x0209C3CC
	mov r0, #4
	bx lr
	thumb_func_end sub_0209C3CC

	thumb_func_start sub_0209C3D0
sub_0209C3D0: ; 0x0209C3D0
	push {r3, lr}
	cmp r3, #0
	beq _0209C3DE
	add r0, r3, #0
	add r1, r2, #0
	bl ov65_022366E4
_0209C3DE:
	pop {r3, pc}
	thumb_func_end sub_0209C3D0

	thumb_func_start sub_0209C3E0
sub_0209C3E0: ; 0x0209C3E0
	push {r3, lr}
	cmp r3, #0
	beq _0209C3EC
	add r0, r3, #0
	bl ov65_02236744
_0209C3EC:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0209C3E0

	thumb_func_start sub_0209C3F0
sub_0209C3F0: ; 0x0209C3F0
	push {r3, lr}
	cmp r3, #0
	beq _0209C3FE
	add r0, r3, #0
	add r1, r2, #0
	bl ov65_02236760
_0209C3FE:
	pop {r3, pc}
	thumb_func_end sub_0209C3F0