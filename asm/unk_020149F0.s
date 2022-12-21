	.include "macros/function.inc"
	.include "include/unk_020149F0.inc"

	

	.text


	thumb_func_start sub_020149F0
sub_020149F0: ; 0x020149F0
	push {r3, r4, r5, lr}
	mov r1, #8
	add r5, r0, #0
	bl sub_02018144
	add r4, r0, #0
	beq _02014A12
	ldr r0, _02014A18 ; =0x0001020F
	add r1, r5, #0
	str r0, [r4, #0]
	mov r0, #4
	bl sub_02023790
	ldr r1, _02014A1C ; =0x020E5494
	str r0, [r4, #4]
	bl sub_02023D28
_02014A12:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02014A18: .word 0x0001020F
_02014A1C: .word 0x020E5494
	thumb_func_end sub_020149F0

	thumb_func_start sub_02014A20
sub_02014A20: ; 0x02014A20
	push {r4, lr}
	add r4, r0, #0
	bne _02014A2A
	bl sub_02022974
_02014A2A:
	cmp r4, #0
	beq _02014A3E
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02014A38
	bl sub_020237BC
_02014A38:
	add r0, r4, #0
	bl sub_020181C4
_02014A3E:
	pop {r4, pc}
	thumb_func_end sub_02014A20

	thumb_func_start sub_02014A40
sub_02014A40: ; 0x02014A40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02014A4E
	bl sub_02022974
_02014A4E:
	cmp r5, #0
	beq _02014A54
	str r4, [r5, #0]
_02014A54:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02014A40

	thumb_func_start sub_02014A58
sub_02014A58: ; 0x02014A58
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [r6, #0]
	add r5, r1, #0
	str r0, [sp, #8]
	mov r1, #0
	add r4, r2, #0
	str r1, [sp, #0xc]
	ldr r2, [r6, #4]
	add r0, r5, #0
	add r3, r4, #0
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201ACCC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02014A58

	.rodata


	.global Unk_020E5494
Unk_020E5494: ; 0x020E5494
	.incbin "incbin/arm9_rodata.bin", 0x854, 0x4

