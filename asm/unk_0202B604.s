	.include "macros/function.inc"
	.include "include/unk_0202B604.inc"

	

	.text


	thumb_func_start sub_0202B604
sub_0202B604: ; 0x0202B604
	mov r0, #0x46
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B604

	thumb_func_start sub_0202B60C
sub_0202B60C: ; 0x0202B60C
	ldr r3, _0202B614 ; =sub_020D5124
	mov r1, #0
	mov r2, #0x70
	bx r3
	; .align 2, 0
_0202B614: .word sub_020D5124
	thumb_func_end sub_0202B60C

	thumb_func_start sub_0202B618
sub_0202B618: ; 0x0202B618
	ldr r3, _0202B624 ; =sub_020D5124
	mov r2, #0x46
	mov r1, #0
	lsl r2, r2, #4
	bx r3
	nop
_0202B624: .word sub_020D5124
	thumb_func_end sub_0202B618

	thumb_func_start sub_0202B628
sub_0202B628: ; 0x0202B628
	ldr r3, _0202B630 ; =sub_020245BC
	mov r1, #0x12
	bx r3
	nop
_0202B630: .word sub_020245BC
	thumb_func_end sub_0202B628

	thumb_func_start sub_0202B634
sub_0202B634: ; 0x0202B634
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	cmp r1, #1
	beq _0202B644
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202B644:
	add r0, sp, #0
	bl sub_020138A4
	ldr r0, [r7, #0]
	lsl r1, r0, #0x15
	lsr r3, r1, #0x1c
	beq _0202B69C
	lsl r1, r0, #0x19
	lsr r2, r1, #0x19
	ldr r1, [sp]
	cmp r2, r1
	bne _0202B676
	ldr r1, [sp, #4]
	cmp r3, r1
	bne _0202B676
	lsl r1, r0, #0xd
	lsr r2, r1, #0x1b
	ldr r1, [sp, #8]
	cmp r2, r1
	bne _0202B676
	lsl r0, r0, #0x12
	lsr r1, r0, #0x1d
	ldr r0, [sp, #0xc]
	cmp r1, r0
	beq _0202B69C
_0202B676:
	mov r0, #0x3f
	lsl r0, r0, #4
	mov r5, #9
	add r6, r7, r0
_0202B67E:
	add r4, r6, #0
	sub r4, #0x70
	add r3, r6, #0
	mov r2, #0xe
_0202B686:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0202B686
	sub r5, r5, #1
	sub r6, #0x70
	cmp r5, #1
	bge _0202B67E
	add r0, r7, #0
	bl sub_0202B60C
_0202B69C:
	add r0, r7, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202B634

	thumb_func_start sub_0202B6A4
sub_0202B6A4: ; 0x0202B6A4
	push {r4, lr}
	sub sp, #0x20
	add r4, r0, #0
	cmp r1, #1
	beq _0202B6B4
	add sp, #0x20
	mov r0, #0
	pop {r4, pc}
_0202B6B4:
	add r0, sp, #0
	bl sub_020138A4
	ldr r0, [r4, #0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1c
	str r0, [sp, #0x14]
	ldr r0, [r4, #0]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x1b
	str r0, [sp, #0x18]
	ldr r0, [r4, #0]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x1d
	str r0, [sp, #0x1c]
	add r0, sp, #0
	bl sub_02013900
	add r4, r0, #0
	add r0, sp, #0x10
	bl sub_02013900
	ldr r2, [sp, #4]
	sub r0, r4, r0
	cmp r2, #0xc
	bne _0202B702
	ldr r1, [sp, #8]
	cmp r1, #0x1f
	bne _0202B702
	ldr r1, [sp, #0x14]
	cmp r1, #1
	bne _0202B702
	ldr r1, [sp, #0x18]
	cmp r1, #1
	beq _0202B718
_0202B702:
	cmp r2, #1
	bne _0202B730
	ldr r1, [sp, #8]
	cmp r1, #1
	bne _0202B730
	ldr r1, [sp, #0x14]
	cmp r1, #0xc
	bne _0202B730
	ldr r1, [sp, #0x18]
	cmp r1, #0x1f
	bne _0202B730
_0202B718:
	ldr r1, [sp]
	ldr r0, [sp, #0x10]
	sub r1, r1, r0
	cmp r1, #2
	bge _0202B72A
	mov r0, #1
	mvn r0, r0
	cmp r1, r0
	bgt _0202B750
_0202B72A:
	add sp, #0x20
	mov r0, #1
	pop {r4, pc}
_0202B730:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	ble _0202B73C
	cmp r0, #2
	blt _0202B742
_0202B73C:
	add sp, #0x20
	mov r0, #1
	pop {r4, pc}
_0202B742:
	ldr r1, [sp]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	beq _0202B750
	add sp, #0x20
	mov r0, #1
	pop {r4, pc}
_0202B750:
	mov r0, #0
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202B6A4

	thumb_func_start sub_0202B758
sub_0202B758: ; 0x0202B758
	push {r4, lr}
	add r4, r1, #0
	cmp r0, #0
	beq _0202B796
	cmp r2, #4
	bhi _0202B796
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0202B770: ; jump table
	.short _0202B77A - _0202B770 - 2 ; case 0
	.short _0202B780 - _0202B770 - 2 ; case 1
	.short _0202B786 - _0202B770 - 2 ; case 2
	.short _0202B78C - _0202B770 - 2 ; case 3
	.short _0202B792 - _0202B770 - 2 ; case 4
_0202B77A:
	bl sub_0202B7A0
	b _0202B796
_0202B780:
	bl sub_0202B7E0
	b _0202B796
_0202B786:
	bl sub_0202B880
	b _0202B796
_0202B78C:
	bl sub_0202B88C
	b _0202B796
_0202B792:
	bl sub_0202B898
_0202B796:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202B758

	thumb_func_start sub_0202B7A0
sub_0202B7A0: ; 0x0202B7A0
	push {r4, r5}
	ldr r3, [r0, #0]
	lsl r2, r3, #0x19
	lsr r5, r2, #0x19
	ldr r2, [r1, #0]
	lsl r4, r2, #0x19
	lsr r4, r4, #0x19
	cmp r5, r4
	bne _0202B7D6
	lsl r4, r3, #0x15
	lsr r5, r4, #0x1c
	lsl r4, r2, #0x15
	lsr r4, r4, #0x1c
	cmp r5, r4
	bne _0202B7D6
	lsl r4, r3, #0xd
	lsr r5, r4, #0x1b
	lsl r4, r2, #0xd
	lsr r4, r4, #0x1b
	cmp r5, r4
	bne _0202B7D6
	lsl r3, r3, #0x12
	lsl r2, r2, #0x12
	lsr r3, r3, #0x1d
	lsr r2, r2, #0x1d
	cmp r3, r2
	beq _0202B7DA
_0202B7D6:
	ldr r1, [r1, #0]
	str r1, [r0, #0]
_0202B7DA:
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B7A0

	thumb_func_start sub_0202B7E0
sub_0202B7E0: ; 0x0202B7E0
	push {r3, lr}
	ldrb r2, [r1]
	cmp r2, #0x28
	bhi _0202B87C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0202B7F4: ; jump table
	.short _0202B87C - _0202B7F4 - 2 ; case 0
	.short _0202B846 - _0202B7F4 - 2 ; case 1
	.short _0202B846 - _0202B7F4 - 2 ; case 2
	.short _0202B846 - _0202B7F4 - 2 ; case 3
	.short _0202B846 - _0202B7F4 - 2 ; case 4
	.short _0202B846 - _0202B7F4 - 2 ; case 5
	.short _0202B846 - _0202B7F4 - 2 ; case 6
	.short _0202B846 - _0202B7F4 - 2 ; case 7
	.short _0202B846 - _0202B7F4 - 2 ; case 8
	.short _0202B84E - _0202B7F4 - 2 ; case 9
	.short _0202B84E - _0202B7F4 - 2 ; case 10
	.short _0202B856 - _0202B7F4 - 2 ; case 11
	.short _0202B85E - _0202B7F4 - 2 ; case 12
	.short _0202B866 - _0202B7F4 - 2 ; case 13
	.short _0202B866 - _0202B7F4 - 2 ; case 14
	.short _0202B866 - _0202B7F4 - 2 ; case 15
	.short _0202B846 - _0202B7F4 - 2 ; case 16
	.short _0202B846 - _0202B7F4 - 2 ; case 17
	.short _0202B86E - _0202B7F4 - 2 ; case 18
	.short _0202B876 - _0202B7F4 - 2 ; case 19
	.short _0202B876 - _0202B7F4 - 2 ; case 20
	.short _0202B876 - _0202B7F4 - 2 ; case 21
	.short _0202B876 - _0202B7F4 - 2 ; case 22
	.short _0202B876 - _0202B7F4 - 2 ; case 23
	.short _0202B876 - _0202B7F4 - 2 ; case 24
	.short _0202B876 - _0202B7F4 - 2 ; case 25
	.short _0202B876 - _0202B7F4 - 2 ; case 26
	.short _0202B876 - _0202B7F4 - 2 ; case 27
	.short _0202B876 - _0202B7F4 - 2 ; case 28
	.short _0202B876 - _0202B7F4 - 2 ; case 29
	.short _0202B876 - _0202B7F4 - 2 ; case 30
	.short _0202B87C - _0202B7F4 - 2 ; case 31
	.short _0202B876 - _0202B7F4 - 2 ; case 32
	.short _0202B876 - _0202B7F4 - 2 ; case 33
	.short _0202B846 - _0202B7F4 - 2 ; case 34
	.short _0202B846 - _0202B7F4 - 2 ; case 35
	.short _0202B846 - _0202B7F4 - 2 ; case 36
	.short _0202B846 - _0202B7F4 - 2 ; case 37
	.short _0202B846 - _0202B7F4 - 2 ; case 38
	.short _0202B846 - _0202B7F4 - 2 ; case 39
	.short _0202B846 - _0202B7F4 - 2 ; case 40
_0202B846:
	add r0, r0, #4
	bl sub_0202B994
	pop {r3, pc}
_0202B84E:
	add r0, r0, #4
	bl sub_0202BA48
	pop {r3, pc}
_0202B856:
	add r0, r0, #4
	bl sub_0202B9F0
	pop {r3, pc}
_0202B85E:
	add r0, r0, #4
	bl sub_0202B9D0
	pop {r3, pc}
_0202B866:
	add r0, r0, #4
	bl sub_0202BAB0
	pop {r3, pc}
_0202B86E:
	add r0, r0, #4
	bl sub_0202BAF8
	pop {r3, pc}
_0202B876:
	add r0, r0, #4
	bl sub_0202BB40
_0202B87C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202B7E0

	thumb_func_start sub_0202B880
sub_0202B880: ; 0x0202B880
	ldrh r2, [r1]
	strh r2, [r0, #0x14]
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x16]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B880

	thumb_func_start sub_0202B88C
sub_0202B88C: ; 0x0202B88C
	ldrh r2, [r1]
	strh r2, [r0, #0x18]
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x1a]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B88C

	thumb_func_start sub_0202B898
sub_0202B898: ; 0x0202B898
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_0202B954
	ldrb r1, [r4]
	cmp r1, #0x1d
	bhi _0202B918
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202B8B4: ; jump table
	.short _0202B918 - _0202B8B4 - 2 ; case 0
	.short _0202B8F0 - _0202B8B4 - 2 ; case 1
	.short _0202B8F0 - _0202B8B4 - 2 ; case 2
	.short _0202B8F0 - _0202B8B4 - 2 ; case 3
	.short _0202B8F0 - _0202B8B4 - 2 ; case 4
	.short _0202B8F0 - _0202B8B4 - 2 ; case 5
	.short _0202B8F8 - _0202B8B4 - 2 ; case 6
	.short _0202B900 - _0202B8B4 - 2 ; case 7
	.short _0202B908 - _0202B8B4 - 2 ; case 8
	.short _0202B900 - _0202B8B4 - 2 ; case 9
	.short _0202B908 - _0202B8B4 - 2 ; case 10
	.short _0202B8F0 - _0202B8B4 - 2 ; case 11
	.short _0202B908 - _0202B8B4 - 2 ; case 12
	.short _0202B912 - _0202B8B4 - 2 ; case 13
	.short _0202B908 - _0202B8B4 - 2 ; case 14
	.short _0202B900 - _0202B8B4 - 2 ; case 15
	.short _0202B908 - _0202B8B4 - 2 ; case 16
	.short _0202B908 - _0202B8B4 - 2 ; case 17
	.short _0202B908 - _0202B8B4 - 2 ; case 18
	.short _0202B908 - _0202B8B4 - 2 ; case 19
	.short _0202B908 - _0202B8B4 - 2 ; case 20
	.short _0202B908 - _0202B8B4 - 2 ; case 21
	.short _0202B8F8 - _0202B8B4 - 2 ; case 22
	.short _0202B8F8 - _0202B8B4 - 2 ; case 23
	.short _0202B912 - _0202B8B4 - 2 ; case 24
	.short _0202B908 - _0202B8B4 - 2 ; case 25
	.short _0202B908 - _0202B8B4 - 2 ; case 26
	.short _0202B908 - _0202B8B4 - 2 ; case 27
	.short _0202B908 - _0202B8B4 - 2 ; case 28
	.short _0202B908 - _0202B8B4 - 2 ; case 29
_0202B8F0:
	add r1, r4, #0
	bl sub_0202BB88
	pop {r3, r4, r5, pc}
_0202B8F8:
	add r1, r4, #0
	bl sub_0202BBC4
	pop {r3, r4, r5, pc}
_0202B900:
	add r1, r4, #0
	bl sub_0202BBE0
	pop {r3, r4, r5, pc}
_0202B908:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202BC14
	pop {r3, r4, r5, pc}
_0202B912:
	add r1, r4, #0
	bl sub_0202BC48
_0202B918:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202B898

	thumb_func_start sub_0202B91C
sub_0202B91C: ; 0x0202B91C
	push {r3, r4}
	mov r3, #0
	add r4, r0, #0
	mov r1, #0x3f
_0202B924:
	ldr r2, [r4, #0]
	tst r2, r1
	bne _0202B932
	lsl r1, r3, #2
	add r0, r0, r1
	pop {r3, r4}
	bx lr
_0202B932:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, #4
	blo _0202B924
	mov r3, #0
	add r2, r0, #0
_0202B93E:
	ldr r1, [r2, #4]
	add r3, r3, #1
	stmia r2!, {r1}
	cmp r3, #3
	blo _0202B93E
	lsl r2, r3, #2
	mov r1, #0
	str r1, [r0, r2]
	add r0, r0, r2
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0202B91C

	thumb_func_start sub_0202B954
sub_0202B954: ; 0x0202B954
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	add r2, r4, #0
_0202B95C:
	ldrb r0, [r2, #0x1c]
	cmp r0, #0
	bne _0202B96C
	mov r0, #0x2a
	add r4, #0x1c
	mul r0, r1
	add r0, r4, r0
	pop {r4, pc}
_0202B96C:
	add r1, r1, #1
	add r2, #0x2a
	cmp r1, #2
	blo _0202B95C
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x1c
	add r1, #0x46
	mov r2, #0x2a
	bl sub_020D50B8
	add r4, #0x46
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x2a
	bl sub_020D5124
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202B954

	thumb_func_start sub_0202B994
sub_0202B994: ; 0x0202B994
	push {r4, lr}
	add r4, r1, #0
	mov r2, #0
	add r3, r0, #0
_0202B99C:
	ldr r1, [r3, #0]
	cmp r1, #0
	beq _0202B9AA
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #4
	blo _0202B99C
_0202B9AA:
	cmp r2, #0
	beq _0202B9C0
	lsl r2, r2, #2
	add r2, r0, r2
	sub r2, r2, #4
	ldr r3, [r2, #0]
	mov r2, #0x3f
	ldrb r1, [r4]
	and r2, r3
	cmp r1, r2
	beq _0202B9CC
_0202B9C0:
	bl sub_0202B91C
	ldrb r2, [r4]
	mov r1, #0x3f
	and r1, r2
	str r1, [r0, #0]
_0202B9CC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202B994

	thumb_func_start sub_0202B9D0
sub_0202B9D0: ; 0x0202B9D0
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202B91C
	ldrb r2, [r4]
	mov r1, #0x3f
	and r1, r2
	ldrh r2, [r4, #2]
	lsl r3, r2, #0x10
	ldrh r2, [r4, #4]
	lsl r2, r2, #0x16
	lsr r2, r2, #0x10
	orr r2, r3
	orr r1, r2
	str r1, [r0, #0]
	pop {r4, pc}
	thumb_func_end sub_0202B9D0

	thumb_func_start sub_0202B9F0
sub_0202B9F0: ; 0x0202B9F0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r2, #0
	mov r3, #0x3f
_0202B9F8:
	lsl r1, r2, #2
	ldr r5, [r0, r1]
	and r5, r3
	cmp r5, #0xb
	bne _0202BA20
	mov r3, #0
	str r3, [r0, r1]
	cmp r2, #3
	bhs _0202BA2A
_0202BA0A:
	lsl r5, r2, #2
	add r6, r0, r5
	ldr r1, [r6, #4]
	str r1, [r0, r5]
	add r1, r2, #1
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	str r3, [r6, #4]
	cmp r2, #3
	blo _0202BA0A
	b _0202BA2A
_0202BA20:
	add r1, r2, #1
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	cmp r2, #4
	blo _0202B9F8
_0202BA2A:
	bl sub_0202B91C
	ldrb r2, [r4]
	mov r1, #0x3f
	and r1, r2
	ldrh r2, [r4, #2]
	lsl r3, r2, #0x10
	ldrh r2, [r4, #4]
	lsl r2, r2, #0x16
	lsr r2, r2, #0x10
	orr r2, r3
	orr r1, r2
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202B9F0

	thumb_func_start sub_0202BA48
sub_0202BA48: ; 0x0202BA48
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r6, #0
	mov r1, #0x3f
_0202BA50:
	lsl r5, r6, #2
	ldr r3, [r0, r5]
	add r2, r3, #0
	and r2, r1
	cmp r2, #9
	bne _0202BA88
	lsr r3, r3, #0x10
	lsl r3, r3, #0x10
	ldrh r2, [r4, #2]
	lsr r3, r3, #0x10
	cmp r2, r3
	bne _0202BA88
	mov r1, #0
	str r1, [r0, r5]
	cmp r6, #3
	bhs _0202BA92
	add r2, r1, #0
_0202BA72:
	lsl r3, r6, #2
	add r5, r0, r3
	ldr r1, [r5, #4]
	str r1, [r0, r3]
	add r1, r6, #1
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	str r2, [r5, #4]
	cmp r6, #3
	blo _0202BA72
	b _0202BA92
_0202BA88:
	add r2, r6, #1
	lsl r2, r2, #0x10
	lsr r6, r2, #0x10
	cmp r6, #4
	blo _0202BA50
_0202BA92:
	bl sub_0202B91C
	ldrb r2, [r4]
	mov r1, #0x3f
	and r1, r2
	ldrh r2, [r4, #2]
	lsl r3, r2, #0x10
	ldrh r2, [r4, #4]
	lsl r2, r2, #0x16
	lsr r2, r2, #0x10
	orr r2, r3
	orr r1, r2
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202BA48

	thumb_func_start sub_0202BAB0
sub_0202BAB0: ; 0x0202BAB0
	push {r4, lr}
	add r4, r1, #0
	mov r2, #0
	add r3, r0, #0
_0202BAB8:
	ldr r1, [r3, #0]
	cmp r1, #0
	beq _0202BAC6
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #4
	blo _0202BAB8
_0202BAC6:
	cmp r2, #0
	beq _0202BAE4
	lsl r1, r2, #2
	add r1, r0, r1
	sub r1, r1, #4
	ldr r3, [r1, #0]
	mov r1, #0x3f
	ldrb r2, [r4]
	and r1, r3
	cmp r2, r1
	bne _0202BAE4
	ldrh r2, [r4, #2]
	lsr r1, r3, #0x10
	cmp r2, r1
	beq _0202BAF6
_0202BAE4:
	bl sub_0202B91C
	ldrh r1, [r4, #2]
	ldrb r2, [r4]
	lsl r3, r1, #0x10
	mov r1, #0x3f
	and r1, r2
	orr r1, r3
	str r1, [r0, #0]
_0202BAF6:
	pop {r4, pc}
	thumb_func_end sub_0202BAB0

	thumb_func_start sub_0202BAF8
sub_0202BAF8: ; 0x0202BAF8
	push {r4, lr}
	add r4, r1, #0
	mov r2, #0
	add r3, r0, #0
_0202BB00:
	ldr r1, [r3, #0]
	cmp r1, #0
	beq _0202BB0E
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #4
	blo _0202BB00
_0202BB0E:
	cmp r2, #0
	beq _0202BB2C
	lsl r1, r2, #2
	add r1, r0, r1
	sub r1, r1, #4
	ldr r3, [r1, #0]
	mov r1, #0x3f
	ldrb r2, [r4]
	and r1, r3
	cmp r2, r1
	bne _0202BB2C
	ldrh r2, [r4, #6]
	lsr r1, r3, #0x10
	cmp r2, r1
	beq _0202BB3E
_0202BB2C:
	bl sub_0202B91C
	ldrh r1, [r4, #6]
	ldrb r2, [r4]
	lsl r3, r1, #0x10
	mov r1, #0x3f
	and r1, r2
	orr r1, r3
	str r1, [r0, #0]
_0202BB3E:
	pop {r4, pc}
	thumb_func_end sub_0202BAF8

	thumb_func_start sub_0202BB40
sub_0202BB40: ; 0x0202BB40
	push {r4, lr}
	add r4, r1, #0
	mov r2, #0
	add r3, r0, #0
_0202BB48:
	ldr r1, [r3, #0]
	cmp r1, #0
	beq _0202BB56
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #4
	blo _0202BB48
_0202BB56:
	cmp r2, #0
	beq _0202BB74
	lsl r1, r2, #2
	add r1, r0, r1
	sub r1, r1, #4
	ldr r3, [r1, #0]
	mov r1, #0x3f
	ldrb r2, [r4]
	and r1, r3
	cmp r2, r1
	bne _0202BB74
	ldrh r2, [r4, #2]
	lsr r1, r3, #0x10
	cmp r2, r1
	beq _0202BB86
_0202BB74:
	bl sub_0202B91C
	ldrh r1, [r4, #2]
	ldrb r2, [r4]
	lsl r3, r1, #0x10
	mov r1, #0x3f
	and r1, r2
	orr r1, r3
	str r1, [r0, #0]
_0202BB86:
	pop {r4, pc}
	thumb_func_end sub_0202BB40

	thumb_func_start sub_0202BB88
sub_0202BB88: ; 0x0202BB88
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	strb r0, [r5]
	ldrb r3, [r4, #1]
	lsl r1, r3, #0x1c
	lsr r2, r1, #0x1a
	lsl r1, r3, #0x1b
	lsr r1, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r1, #1
	orr r1, r2
	lsr r0, r0, #0x1f
	orr r0, r1
	strb r0, [r5, #1]
	add r0, r4, #2
	add r1, r5, #2
	mov r2, #8
	bl sub_0202BF94
	add r4, #0x12
	add r5, #0x12
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl sub_0202BF94
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202BB88

	thumb_func_start sub_0202BBC4
sub_0202BBC4: ; 0x0202BBC4
	add r2, r0, #0
	ldrb r0, [r1]
	ldr r3, _0202BBDC ; =sub_0202BF94
	strb r0, [r2]
	ldrb r0, [r1, #1]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	strb r0, [r2, #1]
	add r0, r1, #2
	add r1, r2, #2
	mov r2, #8
	bx r3
	; .align 2, 0
_0202BBDC: .word sub_0202BF94
	thumb_func_end sub_0202BBC4

	thumb_func_start sub_0202BBE0
sub_0202BBE0: ; 0x0202BBE0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	mov r2, #8
	strb r0, [r5]
	ldrb r0, [r4, #1]
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1f
	lsl r0, r0, #0x18
	lsl r1, r1, #2
	lsr r0, r0, #0x1e
	orr r0, r1
	strb r0, [r5, #1]
	add r0, r4, #2
	add r1, r5, #2
	bl sub_0202BF94
	add r4, #0x22
	add r5, #0x12
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xc
	bl sub_0202BF94
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202BBE0

	thumb_func_start sub_0202BC14
sub_0202BC14: ; 0x0202BC14
	push {r4, lr}
	add r4, r1, #0
	mov r3, #0
	add r2, r0, #0
_0202BC1C:
	ldrb r1, [r2, #0x1c]
	cmp r1, #0
	beq _0202BC2A
	add r3, r3, #1
	add r2, #0x2a
	cmp r3, #2
	blo _0202BC1C
_0202BC2A:
	cmp r3, #0
	beq _0202BC3E
	mov r1, #0x2a
	mul r1, r3
	add r1, r0, r1
	sub r1, #0xe
	ldrb r2, [r4]
	ldrb r1, [r1]
	cmp r2, r1
	beq _0202BC46
_0202BC3E:
	bl sub_0202B954
	ldrb r1, [r4]
	strb r1, [r0]
_0202BC46:
	pop {r4, pc}
	thumb_func_end sub_0202BC14

	thumb_func_start sub_0202BC48
sub_0202BC48: ; 0x0202BC48
	ldrb r2, [r1]
	strb r2, [r0]
	ldrb r1, [r1, #1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202BC48

	thumb_func_start sub_0202BC58
sub_0202BC58: ; 0x0202BC58
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	add r0, sp, #0
	bl sub_020138A4
	ldr r2, [r4, #0]
	mov r0, #0x7f
	bic r2, r0
	ldr r1, [sp]
	mov r0, #0x7f
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	str r1, [r4, #0]
	add r2, r1, #0
	ldr r1, [sp, #4]
	ldr r0, _0202BCBC ; =0xFFFFF87F
	lsl r1, r1, #0x1c
	and r2, r0
	lsr r1, r1, #0x15
	orr r2, r1
	ldr r1, _0202BCC0 ; =0xFFF83FFF
	str r2, [r4, #0]
	and r2, r1
	ldr r1, [sp, #8]
	lsr r0, r0, #0xd
	lsl r1, r1, #0x1b
	lsr r1, r1, #0xd
	orr r2, r1
	ldr r1, _0202BCC4 ; =0xFFFFC7FF
	str r2, [r4, #0]
	and r2, r1
	ldr r1, [sp, #0xc]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x12
	orr r1, r2
	and r1, r0
	lsl r0, r5, #0x13
	orr r0, r1
	str r0, [r4, #0]
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0202BCBC: .word 0xFFFFF87F
_0202BCC0: .word 0xFFF83FFF
_0202BCC4: .word 0xFFFFC7FF
	thumb_func_end sub_0202BC58

	thumb_func_start sub_0202BCC8
sub_0202BCC8: ; 0x0202BCC8
	push {r3, lr}
	mov r1, #8
	bl sub_02018144
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	pop {r3, pc}
	thumb_func_end sub_0202BCC8

	thumb_func_start sub_0202BCE4
sub_0202BCE4: ; 0x0202BCE4
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #1
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BCE4

	thumb_func_start sub_0202BCF0
sub_0202BCF0: ; 0x0202BCF0
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #2
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BCF0

	thumb_func_start sub_0202BCFC
sub_0202BCFC: ; 0x0202BCFC
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #3
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BCFC

	thumb_func_start sub_0202BD08
sub_0202BD08: ; 0x0202BD08
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #4
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BD08

	thumb_func_start sub_0202BD14
sub_0202BD14: ; 0x0202BD14
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #5
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BD14

	thumb_func_start sub_0202BD20
sub_0202BD20: ; 0x0202BD20
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #6
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BD20

	thumb_func_start sub_0202BD2C
sub_0202BD2C: ; 0x0202BD2C
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #7
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BD2C

	thumb_func_start sub_0202BD38
sub_0202BD38: ; 0x0202BD38
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #8
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BD38

	thumb_func_start sub_0202BD44
sub_0202BD44: ; 0x0202BD44
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0202BCC8
	mov r1, #9
	strb r1, [r0]
	strh r4, [r0, #2]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202BD44

	thumb_func_start sub_0202BD58
sub_0202BD58: ; 0x0202BD58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_0202BCC8
	mov r1, #0xa
	strb r1, [r0]
	strh r5, [r0, #2]
	strh r4, [r0, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202BD58

	thumb_func_start sub_0202BD70
sub_0202BD70: ; 0x0202BD70
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0202BCC8
	mov r1, #0xb
	strb r1, [r0]
	strh r4, [r0, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202BD70

	thumb_func_start sub_0202BD84
sub_0202BD84: ; 0x0202BD84
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0202BCC8
	mov r1, #0xc
	strb r1, [r0]
	strh r4, [r0, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202BD84

	thumb_func_start sub_0202BD98
sub_0202BD98: ; 0x0202BD98
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0202BCC8
	mov r1, #0xd
	strb r1, [r0]
	strh r4, [r0, #2]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202BD98

	thumb_func_start sub_0202BDAC
sub_0202BDAC: ; 0x0202BDAC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0202BCC8
	mov r1, #0xe
	strb r1, [r0]
	strh r4, [r0, #2]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202BDAC

	thumb_func_start sub_0202BDC0
sub_0202BDC0: ; 0x0202BDC0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0202BCC8
	mov r1, #0xf
	strb r1, [r0]
	strh r4, [r0, #2]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202BDC0

	thumb_func_start sub_0202BDD4
sub_0202BDD4: ; 0x0202BDD4
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #0x10
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BDD4

	thumb_func_start sub_0202BDE0
sub_0202BDE0: ; 0x0202BDE0
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #0x11
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BDE0

	thumb_func_start sub_0202BDEC
sub_0202BDEC: ; 0x0202BDEC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0202BCC8
	mov r1, #0x12
	strb r1, [r0]
	strh r4, [r0, #6]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202BDEC

	thumb_func_start sub_0202BE00
sub_0202BE00: ; 0x0202BE00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_0202BCC8
	add r5, #0x13
	strb r5, [r0]
	strh r4, [r0, #2]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202BE00

	thumb_func_start sub_0202BE14
sub_0202BE14: ; 0x0202BE14
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #0x22
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BE14

	thumb_func_start sub_0202BE20
sub_0202BE20: ; 0x0202BE20
	push {r3, lr}
	bl sub_0202BCC8
	mov r1, #0x23
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202BE20

	thumb_func_start sub_0202BE2C
sub_0202BE2C: ; 0x0202BE2C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202BCC8
	strb r4, [r0]
	pop {r4, pc}
	thumb_func_end sub_0202BE2C

	thumb_func_start sub_0202BE38
sub_0202BE38: ; 0x0202BE38
	push {r3, lr}
	mov r1, #4
	bl sub_02018144
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	pop {r3, pc}
	thumb_func_end sub_0202BE38

	thumb_func_start sub_0202BE4C
sub_0202BE4C: ; 0x0202BE4C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0202BE38
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4]
	strh r5, [r4, #2]
	ldrb r1, [r4, #1]
	mov r0, #0xc0
	bic r1, r0
	lsl r0, r6, #0x1e
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	mov r0, #0x3c
	bic r1, r0
	lsl r0, r7, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	strb r0, [r4, #1]
	ldr r0, [sp]
	bl sub_0202CC5C
	mov r1, #0xa
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _0202BE9A
	cmp r0, #2
	beq _0202BE9A
	cmp r0, #4
	bne _0202BEA4
_0202BE9A:
	ldrb r1, [r4, #1]
	mov r0, #3
	bic r1, r0
	strb r1, [r4, #1]
	b _0202BEC6
_0202BEA4:
	cmp r0, #1
	beq _0202BEAC
	cmp r0, #3
	bne _0202BEBA
_0202BEAC:
	ldrb r1, [r4, #1]
	mov r0, #3
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #1]
	b _0202BEC6
_0202BEBA:
	ldrb r1, [r4, #1]
	mov r0, #3
	bic r1, r0
	mov r0, #2
	orr r0, r1
	strb r0, [r4, #1]
_0202BEC6:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202BE4C

	thumb_func_start sub_0202BECC
sub_0202BECC: ; 0x0202BECC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0202BE38
	add r4, r0, #0
	mov r0, #2
	strb r0, [r4]
	strh r5, [r4, #2]
	ldrb r1, [r4, #1]
	mov r0, #0xc0
	bic r1, r0
	lsl r0, r6, #0x1e
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	mov r0, #0x3c
	bic r1, r0
	lsl r0, r7, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	strb r0, [r4, #1]
	ldr r0, [sp]
	bl sub_0202CC5C
	mov r1, #0xa
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	beq _0202BF1C
	cmp r0, #3
	beq _0202BF1C
	cmp r0, #5
	bne _0202BF26
_0202BF1C:
	ldrb r1, [r4, #1]
	mov r0, #3
	bic r1, r0
	strb r1, [r4, #1]
	b _0202BF48
_0202BF26:
	cmp r0, #2
	beq _0202BF2E
	cmp r0, #4
	bne _0202BF3C
_0202BF2E:
	ldrb r1, [r4, #1]
	mov r0, #3
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #1]
	b _0202BF48
_0202BF3C:
	ldrb r1, [r4, #1]
	mov r0, #3
	bic r1, r0
	mov r0, #2
	orr r0, r1
	strb r0, [r4, #1]
_0202BF48:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202BECC

	thumb_func_start sub_0202BF4C
sub_0202BF4C: ; 0x0202BF4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #4
	bl sub_02018144
	ldrh r2, [r0]
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	strh r5, [r0, #2]
	ldrh r2, [r0]
	ldr r1, _0202BF78 ; =0xFFFF0001
	and r2, r1
	lsl r1, r4, #0x11
	lsr r1, r1, #0x10
	orr r1, r2
	strh r1, [r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202BF78: .word 0xFFFF0001
	thumb_func_end sub_0202BF4C

	thumb_func_start sub_0202BF7C
sub_0202BF7C: ; 0x0202BF7C
	push {r4, lr}
	mov r1, #0x3a
	bl sub_02018144
	mov r1, #0
	mov r2, #0x3a
	add r4, r0, #0
	bl sub_020D5124
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202BF7C

	thumb_func_start sub_0202BF94
sub_0202BF94: ; 0x0202BF94
	push {r4, r5}
	mov r4, #0
	cmp r2, #0
	bls _0202BFAA
	ldr r3, _0202BFC8 ; =0x0000FFFF
	add r5, r1, #0
_0202BFA0:
	add r4, r4, #1
	strh r3, [r5]
	add r5, r5, #2
	cmp r4, r2
	blo _0202BFA0
_0202BFAA:
	mov r5, #0
	cmp r2, #0
	bls _0202BFC4
	ldr r3, _0202BFC8 ; =0x0000FFFF
_0202BFB2:
	ldrh r4, [r0]
	cmp r4, r3
	beq _0202BFC4
	add r5, r5, #1
	strh r4, [r1]
	add r0, r0, #2
	add r1, r1, #2
	cmp r5, r2
	blo _0202BFB2
_0202BFC4:
	pop {r4, r5}
	bx lr
	; .align 2, 0
_0202BFC8: .word 0x0000FFFF
	thumb_func_end sub_0202BF94

	thumb_func_start sub_0202BFCC
sub_0202BFCC: ; 0x0202BFCC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0202BF7C
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4]
	ldrb r0, [r4, #1]
	mov r1, #0xf
	mov r2, #8
	bic r0, r1
	mov r1, #0xf
	and r1, r6
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	mov r0, #0x10
	bic r1, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r7, #0
	add r1, r4, #2
	bl sub_0202BF94
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202BFCC

	thumb_func_start sub_0202C00C
sub_0202C00C: ; 0x0202C00C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0202BF7C
	add r4, r0, #0
	mov r0, #2
	strb r0, [r4]
	ldrb r0, [r4, #1]
	mov r1, #0xf
	mov r2, #8
	bic r0, r1
	mov r1, #0xf
	and r1, r6
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	mov r0, #0x10
	bic r1, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r7, #0
	add r1, r4, #2
	bl sub_0202BF94
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202C00C

	thumb_func_start sub_0202C04C
sub_0202C04C: ; 0x0202C04C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	str r1, [sp]
	add r5, r2, #0
	add r6, r3, #0
	bl sub_0202BF7C
	add r4, r0, #0
	mov r0, #3
	strb r0, [r4]
	ldrb r0, [r4, #1]
	mov r1, #0xf
	bic r0, r1
	add r1, sp, #8
	ldrb r2, [r1, #0x10]
	mov r1, #0xf
	and r1, r2
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	mov r1, #0x10
	mov r2, #8
	bic r0, r1
	lsl r1, r5, #0x1f
	lsr r1, r1, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	mov r0, #0x20
	bic r1, r0
	lsl r0, r6, #0x1f
	lsr r0, r0, #0x1a
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r7, #0
	add r1, r4, #2
	bl sub_0202BF94
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0x12
	mov r2, #8
	bl sub_0202BF94
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202C04C

	thumb_func_start sub_0202C0AC
sub_0202C0AC: ; 0x0202C0AC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0202BF7C
	add r4, r0, #0
	mov r0, #4
	strb r0, [r4]
	ldrb r0, [r4, #1]
	mov r1, #0xf
	mov r2, #8
	bic r0, r1
	mov r1, #0xf
	and r1, r6
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	mov r0, #0x10
	bic r1, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r7, #0
	add r1, r4, #2
	bl sub_0202BF94
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202C0AC

	thumb_func_start sub_0202C0EC
sub_0202C0EC: ; 0x0202C0EC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, r2, #0
	add r5, r1, #0
	bl sub_0202BF7C
	add r4, r0, #0
	mov r0, #6
	strb r0, [r4]
	ldrb r1, [r4, #1]
	mov r0, #0x10
	mov r2, #8
	bic r1, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r6, #0
	add r1, r4, #2
	bl sub_0202BF94
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202C0EC

	thumb_func_start sub_0202C11C
sub_0202C11C: ; 0x0202C11C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	add r5, r1, #0
	str r2, [sp]
	add r6, r3, #0
	bl sub_0202BF7C
	add r4, r0, #0
	mov r0, #7
	strb r0, [r4]
	ldrb r0, [r4, #1]
	mov r1, #0x10
	mov r2, #8
	bic r0, r1
	lsl r1, r5, #0x1f
	lsr r1, r1, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	mov r0, #0xc0
	bic r1, r0
	lsl r0, r6, #0x1e
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r7, #0
	add r1, r4, #2
	bl sub_0202BF94
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0x22
	mov r2, #0xc
	bl sub_0202BF94
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202C11C

	thumb_func_start sub_0202C168
sub_0202C168: ; 0x0202C168
	push {r3, lr}
	bl sub_0202BF7C
	mov r1, #8
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202C168

	thumb_func_start sub_0202C174
sub_0202C174: ; 0x0202C174
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0202BF7C
	add r4, r0, #0
	mov r0, #0xb
	strb r0, [r4]
	ldrb r0, [r4, #1]
	mov r1, #0xf
	mov r2, #8
	bic r0, r1
	mov r1, #0xf
	and r1, r6
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	mov r0, #0x10
	bic r1, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r7, #0
	add r1, r4, #2
	bl sub_0202BF94
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202C174

	thumb_func_start sub_0202C1B4
sub_0202C1B4: ; 0x0202C1B4
	push {r3, lr}
	bl sub_0202BF7C
	mov r1, #0xc
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202C1B4

	thumb_func_start sub_0202C1C0
sub_0202C1C0: ; 0x0202C1C0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0202BF7C
	mov r1, #0xd
	strb r1, [r0]
	ldrb r2, [r0, #1]
	mov r1, #0xf
	bic r2, r1
	mov r1, #0xf
	and r1, r4
	orr r1, r2
	strb r1, [r0, #1]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202C1C0

	thumb_func_start sub_0202C1E0
sub_0202C1E0: ; 0x0202C1E0
	push {r3, lr}
	bl sub_0202BF7C
	mov r1, #0xe
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202C1E0

	thumb_func_start sub_0202C1EC
sub_0202C1EC: ; 0x0202C1EC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	add r5, r1, #0
	str r2, [sp]
	add r6, r3, #0
	bl sub_0202BF7C
	add r4, r0, #0
	mov r0, #0xf
	strb r0, [r4]
	ldrb r0, [r4, #1]
	mov r1, #0x10
	mov r2, #8
	bic r0, r1
	lsl r1, r5, #0x1f
	lsr r1, r1, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	mov r0, #0xc0
	bic r1, r0
	lsl r0, r6, #0x1e
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r7, #0
	add r1, r4, #2
	bl sub_0202BF94
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0x22
	mov r2, #0xc
	bl sub_0202BF94
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202C1EC

	thumb_func_start sub_0202C238
sub_0202C238: ; 0x0202C238
	push {r3, lr}
	bl sub_0202BF7C
	mov r1, #0x10
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0202C238

	thumb_func_start sub_0202C244
sub_0202C244: ; 0x0202C244
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202BF7C
	strb r4, [r0]
	pop {r4, pc}
	thumb_func_end sub_0202C244

	thumb_func_start sub_0202C250
sub_0202C250: ; 0x0202C250
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r2, #0
	add r5, r1, #0
	add r6, r3, #0
	bl sub_0202BF7C
	add r4, r0, #0
	strb r6, [r4]
	ldrb r1, [r4, #1]
	mov r0, #0x10
	mov r2, #8
	bic r1, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r7, #0
	add r1, r4, #2
	bl sub_0202BF94
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202C250

	thumb_func_start sub_0202C280
sub_0202C280: ; 0x0202C280
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r2, #0
	add r0, r1, #0
	bl sub_0202BF7C
	strb r5, [r0]
	ldrb r3, [r0, #1]
	mov r1, #0xf
	bic r3, r1
	lsl r1, r4, #0x18
	lsr r2, r1, #0x18
	mov r1, #0xf
	and r1, r2
	orr r1, r3
	strb r1, [r0, #1]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202C280

	thumb_func_start sub_0202C2A4
sub_0202C2A4: ; 0x0202C2A4
	push {r3, lr}
	cmp r2, #4
	bhi _0202C2FA
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0202C2B6: ; jump table
	.short _0202C2C0 - _0202C2B6 - 2 ; case 0
	.short _0202C2CC - _0202C2B6 - 2 ; case 1
	.short _0202C2D8 - _0202C2B6 - 2 ; case 2
	.short _0202C2E4 - _0202C2B6 - 2 ; case 3
	.short _0202C2F0 - _0202C2B6 - 2 ; case 4
_0202C2C0:
	mov r2, #0x70
	mul r2, r3
	add r0, r0, r2
	bl sub_0202C2FC
	pop {r3, pc}
_0202C2CC:
	mov r2, #0x70
	mul r2, r3
	add r0, r0, r2
	bl sub_0202C304
	pop {r3, pc}
_0202C2D8:
	mov r2, #0x70
	mul r2, r3
	add r0, r0, r2
	bl sub_0202C3B8
	pop {r3, pc}
_0202C2E4:
	mov r2, #0x70
	mul r2, r3
	add r0, r0, r2
	bl sub_0202C3C4
	pop {r3, pc}
_0202C2F0:
	mov r2, #0x70
	mul r2, r3
	add r0, r0, r2
	bl sub_0202C3D0
_0202C2FA:
	pop {r3, pc}
	thumb_func_end sub_0202C2A4

	thumb_func_start sub_0202C2FC
sub_0202C2FC: ; 0x0202C2FC
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C2FC

	thumb_func_start sub_0202C304
sub_0202C304: ; 0x0202C304
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r0, #0
	add r4, r1, #0
	add r7, r6, #0
_0202C30E:
	strb r7, [r4]
	strb r7, [r4, #1]
	strb r7, [r4, #2]
	strb r7, [r4, #3]
	strb r7, [r4, #4]
	strb r7, [r4, #5]
	strb r7, [r4, #6]
	strb r7, [r4, #7]
	ldr r0, [r5, #4]
	mov r1, #0x3f
	and r1, r0
	cmp r1, #0x28
	bhi _0202C3AC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202C334: ; jump table
	.short _0202C3AC - _0202C334 - 2 ; case 0
	.short _0202C386 - _0202C334 - 2 ; case 1
	.short _0202C386 - _0202C334 - 2 ; case 2
	.short _0202C386 - _0202C334 - 2 ; case 3
	.short _0202C386 - _0202C334 - 2 ; case 4
	.short _0202C386 - _0202C334 - 2 ; case 5
	.short _0202C386 - _0202C334 - 2 ; case 6
	.short _0202C386 - _0202C334 - 2 ; case 7
	.short _0202C386 - _0202C334 - 2 ; case 8
	.short _0202C38E - _0202C334 - 2 ; case 9
	.short _0202C38E - _0202C334 - 2 ; case 10
	.short _0202C38E - _0202C334 - 2 ; case 11
	.short _0202C38E - _0202C334 - 2 ; case 12
	.short _0202C396 - _0202C334 - 2 ; case 13
	.short _0202C396 - _0202C334 - 2 ; case 14
	.short _0202C396 - _0202C334 - 2 ; case 15
	.short _0202C386 - _0202C334 - 2 ; case 16
	.short _0202C386 - _0202C334 - 2 ; case 17
	.short _0202C39E - _0202C334 - 2 ; case 18
	.short _0202C3A6 - _0202C334 - 2 ; case 19
	.short _0202C3A6 - _0202C334 - 2 ; case 20
	.short _0202C3A6 - _0202C334 - 2 ; case 21
	.short _0202C3A6 - _0202C334 - 2 ; case 22
	.short _0202C3A6 - _0202C334 - 2 ; case 23
	.short _0202C3A6 - _0202C334 - 2 ; case 24
	.short _0202C3A6 - _0202C334 - 2 ; case 25
	.short _0202C3A6 - _0202C334 - 2 ; case 26
	.short _0202C3A6 - _0202C334 - 2 ; case 27
	.short _0202C3A6 - _0202C334 - 2 ; case 28
	.short _0202C3A6 - _0202C334 - 2 ; case 29
	.short _0202C3A6 - _0202C334 - 2 ; case 30
	.short _0202C3AC - _0202C334 - 2 ; case 31
	.short _0202C3A6 - _0202C334 - 2 ; case 32
	.short _0202C3A6 - _0202C334 - 2 ; case 33
	.short _0202C386 - _0202C334 - 2 ; case 34
	.short _0202C386 - _0202C334 - 2 ; case 35
	.short _0202C386 - _0202C334 - 2 ; case 36
	.short _0202C386 - _0202C334 - 2 ; case 37
	.short _0202C386 - _0202C334 - 2 ; case 38
	.short _0202C386 - _0202C334 - 2 ; case 39
	.short _0202C386 - _0202C334 - 2 ; case 40
_0202C386:
	add r1, r4, #0
	bl sub_0202C474
	b _0202C3AC
_0202C38E:
	add r1, r4, #0
	bl sub_0202C47C
	b _0202C3AC
_0202C396:
	add r1, r4, #0
	bl sub_0202C494
	b _0202C3AC
_0202C39E:
	add r1, r4, #0
	bl sub_0202C4A0
	b _0202C3AC
_0202C3A6:
	add r1, r4, #0
	bl sub_0202C4AC
_0202C3AC:
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #4
	blo _0202C30E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202C304

	thumb_func_start sub_0202C3B8
sub_0202C3B8: ; 0x0202C3B8
	ldrh r2, [r0, #0x14]
	strh r2, [r1]
	ldrh r0, [r0, #0x16]
	strh r0, [r1, #2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C3B8

	thumb_func_start sub_0202C3C4
sub_0202C3C4: ; 0x0202C3C4
	ldrh r2, [r0, #0x18]
	strh r2, [r1]
	ldrh r0, [r0, #0x1a]
	strh r0, [r1, #2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C3C4

	thumb_func_start sub_0202C3D0
sub_0202C3D0: ; 0x0202C3D0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r6, #0
	add r4, r1, #0
	mov r7, #0
	add r5, #0x1c
_0202C3DC:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x3a
	bl sub_020D5124
	ldrb r0, [r6, #0x1c]
	cmp r0, #0x1d
	bhi _0202C464
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0202C3F8: ; jump table
	.short _0202C464 - _0202C3F8 - 2 ; case 0
	.short _0202C434 - _0202C3F8 - 2 ; case 1
	.short _0202C434 - _0202C3F8 - 2 ; case 2
	.short _0202C434 - _0202C3F8 - 2 ; case 3
	.short _0202C434 - _0202C3F8 - 2 ; case 4
	.short _0202C434 - _0202C3F8 - 2 ; case 5
	.short _0202C43E - _0202C3F8 - 2 ; case 6
	.short _0202C448 - _0202C3F8 - 2 ; case 7
	.short _0202C452 - _0202C3F8 - 2 ; case 8
	.short _0202C448 - _0202C3F8 - 2 ; case 9
	.short _0202C452 - _0202C3F8 - 2 ; case 10
	.short _0202C434 - _0202C3F8 - 2 ; case 11
	.short _0202C452 - _0202C3F8 - 2 ; case 12
	.short _0202C45C - _0202C3F8 - 2 ; case 13
	.short _0202C452 - _0202C3F8 - 2 ; case 14
	.short _0202C448 - _0202C3F8 - 2 ; case 15
	.short _0202C452 - _0202C3F8 - 2 ; case 16
	.short _0202C452 - _0202C3F8 - 2 ; case 17
	.short _0202C452 - _0202C3F8 - 2 ; case 18
	.short _0202C452 - _0202C3F8 - 2 ; case 19
	.short _0202C452 - _0202C3F8 - 2 ; case 20
	.short _0202C452 - _0202C3F8 - 2 ; case 21
	.short _0202C43E - _0202C3F8 - 2 ; case 22
	.short _0202C43E - _0202C3F8 - 2 ; case 23
	.short _0202C45C - _0202C3F8 - 2 ; case 24
	.short _0202C452 - _0202C3F8 - 2 ; case 25
	.short _0202C452 - _0202C3F8 - 2 ; case 26
	.short _0202C452 - _0202C3F8 - 2 ; case 27
	.short _0202C452 - _0202C3F8 - 2 ; case 28
	.short _0202C452 - _0202C3F8 - 2 ; case 29
_0202C434:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C4B8
	b _0202C464
_0202C43E:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C528
	b _0202C464
_0202C448:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C54C
	b _0202C464
_0202C452:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C5A4
	b _0202C464
_0202C45C:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C5AC
_0202C464:
	add r7, r7, #1
	add r4, #0x3a
	add r6, #0x2a
	add r5, #0x2a
	cmp r7, #2
	blo _0202C3DC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202C3D0

	thumb_func_start sub_0202C474
sub_0202C474: ; 0x0202C474
	mov r2, #0x3f
	and r0, r2
	strb r0, [r1]
	bx lr
	thumb_func_end sub_0202C474

	thumb_func_start sub_0202C47C
sub_0202C47C: ; 0x0202C47C
	mov r2, #0x3f
	and r2, r0
	strb r2, [r1]
	lsr r3, r0, #6
	ldr r2, _0202C490 ; =0x000003FF
	lsr r0, r0, #0x10
	and r2, r3
	strh r2, [r1, #4]
	strh r0, [r1, #2]
	bx lr
	; .align 2, 0
_0202C490: .word 0x000003FF
	thumb_func_end sub_0202C47C

	thumb_func_start sub_0202C494
sub_0202C494: ; 0x0202C494
	mov r2, #0x3f
	and r2, r0
	strb r2, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	bx lr
	thumb_func_end sub_0202C494

	thumb_func_start sub_0202C4A0
sub_0202C4A0: ; 0x0202C4A0
	mov r2, #0x3f
	and r2, r0
	strb r2, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	bx lr
	thumb_func_end sub_0202C4A0

	thumb_func_start sub_0202C4AC
sub_0202C4AC: ; 0x0202C4AC
	mov r2, #0x3f
	and r2, r0
	strb r2, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	bx lr
	thumb_func_end sub_0202C4AC

	thumb_func_start sub_0202C4B8
sub_0202C4B8: ; 0x0202C4B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5]
	add r4, r1, #0
	mov r1, #0xf
	strb r0, [r4]
	ldrb r0, [r4, #1]
	bic r0, r1
	ldrb r1, [r5, #1]
	asr r2, r1, #2
	mov r1, #0x1f
	and r1, r2
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0xf
	and r1, r2
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	mov r1, #0x10
	mov r2, #1
	bic r0, r1
	ldrb r1, [r5, #1]
	asr r1, r1, #1
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	mov r1, #0x20
	bic r0, r1
	ldrb r1, [r5, #1]
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1a
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r5, #2
	add r1, r4, #2
	mov r2, #8
	bl sub_0202BF94
	add r5, #0x12
	add r4, #0x12
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	bl sub_0202BF94
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202C4B8

	thumb_func_start sub_0202C528
sub_0202C528: ; 0x0202C528
	ldrb r2, [r0]
	strb r2, [r1]
	ldrb r3, [r1, #1]
	mov r2, #0x10
	bic r3, r2
	ldrb r2, [r0, #1]
	add r0, r0, #2
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1b
	orr r2, r3
	strb r2, [r1, #1]
	ldr r3, _0202C548 ; =sub_0202BF94
	add r1, r1, #2
	mov r2, #8
	bx r3
	nop
_0202C548: .word sub_0202BF94
	thumb_func_end sub_0202C528

	thumb_func_start sub_0202C54C
sub_0202C54C: ; 0x0202C54C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5]
	add r4, r1, #0
	mov r1, #0x10
	strb r0, [r4]
	ldrb r0, [r4, #1]
	bic r0, r1
	ldrb r1, [r5, #1]
	asr r2, r1, #2
	mov r1, #1
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1b
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	mov r1, #0xc0
	ldrb r2, [r5, #1]
	bic r0, r1
	mov r1, #3
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r4, #1]
	add r0, r5, #2
	add r1, r4, #2
	mov r2, #8
	bl sub_0202BF94
	add r5, #0x12
	add r4, #0x22
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xc
	bl sub_0202BF94
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202C54C

	thumb_func_start sub_0202C5A4
sub_0202C5A4: ; 0x0202C5A4
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C5A4

	thumb_func_start sub_0202C5AC
sub_0202C5AC: ; 0x0202C5AC
	ldrb r2, [r0]
	strb r2, [r1]
	ldrb r3, [r1, #1]
	mov r2, #0xf
	bic r3, r2
	ldrb r2, [r0, #1]
	mov r0, #0xf
	and r0, r2
	orr r0, r3
	strb r0, [r1, #1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C5AC

	thumb_func_start sub_0202C5C4
sub_0202C5C4: ; 0x0202C5C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	mov r0, #0
	add r4, r3, #0
	str r0, [sp, #4]
	add r0, r4, #0
	str r1, [sp]
	add r5, r2, #0
	ldr r6, [sp, #0x20]
	bl sub_0203A274
	cmp r0, #1
	bne _0202C5FE
	add r0, r5, #0
	bl sub_0203A2A8
	cmp r0, #1
	bne _0202C686
	add r0, r4, #0
	bl sub_0203A138
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r6, #0
	bl sub_0202BDAC
	str r0, [sp, #4]
	b _0202C686
_0202C5FE:
	add r0, r4, #0
	bl sub_0203A288
	cmp r0, #1
	bne _0202C65E
	add r0, r5, #0
	bl sub_0203A2A8
	cmp r0, #1
	bne _0202C686
	ldr r0, _0202C69C ; =0x0000019E
	cmp r4, r0
	bne _0202C622
	add r0, r6, #0
	bl sub_0202BCE4
	str r0, [sp, #4]
	b _0202C686
_0202C622:
	add r0, #8
	cmp r4, r0
	bne _0202C632
	add r0, r6, #0
	bl sub_0202BCF0
	str r0, [sp, #4]
	b _0202C686
_0202C632:
	add r0, r4, #0
	bl sub_0203A138
	add r7, r0, #0
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	ldr r5, _0202C6A0 ; =0x020E5B90
	mov r4, #0
	str r0, [sp, #8]
_0202C644:
	ldr r0, [r5, #0]
	cmp r7, r0
	bne _0202C654
	ldr r0, [sp, #8]
	add r1, r6, #0
	bl sub_0202BDC0
	str r0, [sp, #4]
_0202C654:
	add r4, r4, #1
	add r5, #8
	cmp r4, #0x1b
	blo _0202C644
	b _0202C686
_0202C65E:
	add r0, r4, #0
	bl sub_0203A2A8
	cmp r0, #1
	bne _0202C686
	add r0, r5, #0
	bl sub_0203A288
	cmp r0, #1
	bne _0202C686
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0202C6CC
	cmp r0, #0xff
	beq _0202C686
	add r1, r6, #0
	bl sub_0202BD44
	str r0, [sp, #4]
_0202C686:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0202C696
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r2, #1
	bl sub_0202B758
_0202C696:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0202C69C: .word 0x0000019E
_0202C6A0: .word 0x020E5B90
	thumb_func_end sub_0202C5C4

	thumb_func_start sub_0202C6A4
sub_0202C6A4: ; 0x0202C6A4
	ldr r3, _0202C6C4 ; =0x020E5B90
	mov r2, #0
_0202C6A8:
	ldr r1, [r3, #0]
	cmp r0, r1
	bne _0202C6B6
	ldr r0, _0202C6C8 ; =0x020E5B94
	lsl r1, r2, #3
	ldr r0, [r0, r1]
	bx lr
_0202C6B6:
	add r2, r2, #1
	add r3, #8
	cmp r2, #0x1b
	blo _0202C6A8
	mov r0, #0
	bx lr
	nop
_0202C6C4: .word 0x020E5B90
_0202C6C8: .word 0x020E5B94
	thumb_func_end sub_0202C6A4

	thumb_func_start sub_0202C6CC
sub_0202C6CC: ; 0x0202C6CC
	push {r3, r4, r5, lr}
	ldr r2, _0202C6FC ; =0x020E5B50
	mov r4, #0
_0202C6D2:
	lsl r3, r4, #3
	add r5, r2, r3
	ldrh r5, [r5, #4]
	cmp r1, r5
	bne _0202C6EC
	ldr r1, _0202C700 ; =0x020E5B56
	ldrh r1, [r1, r3]
	bl sub_02025F34
	cmp r0, #0
	bne _0202C6F6
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0202C6EC:
	add r3, r4, #1
	lsl r3, r3, #0x18
	lsr r4, r3, #0x18
	cmp r4, #8
	blo _0202C6D2
_0202C6F6:
	mov r0, #0xff
	pop {r3, r4, r5, pc}
	nop
_0202C6FC: .word 0x020E5B50
_0202C700: .word 0x020E5B56
	thumb_func_end sub_0202C6CC

	thumb_func_start sub_0202C704
sub_0202C704: ; 0x0202C704
	push {r4, lr}
	add r4, r0, #0
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	add r1, r2, #0
	bl sub_0202BD98
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl sub_0202B758
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202C704

	thumb_func_start sub_0202C720
sub_0202C720: ; 0x0202C720
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r7, r1, #0
	add r6, r3, #0
	bl sub_0202C78C
	cmp r0, #8
	bhs _0202C748
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202BD58
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl sub_0202B758
	pop {r3, r4, r5, r6, r7, pc}
_0202C748:
	bne _0202C75E
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0202BD70
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl sub_0202B758
	pop {r3, r4, r5, r6, r7, pc}
_0202C75E:
	cmp r0, #9
	bne _0202C776
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0202BD84
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl sub_0202B758
	pop {r3, r4, r5, r6, r7, pc}
_0202C776:
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202BF4C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #3
	bl sub_0202B758
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202C720

	thumb_func_start sub_0202C78C
sub_0202C78C: ; 0x0202C78C
	ldr r2, _0202C7F0 ; =0x020E5B50
	mov r3, #0
_0202C790:
	lsl r1, r3, #3
	ldr r1, [r2, r1]
	cmp r0, r1
	bne _0202C79C
	add r0, r3, #0
	bx lr
_0202C79C:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #8
	blo _0202C790
	ldr r2, _0202C7F4 ; =0x00000105
	cmp r0, r2
	beq _0202C7D6
	ldr r1, _0202C7F8 ; =0x00000362
	cmp r0, r1
	beq _0202C7D6
	add r3, r2, #1
	cmp r0, r3
	beq _0202C7D6
	add r3, r1, #1
	cmp r0, r3
	beq _0202C7D6
	add r3, r2, #2
	cmp r0, r3
	beq _0202C7D6
	add r3, r1, #2
	cmp r0, r3
	beq _0202C7D6
	add r3, r2, #3
	cmp r0, r3
	beq _0202C7D6
	add r3, r1, #3
	cmp r0, r3
	bne _0202C7DA
_0202C7D6:
	mov r0, #8
	bx lr
_0202C7DA:
	add r2, r2, #6
	cmp r0, r2
	beq _0202C7E6
	add r1, r1, #4
	cmp r0, r1
	bne _0202C7EA
_0202C7E6:
	mov r0, #9
	bx lr
_0202C7EA:
	mov r0, #0xa
	bx lr
	nop
_0202C7F0: .word 0x020E5B50
_0202C7F4: .word 0x00000105
_0202C7F8: .word 0x00000362
	thumb_func_end sub_0202C78C

	.rodata


	.global Unk_020E5B50
Unk_020E5B50: ; 0x020E5B50
	.incbin "incbin/arm9_rodata.bin", 0xF10, 0xF50 - 0xF10

	.global Unk_020E5B90
Unk_020E5B90: ; 0x020E5B90
	.incbin "incbin/arm9_rodata.bin", 0xF50, 0xD8

