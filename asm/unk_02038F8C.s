	.include "macros/function.inc"
	.include "include/unk_02038F8C.inc"

	

	.text


	thumb_func_start sub_02038F8C
sub_02038F8C: ; 0x02038F8C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_02035E18
	add r7, r0, #0
	mov r0, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _02038FDA
	mov r5, #0
	cmp r7, #0
	ble _02038FDA
_02038FA6:
	bl sub_0203608C
	cmp r5, r0
	beq _02038FD4
	add r0, r5, #0
	bl sub_02032F78
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02032F9C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02032EE8
	bl sub_02025FD8
	add r3, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02038FDC
_02038FD4:
	add r5, r5, #1
	cmp r5, r7
	blt _02038FA6
_02038FDA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02038F8C

	thumb_func_start sub_02038FDC
sub_02038FDC: ; 0x02038FDC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0202C8C8
	cmp r0, #0
	bne _02038FF8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #1
	bl sub_0202C918
_02038FF8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02038FDC