	.include "macros/function.inc"
	.include "overlay107/ov107_02249C98.inc"

	

	.text


	thumb_func_start ov107_02249C98
ov107_02249C98: ; 0x02249C98
	add r0, r1, #0
	bx lr
	thumb_func_end ov107_02249C98

	thumb_func_start ov107_02249C9C
ov107_02249C9C: ; 0x02249C9C
	cmp r1, r0
	blo _02249CA6
	sub r0, r1, r0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_02249CA6:
	add r0, r1, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov107_02249C9C

	thumb_func_start ov107_02249CAC
ov107_02249CAC: ; 0x02249CAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0203068C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205E5B4
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205E5B4
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02030698
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov107_02249CAC

	thumb_func_start ov107_02249CE0
ov107_02249CE0: ; 0x02249CE0
	push {r3, lr}
	mov r2, #0
	mvn r2, r2
	cmp r0, r2
	beq _02249CF0
	add r0, r1, #0
	bl sub_02005748
_02249CF0:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov107_02249CE0

	thumb_func_start ov107_02249CF4
ov107_02249CF4: ; 0x02249CF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200B498
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02249CF4