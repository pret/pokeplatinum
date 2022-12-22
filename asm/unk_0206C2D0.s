	.include "macros/function.inc"
	.include "include/unk_0206C2D0.inc"

	

	.text


	thumb_func_start sub_0206C2D0
sub_0206C2D0: ; 0x0206C2D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	cmp r1, #0
	ble _0206C33A
	bl sub_0202C834
	bl sub_0202C844
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02025E38
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #0xa
	add r6, r0, #0
	mov r5, #0
	mul r6, r1
_0206C2F6:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02025F34
	cmp r0, #0
	beq _0206C330
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C848
	add r1, r0, #0
	cmp r1, #0
	ble _0206C318
	cmp r1, #0xc8
	bge _0206C318
	sub r1, r1, r6
	b _0206C322
_0206C318:
	cmp r1, #0xc8
	blt _0206C320
	bl GF_AssertFail
_0206C320:
	mov r1, #0
_0206C322:
	cmp r1, #0
	bge _0206C328
	mov r1, #0
_0206C328:
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0202C850
_0206C330:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _0206C2F6
_0206C33A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206C2D0