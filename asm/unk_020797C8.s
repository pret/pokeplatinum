	.include "macros/function.inc"
	.include "include/unk_020797C8.inc"

	

	.text


	thumb_func_start sub_020797C8
sub_020797C8: ; 0x020797C8
	push {r3, lr}
	bl sub_020797DC
	bl sub_02024804
	pop {r3, pc}
	thumb_func_end sub_020797C8

	thumb_func_start sub_020797D4
sub_020797D4: ; 0x020797D4
	ldr r0, _020797D8 ; =0x000121C8
	bx lr
	; .align 2, 0
_020797D8: .word 0x000121C8
	thumb_func_end sub_020797D4

	thumb_func_start sub_020797DC
sub_020797DC: ; 0x020797DC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r7, #0
	add r6, r0, #4
_020797E4:
	mov r4, #0
	add r5, r6, #0
_020797E8:
	add r0, r5, #0
	bl sub_02073C54
	add r4, r4, #1
	add r5, #0x88
	cmp r4, #0x1e
	blo _020797E8
	mov r0, #0xff
	lsl r0, r0, #4
	add r7, r7, #1
	add r6, r6, r0
	cmp r7, #0x12
	blo _020797E4
	mov r3, #0
	ldr r1, _0207985C ; =0x000121B4
	add r4, r3, #0
	add r2, r3, #0
_0207980A:
	ldr r0, [sp]
	add r0, r0, r3
	strb r4, [r0, r1]
	add r4, r4, #1
	cmp r4, #0x10
	blo _02079818
	add r4, r2, #0
_02079818:
	add r3, r3, #1
	cmp r3, #0x12
	blo _0207980A
	ldr r1, _02079860 ; =0x000121C6
	ldr r0, [sp]
	mov r3, #0
	strb r3, [r0, r1]
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0x12
	bl sub_0200B144
	add r6, r0, #0
	beq _02079854
	ldr r1, _02079864 ; =0x00011EE4
	ldr r0, [sp]
	mov r5, #0
	add r4, r0, r1
_0207983C:
	add r0, r6, #0
	add r1, r5, #6
	add r2, r4, #0
	bl sub_0200B240
	add r5, r5, #1
	add r4, #0x28
	cmp r5, #0x12
	blo _0207983C
	add r0, r6, #0
	bl sub_0200B190
_02079854:
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0207985C: .word 0x000121B4
_02079860: .word 0x000121C6
_02079864: .word 0x00011EE4
	thumb_func_end sub_020797DC

	thumb_func_start sub_02079868
sub_02079868: ; 0x02079868
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0]
	add r6, r1, #0
	mov r7, #0
_02079872:
	add r0, r6, #0
	bl sub_0207896C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020798A0
	cmp r0, #0
	beq _0207988E
	bl sub_02024804
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0207988E:
	add r4, r4, #1
	cmp r4, #0x12
	blo _02079896
	add r4, r7, #0
_02079896:
	ldr r0, [r5, #0]
	cmp r4, r0
	bne _02079872
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02079868

	thumb_func_start sub_020798A0
sub_020798A0: ; 0x020798A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r2, [sp]
	add r0, r2, #0
	add r5, r1, #0
	bl sub_0207896C
	ldr r0, [sp]
	mov r1, #0
	bl sub_02077ADC
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _020798C2
	ldr r5, [r6, #0]
_020798C2:
	mov r0, #0xff
	lsl r0, r0, #4
	add r1, r6, #4
	mul r0, r5
	mov r4, #0
	add r5, r1, r0
	str r5, [sp, #4]
	mov r6, #5
	add r7, r4, #0
_020798D4:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02074570
	cmp r0, #0
	bne _02079904
	mov r0, #0x88
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #4]
	mov r3, #0x11
	add r4, r0, r1
_020798EE:
	ldr r2, [sp]
	sub r3, r3, #1
	ldmia r2!, {r0, r1}
	str r2, [sp]
	stmia r4!, {r0, r1}
	bne _020798EE
	bl sub_02024804
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02079904:
	add r4, r4, #1
	add r5, #0x88
	cmp r4, #0x1e
	blo _020798D4
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020798A0

	thumb_func_start sub_02079914
sub_02079914: ; 0x02079914
	push {r3, r4, r5, r6, r7, lr}
	add r7, r3, #0
	add r5, r0, #0
	add r0, r7, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0207896C
	add r0, r7, #0
	mov r1, #0
	bl sub_02077ADC
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02079936
	ldr r4, [r5, #0]
_02079936:
	cmp r4, #0x12
	bhs _02079960
	cmp r6, #0x1e
	bhs _02079960
	mov r0, #0xff
	lsl r0, r0, #4
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x88
	mul r0, r6
	add r0, r1, r0
	add r3, r0, #4
	mov r2, #0x11
_02079950:
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02079950
	bl sub_02024804
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02079960:
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02079914

	thumb_func_start sub_02079968
sub_02079968: ; 0x02079968
	push {r3, lr}
	mov r3, #0
	mvn r3, r3
	cmp r1, r3
	bne _02079974
	ldr r1, [r0, #0]
_02079974:
	cmp r2, #0x1e
	bhs _02079996
	cmp r1, #0x12
	bhs _02079996
	add r3, r0, #4
	mov r0, #0xff
	lsl r0, r0, #4
	mul r0, r1
	add r1, r3, r0
	mov r0, #0x88
	mul r0, r2
	add r0, r1, r0
	bl sub_02073C54
	bl sub_02024804
	pop {r3, pc}
_02079996:
	bl sub_02022974
	pop {r3, pc}
	thumb_func_end sub_02079968

	thumb_func_start sub_0207999C
sub_0207999C: ; 0x0207999C
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_0207999C

	thumb_func_start sub_020799A0
sub_020799A0: ; 0x020799A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r6, [r0, #0]
	add r0, r0, #4
	mov r7, #0xac
	str r0, [sp, #4]
_020799AE:
	mov r0, #0xff
	lsl r0, r0, #4
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp, #4]
	mov r4, #0
	add r5, r0, r1
_020799BC:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _020799D0
	add sp, #8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020799D0:
	add r4, r4, #1
	add r5, #0x88
	cmp r4, #0x1e
	blt _020799BC
	add r6, r6, #1
	cmp r6, #0x12
	blt _020799E0
	mov r6, #0
_020799E0:
	ldr r0, [sp]
	ldr r0, [r0, #0]
	cmp r6, r0
	bne _020799AE
	mov r0, #0x12
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020799A0

	thumb_func_start sub_020799F0
sub_020799F0: ; 0x020799F0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	str r2, [sp]
	mov r1, #0
	ldr r2, [r6, #0]
	mvn r1, r1
	cmp r2, r1
	bne _02079A04
	ldr r1, [r0, #0]
	str r1, [r6, #0]
_02079A04:
	ldr r1, [sp]
	ldr r4, [r6, #0]
	ldr r5, [r1, #0]
	add r7, r0, #4
	b _02079A34
_02079A0E:
	mov r0, #0xff
	lsl r0, r0, #4
	mul r0, r4
	add r1, r7, r0
	mov r0, #0x88
	mul r0, r5
	add r0, r1, r0
	mov r1, #0xac
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _02079A32
	ldr r0, [sp]
	str r4, [r6, #0]
	str r5, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02079A32:
	add r5, r5, #1
_02079A34:
	cmp r5, #0x1e
	blt _02079A0E
	add r4, r4, #1
	cmp r4, #0x12
	blt _02079A40
	mov r4, #0
_02079A40:
	ldr r0, [r6, #0]
	cmp r4, r0
	beq _02079A4A
	mov r5, #0
	b _02079A34
_02079A4A:
	mov r0, #0x12
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020799F0

	thumb_func_start sub_02079A50
sub_02079A50: ; 0x02079A50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0
	add r0, r0, #4
	str r6, [sp, #4]
	str r0, [sp]
	mov r7, #0xac
_02079A5E:
	ldr r5, [sp]
	mov r4, #0
_02079A62:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _02079A72
	add r6, r6, #1
_02079A72:
	add r4, r4, #1
	add r5, #0x88
	cmp r4, #0x1e
	blt _02079A62
	mov r0, #0xff
	ldr r1, [sp]
	lsl r0, r0, #4
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0x12
	blt _02079A5E
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02079A50

	thumb_func_start sub_02079A94
sub_02079A94: ; 0x02079A94
	push {r3, lr}
	cmp r1, #0x12
	bhs _02079AA2
	str r1, [r0, #0]
	bl sub_02024804
	pop {r3, pc}
_02079AA2:
	bl sub_02022974
	pop {r3, pc}
	thumb_func_end sub_02079A94

	thumb_func_start sub_02079AA8
sub_02079AA8: ; 0x02079AA8
	push {r3, lr}
	cmp r1, #0x12
	bhs _02079AB6
	add r1, r0, r1
	ldr r0, _02079AC0 ; =0x000121B4
	ldrb r0, [r1, r0]
	pop {r3, pc}
_02079AB6:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	nop
_02079AC0: .word 0x000121B4
	thumb_func_end sub_02079AA8

	thumb_func_start sub_02079AC4
sub_02079AC4: ; 0x02079AC4
	push {r3, lr}
	mov r3, #0
	mvn r3, r3
	cmp r1, r3
	bne _02079AD0
	ldr r1, [r0, #0]
_02079AD0:
	cmp r1, #0x12
	bhs _02079AEA
	cmp r2, #0x18
	bhs _02079AEA
	cmp r2, #0x10
	blo _02079ADE
	add r2, #8
_02079ADE:
	add r1, r0, r1
	ldr r0, _02079AF0 ; =0x000121B4
	strb r2, [r1, r0]
	bl sub_02024804
	pop {r3, pc}
_02079AEA:
	bl sub_02022974
	pop {r3, pc}
	; .align 2, 0
_02079AF0: .word 0x000121B4
	thumb_func_end sub_02079AC4

	thumb_func_start sub_02079AF4
sub_02079AF4: ; 0x02079AF4
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02079B02
	ldr r1, [r3, #0]
_02079B02:
	cmp r1, #0x12
	bhs _02079B18
	add r0, r2, #0
	ldr r2, _02079B20 ; =0x00011EE4
	add r3, r3, r2
	mov r2, #0x28
	mul r2, r1
	add r1, r3, r2
	bl sub_02023D28
	pop {r3, pc}
_02079B18:
	bl sub_02022974
	pop {r3, pc}
	nop
_02079B20: .word 0x00011EE4
	thumb_func_end sub_02079AF4

	thumb_func_start sub_02079B24
sub_02079B24: ; 0x02079B24
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02079B32
	ldr r1, [r3, #0]
_02079B32:
	cmp r1, #0x12
	bhs _02079B4C
	add r0, r2, #0
	ldr r2, _02079B50 ; =0x00011EE4
	add r3, r3, r2
	mov r2, #0x28
	mul r2, r1
	add r1, r3, r2
	mov r2, #0x14
	bl sub_02023DF0
	bl sub_02024804
_02079B4C:
	pop {r3, pc}
	nop
_02079B50: .word 0x00011EE4
	thumb_func_end sub_02079B24

	thumb_func_start sub_02079B54
sub_02079B54: ; 0x02079B54
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0
	mvn r2, r2
	cmp r1, r2
	bne _02079B60
	ldr r1, [r0, #0]
_02079B60:
	cmp r1, #0x12
	bhs _02079B90
	add r2, r0, #4
	mov r0, #0xff
	lsl r0, r0, #4
	mov r4, #0
	mul r0, r1
	add r6, r4, #0
	add r5, r2, r0
	mov r7, #0xac
_02079B74:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _02079B84
	add r4, r4, #1
_02079B84:
	add r6, r6, #1
	add r5, #0x88
	cmp r6, #0x1e
	blt _02079B74
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02079B90:
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02079B54

	thumb_func_start sub_02079B98
sub_02079B98: ; 0x02079B98
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0
	mvn r2, r2
	cmp r1, r2
	bne _02079BA4
	ldr r1, [r0, #0]
_02079BA4:
	cmp r1, #0x12
	bhs _02079BE2
	add r2, r0, #4
	mov r0, #0xff
	lsl r0, r0, #4
	mov r4, #0
	mul r0, r1
	add r6, r4, #0
	add r5, r2, r0
	mov r7, #0xac
_02079BB8:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	beq _02079BD6
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _02079BD6
	add r4, r4, #1
_02079BD6:
	add r6, r6, #1
	add r5, #0x88
	cmp r6, #0x1e
	blt _02079BB8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02079BE2:
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02079B98

	thumb_func_start sub_02079BEC
sub_02079BEC: ; 0x02079BEC
	push {r4, r5, r6, lr}
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
_02079BF4:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02079B98
	add r5, r5, #1
	add r4, r4, r0
	cmp r5, #0x12
	blo _02079BF4
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02079BEC

	thumb_func_start sub_02079C08
sub_02079C08: ; 0x02079C08
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0x12
	blo _02079C22
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _02079C22
	bl sub_02022974
_02079C22:
	cmp r6, #0x1e
	blo _02079C2A
	bl sub_02022974
_02079C2A:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02079C34
	ldr r4, [r5, #0]
_02079C34:
	mov r0, #0xff
	lsl r0, r0, #4
	add r1, r5, #4
	mul r0, r4
	add r1, r1, r0
	mov r0, #0x88
	mul r0, r6
	add r0, r1, r0
	ldr r2, [sp, #0x18]
	add r1, r7, #0
	bl sub_02074570
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02079C08

	thumb_func_start sub_02079C50
sub_02079C50: ; 0x02079C50
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0x12
	blo _02079C6A
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _02079C6A
	bl sub_02022974
_02079C6A:
	cmp r6, #0x1e
	blo _02079C72
	bl sub_02022974
_02079C72:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02079C7C
	ldr r4, [r5, #0]
_02079C7C:
	mov r0, #0xff
	lsl r0, r0, #4
	add r1, r5, #4
	mul r0, r4
	add r1, r1, r0
	mov r0, #0x88
	mul r0, r6
	add r0, r1, r0
	ldr r2, [sp, #0x18]
	add r1, r7, #0
	bl sub_02074C60
	bl sub_02024804
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02079C50

	thumb_func_start sub_02079C9C
sub_02079C9C: ; 0x02079C9C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x12
	blo _02079CB4
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _02079CB4
	bl sub_02022974
_02079CB4:
	cmp r6, #0x1e
	blo _02079CBC
	bl sub_02022974
_02079CBC:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02079CC6
	ldr r4, [r5, #0]
_02079CC6:
	mov r0, #0xff
	lsl r0, r0, #4
	add r1, r5, #4
	mul r0, r4
	add r1, r1, r0
	mov r0, #0x88
	mul r0, r6
	add r0, r1, r0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02079C9C

	thumb_func_start sub_02079CD8
sub_02079CD8: ; 0x02079CD8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #8
	blo _02079CE6
	bl sub_02022974
_02079CE6:
	ldr r0, _02079CF8 ; =0x000121C6
	mov r1, #1
	ldrb r2, [r5, r0]
	lsl r1, r4
	orr r1, r2
	strb r1, [r5, r0]
	bl sub_02024804
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02079CF8: .word 0x000121C6
	thumb_func_end sub_02079CD8

	thumb_func_start sub_02079CFC
sub_02079CFC: ; 0x02079CFC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #8
	blo _02079D0A
	bl sub_02022974
_02079D0A:
	ldr r0, _02079D1C ; =0x000121C6
	ldrb r2, [r5, r0]
	mov r0, #1
	add r1, r0, #0
	lsl r1, r4
	tst r1, r2
	bne _02079D1A
	mov r0, #0
_02079D1A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02079D1C: .word 0x000121C6
	thumb_func_end sub_02079CFC

	thumb_func_start sub_02079D20
sub_02079D20: ; 0x02079D20
	push {r4, r5, r6, lr}
	mov r4, #0
	add r6, r0, #0
	add r5, r4, #0
_02079D28:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02079CFC
	cmp r0, #0
	beq _02079D36
	add r5, r5, #1
_02079D36:
	add r4, r4, #1
	cmp r4, #8
	blo _02079D28
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02079D20