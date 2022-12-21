	.include "macros/function.inc"
	.include "include/unk_02013A04.inc"

	

	.text


	thumb_func_start sub_02013A04
sub_02013A04: ; 0x02013A04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #1
	add r0, r4, #0
	lsl r1, r1, #3
	bl sub_02018144
	cmp r0, #0
	beq _02013A3A
	mov r2, #0
	cmp r5, #0
	bls _02013A2E
	add r3, r0, #0
	add r1, r2, #0
_02013A22:
	str r1, [r3, #0]
	str r1, [r3, #4]
	add r2, r2, #1
	add r3, #8
	cmp r2, r5
	blo _02013A22
_02013A2E:
	mov r1, #0
	lsl r2, r2, #3
	mvn r1, r1
	str r1, [r0, r2]
	add r1, r0, r2
	str r4, [r1, #4]
_02013A3A:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02013A04

	thumb_func_start sub_02013A3C
sub_02013A3C: ; 0x02013A3C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02013AE8
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_02013A3C

	thumb_func_start sub_02013A4C
sub_02013A4C: ; 0x02013A4C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r1, sp, #0
	add r7, r2, #0
	add r5, r3, #0
	bl sub_02013AAC
	add r4, r0, #0
	beq _02013A6A
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200B1EC
	str r0, [r4, #0]
	str r5, [r4, #4]
_02013A6A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02013A4C

	thumb_func_start sub_02013A6C
sub_02013A6C: ; 0x02013A6C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	add r1, sp, #0
	add r5, r2, #0
	bl sub_02013AAC
	add r4, r0, #0
	beq _02013A8A
	ldr r1, [sp]
	add r0, r6, #0
	bl sub_02023868
	str r0, [r4, #0]
	str r5, [r4, #4]
_02013A8A:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02013A6C

	thumb_func_start sub_02013A90
sub_02013A90: ; 0x02013A90
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02013AAC
	cmp r0, #0
	beq _02013AA8
	ldr r1, [r4, #0]
	str r1, [r0, #0]
	ldr r1, [r4, #4]
	str r1, [r0, #4]
_02013AA8:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02013A90

	thumb_func_start sub_02013AAC
sub_02013AAC: ; 0x02013AAC
	push {r4, lr}
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _02013ACC
	mov r2, #0
	mvn r2, r2
_02013AB8:
	cmp r3, r2
	bne _02013AC4
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
_02013AC4:
	add r0, #8
	ldr r3, [r0, #0]
	cmp r3, #0
	bne _02013AB8
_02013ACC:
	mov r2, #0
	mvn r2, r2
	add r4, r0, #0
	cmp r3, r2
	beq _02013ADE
_02013AD6:
	add r0, #8
	ldr r3, [r0, #0]
	cmp r3, r2
	bne _02013AD6
_02013ADE:
	ldr r0, [r0, #4]
	str r0, [r1, #0]
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02013AAC

	thumb_func_start sub_02013AE8
sub_02013AE8: ; 0x02013AE8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	ldr r1, [r5, #0]
	mvn r0, r0
	cmp r1, r0
	beq _02013B0E
	mov r4, #0
	add r6, r0, #0
_02013AFA:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _02013B0E
	bl sub_020237BC
	str r4, [r5, #0]
	add r5, #8
	ldr r0, [r5, #0]
	cmp r0, r6
	bne _02013AFA
_02013B0E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02013AE8