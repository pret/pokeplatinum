	.include "macros/function.inc"
	.include "include/unk_02022594.inc"

	

	.text


	thumb_func_start sub_02022594
sub_02022594: ; 0x02022594
	push {r4, r5, r6, r7}
	ldrb r3, [r0]
	mov r4, #0
	cmp r3, #0xff
	beq _020225D6
_0202259E:
	ldrb r7, [r0, #2]
	ldrb r3, [r0, #3]
	ldrb r5, [r0]
	sub r6, r1, r7
	sub r3, r3, r7
	cmp r6, r3
	bhs _020225B0
	mov r6, #1
	b _020225B2
_020225B0:
	mov r6, #0
_020225B2:
	ldrb r7, [r0, #1]
	sub r3, r2, r5
	sub r5, r7, r5
	cmp r3, r5
	bhs _020225C0
	mov r3, #1
	b _020225C2
_020225C0:
	mov r3, #0
_020225C2:
	tst r3, r6
	beq _020225CC
	add r0, r4, #0
	pop {r4, r5, r6, r7}
	bx lr
_020225CC:
	add r0, r0, #4
	ldrb r3, [r0]
	add r4, r4, #1
	cmp r3, #0xff
	bne _0202259E
_020225D6:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02022594

	thumb_func_start sub_020225E0
sub_020225E0: ; 0x020225E0
	push {r3, r4}
	ldrb r3, [r0, #1]
	sub r4, r3, r1
	ldrb r1, [r0, #2]
	sub r3, r1, r2
	ldrb r2, [r0, #3]
	add r1, r4, #0
	add r0, r3, #0
	mul r1, r4
	mul r0, r3
	add r1, r1, r0
	add r0, r2, #0
	mul r0, r2
	cmp r1, r0
	bhs _02022604
	mov r0, #1
	pop {r3, r4}
	bx lr
_02022604:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020225E0

	thumb_func_start sub_0202260C
sub_0202260C: ; 0x0202260C
	push {r4, r5}
	ldrb r5, [r0, #2]
	ldrb r3, [r0]
	sub r4, r1, r5
	ldrb r1, [r0, #3]
	sub r1, r1, r5
	cmp r4, r1
	bhs _02022620
	mov r4, #1
	b _02022622
_02022620:
	mov r4, #0
_02022622:
	ldrb r0, [r0, #1]
	sub r1, r2, r3
	sub r0, r0, r3
	cmp r1, r0
	bhs _02022630
	mov r0, #1
	b _02022632
_02022630:
	mov r0, #0
_02022632:
	tst r0, r4
	beq _0202263C
	mov r0, #1
	pop {r4, r5}
	bx lr
_0202263C:
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202260C

	thumb_func_start sub_02022644
sub_02022644: ; 0x02022644
	push {r3, lr}
	ldr r2, _02022660 ; =0x021BF6BC
	ldrh r1, [r2, #0x22]
	cmp r1, #0
	beq _02022658
	ldrh r1, [r2, #0x1c]
	ldrh r2, [r2, #0x1e]
	bl sub_02022594
	pop {r3, pc}
_02022658:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	nop
_02022660: .word 0x021BF6BC
	thumb_func_end sub_02022644

	thumb_func_start sub_02022664
sub_02022664: ; 0x02022664
	push {r3, lr}
	ldr r2, _02022680 ; =0x021BF6BC
	ldrh r1, [r2, #0x20]
	cmp r1, #0
	beq _02022678
	ldrh r1, [r2, #0x1c]
	ldrh r2, [r2, #0x1e]
	bl sub_02022594
	pop {r3, pc}
_02022678:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	nop
_02022680: .word 0x021BF6BC
	thumb_func_end sub_02022664

	thumb_func_start sub_02022684
sub_02022684: ; 0x02022684
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _020226D8 ; =0x021BF6BC
	add r5, r0, #0
	ldrh r0, [r7, #0x22]
	cmp r0, #0
	beq _020226D0
	ldrb r0, [r5]
	mov r6, #0
	cmp r0, #0xff
	beq _020226D0
	add r4, r5, #0
_0202269A:
	ldrb r0, [r5]
	cmp r0, #0xfe
	bne _020226B2
	ldrh r1, [r7, #0x1c]
	ldrh r2, [r7, #0x1e]
	add r0, r4, #0
	bl sub_020225E0
	cmp r0, #0
	beq _020226C4
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020226B2:
	ldrh r1, [r7, #0x1c]
	ldrh r2, [r7, #0x1e]
	add r0, r4, #0
	bl sub_0202260C
	cmp r0, #0
	beq _020226C4
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020226C4:
	add r5, r5, #4
	ldrb r0, [r5]
	add r4, r4, #4
	add r6, r6, #1
	cmp r0, #0xff
	bne _0202269A
_020226D0:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020226D8: .word 0x021BF6BC
	thumb_func_end sub_02022684

	thumb_func_start sub_020226DC
sub_020226DC: ; 0x020226DC
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02022730 ; =0x021BF6BC
	add r5, r0, #0
	ldrh r0, [r7, #0x20]
	cmp r0, #0
	beq _02022728
	ldrb r0, [r5]
	mov r6, #0
	cmp r0, #0xff
	beq _02022728
	add r4, r5, #0
_020226F2:
	ldrb r0, [r5]
	cmp r0, #0xfe
	bne _0202270A
	ldrh r1, [r7, #0x1c]
	ldrh r2, [r7, #0x1e]
	add r0, r4, #0
	bl sub_020225E0
	cmp r0, #0
	beq _0202271C
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202270A:
	ldrh r1, [r7, #0x1c]
	ldrh r2, [r7, #0x1e]
	add r0, r4, #0
	bl sub_0202260C
	cmp r0, #0
	beq _0202271C
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202271C:
	add r5, r5, #4
	ldrb r0, [r5]
	add r4, r4, #4
	add r6, r6, #1
	cmp r0, #0xff
	bne _020226F2
_02022728:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02022730: .word 0x021BF6BC
	thumb_func_end sub_020226DC

	thumb_func_start sub_02022734
sub_02022734: ; 0x02022734
	push {r3, lr}
	ldr r2, _0202275C ; =0x021BF6BC
	ldrh r1, [r2, #0x22]
	cmp r1, #0
	beq _02022756
	ldrb r1, [r0]
	cmp r1, #0xfe
	ldrh r1, [r2, #0x1c]
	bne _0202274E
	ldrh r2, [r2, #0x1e]
	bl sub_020225E0
	pop {r3, pc}
_0202274E:
	ldrh r2, [r2, #0x1e]
	bl sub_0202260C
	pop {r3, pc}
_02022756:
	mov r0, #0
	pop {r3, pc}
	nop
_0202275C: .word 0x021BF6BC
	thumb_func_end sub_02022734

	thumb_func_start sub_02022760
sub_02022760: ; 0x02022760
	push {r3, lr}
	ldr r2, _02022788 ; =0x021BF6BC
	ldrh r1, [r2, #0x20]
	cmp r1, #0
	beq _02022782
	ldrb r1, [r0]
	cmp r1, #0xfe
	ldrh r1, [r2, #0x1c]
	bne _0202277A
	ldrh r2, [r2, #0x1e]
	bl sub_020225E0
	pop {r3, pc}
_0202277A:
	ldrh r2, [r2, #0x1e]
	bl sub_0202260C
	pop {r3, pc}
_02022782:
	mov r0, #0
	pop {r3, pc}
	nop
_02022788: .word 0x021BF6BC
	thumb_func_end sub_02022760

	thumb_func_start sub_0202278C
sub_0202278C: ; 0x0202278C
	ldr r0, _02022794 ; =0x021BF6BC
	ldrh r0, [r0, #0x22]
	bx lr
	nop
_02022794: .word 0x021BF6BC
	thumb_func_end sub_0202278C

	thumb_func_start sub_02022798
sub_02022798: ; 0x02022798
	ldr r0, _020227A0 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	bx lr
	nop
_020227A0: .word 0x021BF6BC
	thumb_func_end sub_02022798

	thumb_func_start sub_020227A4
sub_020227A4: ; 0x020227A4
	ldr r2, _020227BC ; =0x021BF6BC
	ldrh r3, [r2, #0x22]
	cmp r3, #0
	beq _020227B8
	ldrh r3, [r2, #0x1c]
	str r3, [r0, #0]
	ldrh r0, [r2, #0x1e]
	str r0, [r1, #0]
	mov r0, #1
	bx lr
_020227B8:
	mov r0, #0
	bx lr
	; .align 2, 0
_020227BC: .word 0x021BF6BC
	thumb_func_end sub_020227A4

	thumb_func_start sub_020227C0
sub_020227C0: ; 0x020227C0
	ldr r2, _020227D8 ; =0x021BF6BC
	ldrh r3, [r2, #0x20]
	cmp r3, #0
	beq _020227D4
	ldrh r3, [r2, #0x1c]
	str r3, [r0, #0]
	ldrh r0, [r2, #0x1e]
	str r0, [r1, #0]
	mov r0, #1
	bx lr
_020227D4:
	mov r0, #0
	bx lr
	; .align 2, 0
_020227D8: .word 0x021BF6BC
	thumb_func_end sub_020227C0

	thumb_func_start sub_020227DC
sub_020227DC: ; 0x020227DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldrb r0, [r5]
	add r6, r1, #0
	add r7, r2, #0
	cmp r0, #0xff
	beq _0202282A
	add r4, r5, #0
_020227F0:
	ldrb r0, [r5]
	cmp r0, #0xfe
	bne _02022808
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020225E0
	cmp r0, #0
	beq _0202281A
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
_02022808:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0202260C
	cmp r0, #0
	beq _0202281A
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
_0202281A:
	ldr r0, [sp]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp]
	ldrb r0, [r5]
	add r4, r4, #4
	cmp r0, #0xff
	bne _020227F0
_0202282A:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020227DC

	thumb_func_start sub_02022830
sub_02022830: ; 0x02022830
	push {r3, lr}
	ldrb r3, [r0]
	cmp r3, #0xfe
	bne _0202283E
	bl sub_020225E0
	pop {r3, pc}
_0202283E:
	bl sub_0202260C
	pop {r3, pc}
	thumb_func_end sub_02022830