	.include "macros/function.inc"
	.include "include/unk_02023FCC.inc"

	

	.text


	thumb_func_start sub_02023FCC
sub_02023FCC: ; 0x02023FCC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	str r3, [sp]
	cmp r7, #0
	bne _02023FDE
	bl GF_AssertFail
_02023FDE:
	ldr r0, [sp, #0x18]
	mov r1, #0x14
	bl sub_02018144
	add r4, r0, #0
	beq _02024024
	str r5, [r4, #0]
	str r7, [r4, #4]
	ldr r0, [sp]
	str r6, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x18]
	lsl r1, r7, #2
	bl sub_02018144
	str r0, [r4, #0x10]
	cmp r0, #0
	beq _0202401C
	mov r6, #0
	cmp r7, #0
	bls _02024024
	add r5, r6, #0
_0202400A:
	ldr r0, [r4, #0x10]
	add r0, r0, r5
	bl sub_02024028
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r7
	blo _0202400A
	b _02024024
_0202401C:
	add r0, r4, #0
	bl sub_020181C4
	mov r4, #0
_02024024:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02023FCC

	thumb_func_start sub_02024028
sub_02024028: ; 0x02024028
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strh r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02024028

	thumb_func_start sub_02024034
sub_02024034: ; 0x02024034
	push {r4, lr}
	add r4, r0, #0
	bne _0202403E
	bl GF_AssertFail
_0202403E:
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_02024034

	thumb_func_start sub_0202404C
sub_0202404C: ; 0x0202404C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0202278C
	str r0, [sp]
	cmp r0, #0
	beq _02024098
	bl sub_02022798
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	bls _020240B6
	add r4, r6, #0
_0202406C:
	ldr r0, [r5, #0x10]
	add r0, r0, r4
	ldrb r0, [r0, #1]
	cmp r0, #0
	ldr r0, [r5, #0]
	beq _02024080
	add r0, r0, r4
	bl sub_02022734
	b _02024086
_02024080:
	add r0, r0, r4
	bl sub_02022760
_02024086:
	ldr r1, [r5, #0x10]
	add r6, r6, #1
	add r1, r1, r4
	strb r0, [r1, #1]
	ldr r0, [r5, #4]
	add r4, r4, #4
	cmp r6, r0
	blo _0202406C
	b _020240B6
_02024098:
	ldr r0, [r5, #4]
	mov r3, #0
	str r3, [sp, #4]
	cmp r0, #0
	bls _020240B6
	add r2, r3, #0
	add r1, r3, #0
_020240A6:
	ldr r0, [r5, #0x10]
	add r3, r3, #1
	add r0, r0, r2
	strb r1, [r0, #1]
	ldr r0, [r5, #4]
	add r2, r2, #4
	cmp r3, r0
	blo _020240A6
_020240B6:
	mov r4, #0
	cmp r0, #0
	bls _020240EC
	add r7, r4, #0
_020240BE:
	ldr r3, [r5, #0x10]
	ldr r1, [sp]
	add r0, r3, r7
	ldrb r3, [r3, r7]
	ldr r2, [sp, #4]
	lsl r6, r3, #2
	ldr r3, _020240F0 ; =0x020E5820
	ldr r3, [r3, r6]
	blx r3
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _020240E2
	ldr r2, [r5, #0xc]
	ldr r3, [r5, #8]
	add r0, r4, #0
	blx r3
_020240E2:
	ldr r0, [r5, #4]
	add r4, r4, #1
	add r7, r7, #4
	cmp r4, r0
	blo _020240BE
_020240EC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020240F0: .word 0x020E5820
	thumb_func_end sub_0202404C

	thumb_func_start sub_020240F4
sub_020240F4: ; 0x020240F4
	push {r3, lr}
	ldrb r1, [r0, #1]
	cmp r1, #0
	beq _0202410A
	cmp r2, #0
	beq _0202410A
	mov r1, #1
	bl sub_02024144
	mov r0, #0
	pop {r3, pc}
_0202410A:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	thumb_func_end sub_020240F4

	thumb_func_start sub_02024110
sub_02024110: ; 0x02024110
	push {r3, lr}
	ldrb r2, [r0, #1]
	cmp r2, #0
	beq _02024128
	ldrh r2, [r0, #2]
	ldr r1, _02024140 ; =0x0000FFFF
	cmp r2, r1
	bhs _02024124
	add r1, r2, #1
	strh r1, [r0, #2]
_02024124:
	mov r0, #2
	pop {r3, pc}
_02024128:
	cmp r1, #0
	beq _02024136
	mov r1, #0
	bl sub_02024144
	mov r0, #3
	pop {r3, pc}
_02024136:
	mov r1, #0
	bl sub_02024144
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02024140: .word 0x0000FFFF
	thumb_func_end sub_02024110

	thumb_func_start sub_02024144
sub_02024144: ; 0x02024144
	strb r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bx lr
	thumb_func_end sub_02024144

	.rodata


	.global Unk_020E5820
Unk_020E5820: ; 0x020E5820
	.incbin "incbin/arm9_rodata.bin", 0xBE0, 0x8

