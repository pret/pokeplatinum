	.include "macros/function.inc"
	.include "include/unk_0200B29C.inc"

	

	.text


	thumb_func_start sub_0200B29C
sub_0200B29C: ; 0x0200B29C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r5, r1, #0
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0xa
	add r6, r2, #0
	str r3, [sp]
	bl sub_02023790
	add r4, r0, #0
	beq _0200B2E6
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200B1EC
	add r5, r0, #0
	beq _0200B2E0
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0200C388
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_02023868
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020237BC
_0200B2E0:
	add r0, r4, #0
	bl sub_020237BC
_0200B2E6:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200B29C

	thumb_func_start sub_0200B2EC
sub_0200B2EC: ; 0x0200B2EC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r2, _0200B328 ; =0x00000287
	mov r0, #1
	mov r1, #0x1a
	add r3, r5, #0
	bl sub_0200B144
	add r4, r0, #0
	beq _0200B322
	mov r0, #0x10
	add r1, r5, #0
	bl sub_02023790
	add r5, r0, #0
	beq _0200B318
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0200B1B8
_0200B318:
	add r0, r4, #0
	bl sub_0200B190
	add r0, r5, #0
	pop {r4, r5, r6, pc}
_0200B322:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0200B328: .word 0x00000287
	thumb_func_end sub_0200B2EC

	thumb_func_start sub_0200B32C
sub_0200B32C: ; 0x0200B32C
	push {r3, r4, r5, lr}
	mov r2, #0x67
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r5, r0, #0
	beq _0200B354
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0200B354:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200B32C