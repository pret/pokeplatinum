	.include "macros/function.inc"
	.include "include/unk_020158A8.inc"

	

	.text


	thumb_func_start sub_020158A8
sub_020158A8: ; 0x020158A8
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x78
	add r7, r0, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x78
	add r6, r0, #0
	bl sub_020C4CF4
	ldr r2, _020158F0 ; =0x000001D1
	mov r0, #0
	mov r1, #0x1a
	add r3, r7, #0
	bl sub_0200B144
	str r0, [r6, #0]
	mov r4, #0
	add r5, r6, #0
_020158CE:
	mov r0, #0x16
	add r1, r7, #0
	bl sub_02023790
	str r0, [r5, #4]
	ldr r0, [r6, #0]
	ldr r2, [r5, #4]
	add r1, r4, #0
	bl sub_0200B1B8
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x1d
	blt _020158CE
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020158F0: .word 0x000001D1
	thumb_func_end sub_020158A8

	thumb_func_start sub_020158F4
sub_020158F4: ; 0x020158F4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r4, #0x1c
	add r5, #0x70
_020158FE:
	ldr r0, [r5, #4]
	bl sub_020237BC
	sub r5, r5, #4
	sub r4, r4, #1
	bpl _020158FE
	ldr r0, [r6, #0]
	bl sub_0200B190
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020158F4

	thumb_func_start sub_02015918
sub_02015918: ; 0x02015918
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_02015918