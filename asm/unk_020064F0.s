	.include "macros/function.inc"
	.include "include/unk_020064F0.inc"

	

	.text


	thumb_func_start sub_020064F0
sub_020064F0: ; 0x020064F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _020064FE
	bl sub_02022974
_020064FE:
	ldr r1, [r4, #0]
	mov r0, #0
	bl sub_020C8BBC
	cmp r0, #1
	beq _0200650E
	bl sub_02022974
_0200650E:
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end sub_020064F0

	thumb_func_start sub_02006514
sub_02006514: ; 0x02006514
	push {r4, lr}
	add r4, r0, #0
	bl sub_02006544
	bl sub_020066C0
	mov r2, #0
	add r3, r0, #0
_02006524:
	ldr r1, [r3, #4]
	cmp r1, #1
	bne _0200653A
	ldr r1, [r3, #0]
	cmp r4, r1
	bne _0200653A
	lsl r1, r2, #3
	add r0, r0, r1
	bl sub_020064F0
	pop {r4, pc}
_0200653A:
	add r2, r2, #1
	add r3, #8
	cmp r2, #8
	blt _02006524
	pop {r4, pc}
	thumb_func_end sub_02006514

	thumb_func_start sub_02006544
sub_02006544: ; 0x02006544
	push {lr}
	sub sp, #0x2c
	add r2, r0, #0
	add r0, sp, #0
	mov r1, #0
	bl sub_020C86C8
	cmp r0, #1
	beq _0200655A
	bl sub_02022974
_0200655A:
	mov r0, #2
	ldr r2, [sp, #4]
	lsl r0, r0, #0x18
	cmp r2, r0
	bhi _02006570
	lsr r0, r0, #1
	cmp r2, r0
	blo _02006570
	add sp, #0x2c
	mov r0, #1
	pop {pc}
_02006570:
	mov r0, #1
	ldr r1, _0200658C ; =0x027E0000
	lsl r0, r0, #0xe
	add r0, r1, r0
	cmp r2, r0
	bhi _02006586
	cmp r2, r1
	blo _02006586
	add sp, #0x2c
	mov r0, #2
	pop {pc}
_02006586:
	mov r0, #0
	add sp, #0x2c
	pop {pc}
	; .align 2, 0
_0200658C: .word 0x027E0000
	thumb_func_end sub_02006544

	thumb_func_start sub_02006590
sub_02006590: ; 0x02006590
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0
	mvn r1, r1
	add r5, r0, #0
	str r1, [sp]
	bl sub_02006644
	cmp r0, #0
	bne _020065A8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020065A8:
	add r0, r5, #0
	bl sub_02006544
	add r7, r0, #0
	bl sub_020066C0
	add r3, r0, #0
	mov r6, #0
	add r1, r3, #0
_020065BA:
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _020065CC
	lsl r1, r6, #3
	add r2, r3, r1
	mov r0, #1
	str r0, [r2, #4]
	str r5, [r3, r1]
	b _020065D4
_020065CC:
	add r6, r6, #1
	add r1, #8
	cmp r6, #8
	blt _020065BA
_020065D4:
	cmp r6, #8
	blt _020065E0
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020065E0:
	sub r6, r7, #1
	cmp r6, #1
	bhi _020065F0
	mov r0, #0
	mvn r0, r0
	bl sub_020C84E0
	str r0, [sp]
_020065F0:
	cmp r4, #0
	beq _020065FE
	cmp r4, #1
	beq _0200660A
	cmp r4, #2
	beq _02006616
	b _02006622
_020065FE:
	mov r0, #0
	add r1, r5, #0
	bl sub_0200671C
	add r4, r0, #0
	b _0200662A
_0200660A:
	mov r0, #0
	add r1, r5, #0
	bl sub_02006724
	add r4, r0, #0
	b _0200662A
_02006616:
	mov r0, #0
	add r1, r5, #0
	bl sub_0200675C
	add r4, r0, #0
	b _0200662A
_02006622:
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200662A:
	cmp r6, #1
	bhi _02006634
	ldr r0, [sp]
	bl sub_020C84E0
_02006634:
	cmp r4, #0
	bne _02006640
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02006640:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02006590

	thumb_func_start sub_02006644
sub_02006644: ; 0x02006644
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r1, sp, #0xc
	add r2, sp, #8
	add r4, r0, #0
	bl sub_020066E4
	cmp r0, #0
	bne _0200665C
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200665C:
	add r0, r4, #0
	bl sub_02006544
	bl sub_020066C0
	add r5, r0, #0
	mov r4, #0
	add r6, sp, #4
	add r7, sp, #0
_0200666E:
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _020066B0
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020066E4
	cmp r0, #1
	bne _020066B0
	ldr r1, [sp, #4]
	ldr r2, [sp, #0xc]
	cmp r2, r1
	blo _02006690
	ldr r0, [sp]
	cmp r2, r0
	blo _020066A6
_02006690:
	ldr r3, [sp, #8]
	cmp r3, r1
	bls _0200669C
	ldr r0, [sp]
	cmp r3, r0
	bls _020066A6
_0200669C:
	cmp r2, r1
	bhi _020066B0
	ldr r0, [sp]
	cmp r3, r0
	blo _020066B0
_020066A6:
	bl sub_02022974
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020066B0:
	add r4, r4, #1
	add r5, #8
	cmp r4, #8
	blt _0200666E
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02006644

	thumb_func_start sub_020066C0
sub_020066C0: ; 0x020066C0
	cmp r0, #0
	beq _020066CC
	cmp r0, #1
	beq _020066D0
	cmp r0, #2
	beq _020066D4
_020066CC:
	ldr r0, _020066D8 ; =0x021BF370
	bx lr
_020066D0:
	ldr r0, _020066DC ; =0x021BF3B0
	bx lr
_020066D4:
	ldr r0, _020066E0 ; =0x021BF3F0
	bx lr
	; .align 2, 0
_020066D8: .word 0x021BF370
_020066DC: .word 0x021BF3B0
_020066E0: .word 0x021BF3F0
	thumb_func_end sub_020066C0

	thumb_func_start sub_020066E4
sub_020066E4: ; 0x020066E4
	push {r4, r5, lr}
	sub sp, #0x2c
	add r3, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, sp, #0
	mov r1, #0
	add r2, r3, #0
	bl sub_020C86C8
	cmp r0, #0
	bne _02006706
	bl sub_02022974
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, pc}
_02006706:
	ldr r2, [sp, #4]
	str r2, [r5, #0]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0]
	mov r0, #1
	add sp, #0x2c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020066E4

	thumb_func_start sub_0200671C
sub_0200671C: ; 0x0200671C
	ldr r3, _02006720 ; =sub_020C8B68
	bx r3
	; .align 2, 0
_02006720: .word sub_020C8B68
	thumb_func_end sub_0200671C

	thumb_func_start sub_02006724
sub_02006724: ; 0x02006724
	push {lr}
	sub sp, #0x2c
	add r3, r0, #0
	add r2, r1, #0
	add r0, sp, #0
	add r1, r3, #0
	bl sub_020C86C8
	cmp r0, #0
	bne _0200673E
	add sp, #0x2c
	mov r0, #0
	pop {pc}
_0200673E:
	add r0, sp, #0
	bl sub_020C8850
	cmp r0, #0
	bne _0200674E
	add sp, #0x2c
	mov r0, #0
	pop {pc}
_0200674E:
	add r0, sp, #0
	bl sub_020C8974
	mov r0, #1
	add sp, #0x2c
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_02006724

	thumb_func_start sub_0200675C
sub_0200675C: ; 0x0200675C
	push {lr}
	sub sp, #0x74
	add r3, r0, #0
	add r2, r1, #0
	add r0, sp, #0
	add r1, r3, #0
	bl sub_020C86C8
	cmp r0, #0
	bne _02006776
	add sp, #0x74
	mov r0, #0
	pop {pc}
_02006776:
	add r0, sp, #0x2c
	bl sub_020C7DA0
	add r0, sp, #0
	add r1, sp, #0x2c
	bl sub_020C87C4
	add r0, sp, #0x2c
	bl sub_020C8104
	add r0, sp, #0x2c
	bl sub_020C80C8
	add r0, sp, #0
	bl sub_020C8974
	mov r0, #1
	add sp, #0x74
	pop {pc}
	thumb_func_end sub_0200675C

	.bss


	.global Unk_021BF370
Unk_021BF370: ; 0x021BF370
	.space 0xC0

