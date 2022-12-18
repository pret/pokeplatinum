
	.include "macros/function.inc"
	.include "include/arm9_8.inc"

	.text

	thumb_func_start sub_02078740
sub_02078740: ; 0x02078740
	ldr r2, _020787C8 ; =0x000001DF
	cmp r0, r2
	bgt _02078764
	bge _020787B8
	add r3, r2, #0
	sub r3, #0x5d
	cmp r0, r3
	bgt _0207875A
	add r3, r2, #0
	sub r3, #0x5d
	cmp r0, r3
	beq _02078780
	bx lr
_0207875A:
	add r3, r2, #0
	sub r3, #0x42
	cmp r0, r3
	beq _0207878E
	bx lr
_02078764:
	add r3, r2, #0
	add r3, #8
	cmp r0, r3
	bgt _02078776
	add r3, r2, #0
	add r3, #8
	cmp r0, r3
	beq _0207879C
	bx lr
_02078776:
	add r3, r2, #0
	add r3, #0xd
	cmp r0, r3
	beq _020787AA
	bx lr
_02078780:
	cmp r1, #0
	beq _020787C4
	cmp r1, #3
	bgt _020787C4
	add r2, #0x10
	add r0, r1, r2
	bx lr
_0207878E:
	cmp r1, #0
	beq _020787C4
	cmp r1, #2
	bgt _020787C4
	add r2, #0x13
	add r0, r1, r2
	bx lr
_0207879C:
	cmp r1, #0
	beq _020787C4
	cmp r1, #1
	bgt _020787C4
	add r2, #0x15
	add r0, r1, r2
	bx lr
_020787AA:
	cmp r1, #0
	beq _020787C4
	cmp r1, #1
	bgt _020787C4
	add r2, #0x16
	add r0, r1, r2
	bx lr
_020787B8:
	cmp r1, #0
	beq _020787C4
	cmp r1, #5
	bgt _020787C4
	add r2, #0x17
	add r0, r1, r2
_020787C4:
	bx lr
	nop
_020787C8: .word 0x000001DF
	thumb_func_end sub_02078740

	thumb_func_start sub_020787CC
sub_020787CC: ; 0x020787CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #1
	cmp r5, #0x20
	blt _020787DA
	bl sub_02022974
_020787DA:
	mov r0, #0
	cmp r5, #0
	ble _020787E8
_020787E0:
	add r0, r0, #1
	lsl r4, r4, #1
	cmp r0, r5
	blt _020787E0
_020787E8:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020787CC

	thumb_func_start sub_020787EC
sub_020787EC: ; 0x020787EC
	mov r3, #1
	mov r2, #0
_020787F0:
	add r1, r0, #0
	tst r1, r3
	bne _020787FE
	add r2, r2, #1
	lsl r3, r3, #1
	cmp r2, #0x20
	blt _020787F0
_020787FE:
	add r0, r2, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020787EC

	thumb_func_start sub_02078804
sub_02078804: ; 0x02078804
	ldr r3, _02078820 ; =0x020F05BE
	mov r2, #0
_02078808:
	ldrh r1, [r3]
	cmp r0, r1
	bne _02078812
	mov r0, #1
	bx lr
_02078812:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0x12
	blo _02078808
	mov r0, #0
	bx lr
	nop
_02078820: .word 0x020F05BE
	thumb_func_end sub_02078804

	thumb_func_start sub_02078824
sub_02078824: ; 0x02078824
	cmp r0, #0x12
	blo _0207882A
	mov r0, #0
_0207882A:
	lsl r1, r0, #1
	ldr r0, _02078834 ; =0x020F05BE
	ldrh r0, [r0, r1]
	bx lr
	nop
_02078834: .word 0x020F05BE
	thumb_func_end sub_02078824

	thumb_func_start sub_02078838
sub_02078838: ; 0x02078838
	push {r3, lr}
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02078804
	pop {r3, pc}
	thumb_func_end sub_02078838

	thumb_func_start sub_0207884C
sub_0207884C: ; 0x0207884C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl sub_02025F20
	str r0, [sp]
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074570
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02025F30
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0x9d
	mov r2, #0
	bl sub_02074570
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02025F04
	add r7, r0, #0
	mov r0, #8
	add r1, r6, #0
	bl sub_02023790
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x91
	add r2, r6, #0
	mov r4, #0
	bl sub_02074570
	ldr r1, [sp]
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _020788BC
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bne _020788BC
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02023BE0
	cmp r0, #0
	bne _020788BC
	mov r4, #1
_020788BC:
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207884C

	thumb_func_start sub_020788D0
sub_020788D0: ; 0x020788D0
	push {r3, lr}
	cmp r0, #0x3f
	bgt _020788E8
	bge _02078920
	cmp r0, #1
	bgt _0207892C
	cmp r0, #0
	blt _0207892C
	beq _0207893A
	cmp r0, #1
	beq _0207893A
	b _0207892C
_020788E8:
	cmp r0, #0x5a
	bgt _020788F0
	beq _02078924
	b _0207892C
_020788F0:
	add r1, r0, #0
	sub r1, #0x5b
	cmp r1, #0xd
	bhi _0207892C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02078904: ; jump table
	.short _02078924 - _02078904 - 2 ; case 0
	.short _02078924 - _02078904 - 2 ; case 1
	.short _02078924 - _02078904 - 2 ; case 2
	.short _02078924 - _02078904 - 2 ; case 3
	.short _0207892C - _02078904 - 2 ; case 4
	.short _0207892C - _02078904 - 2 ; case 5
	.short _0207892C - _02078904 - 2 ; case 6
	.short _0207892C - _02078904 - 2 ; case 7
	.short _0207892C - _02078904 - 2 ; case 8
	.short _0207892C - _02078904 - 2 ; case 9
	.short _0207892C - _02078904 - 2 ; case 10
	.short _0207892C - _02078904 - 2 ; case 11
	.short _02078928 - _02078904 - 2 ; case 12
	.short _02078928 - _02078904 - 2 ; case 13
_02078920:
	mov r0, #2
	pop {r3, pc}
_02078924:
	sub r0, #0x57
	pop {r3, pc}
_02078928:
	sub r0, #0x5f
	pop {r3, pc}
_0207892C:
	bl sub_020793AC
	cmp r0, #1
	bne _02078938
	mov r0, #1
	pop {r3, pc}
_02078938:
	mov r0, #0
_0207893A:
	pop {r3, pc}
	thumb_func_end sub_020788D0

	thumb_func_start sub_0207893C
sub_0207893C: ; 0x0207893C
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	mov r0, #0
	add r1, sp, #0
	strb r0, [r1]
	add r1, sp, #0
	add r1, #1
	mov r2, #0x18
	bl sub_020C4BB8
	add r0, r4, #0
	mov r1, #0xa2
	add r2, sp, #0
	bl sub_02074B30
	add r2, sp, #0
	add r0, r4, #0
	mov r1, #0xab
	add r2, #1
	bl sub_02074B30
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end sub_0207893C

	thumb_func_start sub_0207896C
sub_0207896C: ; 0x0207896C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_02073D20
	mov r4, #0
	str r0, [sp]
	add r7, r4, #0
	add r6, sp, #4
_0207897E:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x36
	add r2, r7, #0
	bl sub_02074570
	cmp r0, #0
	beq _020789A8
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x42
	mov r2, #0
	bl sub_02074570
	add r1, r4, #0
	strb r0, [r6]
	add r0, r5, #0
	add r1, #0x3a
	add r2, sp, #4
	bl sub_02074C60
_020789A8:
	add r4, r4, #1
	cmp r4, #4
	blt _0207897E
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02073D48
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207896C

	thumb_func_start sub_020789BC
sub_020789BC: ; 0x020789BC
	push {r4, r5, r6, lr}
	sub sp, #0x60
	add r4, r1, #0
	mov r5, #1
	add r1, r3, #0
	add r6, r2, #0
	tst r1, r5
	beq _020789CE
	mov r5, #0
_020789CE:
	add r1, sp, #4
	str r1, [sp]
	mov r3, #0x59
	add r2, r6, #0
	mov r1, #0
	mul r2, r3
	bl sub_02006DC8
	mov r0, #0x2b
	add r1, sp, #4
	mul r0, r5
	add r0, r1, r0
	add r0, r0, #3
	add r1, r4, #0
	mov r2, #0x28
	bl sub_020C4DB0
	add sp, #0x60
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020789BC

	thumb_func_start sub_020789F4
sub_020789F4: ; 0x020789F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r5, r1, #0
	ldr r1, [sp, #0x78]
	add r6, r2, #0
	add r2, r3, #0
	cmp r1, #2
	beq _02078A08
	mov r4, #1
	b _02078A0A
_02078A08:
	mov r4, #0
_02078A0A:
	add r1, sp, #8
	add r1, #2
	str r1, [sp]
	mov r7, #0x59
	add r3, r2, #0
	mul r3, r7
	add r2, r3, #0
	mov r1, #0
	add r3, r7, #0
	bl sub_02006DC8
	mov r0, #0x2b
	add r1, sp, #8
	ldr r3, [sp, #0x80]
	mul r0, r4
	add r1, #3
	ldrb r2, [r1, r0]
	add r1, sp, #4
	lsl r3, r3, #0x18
	strh r2, [r1]
	add r2, sp, #0xc
	ldrb r0, [r2, r0]
	add r2, sp, #4
	lsr r3, r3, #0x18
	strh r0, [r1, #2]
	ldr r0, [sp, #0x7c]
	strb r0, [r1, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02015FCC
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020789F4

	thumb_func_start sub_02078A4C
sub_02078A4C: ; 0x02078A4C
	push {r4, r5, r6, lr}
	sub sp, #0x60
	add r4, r1, #0
	mov r5, #1
	add r1, r3, #0
	add r6, r2, #0
	tst r1, r5
	beq _02078A5E
	mov r5, #0
_02078A5E:
	add r1, sp, #4
	str r1, [sp]
	mov r3, #0x59
	add r2, r6, #0
	mov r1, #0
	mul r2, r3
	bl sub_02006DC8
	mov r0, #0x2b
	add r1, r5, #0
	mul r1, r0
	add r0, sp, #4
	ldrb r0, [r0, r1]
	strb r0, [r4]
	add sp, #0x60
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02078A4C

	thumb_func_start sub_02078A80
sub_02078A80: ; 0x02078A80
	push {r3, r4, r5, lr}
	sub sp, #0x60
	mov r3, #0x59
	add r5, r2, #0
	add r4, r1, #0
	add r1, sp, #4
	mul r5, r3
	str r1, [sp]
	mov r1, #0
	add r2, r5, #0
	bl sub_02006DC8
	add r1, sp, #0x44
	mov r0, #0x16
	ldrsb r0, [r1, r0]
	strb r0, [r4]
	add sp, #0x60
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02078A80

	thumb_func_start sub_02078AA4
sub_02078AA4: ; 0x02078AA4
	push {r3, r4, r5, lr}
	sub sp, #0x60
	mov r3, #0x59
	add r5, r2, #0
	add r4, r1, #0
	add r1, sp, #4
	mul r5, r3
	str r1, [sp]
	mov r1, #0
	add r2, r5, #0
	bl sub_02006DC8
	add r1, sp, #0x44
	mov r0, #0x17
	ldrsb r0, [r1, r0]
	strb r0, [r4]
	add sp, #0x60
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02078AA4

	thumb_func_start sub_02078AC8
sub_02078AC8: ; 0x02078AC8
	push {r3, r4, r5, lr}
	sub sp, #0x60
	mov r3, #0x59
	add r5, r2, #0
	add r4, r1, #0
	add r1, sp, #4
	mul r5, r3
	str r1, [sp]
	mov r1, #0
	add r2, r5, #0
	bl sub_02006DC8
	add r0, sp, #0x44
	ldrb r0, [r0, #0x18]
	strb r0, [r4]
	add sp, #0x60
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02078AC8

	thumb_func_start sub_02078AEC
sub_02078AEC: ; 0x02078AEC
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02078AFE
	add sp, #0x20
	mov r0, #0
	pop {r4, r5, r6, pc}
_02078AFE:
	mov r0, #0x98
	add r1, r2, #0
	bl sub_02006C24
	mov r1, #1
	sub r5, r5, #1
	str r1, [sp, #4]
	add r1, sp, #8
	str r1, [sp]
	mov r3, #0x18
	add r2, r5, #0
	mov r1, #0
	mul r2, r3
	add r6, r0, #0
	bl sub_02006DC8
	add r0, r4, #0
	mov r1, #0xa2
	add r2, sp, #4
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0xab
	add r2, sp, #8
	bl sub_02074B30
	add r0, r6, #0
	bl sub_02006CA8
	mov r0, #1
	add sp, #0x20
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02078AEC

	thumb_func_start sub_02078B40
sub_02078B40: ; 0x02078B40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldrh r0, [r0, #4]
	add r4, r1, #0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _02078B6C
	ldr r2, [sp]
	ldr r0, [sp]
	ldr r2, [r2, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_02078234
	ldr r2, [sp]
	ldr r0, [sp]
	ldrh r2, [r2, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_02078234
_02078B6C:
	ldr r0, [sp]
	bl sub_02076B10
	add r6, r0, #0
	ldr r1, [r6, #0]
	mov r2, #0
	bl sub_0207825C
	add r5, r0, #0
	ldr r1, [r6, #0]
	add r0, r6, #0
	mov r2, #1
	bl sub_0207825C
	str r0, [sp, #4]
	ldr r1, [r6, #0]
	add r0, r6, #0
	mov r2, #2
	bl sub_0207825C
	add r7, r0, #0
	ldr r1, [r6, #0]
	add r0, r6, #0
	mov r2, #3
	bl sub_0207825C
	mov ip, r0
	ldr r0, [r6, #0]
	ldr r3, [sp, #4]
	str r0, [r4, #0]
	ldrh r1, [r4, #4]
	mov r0, #1
	mov r2, #0
	bic r1, r0
	strh r1, [r4, #4]
	ldrh r1, [r4, #4]
	mov r0, #2
	bic r1, r0
	strh r1, [r4, #4]
	ldrh r0, [r4, #4]
	mov r1, #4
	bic r0, r1
	ldrh r1, [r6, #4]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1d
	orr r0, r1
	strh r0, [r4, #4]
	ldrh r0, [r5]
	strh r0, [r4, #6]
	ldrh r0, [r5, #2]
	strh r0, [r4, #8]
	ldr r0, [r5, #4]
	str r0, [r4, #0xc]
	ldr r0, [r5, #8]
	str r0, [r4, #0x10]
	ldrb r0, [r5, #0xc]
	strb r0, [r4, #0x14]
	ldrb r0, [r5, #0xd]
	strb r0, [r4, #0x15]
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x16]
	ldrb r0, [r5, #0x11]
	strb r0, [r4, #0x17]
	ldrb r0, [r5, #0x12]
	strb r0, [r4, #0x18]
	ldrb r0, [r5, #0x13]
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #0x14]
	strb r0, [r4, #0x1a]
	ldrb r0, [r5, #0x15]
	strb r0, [r4, #0x1b]
	ldrb r1, [r5, #0xf]
	add r0, r4, #0
	add r0, #0x59
	strb r1, [r0]
	add r5, r4, #0
_02078C08:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r5, #0x1c]
	ldr r0, [sp, #4]
	add r5, r5, #2
	add r6, r0, r2
	add r0, r4, r2
	ldrb r1, [r6, #8]
	add r0, #0x24
	strb r1, [r0]
	add r0, r4, r2
	ldrb r1, [r6, #0xc]
	add r0, #0x28
	add r2, r2, #1
	strb r1, [r0]
	cmp r2, #4
	blt _02078C08
	ldr r0, [r4, #0x2c]
	mov r1, #0x1f
	bic r0, r1
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	lsl r1, r1, #0x1b
	lsr r2, r1, #0x1b
	mov r1, #0x1f
	and r1, r2
	orr r1, r0
	ldr r0, _02078DF0 ; =0xFFFFFC1F
	str r1, [r4, #0x2c]
	and r0, r1
	ldr r1, [sp, #4]
	mov r2, #1
	ldr r1, [r1, #0x10]
	lsl r1, r1, #0x16
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x16
	orr r1, r0
	ldr r0, _02078DF4 ; =0xFFFF83FF
	str r1, [r4, #0x2c]
	and r0, r1
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x11
	orr r1, r0
	ldr r0, _02078DF8 ; =0xFFF07FFF
	str r1, [r4, #0x2c]
	and r0, r1
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	lsl r1, r1, #0xc
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #0xc
	orr r1, r0
	ldr r0, _02078DFC ; =0xFE0FFFFF
	str r1, [r4, #0x2c]
	and r0, r1
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	lsl r1, r1, #7
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #7
	orr r1, r0
	ldr r0, _02078E00 ; =0xC1FFFFFF
	str r1, [r4, #0x2c]
	and r0, r1
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	lsl r1, r1, #2
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #2
	orr r1, r0
	ldr r0, _02078E04 ; =0xBFFFFFFF
	str r1, [r4, #0x2c]
	and r0, r1
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	lsl r1, r1, #1
	lsr r1, r1, #0x1f
	lsl r1, r1, #0x1f
	lsr r1, r1, #1
	orr r1, r0
	ldr r0, _02078E08 ; =0x7FFFFFFF
	str r1, [r4, #0x2c]
	and r0, r1
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	lsr r1, r1, #0x1f
	lsl r1, r1, #0x1f
	orr r0, r1
	str r0, [r4, #0x2c]
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	add r1, r4, #0
	add r1, #0x30
	bic r0, r2
	ldr r2, [sp, #4]
	ldrb r2, [r2, #0x18]
	lsl r2, r2, #0x1f
	lsr r3, r2, #0x1f
	mov r2, #1
	and r2, r3
	orr r2, r0
	add r0, r4, #0
	add r0, #0x30
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	mov r2, #6
	bic r0, r2
	ldr r2, [sp, #4]
	ldrb r2, [r2, #0x18]
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x1e
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1d
	orr r2, r0
	add r0, r4, #0
	add r0, #0x30
	strb r2, [r0]
	ldrb r0, [r1]
	mov r2, #0xf8
	bic r0, r2
	ldr r2, [sp, #4]
	ldrb r2, [r2, #0x18]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1b
	lsl r2, r2, #0x1b
	lsr r2, r2, #0x18
	orr r0, r2
	strb r0, [r1]
	mov r2, #0
	add r1, r4, #0
_02078D22:
	ldrh r0, [r7]
	add r2, r2, #1
	add r7, r7, #2
	strh r0, [r1, #0x32]
	add r1, r1, #2
	cmp r2, #0xb
	blt _02078D22
	mov r5, #0
	mov r2, ip
	add r3, r4, #0
_02078D36:
	ldrh r1, [r2]
	add r0, r3, #0
	add r0, #0x48
	add r5, r5, #1
	strh r1, [r0]
	add r2, r2, #2
	add r3, r3, #2
	cmp r5, #8
	blt _02078D36
	mov r0, ip
	ldrb r1, [r0, #0x1b]
	add r0, r4, #0
	add r0, #0x58
	strb r1, [r0]
	ldr r0, [sp]
	add r0, #0x88
	ldr r0, [r0, #0]
	str r0, [r4, #0x5c]
	ldr r0, [sp]
	add r0, #0x8c
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x60
	strb r1, [r0]
	ldr r0, [sp]
	add r0, #0x8d
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x61
	strb r1, [r0]
	ldr r0, [sp]
	add r0, #0x8e
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x62
	strh r1, [r0]
	ldr r0, [sp]
	add r0, #0x90
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	strh r1, [r0]
	ldr r0, [sp]
	add r0, #0x92
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	strh r1, [r0]
	ldr r0, [sp]
	add r0, #0x94
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x68
	strh r1, [r0]
	ldr r0, [sp]
	add r0, #0x96
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x6a
	strh r1, [r0]
	ldr r0, [sp]
	add r0, #0x98
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x6c
	strh r1, [r0]
	ldr r0, [sp]
	add r4, #0x6e
	add r0, #0x9a
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _02078DEA
	ldr r2, [sp]
	ldr r0, [sp]
	ldr r2, [r2, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_0207822C
	ldr r2, [sp]
	ldr r0, [sp]
	ldrh r2, [r2, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
_02078DEA:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02078DF0: .word 0xFFFFFC1F
_02078DF4: .word 0xFFFF83FF
_02078DF8: .word 0xFFF07FFF
_02078DFC: .word 0xFE0FFFFF
_02078E00: .word 0xC1FFFFFF
_02078E04: .word 0xBFFFFFFF
_02078E08: .word 0x7FFFFFFF
	thumb_func_end sub_02078B40

	thumb_func_start sub_02078E0C
sub_02078E0C: ; 0x02078E0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0
	mov r2, #0xec
	bl sub_020C4BB8
	ldr r0, [sp]
	bl sub_02076B10
	ldr r1, [r4, #0]
	str r0, [sp, #4]
	mov r2, #0
	bl sub_0207825C
	add r5, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [r4, #0]
	mov r2, #1
	bl sub_0207825C
	add r6, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [r4, #0]
	mov r2, #2
	bl sub_0207825C
	add r7, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [r4, #0]
	mov r2, #3
	bl sub_0207825C
	mov ip, r0
	ldr r1, [r4, #0]
	ldr r0, [sp, #4]
	add r2, r4, #0
	str r1, [r0, #0]
	ldrh r0, [r0, #4]
	mov r1, #1
	add r3, r6, #0
	bic r0, r1
	ldr r1, [sp, #4]
	strh r0, [r1, #4]
	add r0, r1, #0
	ldrh r0, [r0, #4]
	mov r1, #2
	bic r0, r1
	ldr r1, [sp, #4]
	strh r0, [r1, #4]
	add r0, r1, #0
	ldrh r0, [r0, #4]
	mov r1, #4
	bic r0, r1
	ldrh r1, [r4, #4]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1d
	orr r1, r0
	ldr r0, [sp, #4]
	strh r1, [r0, #4]
	ldrh r0, [r4, #6]
	mov r1, #0
	strh r0, [r5]
	ldrh r0, [r4, #8]
	strh r0, [r5, #2]
	ldr r0, [r4, #0xc]
	str r0, [r5, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #8]
	ldrb r0, [r4, #0x14]
	strb r0, [r5, #0xc]
	ldrb r0, [r4, #0x15]
	strb r0, [r5, #0xd]
	ldrb r0, [r4, #0x16]
	strb r0, [r5, #0x10]
	ldrb r0, [r4, #0x17]
	strb r0, [r5, #0x11]
	ldrb r0, [r4, #0x18]
	strb r0, [r5, #0x12]
	ldrb r0, [r4, #0x19]
	strb r0, [r5, #0x13]
	ldrb r0, [r4, #0x1a]
	strb r0, [r5, #0x14]
	ldrb r0, [r4, #0x1b]
	strb r0, [r5, #0x15]
	add r0, r4, #0
	add r0, #0x59
	ldrb r0, [r0]
	strb r0, [r5, #0xf]
_02078EC4:
	ldrh r0, [r2, #0x1c]
	add r5, r4, r1
	add r5, #0x24
	strh r0, [r3]
	ldrb r5, [r5]
	add r0, r6, r1
	add r2, r2, #2
	strb r5, [r0, #8]
	add r5, r4, r1
	add r5, #0x28
	ldrb r5, [r5]
	add r1, r1, #1
	add r3, r3, #2
	strb r5, [r0, #0xc]
	cmp r1, #4
	blt _02078EC4
	ldr r0, [r6, #0x10]
	mov r1, #0x1f
	bic r0, r1
	ldr r1, [r4, #0x2c]
	lsl r1, r1, #0x1b
	lsr r2, r1, #0x1b
	mov r1, #0x1f
	and r1, r2
	orr r1, r0
	ldr r0, _02079094 ; =0xFFFFFC1F
	str r1, [r6, #0x10]
	and r0, r1
	ldr r1, [r4, #0x2c]
	add r2, r6, #0
	lsl r1, r1, #0x16
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x16
	orr r1, r0
	ldr r0, _02079098 ; =0xFFFF83FF
	str r1, [r6, #0x10]
	and r0, r1
	ldr r1, [r4, #0x2c]
	add r2, #0x18
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x11
	orr r1, r0
	ldr r0, _0207909C ; =0xFFF07FFF
	str r1, [r6, #0x10]
	and r0, r1
	ldr r1, [r4, #0x2c]
	lsl r1, r1, #0xc
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #0xc
	orr r1, r0
	ldr r0, _020790A0 ; =0xFE0FFFFF
	str r1, [r6, #0x10]
	and r0, r1
	ldr r1, [r4, #0x2c]
	lsl r1, r1, #7
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #7
	orr r1, r0
	ldr r0, _020790A4 ; =0xC1FFFFFF
	str r1, [r6, #0x10]
	and r0, r1
	ldr r1, [r4, #0x2c]
	lsl r1, r1, #2
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #2
	orr r1, r0
	ldr r0, _020790A8 ; =0xBFFFFFFF
	str r1, [r6, #0x10]
	and r0, r1
	ldr r1, [r4, #0x2c]
	lsl r1, r1, #1
	lsr r1, r1, #0x1f
	lsl r1, r1, #0x1f
	lsr r1, r1, #1
	orr r1, r0
	ldr r0, _020790AC ; =0x7FFFFFFF
	str r1, [r6, #0x10]
	and r0, r1
	ldr r1, [r4, #0x2c]
	lsr r1, r1, #0x1f
	lsl r1, r1, #0x1f
	orr r0, r1
	str r0, [r6, #0x10]
	ldrb r3, [r6, #0x18]
	mov r0, #1
	bic r3, r0
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r1, r0, #0x1f
	mov r0, #1
	and r0, r1
	orr r0, r3
	strb r0, [r6, #0x18]
	ldrb r0, [r6, #0x18]
	mov r1, #6
	bic r0, r1
	add r1, r4, #0
	add r1, #0x30
	ldrb r1, [r1]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1e
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1d
	orr r0, r1
	strb r0, [r6, #0x18]
	ldrb r0, [r2]
	mov r1, #0xf8
	bic r0, r1
	add r1, r4, #0
	add r1, #0x30
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r2]
	mov r2, #0
	add r1, r4, #0
_02078FC2:
	ldrh r0, [r1, #0x32]
	add r2, r2, #1
	add r1, r1, #2
	strh r0, [r7]
	add r7, r7, #2
	cmp r2, #0xb
	blt _02078FC2
	mov r3, #0
	add r1, r4, #0
	mov r2, ip
_02078FD6:
	add r0, r1, #0
	add r0, #0x48
	ldrh r0, [r0]
	add r3, r3, #1
	add r1, r1, #2
	strh r0, [r2]
	add r2, r2, #2
	cmp r3, #8
	blt _02078FD6
	add r0, r4, #0
	add r0, #0x58
	ldrb r1, [r0]
	mov r0, ip
	ldr r2, [sp]
	strb r1, [r0, #0x1b]
	ldr r0, [sp]
	ldr r1, [r4, #0x5c]
	add r0, #0x88
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x60
	ldrb r1, [r0]
	ldr r0, [sp]
	add r0, #0x8c
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x61
	ldrb r1, [r0]
	ldr r0, [sp]
	add r0, #0x8d
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x62
	ldrh r1, [r0]
	ldr r0, [sp]
	add r0, #0x8e
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrh r1, [r0]
	ldr r0, [sp]
	add r0, #0x90
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrh r1, [r0]
	ldr r0, [sp]
	add r0, #0x92
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x68
	ldrh r1, [r0]
	ldr r0, [sp]
	add r0, #0x94
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x6a
	ldrh r1, [r0]
	ldr r0, [sp]
	add r0, #0x96
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x6c
	ldrh r1, [r0]
	ldr r0, [sp]
	add r4, #0x6e
	add r0, #0x98
	strh r1, [r0]
	ldr r0, [sp]
	ldrh r1, [r4]
	add r0, #0x9a
	strh r1, [r0]
	ldr r0, [sp]
	ldr r2, [r2, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_0207822C
	ldr r0, [sp]
	mov r1, #0x80
	add r0, #8
	bl sub_0207823C
	ldr r1, [sp]
	ldr r2, [sp]
	strh r0, [r1, #6]
	add r0, r1, #0
	ldrh r2, [r2, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02079094: .word 0xFFFFFC1F
_02079098: .word 0xFFFF83FF
_0207909C: .word 0xFFF07FFF
_020790A0: .word 0xFE0FFFFF
_020790A4: .word 0xC1FFFFFF
_020790A8: .word 0xBFFFFFFF
_020790AC: .word 0x7FFFFFFF
	thumb_func_end sub_02078E0C

	thumb_func_start sub_020790B0
sub_020790B0: ; 0x020790B0
	push {r3, lr}
	mov r1, #0x75
	lsl r1, r1, #6
	mov r2, #0
	str r1, [sp]
	mov r1, #9
	add r3, r2, #0
	bl sub_02006AFC
	pop {r3, pc}
	thumb_func_end sub_020790B0

	thumb_func_start sub_020790C4
sub_020790C4: ; 0x020790C4
	push {r4, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02079160
	add r0, sp, #0
	add r1, r4, #0
	bl sub_02079104
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_020790C4

	thumb_func_start sub_020790DC
sub_020790DC: ; 0x020790DC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	cmp r5, #3
	bls _020790E6
	mov r5, #3
_020790E6:
	mov r1, #5
	bl sub_020790C4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	mov r0, #0x14
	mul r0, r4
	mul r0, r5
	mov r1, #0x64
	bl sub_020E1F6C
	add r0, r4, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020790DC

	thumb_func_start sub_02079104
sub_02079104: ; 0x02079104
	cmp r1, #0xb
	bhi _0207915C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02079114: ; jump table
	.short _0207912C - _02079114 - 2 ; case 0
	.short _02079130 - _02079114 - 2 ; case 1
	.short _02079134 - _02079114 - 2 ; case 2
	.short _02079138 - _02079114 - 2 ; case 3
	.short _0207913C - _02079114 - 2 ; case 4
	.short _02079140 - _02079114 - 2 ; case 5
	.short _02079144 - _02079114 - 2 ; case 6
	.short _02079148 - _02079114 - 2 ; case 7
	.short _0207914C - _02079114 - 2 ; case 8
	.short _02079152 - _02079114 - 2 ; case 9
	.short _02079156 - _02079114 - 2 ; case 10
	.short _0207915A - _02079114 - 2 ; case 11
_0207912C:
	ldrh r0, [r0]
	bx lr
_02079130:
	ldrb r0, [r0, #2]
	bx lr
_02079134:
	ldrb r0, [r0, #3]
	bx lr
_02079138:
	ldrb r0, [r0, #4]
	bx lr
_0207913C:
	ldrb r0, [r0, #5]
	bx lr
_02079140:
	ldrb r0, [r0, #6]
	bx lr
_02079144:
	ldrb r0, [r0, #7]
	bx lr
_02079148:
	ldrh r0, [r0, #8]
	bx lr
_0207914C:
	mov r1, #0xa
	ldrsb r0, [r0, r1]
	bx lr
_02079152:
	ldrb r0, [r0, #0xb]
	bx lr
_02079156:
	ldrb r0, [r0, #0xc]
	bx lr
_0207915A:
	ldrb r0, [r0, #0xd]
_0207915C:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02079104

	thumb_func_start sub_02079160
sub_02079160: ; 0x02079160
	ldr r3, _0207916C ; =sub_02006AA4
	add r2, r0, #0
	add r0, r1, #0
	mov r1, #9
	bx r3
	nop
_0207916C: .word sub_02006AA4
	thumb_func_end sub_02079160

	thumb_func_start sub_02079170
sub_02079170: ; 0x02079170
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r2, [sp, #4]
	ldr r2, _0207921C ; =0x0000026A
	str r0, [sp]
	add r4, r1, #0
	ldr r3, [sp, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_02027848
	bl sub_02027870
	ldr r4, [sp]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r5, r4, #0
	mov r7, #0
	str r0, [sp, #8]
	add r5, #0x3c
_020791A0:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _020791F4
	add r1, sp, #0x14
	bl sub_0207938C
	ldr r3, [sp, #8]
	add r6, sp, #0x14
	add r3, #0x28
	mov r2, #6
_020791B4:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020791B4
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	add r0, sp, #0x14
	ldrb r0, [r0, #1]
	cmp r0, #0x3f
	bne _020791D2
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl sub_020021B0
	b _020791EA
_020791D2:
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #0x18]
	bl sub_0200B1EC
	add r6, r0, #0
	add r1, r5, #0
	mov r2, #8
	bl sub_02023DF0
	add r0, r6, #0
	bl sub_020237BC
_020791EA:
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r7, #0
	bl sub_020793B8
_020791F4:
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r0, #0x34
	add r4, r4, #4
	add r5, #0x34
	str r0, [sp, #8]
	cmp r7, #4
	blt _020791A0
	ldr r0, [sp]
	ldr r1, [r0, #0]
	ldr r0, [sp, #0x24]
	orr r1, r0
	ldr r0, [sp]
	str r1, [r0, #0]
	ldr r0, [sp, #0x10]
	bl sub_0200B190
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207921C: .word 0x0000026A
	thumb_func_end sub_02079170

	thumb_func_start sub_02079220
sub_02079220: ; 0x02079220
	push {r4, r5, lr}
	sub sp, #0x34
	add r5, r1, #0
	add r1, sp, #0
	bl sub_0207938C
	cmp r5, #9
	bhi _02079278
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207923C: ; jump table
	.short _02079250 - _0207923C - 2 ; case 0
	.short _02079256 - _0207923C - 2 ; case 1
	.short _0207925C - _0207923C - 2 ; case 2
	.short _02079262 - _0207923C - 2 ; case 3
	.short _02079268 - _0207923C - 2 ; case 4
	.short _02079268 - _0207923C - 2 ; case 5
	.short _02079268 - _0207923C - 2 ; case 6
	.short _02079268 - _0207923C - 2 ; case 7
	.short _02079272 - _0207923C - 2 ; case 8
	.short _02079276 - _0207923C - 2 ; case 9
_02079250:
	add r0, sp, #0
	ldrb r4, [r0]
	b _02079278
_02079256:
	add r0, sp, #0
	ldrb r4, [r0, #1]
	b _02079278
_0207925C:
	add r0, sp, #0
	ldrb r4, [r0, #2]
	b _02079278
_02079262:
	add r0, sp, #0
	ldrb r4, [r0, #3]
	b _02079278
_02079268:
	sub r0, r5, #4
	lsl r1, r0, #1
	add r0, sp, #4
	ldrh r4, [r0, r1]
	b _02079278
_02079272:
	ldr r4, [sp, #0xc]
	b _02079278
_02079276:
	ldr r4, [sp, #0x10]
_02079278:
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02079220

	thumb_func_start sub_02079280
sub_02079280: ; 0x02079280
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r7, r1, #0
	ldr r1, [sp, #4]
	mov r0, #0x3b
	add r4, r2, #0
	bl sub_02006B58
	add r6, r0, #0
	mov r0, #2
	str r0, [sp]
	add r0, sp, #0xc
	mov r1, #0x89
	mov r2, #0
	lsl r3, r5, #1
	bl sub_02006AFC
	mov r0, #0x3b
	add r1, r4, #0
	bl sub_02006C24
	add r4, sp, #0xc
	ldrh r2, [r4]
	str r0, [sp, #8]
	cmp r2, r6
	beq _020792EC
_020792BA:
	add r0, sp, #0xc
	add r0, #2
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r1, #0
	mov r3, #4
	bl sub_02006DC8
	ldrh r1, [r4, #2]
	cmp r1, r5
	bne _020792DC
	ldrh r0, [r4, #4]
	cmp r0, r7
	bne _020792DC
	mov r0, #1
	str r0, [sp, #4]
	b _020792EC
_020792DC:
	cmp r1, r5
	bne _020792EC
	ldrh r0, [r4]
	add r0, r0, #4
	strh r0, [r4]
	ldrh r2, [r4]
	cmp r2, r6
	bne _020792BA
_020792EC:
	ldr r0, [sp, #8]
	bl sub_02006CA8
	ldr r0, [sp, #4]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02079280

	thumb_func_start sub_020792F8
sub_020792F8: ; 0x020792F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x3b
	mov r1, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_02006B58
	add r5, r0, #0
	mov r0, #2
	str r0, [sp]
	add r0, sp, #0x10
	mov r1, #0x89
	mov r2, #0
	lsl r3, r6, #1
	bl sub_02006AFC
	ldr r1, [sp, #8]
	mov r0, #0x3b
	bl sub_02006C24
	add r4, sp, #0x10
	ldrh r2, [r4]
	str r0, [sp, #0xc]
	cmp r2, r5
	beq _0207936E
_02079330:
	add r0, sp, #0x10
	add r0, #2
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r1, #0
	mov r3, #4
	bl sub_02006DC8
	ldrh r0, [r4, #2]
	cmp r0, r6
	bne _02079362
	ldrh r0, [r4, #4]
	cmp r0, r7
	bne _02079362
	ldr r0, [sp, #4]
	add r2, sp, #0x10
	str r0, [sp]
	ldrh r2, [r2]
	ldr r1, _02079388 ; =0x00000269
	ldr r3, [sp, #8]
	mov r0, #0x1a
	lsr r2, r2, #2
	bl sub_0200AF20
	b _0207936E
_02079362:
	ldrh r0, [r4]
	add r0, r0, #4
	strh r0, [r4]
	ldrh r2, [r4]
	cmp r2, r5
	bne _02079330
_0207936E:
	ldr r0, [sp, #0xc]
	bl sub_02006CA8
	add r0, sp, #0x10
	ldrh r0, [r0]
	cmp r0, r5
	bne _02079382
	ldr r0, [sp, #4]
	bl sub_020237E8
_02079382:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02079388: .word 0x00000269
	thumb_func_end sub_020792F8

	thumb_func_start sub_0207938C
sub_0207938C: ; 0x0207938C
	ldr r3, _02079398 ; =sub_02006AA4
	add r2, r0, #0
	add r0, r1, #0
	mov r1, #0x39
	bx r3
	nop
_02079398: .word sub_02006AA4
	thumb_func_end sub_0207938C

	thumb_func_start sub_0207939C
sub_0207939C: ; 0x0207939C
	ldr r3, _020793A8 ; =sub_02006AA4
	add r2, r0, #0
	add r0, r1, #0
	mov r1, #0x3a
	bx r3
	nop
_020793A8: .word sub_02006AA4
	thumb_func_end sub_0207939C

	thumb_func_start sub_020793AC
sub_020793AC: ; 0x020793AC
	ldr r1, _020793B4 ; =0x020F0714
	ldrb r0, [r1, r0]
	bx lr
	nop
_020793B4: .word 0x020F0714
	thumb_func_end sub_020793AC

	thumb_func_start sub_020793B8
sub_020793B8: ; 0x020793B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	add r7, r1, #0
	add r4, r0, #0
	str r2, [sp, #0x10]
	bl sub_0201D2D0
	lsl r6, r7, #2
	str r0, [sp, #0x54]
	add r0, r4, r6
	ldr r0, [r0, #4]
	mov r1, #6
	bl sub_0207A014
	ldr r0, [sp, #0x10]
	mov r1, #0x6c
	bl sub_02018144
	str r0, [sp, #0x60]
	ldr r0, [sp, #0x10]
	bl sub_02073C74
	str r0, [sp, #0x50]
	add r0, r4, r6
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #0x60]
	bl sub_0207939C
	mov r0, #0x34
	add r5, r7, #0
	mul r5, r0
	add r0, r4, r5
	add r0, #0x29
	ldrb r0, [r0]
	bl sub_020793AC
	cmp r0, #1
	bne _0207940A
	mov r0, #0x78
	str r0, [sp, #0x14]
	b _0207940E
_0207940A:
	mov r0, #0x88
	str r0, [sp, #0x14]
_0207940E:
	add r0, r4, r5
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #3
	bhi _020794F2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02079424: ; jump table
	.short _0207942C - _02079424 - 2 ; case 0
	.short _020794F4 - _02079424 - 2 ; case 1
	.short _020795E2 - _02079424 - 2 ; case 2
	.short _020796B4 - _02079424 - 2 ; case 3
_0207942C:
	mov r0, #0
	str r0, [sp, #0x5c]
	add r0, r4, r5
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	ble _020794F2
	add r0, r4, r6
	ldr r7, [sp, #0x60]
	str r0, [sp, #0x38]
_02079440:
	ldrh r0, [r7, #4]
	mov r1, #0x3f
	lsl r1, r1, #0xa
	and r1, r0
	asr r2, r1, #0xa
	add r1, sp, #0x64
	strb r2, [r1, #3]
	ldr r1, _020796E0 ; =0x000003FF
	ldrh r2, [r7]
	and r0, r1
	lsl r0, r0, #0x10
	ldrh r1, [r7, #2]
	lsr r0, r0, #0x10
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x38]
	add r2, r2, r1
	ldr r1, [sp, #0x34]
	ldr r0, [r0, #0x18]
	add r1, r1, r2
	add r0, r0, r1
	str r0, [sp, #0x58]
	bl sub_0201D2DC
	add r0, r4, r5
	add r0, #0x29
	ldrb r0, [r0]
	mov r6, #0
	cmp r0, #0
	ble _0207948C
_0207947A:
	bl sub_0201D2E8
	str r0, [sp, #0x58]
	add r0, r4, r5
	add r0, #0x29
	ldrb r0, [r0]
	add r6, r6, #1
	cmp r6, r0
	blt _0207947A
_0207948C:
	ldr r0, [sp, #0x58]
	lsl r1, r0, #8
	ldr r0, [sp, #0x14]
	add r6, r1, r0
	ldrh r1, [r7]
	mov r0, #0x1f
	mul r0, r1
	mov r1, #0xff
	bl sub_020E1F6C
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r3, r3, #0x18
	str r6, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrh r2, [r7, #2]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x34]
	lsr r3, r3, #0x18
	bl sub_02073D80
	ldrh r0, [r7, #6]
	ldr r1, [sp, #0x50]
	ldr r2, [sp, #0x10]
	bl sub_02078AEC
	add r2, sp, #0x64
	ldr r0, [sp, #0x50]
	mov r1, #0x70
	add r2, #3
	bl sub_02074B30
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x50]
	ldr r0, [r0, #4]
	bl sub_0207A048
	ldr r0, [sp, #0x5c]
	add r7, #8
	add r0, r0, #1
	str r0, [sp, #0x5c]
	add r0, r4, r5
	add r0, #0x2b
	ldrb r1, [r0]
	ldr r0, [sp, #0x5c]
	cmp r0, r1
	blt _02079440
_020794F2:
	b _020797B2
_020794F4:
	mov r0, #0
	str r0, [sp, #0x1c]
	add r0, r4, r5
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	ble _020795E0
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x40]
	add r0, r4, r6
	str r0, [sp, #0x3c]
_0207950A:
	ldr r0, [sp, #0x40]
	mov r1, #0x3f
	ldrh r0, [r0, #4]
	lsl r1, r1, #0xa
	and r1, r0
	asr r2, r1, #0xa
	add r1, sp, #0x64
	strb r2, [r1, #2]
	ldr r1, _020796E0 ; =0x000003FF
	and r0, r1
	ldr r1, [sp, #0x40]
	lsl r0, r0, #0x10
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	lsr r0, r0, #0x10
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x3c]
	add r2, r2, r1
	ldr r1, [sp, #0x30]
	ldr r0, [r0, #0x18]
	add r1, r1, r2
	add r7, r0, r1
	add r0, r7, #0
	bl sub_0201D2DC
	add r0, r4, r5
	add r0, #0x29
	ldrb r0, [r0]
	mov r6, #0
	cmp r0, #0
	ble _0207955A
_02079548:
	bl sub_0201D2E8
	add r7, r0, #0
	add r0, r4, r5
	add r0, #0x29
	ldrb r0, [r0]
	add r6, r6, #1
	cmp r6, r0
	blt _02079548
_0207955A:
	ldr r0, [sp, #0x14]
	lsl r1, r7, #8
	add r6, r1, r0
	ldr r0, [sp, #0x40]
	ldrh r1, [r0]
	mov r0, #0x1f
	mul r0, r1
	mov r1, #0xff
	bl sub_020E1F6C
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r3, r3, #0x18
	str r6, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x40]
	ldr r0, [sp, #0x50]
	ldrh r2, [r2, #2]
	ldr r1, [sp, #0x30]
	lsr r3, r3, #0x18
	bl sub_02073D80
	ldr r7, [sp, #0x40]
	mov r6, #0
_02079592:
	ldrh r1, [r7, #6]
	lsl r2, r6, #0x18
	ldr r0, [sp, #0x50]
	lsr r2, r2, #0x18
	bl sub_02077230
	add r6, r6, #1
	add r7, r7, #2
	cmp r6, #4
	blt _02079592
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x50]
	ldrh r0, [r0, #0xe]
	ldr r2, [sp, #0x10]
	bl sub_02078AEC
	add r2, sp, #0x64
	ldr r0, [sp, #0x50]
	mov r1, #0x70
	add r2, #2
	bl sub_02074B30
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x50]
	ldr r0, [r0, #4]
	bl sub_0207A048
	ldr r0, [sp, #0x40]
	add r0, #0x10
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	add r0, r4, r5
	add r0, #0x2b
	ldrb r1, [r0]
	ldr r0, [sp, #0x1c]
	cmp r0, r1
	blt _0207950A
_020795E0:
	b _020797B2
_020795E2:
	mov r0, #0
	str r0, [sp, #0x20]
	add r0, r4, r5
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	ble _020796B2
	add r0, r4, r6
	ldr r7, [sp, #0x60]
	str r0, [sp, #0x44]
_020795F6:
	ldrh r0, [r7, #4]
	mov r1, #0x3f
	lsl r1, r1, #0xa
	and r1, r0
	asr r2, r1, #0xa
	add r1, sp, #0x64
	strb r2, [r1, #1]
	ldr r1, _020796E0 ; =0x000003FF
	ldrh r2, [r7]
	and r0, r1
	lsl r0, r0, #0x10
	ldrh r1, [r7, #2]
	lsr r0, r0, #0x10
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x44]
	add r2, r2, r1
	ldr r1, [sp, #0x2c]
	ldr r0, [r0, #0x18]
	add r1, r1, r2
	add r0, r0, r1
	str r0, [sp, #0x18]
	bl sub_0201D2DC
	add r0, r4, r5
	add r0, #0x29
	ldrb r0, [r0]
	mov r6, #0
	cmp r0, #0
	ble _02079642
_02079630:
	bl sub_0201D2E8
	str r0, [sp, #0x18]
	add r0, r4, r5
	add r0, #0x29
	ldrb r0, [r0]
	add r6, r6, #1
	cmp r6, r0
	blt _02079630
_02079642:
	ldr r0, [sp, #0x18]
	lsl r1, r0, #8
	ldr r0, [sp, #0x14]
	add r6, r1, r0
	ldrh r1, [r7]
	mov r0, #0x1f
	mul r0, r1
	mov r1, #0xff
	bl sub_020E1F6C
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r3, r3, #0x18
	str r6, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrh r2, [r7, #2]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x2c]
	lsr r3, r3, #0x18
	bl sub_02073D80
	ldr r0, [sp, #0x50]
	mov r1, #6
	add r2, r7, #6
	bl sub_02074B30
	ldrh r0, [r7, #8]
	ldr r1, [sp, #0x50]
	ldr r2, [sp, #0x10]
	bl sub_02078AEC
	add r2, sp, #0x64
	ldr r0, [sp, #0x50]
	mov r1, #0x70
	add r2, #1
	bl sub_02074B30
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x50]
	ldr r0, [r0, #4]
	bl sub_0207A048
	ldr r0, [sp, #0x20]
	add r7, #0xa
	add r0, r0, #1
	str r0, [sp, #0x20]
	add r0, r4, r5
	add r0, #0x2b
	ldrb r1, [r0]
	ldr r0, [sp, #0x20]
	cmp r0, r1
	blt _020795F6
_020796B2:
	b _020797B2
_020796B4:
	mov r0, #0
	str r0, [sp, #0x24]
	add r0, r4, r5
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	ble _020797B2
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x4c]
	add r0, r4, r6
	str r0, [sp, #0x48]
_020796CA:
	ldr r0, [sp, #0x4c]
	mov r1, #0x3f
	ldrh r0, [r0, #4]
	lsl r1, r1, #0xa
	and r1, r0
	asr r2, r1, #0xa
	add r1, sp, #0x64
	strb r2, [r1]
	ldr r1, _020796E0 ; =0x000003FF
	b _020796E4
	nop
_020796E0: .word 0x000003FF
_020796E4:
	and r0, r1
	ldr r1, [sp, #0x4c]
	lsl r0, r0, #0x10
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	lsr r0, r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x48]
	add r2, r2, r1
	ldr r1, [sp, #0x28]
	ldr r0, [r0, #0x18]
	add r1, r1, r2
	add r7, r0, r1
	add r0, r7, #0
	bl sub_0201D2DC
	add r0, r4, r5
	add r0, #0x29
	ldrb r0, [r0]
	mov r6, #0
	cmp r0, #0
	ble _02079722
_02079710:
	bl sub_0201D2E8
	add r7, r0, #0
	add r0, r4, r5
	add r0, #0x29
	ldrb r0, [r0]
	add r6, r6, #1
	cmp r6, r0
	blt _02079710
_02079722:
	ldr r0, [sp, #0x14]
	lsl r1, r7, #8
	add r6, r1, r0
	ldr r0, [sp, #0x4c]
	ldrh r1, [r0]
	mov r0, #0x1f
	mul r0, r1
	mov r1, #0xff
	bl sub_020E1F6C
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r3, r3, #0x18
	str r6, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	ldrh r2, [r2, #2]
	ldr r1, [sp, #0x28]
	lsr r3, r3, #0x18
	bl sub_02073D80
	ldr r2, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	mov r1, #6
	add r2, r2, #6
	bl sub_02074B30
	ldr r7, [sp, #0x4c]
	mov r6, #0
_02079766:
	ldrh r1, [r7, #8]
	lsl r2, r6, #0x18
	ldr r0, [sp, #0x50]
	lsr r2, r2, #0x18
	bl sub_02077230
	add r6, r6, #1
	add r7, r7, #2
	cmp r6, #4
	blt _02079766
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x50]
	ldrh r0, [r0, #0x10]
	ldr r2, [sp, #0x10]
	bl sub_02078AEC
	ldr r0, [sp, #0x50]
	mov r1, #0x70
	add r2, sp, #0x64
	bl sub_02074B30
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x50]
	ldr r0, [r0, #4]
	bl sub_0207A048
	ldr r0, [sp, #0x4c]
	add r0, #0x12
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	add r0, r4, r5
	add r0, #0x2b
	ldrb r1, [r0]
	ldr r0, [sp, #0x24]
	cmp r0, r1
	blt _020796CA
_020797B2:
	ldr r0, [sp, #0x60]
	bl sub_020181C4
	ldr r0, [sp, #0x50]
	bl sub_020181C4
	ldr r0, [sp, #0x54]
	bl sub_0201D2DC
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020793B8

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

	thumb_func_start sub_02079D40
sub_02079D40: ; 0x02079D40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02073D20
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02079E44
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02079D8C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02073D48
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02079D40

	thumb_func_start sub_02079D80
sub_02079D80: ; 0x02079D80
	push {r3, lr}
	bl sub_02076B10
	bl sub_02079D40
	pop {r3, pc}
	thumb_func_end sub_02079D80

	thumb_func_start sub_02079D8C
sub_02079D8C: ; 0x02079D8C
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #1
	bne _02079DA2
	ldr r0, _02079E38 ; =0x000001EA
	cmp r4, r0
	bne _02079D9E
	add r0, #0xc
	pop {r4, pc}
_02079D9E:
	add r0, #0xb
	pop {r4, pc}
_02079DA2:
	lsl r0, r4, #0x10
	lsl r1, r2, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl sub_020761E8
	cmp r0, #0
	beq _02079E2A
	ldr r1, _02079E3C ; =0x00000182
	cmp r4, r1
	bne _02079DBE
	add r1, #0x74
	add r0, r0, r1
	pop {r4, pc}
_02079DBE:
	cmp r4, #0xc9
	bne _02079DC8
	add r1, #0x78
	add r0, r0, r1
	pop {r4, pc}
_02079DC8:
	add r2, r1, #0
	add r2, #0x1a
	cmp r4, r2
	bne _02079DD6
	add r1, #0x93
	add r0, r0, r1
	pop {r4, pc}
_02079DD6:
	add r2, r1, #0
	add r2, #0x1b
	cmp r4, r2
	bne _02079DE4
	add r1, #0x95
	add r0, r0, r1
	pop {r4, pc}
_02079DE4:
	add r2, r1, #0
	add r2, #0x24
	cmp r4, r2
	bne _02079DF2
	add r1, #0x97
	add r0, r0, r1
	pop {r4, pc}
_02079DF2:
	add r2, r1, #0
	add r2, #0x25
	cmp r4, r2
	bne _02079E00
	add r1, #0x98
	add r0, r0, r1
	pop {r4, pc}
_02079E00:
	add r2, r1, #0
	add r2, #0x65
	cmp r4, r2
	bne _02079E0E
	add r1, #0x99
	add r0, r0, r1
	pop {r4, pc}
_02079E0E:
	add r2, r1, #0
	add r2, #0x6a
	cmp r4, r2
	bne _02079E1C
	add r1, #0x9a
	add r0, r0, r1
	pop {r4, pc}
_02079E1C:
	add r2, r1, #0
	add r2, #0x5d
	cmp r4, r2
	bne _02079E2A
	add r1, #0x9b
	add r0, r0, r1
	pop {r4, pc}
_02079E2A:
	ldr r0, _02079E40 ; =0x000001ED
	cmp r4, r0
	bls _02079E32
	mov r4, #0
_02079E32:
	add r0, r4, #7
	pop {r4, pc}
	nop
_02079E38: .word 0x000001EA
_02079E3C: .word 0x00000182
_02079E40: .word 0x000001ED
	thumb_func_end sub_02079D8C

	thumb_func_start sub_02079E44
sub_02079E44: ; 0x02079E44
	push {r4, lr}
	mov r1, #0xae
	mov r2, #0
	add r4, r0, #0
	bl sub_02074570
	ldr r1, _02079ED8 ; =0x000001A6
	cmp r0, r1
	bhi _02079E8C
	bhs _02079EC4
	add r2, r1, #0
	sub r2, #0x24
	cmp r0, r2
	bhi _02079E6C
	sub r1, #0x24
	cmp r0, r1
	bhs _02079EC4
	cmp r0, #0xc9
	beq _02079EBC
	b _02079ED4
_02079E6C:
	add r2, r1, #0
	sub r2, #9
	cmp r0, r2
	bhi _02079ED4
	add r2, r1, #0
	sub r2, #0xa
	cmp r0, r2
	blo _02079ED4
	add r2, r1, #0
	sub r2, #0xa
	cmp r0, r2
	beq _02079EC4
	sub r1, #9
	cmp r0, r1
	beq _02079EC4
	b _02079ED4
_02079E8C:
	add r2, r1, #0
	add r2, #0x39
	cmp r0, r2
	bhi _02079EA4
	add r2, r1, #0
	add r2, #0x39
	cmp r0, r2
	bhs _02079EC4
	add r1, r1, #1
	cmp r0, r1
	beq _02079EC4
	b _02079ED4
_02079EA4:
	add r2, r1, #0
	add r2, #0x41
	cmp r0, r2
	bhi _02079EB4
	add r1, #0x41
	cmp r0, r1
	beq _02079EC4
	b _02079ED4
_02079EB4:
	add r1, #0x46
	cmp r0, r1
	beq _02079EC4
	b _02079ED4
_02079EBC:
	add r0, r4, #0
	bl sub_02076B00
	pop {r4, pc}
_02079EC4:
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
_02079ED4:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02079ED8: .word 0x000001A6
	thumb_func_end sub_02079E44

	thumb_func_start sub_02079EDC
sub_02079EDC: ; 0x02079EDC
	cmp r2, #1
	bne _02079EEE
	ldr r1, _02079F78 ; =0x000001EA
	cmp r0, r1
	bne _02079EEA
	add r0, r1, #5
	b _02079F70
_02079EEA:
	add r0, r1, #4
	b _02079F70
_02079EEE:
	ldr r2, _02079F7C ; =0x000001ED
	cmp r0, r2
	bls _02079EF8
	mov r0, #0
	b _02079F70
_02079EF8:
	cmp r1, #0
	beq _02079F70
	add r3, r2, #0
	sub r3, #0x6b
	cmp r0, r3
	bne _02079F0A
	add r0, r2, #2
	add r0, r1, r0
	b _02079F70
_02079F0A:
	cmp r0, #0xc9
	bne _02079F14
	add r0, r2, #5
	add r0, r1, r0
	b _02079F70
_02079F14:
	add r3, r2, #0
	sub r3, #0x51
	cmp r0, r3
	bne _02079F22
	add r2, #0x21
	add r0, r1, r2
	b _02079F70
_02079F22:
	add r3, r2, #0
	sub r3, #0x50
	cmp r0, r3
	bne _02079F30
	add r2, #0x23
	add r0, r1, r2
	b _02079F70
_02079F30:
	add r3, r2, #0
	sub r3, #0x47
	cmp r0, r3
	bne _02079F3E
	add r2, #0x25
	add r0, r1, r2
	b _02079F70
_02079F3E:
	add r3, r2, #0
	sub r3, #0x46
	cmp r0, r3
	bne _02079F4C
	add r2, #0x26
	add r0, r1, r2
	b _02079F70
_02079F4C:
	sub r3, r2, #6
	cmp r0, r3
	bne _02079F58
	add r2, #0x27
	add r0, r1, r2
	b _02079F70
_02079F58:
	sub r3, r2, #1
	cmp r0, r3
	bne _02079F64
	add r2, #0x28
	add r0, r1, r2
	b _02079F70
_02079F64:
	add r3, r2, #0
	sub r3, #0xe
	cmp r0, r3
	bne _02079F70
	add r2, #0x29
	add r0, r1, r2
_02079F70:
	ldr r1, _02079F80 ; =0x020F0780
	ldrb r0, [r1, r0]
	bx lr
	nop
_02079F78: .word 0x000001EA
_02079F7C: .word 0x000001ED
_02079F80: .word 0x020F0780
	thumb_func_end sub_02079EDC

	thumb_func_start sub_02079F84
sub_02079F84: ; 0x02079F84
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02073D20
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02079E44
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02073D48
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02079EDC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02079F84

	thumb_func_start sub_02079FC4
sub_02079FC4: ; 0x02079FC4
	push {r3, lr}
	bl sub_02076B10
	bl sub_02079F84
	pop {r3, pc}
	thumb_func_end sub_02079FC4

	thumb_func_start sub_02079FD0
sub_02079FD0: ; 0x02079FD0
	mov r0, #0
	bx lr
	thumb_func_end sub_02079FD0

	thumb_func_start sub_02079FD4
sub_02079FD4: ; 0x02079FD4
	mov r0, #2
	bx lr
	thumb_func_end sub_02079FD4

	thumb_func_start sub_02079FD8
sub_02079FD8: ; 0x02079FD8
	mov r0, #4
	bx lr
	thumb_func_end sub_02079FD8

	thumb_func_start sub_02079FDC
sub_02079FDC: ; 0x02079FDC
	mov r0, #6
	bx lr
	thumb_func_end sub_02079FDC

	thumb_func_start sub_02079FE0
sub_02079FE0: ; 0x02079FE0
	mov r0, #1
	bx lr
	thumb_func_end sub_02079FE0

	thumb_func_start sub_02079FE4
sub_02079FE4: ; 0x02079FE4
	mov r0, #3
	bx lr
	thumb_func_end sub_02079FE4

	thumb_func_start sub_02079FE8
sub_02079FE8: ; 0x02079FE8
	mov r0, #5
	bx lr
	thumb_func_end sub_02079FE8

	thumb_func_start sub_02079FEC
sub_02079FEC: ; 0x02079FEC
	mov r0, #0x59
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_02079FEC

	thumb_func_start sub_02079FF4
sub_02079FF4: ; 0x02079FF4
	push {r4, lr}
	mov r1, #0x59
	lsl r1, r1, #4
	bl sub_02018144
	add r4, r0, #0
	bl sub_0207A008
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_02079FF4

	thumb_func_start sub_0207A008
sub_0207A008: ; 0x0207A008
	ldr r3, _0207A010 ; =sub_0207A014
	mov r1, #6
	bx r3
	nop
_0207A010: .word sub_0207A014
	thumb_func_end sub_0207A008

	thumb_func_start sub_0207A014
sub_0207A014: ; 0x0207A014
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #6
	ble _0207A022
	bl sub_02022974
_0207A022:
	mov r2, #0x59
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020D5124
	mov r4, #0
	str r4, [r5, #4]
	str r6, [r5, #0]
	add r5, #8
_0207A036:
	add r0, r5, #0
	bl sub_02073C2C
	add r4, r4, #1
	add r5, #0xec
	cmp r4, #6
	blt _0207A036
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0207A014

	thumb_func_start sub_0207A048
sub_0207A048: ; 0x0207A048
	push {r4, r5}
	add r3, r0, #0
	add r2, r1, #0
	ldr r1, [r3, #4]
	ldr r0, [r3, #0]
	cmp r1, r0
	blt _0207A05C
	mov r0, #0
	pop {r4, r5}
	bx lr
_0207A05C:
	mov r0, #0xec
	mul r0, r1
	add r5, r3, r0
	add r5, #8
	mov r4, #0x1d
_0207A066:
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r4, r4, #1
	bne _0207A066
	ldr r0, [r2, #0]
	str r0, [r5, #0]
	ldr r0, [r3, #4]
	add r0, r0, #1
	str r0, [r3, #4]
	mov r0, #1
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207A048

	thumb_func_start sub_0207A080
sub_0207A080: ; 0x0207A080
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r1, #0
	bpl _0207A08C
	bl sub_02022974
_0207A08C:
	ldr r0, [r7, #4]
	cmp r4, r0
	blt _0207A096
	bl sub_02022974
_0207A096:
	ldr r0, [r7, #0]
	cmp r4, r0
	blt _0207A0A0
	bl sub_02022974
_0207A0A0:
	ldr r0, [r7, #4]
	cmp r0, #0
	bgt _0207A0AA
	bl sub_02022974
_0207A0AA:
	ldr r0, [r7, #4]
	sub r0, r0, #1
	cmp r4, r0
	bge _0207A0DA
	mov r0, #0xec
	mul r0, r4
	add r6, r7, r0
_0207A0B8:
	add r5, r6, #0
	add r3, r6, #0
	add r5, #0xf4
	add r3, #8
	mov r2, #0x1d
_0207A0C2:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0207A0C2
	ldr r0, [r5, #0]
	add r4, r4, #1
	str r0, [r3, #0]
	ldr r0, [r7, #4]
	add r6, #0xec
	sub r0, r0, #1
	cmp r4, r0
	blt _0207A0B8
_0207A0DA:
	add r1, r7, #0
	mov r0, #0xec
	add r1, #8
	mul r0, r4
	add r0, r1, r0
	bl sub_02073C2C
	ldr r0, [r7, #4]
	sub r0, r0, #1
	str r0, [r7, #4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207A080

	thumb_func_start sub_0207A0F4
sub_0207A0F4: ; 0x0207A0F4
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_0207A0F4

	thumb_func_start sub_0207A0F8
sub_0207A0F8: ; 0x0207A0F8
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0207A0F8

	thumb_func_start sub_0207A0FC
sub_0207A0FC: ; 0x0207A0FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bpl _0207A108
	bl sub_02022974
_0207A108:
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _0207A112
	bl sub_02022974
_0207A112:
	ldr r0, [r5, #0]
	cmp r4, r0
	blt _0207A11C
	bl sub_02022974
_0207A11C:
	mov r0, #0xec
	add r5, #8
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0207A0FC

	thumb_func_start sub_0207A128
sub_0207A128: ; 0x0207A128
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	bge _0207A138
	bl sub_02022974
_0207A138:
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _0207A142
	bl sub_02022974
_0207A142:
	ldr r0, [r5, #0]
	cmp r4, r0
	blt _0207A14C
	bl sub_02022974
_0207A14C:
	add r1, r5, #0
	mov r0, #0xec
	add r1, #8
	mul r0, r4
	add r4, r1, r0
	add r0, r4, #0
	mov r1, #0xac
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0xac
	mov r2, #0
	bl sub_02074470
	sub r2, r7, r0
	mov r3, #0x1d
_0207A170:
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _0207A170
	ldr r0, [r6, #0]
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	add r0, r0, r2
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207A128

	thumb_func_start sub_0207A184
sub_0207A184: ; 0x0207A184
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r6, r2, #0
	cmp r5, #0
	bge _0207A194
	bl sub_02022974
_0207A194:
	ldr r0, [r4, #4]
	cmp r5, r0
	blt _0207A19E
	bl sub_02022974
_0207A19E:
	ldr r0, [r4, #0]
	cmp r5, r0
	blt _0207A1A8
	bl sub_02022974
_0207A1A8:
	cmp r6, #0
	bge _0207A1B0
	bl sub_02022974
_0207A1B0:
	ldr r0, [r4, #4]
	cmp r6, r0
	blt _0207A1BA
	bl sub_02022974
_0207A1BA:
	ldr r0, [r4, #0]
	cmp r6, r0
	blt _0207A1C4
	bl sub_02022974
_0207A1C4:
	mov r0, #0
	mov r1, #0xec
	bl sub_02018144
	mov ip, r0
	add r1, r4, #0
	mov r0, #0xec
	add r1, #8
	mul r0, r5
	add r3, r1, r0
	add r5, r3, #0
	mov r2, ip
	mov r7, #0x1d
_0207A1DE:
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _0207A1DE
	ldr r0, [r5, #0]
	add r4, #8
	str r0, [r2, #0]
	mov r0, #0xec
	mul r0, r6
	add r2, r4, r0
	add r5, r2, #0
	mov r4, #0x1d
_0207A1F6:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r4, r4, #1
	bne _0207A1F6
	ldr r0, [r5, #0]
	mov r4, ip
	str r0, [r3, #0]
	mov r3, #0x1d
_0207A206:
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r3, r3, #1
	bne _0207A206
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	mov r0, ip
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207A184

	thumb_func_start sub_0207A21C
sub_0207A21C: ; 0x0207A21C
	push {r3, r4}
	add r4, r0, #0
	add r3, r1, #0
	mov r2, #0xb2
_0207A224:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0207A224
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0207A21C

	thumb_func_start sub_0207A230
sub_0207A230: ; 0x0207A230
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #4]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	ble _0207A25A
	add r5, r6, #0
	add r5, #8
_0207A242:
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	cmp r7, r0
	beq _0207A25A
	ldr r0, [r6, #4]
	add r4, r4, #1
	add r5, #0xec
	cmp r4, r0
	blt _0207A242
_0207A25A:
	ldr r0, [r6, #4]
	cmp r4, r0
	beq _0207A264
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0207A264:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207A230

	thumb_func_start sub_0207A268
sub_0207A268: ; 0x0207A268
	ldr r3, _0207A270 ; =sub_020245BC
	mov r1, #2
	bx r3
	nop
_0207A270: .word sub_020245BC
	thumb_func_end sub_0207A268

	thumb_func_start sub_0207A274
sub_0207A274: ; 0x0207A274
	push {r3, lr}
	bl sub_02027560
	bl sub_0207A280
	pop {r3, pc}
	thumb_func_end sub_0207A274

	thumb_func_start sub_0207A280
sub_0207A280: ; 0x0207A280
	push {r3, lr}
	bl sub_02027474
	cmp r0, #1
	bne _0207A28E
	mov r0, #1
	pop {r3, pc}
_0207A28E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0207A280

	thumb_func_start sub_0207A294
sub_0207A294: ; 0x0207A294
	push {r3, lr}
	cmp r0, #0
	bne _0207A2A4
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bl sub_020775A4
	add r1, r0, #0
_0207A2A4:
	add r0, r1, #0
	pop {r3, pc}
	thumb_func_end sub_0207A294

	thumb_func_start sub_0207A2A8
sub_0207A2A8: ; 0x0207A2A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02098700
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	bl sub_0209872C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0207A2A8

	thumb_func_start sub_0207A2C0
sub_0207A2C0: ; 0x0207A2C0
	push {r4, lr}
	add r4, r0, #0
	bl sub_020987BC
	add r0, r4, #0
	bl sub_02098718
	pop {r4, pc}
	thumb_func_end sub_0207A2C0

	thumb_func_start sub_0207A2D0
sub_0207A2D0: ; 0x0207A2D0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	str r2, [sp]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	cmp r4, #0
	bne _0207A2EE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0207A2EE:
	add r0, r4, #0
	mov r1, #2
	bl sub_02026074
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	cmp r0, r5
	bls _0207A30A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207A30A:
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0207A31C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207A31C:
	add r0, r4, #0
	mov r1, #4
	bl sub_02026074
	cmp r0, #0
	bne _0207A336
	add r0, r7, #0
	bl sub_02076FD4
	cmp r7, r0
	beq _0207A336
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207A336:
	add r0, r4, #0
	mov r1, #5
	bl sub_02026074
	add r5, r0, #0
	beq _0207A360
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02098808
	cmp r5, #0
	ble _0207A356
	cmp r0, r5
	bge _0207A360
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207A356:
	neg r1, r5
	cmp r0, r1
	ble _0207A360
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207A360:
	add r0, r4, #0
	mov r1, #7
	bl sub_02026074
	mov r1, #0xa
	add r5, r0, #0
	mul r5, r1
	beq _0207A38E
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02098828
	cmp r5, #0
	ble _0207A384
	cmp r0, r5
	bge _0207A38E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207A384:
	neg r1, r5
	cmp r0, r1
	ble _0207A38E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207A38E:
	add r0, r4, #0
	mov r1, #0xb
	bl sub_02026074
	cmp r0, #0
	bne _0207A3A8
	add r0, r6, #0
	bl sub_02078838
	cmp r0, #0
	beq _0207A3A8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207A3A8:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207A2D0

	thumb_func_start sub_0207A3AC
sub_0207A3AC: ; 0x0207A3AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	cmp r0, #0
	bne _0207A3CA
	ldr r0, [sp, #0x14]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_0207A3CA:
	ldr r1, [sp, #0x14]
	add r2, sp, #0x24
	add r3, sp, #0x18
	mov r0, #0
_0207A3D2:
	ldr r4, [sp, #0xc]
	strh r0, [r2]
	strh r0, [r3]
	ldrb r4, [r4, r1]
	cmp r4, #0
	beq _0207A3E4
	ldr r4, [sp, #0x14]
	add r4, r4, #1
	str r4, [sp, #0x14]
_0207A3E4:
	add r1, r1, #1
	add r2, r2, #2
	add r3, r3, #2
	cmp r1, #6
	blt _0207A3D2
	ldr r0, [sp]
	mov r1, #1
	bl sub_02026074
	ldr r1, [sp, #0x14]
	cmp r1, r0
	beq _0207A402
	add sp, #0x30
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0207A402:
	mov r5, #0
	add r7, sp, #0x24
	add r6, sp, #0x18
_0207A408:
	ldr r0, [sp, #0xc]
	ldrb r1, [r0, r5]
	cmp r1, #0
	beq _0207A456
	ldr r0, [sp, #4]
	sub r1, r1, #1
	bl sub_0207A0FC
	add r4, r0, #0
	ldr r0, [sp]
	ldr r2, [sp, #8]
	add r1, r4, #0
	bl sub_0207A2D0
	cmp r0, #0
	bne _0207A42E
	add sp, #0x30
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_0207A42E:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r7]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	strh r0, [r6]
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #0x10]
_0207A456:
	add r5, r5, #1
	add r7, r7, #2
	add r6, r6, #2
	cmp r5, #6
	blt _0207A408
	ldr r0, [sp]
	mov r1, #3
	bl sub_02026074
	ldr r1, [sp, #0x10]
	cmp r1, r0
	ble _0207A478
	cmp r0, #0
	beq _0207A478
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0207A478:
	ldr r0, [sp]
	mov r1, #0xa
	bl sub_02026074
	cmp r0, #0
	bne _0207A4BC
	ldr r0, [sp, #0x14]
	cmp r0, #1
	ble _0207A4BC
	add r4, sp, #0x24
	mov r0, #0
	add r2, r4, #0
_0207A490:
	add r3, r0, #1
	cmp r3, #6
	bge _0207A4B4
	ldrh r6, [r4]
	lsl r1, r3, #1
	add r5, r2, r1
_0207A49C:
	ldrh r1, [r5]
	cmp r6, r1
	bne _0207A4AC
	cmp r6, #0
	beq _0207A4AC
	add sp, #0x30
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0207A4AC:
	add r3, r3, #1
	add r5, r5, #2
	cmp r3, #6
	blt _0207A49C
_0207A4B4:
	add r0, r0, #1
	add r4, r4, #2
	cmp r0, #5
	blt _0207A490
_0207A4BC:
	ldr r0, [sp]
	mov r1, #9
	bl sub_02026074
	cmp r0, #0
	bne _0207A50C
	ldr r0, [sp, #0x14]
	cmp r0, #1
	ble _0207A50C
	add r2, sp, #0x18
	mov r5, #0
	add r7, sp, #0x24
	mov ip, r2
_0207A4D6:
	add r6, r5, #1
	cmp r6, #6
	bge _0207A502
	lsl r1, r6, #1
	mov r0, ip
	add r3, r0, r1
	ldrh r4, [r2]
	ldrh r0, [r7]
_0207A4E6:
	ldrh r1, [r3]
	cmp r4, r1
	bne _0207A4FA
	cmp r0, #0
	beq _0207A4FA
	cmp r4, #0
	beq _0207A4FA
	add sp, #0x30
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0207A4FA:
	add r6, r6, #1
	add r3, r3, #2
	cmp r6, #6
	blt _0207A4E6
_0207A502:
	add r5, r5, #1
	add r2, r2, #2
	add r7, r7, #2
	cmp r5, #5
	blt _0207A4D6
_0207A50C:
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207A3AC

	thumb_func_start sub_0207A514
sub_0207A514: ; 0x0207A514
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x10]
	lsl r0, r0, #1
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	ldrh r0, [r1, r0]
	add r6, r2, #0
	str r3, [sp, #0x14]
	ldr r5, [sp, #0x38]
	ldr r7, [sp, #0x34]
	cmp r0, #0
	beq _0207A55E
	ldr r0, [sp, #0x18]
	ldrh r0, [r6, r0]
	cmp r0, #0
	bne _0207A55E
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldrh r1, [r1, r0]
	add r0, r3, #0
	sub r0, r0, r1
	str r0, [sp, #0x14]
	bpl _0207A54E
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0207A54E:
	sub r7, r7, #1
	bne _0207A558
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0207A558:
	ldr r0, [sp, #0x18]
	mov r1, #1
	strh r1, [r6, r0]
_0207A55E:
	ldr r0, [sp, #0x30]
	add r4, r0, #1
	cmp r4, r5
	bge _0207A588
_0207A566:
	str r4, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r2, r6, #0
	str r5, [sp, #8]
	bl sub_0207A514
	cmp r0, #0
	beq _0207A582
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0207A582:
	add r4, r4, #1
	cmp r4, r5
	blt _0207A566
_0207A588:
	ldr r1, [sp, #0x18]
	mov r0, #0
	strh r0, [r6, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207A514

	thumb_func_start sub_0207A594
sub_0207A594: ; 0x0207A594
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r0, [sp, #0xc]
	add r0, r1, #0
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	bl sub_0207A0F8
	str r0, [sp, #0x20]
	add r6, r0, #0
	add r0, sp, #0x30
	mov r1, #0
	mov r2, #0xc
	bl sub_020C4CF4
	ldr r0, [sp, #0x20]
	mov r7, #0
	cmp r0, #0
	ble _0207A5FE
	add r4, sp, #0x48
	add r5, sp, #0x3c
_0207A5BE:
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	bl sub_0207A0FC
	str r0, [sp, #0x24]
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r4]
	ldr r0, [sp, #0x24]
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	strh r0, [r5]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x14]
	bl sub_0207A2D0
	cmp r0, #0
	bne _0207A5F2
	mov r0, #0
	strh r0, [r4]
	sub r6, r6, #1
_0207A5F2:
	ldr r0, [sp, #0x20]
	add r7, r7, #1
	add r4, r4, #2
	add r5, r5, #2
	cmp r7, r0
	blt _0207A5BE
_0207A5FE:
	ldr r0, [sp, #0xc]
	mov r1, #0xa
	bl sub_02026074
	cmp r0, #0
	bne _0207A67E
	ldr r0, [sp, #0x20]
	cmp r0, #1
	ble _0207A67E
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	sub r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #0
	ble _0207A67E
	add r0, sp, #0x3c
	add r3, sp, #0x48
	str r0, [sp, #0x1c]
	str r3, [sp, #0x2c]
	mov ip, r0
_0207A628:
	ldr r0, [sp, #0x18]
	add r2, r0, #1
	ldr r0, [sp, #0x20]
	cmp r2, r0
	bge _0207A66A
	ldr r1, [sp, #0x2c]
	lsl r0, r2, #1
	add r4, r1, r0
	mov r1, ip
	add r5, r1, r0
	ldr r0, [sp, #0x1c]
	ldrh r7, [r0]
_0207A640:
	ldrh r1, [r3]
	ldrh r0, [r4]
	cmp r1, r0
	bne _0207A65E
	cmp r1, #0
	beq _0207A65E
	ldrh r0, [r5]
	cmp r7, r0
	bls _0207A658
	mov r0, #0
	strh r0, [r3]
	b _0207A65C
_0207A658:
	mov r0, #0
	strh r0, [r4]
_0207A65C:
	sub r6, r6, #1
_0207A65E:
	ldr r0, [sp, #0x20]
	add r2, r2, #1
	add r4, r4, #2
	add r5, r5, #2
	cmp r2, r0
	blt _0207A640
_0207A66A:
	ldr r0, [sp, #0x1c]
	add r3, r3, #2
	add r0, r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r1, r0, #1
	ldr r0, [sp, #0x28]
	str r1, [sp, #0x18]
	cmp r1, r0
	blt _0207A628
_0207A67E:
	ldr r0, [sp, #0xc]
	mov r1, #1
	bl sub_02026074
	add r7, r0, #0
	cmp r6, r7
	bge _0207A692
	add sp, #0x54
	mov r0, #4
	pop {r4, r5, r6, r7, pc}
_0207A692:
	ldr r0, [sp, #0xc]
	mov r1, #3
	bl sub_02026074
	add r5, r0, #0
	bne _0207A6A4
	add sp, #0x54
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0207A6A4:
	ldr r0, [sp, #0x20]
	mov r4, #0
	cmp r0, #0
	ble _0207A6D4
	add r6, sp, #0x48
_0207A6AE:
	str r4, [sp]
	ldr r0, [sp, #0x20]
	str r7, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, sp, #0x3c
	add r2, sp, #0x30
	add r3, r5, #0
	bl sub_0207A514
	cmp r0, #0
	beq _0207A6CC
	add sp, #0x54
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0207A6CC:
	ldr r0, [sp, #0x20]
	add r4, r4, #1
	cmp r4, r0
	blt _0207A6AE
_0207A6D4:
	mov r0, #1
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207A594

	thumb_func_start sub_0207A6DC
sub_0207A6DC: ; 0x0207A6DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov16_0223EBEC
	mov r1, #0x10
	tst r0, r1
	bne _0207A736
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r6, r0, #0
	ldr r0, _0207A738 ; =0x020F099C
	mov r1, #0xc
	add r2, r5, #0
	bl sub_02032798
	str r5, [r4, #0]
	mov r0, #0
	strb r0, [r4, #4]
	str r5, [r6, #0]
	strb r0, [r6, #4]
	add r0, r5, #0
	add r1, r4, #4
	bl ov16_0223F320
	add r0, r5, #0
	add r1, r6, #4
	bl ov16_0223F32C
	ldr r0, _0207A73C ; =sub_0207ACB4
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	ldr r0, _0207A740 ; =sub_0207AD40
	add r1, r6, #0
	mov r2, #0
	bl sub_0200D9E8
_0207A736:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207A738: .word 0x020F099C
_0207A73C: .word sub_0207ACB4
_0207A740: .word sub_0207AD40
	thumb_func_end sub_0207A6DC

	thumb_func_start sub_0207A744
sub_0207A744: ; 0x0207A744
	ldr r3, _0207A750 ; =sub_02032798
	add r2, r0, #0
	ldr r0, _0207A754 ; =0x020F099C
	mov r1, #0xc
	bx r3
	nop
_0207A750: .word sub_02032798
_0207A754: .word 0x020F099C
	thumb_func_end sub_0207A744

	thumb_func_start sub_0207A758
sub_0207A758: ; 0x0207A758
	mov r0, #4
	bx lr
	thumb_func_end sub_0207A758

	thumb_func_start sub_0207A75C
sub_0207A75C: ; 0x0207A75C
	ldr r3, _0207A760 ; =sub_02025E68
	bx r3
	; .align 2, 0
_0207A760: .word sub_02025E68
	thumb_func_end sub_0207A75C

	thumb_func_start sub_0207A764
sub_0207A764: ; 0x0207A764
	ldr r3, _0207A768 ; =sub_02079FEC
	bx r3
	; .align 2, 0
_0207A768: .word sub_02079FEC
	thumb_func_end sub_0207A764

	thumb_func_start sub_0207A76C
sub_0207A76C: ; 0x0207A76C
	mov r0, #0xfa
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207A76C

	thumb_func_start sub_0207A774
sub_0207A774: ; 0x0207A774
	mov r0, #0x34
	bx lr
	thumb_func_end sub_0207A774

	thumb_func_start sub_0207A778
sub_0207A778: ; 0x0207A778
	ldr r3, [r1, #0]
	mov r1, #0x80
	ldr r2, [r3, #0]
	tst r1, r2
	beq _0207A78C
	lsl r0, r0, #3
	add r0, r3, r0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bx lr
_0207A78C:
	lsl r0, r0, #2
	add r0, r3, r0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207A778

	thumb_func_start sub_0207A798
sub_0207A798: ; 0x0207A798
	ldr r1, [r1, #0]
	mov r2, #0x80
	ldr r3, [r1, #0]
	tst r2, r3
	beq _0207A7AE
	lsl r2, r0, #1
	mov r0, #0x34
	add r1, #0x28
	mul r0, r2
	add r0, r1, r0
	bx lr
_0207A7AE:
	mov r2, #0x34
	add r1, #0x28
	mul r2, r0
	add r0, r1, r2
	bx lr
	thumb_func_end sub_0207A798

	thumb_func_start sub_0207A7B8
sub_0207A7B8: ; 0x0207A7B8
	ldr r3, [r1, #0]
	mov r1, #0x80
	ldr r2, [r3, #0]
	tst r1, r2
	beq _0207A7CA
	lsl r0, r0, #3
	add r0, r3, r0
	ldr r0, [r0, #4]
	bx lr
_0207A7CA:
	lsl r0, r0, #2
	add r0, r3, r0
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207A7B8

	thumb_func_start sub_0207A7D4
sub_0207A7D4: ; 0x0207A7D4
	ldr r3, [r1, #0]
	mov r1, #0x80
	ldr r2, [r3, #0]
	tst r2, r1
	beq _0207A7E8
	lsl r0, r0, #3
	add r0, r3, r0
	add r1, #0x98
	ldr r0, [r0, r1]
	bx lr
_0207A7E8:
	lsl r0, r0, #2
	add r0, r3, r0
	add r1, #0x98
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207A7D4

	thumb_func_start sub_0207A7F4
sub_0207A7F4: ; 0x0207A7F4
	ldr r0, [r1, #0]
	add r0, #0x5c
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207A7F4

	thumb_func_start sub_0207A7FC
sub_0207A7FC: ; 0x0207A7FC
	ldr r0, [r1, #0]
	add r0, #0xc4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207A7FC

	thumb_func_start sub_0207A804
sub_0207A804: ; 0x0207A804
	ldr r0, [r1, #0]
	ldr r0, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207A804

	thumb_func_start sub_0207A80C
sub_0207A80C: ; 0x0207A80C
	ldr r0, [r1, #0]
	ldr r0, [r0, #0x10]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207A80C

	thumb_func_start sub_0207A814
sub_0207A814: ; 0x0207A814
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0207A814

	thumb_func_start sub_0207A81C
sub_0207A81C: ; 0x0207A81C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #5
	mov r1, #4
	str r2, [sp, #8]
	add r7, r3, #0
	bl sub_02018144
	add r6, r0, #0
	ldr r0, [sp]
	bl ov16_0223E06C
	add r5, r0, #0
	ldr r0, [sp]
	bl ov16_0223E08C
	add r4, r0, #0
	ldr r0, [sp]
	bl ov16_0223E098
	mov ip, r0
	add r0, sp, #0x10
	ldrh r3, [r4]
	ldrb r0, [r0, #0x10]
	add r1, r3, #5
	add r2, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r2, r1
	bls _0207A864
	mov r1, ip
	strh r3, [r1]
	mov r1, #0
	strh r1, [r4]
_0207A864:
	ldr r1, [sp, #4]
	mov r3, #0
	strb r1, [r6]
	ldr r1, [sp, #8]
	strb r1, [r6, #1]
	add r1, sp, #0x10
	ldrb r1, [r1, #0x10]
	strh r1, [r6, #2]
_0207A874:
	ldrb r2, [r6, r3]
	ldrh r1, [r4]
	add r3, r3, #1
	strb r2, [r5, r1]
	ldrh r1, [r4]
	add r1, r1, #1
	strh r1, [r4]
	cmp r3, #4
	blo _0207A874
	mov r3, #0
	cmp r0, #0
	ble _0207A89E
_0207A88C:
	ldrb r2, [r7, r3]
	ldrh r1, [r4]
	add r3, r3, #1
	strb r2, [r5, r1]
	ldrh r1, [r4]
	add r1, r1, #1
	strh r1, [r4]
	cmp r3, r0
	blt _0207A88C
_0207A89E:
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0207A81C

	thumb_func_start sub_0207A8A8
sub_0207A8A8: ; 0x0207A8A8
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov16_0223E074
	add r7, r0, #0
	ldr r0, [sp]
	bl ov16_0223E0B0
	add r4, r0, #0
	ldr r0, [sp]
	bl ov16_0223E0BC
	ldrh r1, [r4]
	add r2, r1, r5
	add r3, r2, #1
	mov r2, #1
	lsl r2, r2, #0xc
	cmp r3, r2
	ble _0207A8DA
	strh r1, [r0]
	mov r0, #0
	strh r0, [r4]
_0207A8DA:
	mov r0, #0
	cmp r5, #0
	ble _0207A8F2
_0207A8E0:
	ldrb r2, [r6, r0]
	ldrh r1, [r4]
	add r0, r0, #1
	strb r2, [r7, r1]
	ldrh r1, [r4]
	add r1, r1, #1
	strh r1, [r4]
	cmp r0, r5
	blt _0207A8E0
_0207A8F2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207A8A8

	thumb_func_start sub_0207A8F4
sub_0207A8F4: ; 0x0207A8F4
	push {r0, r1, r2, r3}
	push {r3, lr}
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207A90E
	mov r0, #0
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
_0207A90E:
	mov r0, #0x33
	bl sub_02036540
	cmp r0, #0
	bne _0207A922
	mov r0, #0
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
_0207A922:
	mov r0, #0x18
	add r1, sp, #0xc
	mov r2, #4
	bl sub_020359DC
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end sub_0207A8F4

	thumb_func_start sub_0207A934
sub_0207A934: ; 0x0207A934
	push {r3, r4, r5, lr}
	add r4, r3, #0
	ldr r5, [r2, #0]
	ldr r2, [r4, #0]
	lsl r1, r0, #2
	add r3, r2, r1
	mov r2, #0x5f
	lsl r2, r2, #2
	str r5, [r3, r2]
	ldr r3, [r4, #0]
	add r1, r3, r1
	ldr r1, [r1, r2]
	bl sub_0202FAA8
	ldr r0, _0207A95C ; =0x00001020
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_0207A95C: .word 0x00001020
	thumb_func_end sub_0207A934

	thumb_func_start sub_0207A960
sub_0207A960: ; 0x0207A960
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207A974
	mov r0, #0
	pop {r4, pc}
_0207A974:
	ldr r0, [r4, #0]
	add r4, #0x20
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_02025E80
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207A960

	thumb_func_start sub_0207A988
sub_0207A988: ; 0x0207A988
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207A99C
	mov r0, #0
	pop {r4, pc}
_0207A99C:
	mov r0, #0x34
	bl sub_02036540
	cmp r0, #0
	bne _0207A9AA
	mov r0, #0
	pop {r4, pc}
_0207A9AA:
	bl sub_02025E68
	add r4, #0x20
	add r2, r0, #0
	mov r0, #0x19
	add r1, r4, #0
	bl sub_0203597C
	pop {r4, pc}
	thumb_func_end sub_0207A988

	thumb_func_start sub_0207A9BC
sub_0207A9BC: ; 0x0207A9BC
	ldr r0, _0207A9C8 ; =0x00001020
	ldrb r1, [r3, r0]
	add r1, r1, #1
	strb r1, [r3, r0]
	bx lr
	nop
_0207A9C8: .word 0x00001020
	thumb_func_end sub_0207A9BC

	thumb_func_start sub_0207A9CC
sub_0207A9CC: ; 0x0207A9CC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207A9E0
	mov r0, #0
	pop {r4, pc}
_0207A9E0:
	ldr r3, [r4, #0]
	add r4, #0x20
	add r3, #0x28
	mov r2, #6
_0207A9E8:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _0207A9E8
	ldr r0, [r3, #0]
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0207A9CC

	thumb_func_start sub_0207A9F8
sub_0207A9F8: ; 0x0207A9F8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207AA0C
	mov r0, #0
	pop {r4, pc}
_0207AA0C:
	mov r0, #0x35
	bl sub_02036540
	cmp r0, #0
	bne _0207AA1A
	mov r0, #0
	pop {r4, pc}
_0207AA1A:
	add r4, #0x20
	mov r0, #0x1a
	add r1, r4, #0
	mov r2, #0x34
	bl sub_0203597C
	pop {r4, pc}
	thumb_func_end sub_0207A9F8

	thumb_func_start sub_0207AA28
sub_0207AA28: ; 0x0207AA28
	ldr r0, _0207AA34 ; =0x00001020
	ldrb r1, [r3, r0]
	add r1, r1, #1
	strb r1, [r3, r0]
	bx lr
	nop
_0207AA34: .word 0x00001020
	thumb_func_end sub_0207AA28

	thumb_func_start sub_0207AA38
sub_0207AA38: ; 0x0207AA38
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207AA4C
	mov r0, #0
	pop {r4, pc}
_0207AA4C:
	ldr r0, [r4, #0]
	add r4, #0x20
	ldr r0, [r0, #4]
	add r1, r4, #0
	bl sub_0207A21C
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0207AA38

	thumb_func_start sub_0207AA5C
sub_0207AA5C: ; 0x0207AA5C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207AA70
	mov r0, #0
	pop {r4, pc}
_0207AA70:
	mov r0, #0x36
	bl sub_02036540
	cmp r0, #0
	bne _0207AA7E
	mov r0, #0
	pop {r4, pc}
_0207AA7E:
	bl sub_02079FEC
	add r4, #0x20
	add r2, r0, #0
	mov r0, #0x1b
	add r1, r4, #0
	bl sub_0203597C
	pop {r4, pc}
	thumb_func_end sub_0207AA5C

	thumb_func_start sub_0207AA90
sub_0207AA90: ; 0x0207AA90
	ldr r0, _0207AA9C ; =0x00001020
	ldrb r1, [r3, r0]
	add r1, r1, #1
	strb r1, [r3, r0]
	bx lr
	nop
_0207AA9C: .word 0x00001020
	thumb_func_end sub_0207AA90

	thumb_func_start sub_0207AAA0
sub_0207AAA0: ; 0x0207AAA0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207AAB4
	mov r0, #0
	pop {r4, pc}
_0207AAB4:
	ldr r2, [r4, #0]
	add r1, #0x10
	add r0, r4, #0
	ldr r1, [r2, r1]
	add r0, #0x20
	bl sub_0202CD3C
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207AAA0

	thumb_func_start sub_0207AAC8
sub_0207AAC8: ; 0x0207AAC8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207AADC
	mov r0, #0
	pop {r4, pc}
_0207AADC:
	mov r0, #0x37
	bl sub_02036540
	cmp r0, #0
	bne _0207AAEA
	mov r0, #0
	pop {r4, pc}
_0207AAEA:
	add r4, #0x20
	mov r2, #0xfa
	mov r0, #0x1c
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0203597C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207AAC8

	thumb_func_start sub_0207AAFC
sub_0207AAFC: ; 0x0207AAFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207AB10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207AB10:
	ldr r4, [r5, #0]
	mov r0, #0x80
	ldr r1, [r4, #0]
	tst r0, r1
	beq _0207AB22
	bl sub_0203608C
	lsl r0, r0, #3
	b _0207AB28
_0207AB22:
	bl sub_0203608C
	lsl r0, r0, #2
_0207AB28:
	add r0, r4, r0
	mov r1, #0x53
	add r0, #0xf8
	lsl r1, r1, #2
	add r2, r5, #0
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	add r2, #0x20
	bl sub_0207ADD4
	mov r4, #0
	mov r6, #5
	mov r7, #0x88
_0207AB42:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02018144
	str r0, [r5, #0x10]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0207AB42
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207AAFC

	thumb_func_start sub_0207AB58
sub_0207AB58: ; 0x0207AB58
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207AB6C
	mov r0, #0
	pop {r4, pc}
_0207AB6C:
	mov r0, #0x38
	bl sub_02036540
	cmp r0, #0
	bne _0207AB7A
	mov r0, #0
	pop {r4, pc}
_0207AB7A:
	add r4, #0x20
	mov r2, #0xfa
	mov r0, #0x21
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0203597C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207AB58

	thumb_func_start sub_0207AB8C
sub_0207AB8C: ; 0x0207AB8C
	ldr r0, _0207AB98 ; =0x00001020
	ldrb r1, [r3, r0]
	add r1, r1, #1
	strb r1, [r3, r0]
	bx lr
	nop
_0207AB98: .word 0x00001020
	thumb_func_end sub_0207AB8C

	thumb_func_start sub_0207AB9C
sub_0207AB9C: ; 0x0207AB9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207ABB2
	mov r0, #0
	pop {r3, r4, r5, pc}
_0207ABB2:
	ldr r1, [r5, #0]
	mov r0, #0x34
	mul r0, r4
	add r3, r1, r0
	add r3, #0x28
	add r5, #0x20
	mov r2, #6
_0207ABC0:
	ldmia r3!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r2, r2, #1
	bne _0207ABC0
	ldr r0, [r3, #0]
	str r0, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207AB9C

	thumb_func_start sub_0207ABD0
sub_0207ABD0: ; 0x0207ABD0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207ABE8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0207ABE8:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	bl sub_02036540
	cmp r0, #0
	bne _0207ABF8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0207ABF8:
	cmp r4, #1
	bne _0207AC0A
	add r5, #0x20
	mov r0, #0x1d
	add r1, r5, #0
	mov r2, #0x34
	bl sub_0203597C
	pop {r4, r5, r6, pc}
_0207AC0A:
	add r5, #0x20
	mov r0, #0x1e
	add r1, r5, #0
	mov r2, #0x34
	bl sub_0203597C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0207ABD0

	thumb_func_start sub_0207AC18
sub_0207AC18: ; 0x0207AC18
	ldr r0, _0207AC24 ; =0x00001020
	ldrb r1, [r3, r0]
	add r1, r1, #1
	strb r1, [r3, r0]
	bx lr
	nop
_0207AC24: .word 0x00001020
	thumb_func_end sub_0207AC18

	thumb_func_start sub_0207AC28
sub_0207AC28: ; 0x0207AC28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207AC3E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0207AC3E:
	ldr r1, [r5, #0]
	lsl r0, r4, #2
	add r0, r1, r0
	add r5, #0x20
	ldr r0, [r0, #4]
	add r1, r5, #0
	bl sub_0207A21C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0207AC28

	thumb_func_start sub_0207AC54
sub_0207AC54: ; 0x0207AC54
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207AC6C
	mov r0, #0
	pop {r4, r5, r6, pc}
_0207AC6C:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	bl sub_02036540
	cmp r0, #0
	bne _0207AC7C
	mov r0, #0
	pop {r4, r5, r6, pc}
_0207AC7C:
	cmp r4, #1
	bne _0207AC92
	bl sub_02079FEC
	add r5, #0x20
	add r2, r0, #0
	mov r0, #0x1f
	add r1, r5, #0
	bl sub_0203597C
	pop {r4, r5, r6, pc}
_0207AC92:
	bl sub_02079FEC
	add r5, #0x20
	add r2, r0, #0
	mov r0, #0x20
	add r1, r5, #0
	bl sub_0203597C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0207AC54

	thumb_func_start sub_0207ACA4
sub_0207ACA4: ; 0x0207ACA4
	ldr r0, _0207ACB0 ; =0x00001020
	ldrb r1, [r3, r0]
	add r1, r1, #1
	strb r1, [r3, r0]
	bx lr
	nop
_0207ACB0: .word 0x00001020
	thumb_func_end sub_0207ACA4

	thumb_func_start sub_0207ACB4
sub_0207ACB4: ; 0x0207ACB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	bl ov16_0223E06C
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E080
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E08C
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	bl ov16_0223E098
	add r7, r0, #0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0207ACE6
	cmp r0, #0xff
	b _0207AD30
_0207ACE6:
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	bne _0207AD3C
	ldr r0, [sp, #4]
	ldrh r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	beq _0207AD3C
	ldrh r0, [r7]
	cmp r1, r0
	bne _0207AD08
	mov r0, #0
	strh r0, [r4]
	strh r0, [r7]
_0207AD08:
	ldrh r1, [r4]
	add r0, r1, #2
	ldrb r2, [r6, r0]
	add r0, r1, #3
	ldrb r0, [r6, r0]
	add r1, r6, r1
	lsl r0, r0, #8
	orr r0, r2
	add r5, r0, #4
	mov r0, #0x17
	add r2, r5, #0
	bl sub_020359DC
	cmp r0, #1
	bne _0207AD3C
	ldrh r0, [r4]
	add sp, #8
	add r0, r0, r5
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0207AD30:
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [sp]
	bl sub_0200DA58
_0207AD3C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207ACB4

	thumb_func_start sub_0207AD40
sub_0207AD40: ; 0x0207AD40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	bl ov16_0223E074
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E0A4
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E0B0
	add r7, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E0BC
	ldrb r1, [r5, #4]
	cmp r1, #0
	beq _0207AD6E
	cmp r1, #0xff
	b _0207ADA6
_0207AD6E:
	ldrh r1, [r4]
	ldrh r2, [r7]
	cmp r1, r2
	beq _0207ADB2
	ldrh r2, [r0]
	cmp r1, r2
	bne _0207AD82
	mov r1, #0
	strh r1, [r4]
	strh r1, [r0]
_0207AD82:
	ldrh r1, [r4]
	ldr r0, [r5, #0]
	add r1, r6, r1
	bl ov16_02266AE4
	cmp r0, #1
	bne _0207ADB2
	ldrh r0, [r4]
	add r1, r0, #2
	ldrb r2, [r6, r1]
	add r1, r0, #3
	ldrb r1, [r6, r1]
	lsl r1, r1, #8
	orr r1, r2
	add r1, r1, #4
	add r0, r0, r1
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0207ADA6:
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [sp]
	bl sub_0200DA58
_0207ADB2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207AD40

	thumb_func_start sub_0207ADB4
sub_0207ADB4: ; 0x0207ADB4
	push {r4, lr}
	add r4, r3, #0
	add r0, r4, #0
	mov r1, #0xff
	bl ov16_0223F338
	add r0, r4, #0
	mov r1, #0xff
	bl ov16_0223F344
	add r0, r4, #0
	mov r1, #1
	bl ov16_0223F350
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207ADB4

	thumb_func_start sub_0207ADD4
sub_0207ADD4: ; 0x0207ADD4
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020021B0
	add r0, r6, #0
	bl sub_02025F20
	str r0, [r4, #0x10]
	add r0, r6, #0
	bl sub_02025FD8
	strb r0, [r4, #0x14]
	add r0, r6, #0
	bl sub_02025FCC
	strb r0, [r4, #0x15]
	add r0, r6, #0
	bl sub_02025F30
	strb r0, [r4, #0x16]
	mov r0, #0
	add r1, r4, #0
_0207AE0C:
	ldr r2, [r5, #0x10]
	str r2, [r1, #0x18]
	ldrb r3, [r5, #0x15]
	add r2, r4, r0
	add r2, #0x58
	strb r3, [r2]
	add r2, r4, r0
	ldrb r3, [r5, #0x14]
	add r2, #0x68
	add r1, r1, #4
	strb r3, [r2]
	add r2, r4, r0
	ldrb r3, [r5, #0x16]
	add r2, #0x78
	add r0, r0, #1
	add r5, #0x88
	strb r3, [r2]
	cmp r0, #0x10
	blt _0207AE0C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0207ADD4

	thumb_func_start sub_0207AE34
sub_0207AE34: ; 0x0207AE34
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_0203608C
	cmp r5, r0
	beq _0207AE56
	mov r0, #0x53
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	mov r2, #1
	mov r3, #5
	bl sub_02027FEC
_0207AE56:
	ldr r0, _0207AE60 ; =0x00001020
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207AE60: .word 0x00001020
	thumb_func_end sub_0207AE34

	thumb_func_start sub_0207AE64
sub_0207AE64: ; 0x0207AE64
	mov r0, #0x88
	bx lr
	thumb_func_end sub_0207AE64

	thumb_func_start sub_0207AE68
sub_0207AE68: ; 0x0207AE68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r5, [sp, #0x54]
	add r6, r0, #0
	add r7, r1, #0
	add r0, r5, #0
	mov r1, #0x88
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x88
	bl sub_020C4BB8
	bl sub_020241F8
	str r0, [sp, #0x1c]
	bl sub_020241F0
	add r1, r0, #0
	ldr r2, [sp, #0x1c]
	mov r0, #0
	bl sub_020C4AF0
	bl sub_02024208
	str r0, [sp, #0x20]
	bl sub_02024200
	add r1, r0, #0
	ldr r2, [sp, #0x20]
	mov r0, #0
	bl sub_020C4AF0
	str r6, [r4, #0x24]
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	str r7, [r4, #0x28]
	bl sub_02074470
	add r1, r4, #0
	add r1, #0x60
	strh r0, [r1]
	add r0, r7, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	add r1, #0x86
	strb r0, [r1]
	add r1, r4, #0
	ldr r0, [sp, #0x14]
	add r1, #0x62
	strh r0, [r1]
	mov r0, #0x93
	add r1, r5, #0
	str r5, [r4, #0x5c]
	bl sub_02006C24
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1, #0]
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0x60
	add r0, #0x80
	add r1, r4, #0
	ldrh r2, [r2]
	ldr r0, [r0, #0]
	add r1, #0x84
	mov r3, #1
	bl sub_02078A4C
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0x62
	add r0, #0x80
	add r1, r4, #0
	ldrh r2, [r2]
	ldr r0, [r0, #0]
	add r1, #0x85
	mov r3, #1
	bl sub_02078A4C
	add r0, r5, #0
	bl sub_02002F38
	mov r1, #1
	str r0, [r4, #0x14]
	bl sub_02003858
	mov r2, #2
	ldr r0, [r4, #0x14]
	mov r1, #0
	lsl r2, r2, #8
	add r3, r5, #0
	bl sub_02002F70
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r2, r1, #9
	add r3, r5, #0
	bl sub_02002F70
	mov r2, #7
	ldr r0, [r4, #0x14]
	mov r1, #2
	lsl r2, r2, #6
	add r3, r5, #0
	bl sub_02002F70
	mov r2, #2
	ldr r0, [r4, #0x14]
	mov r1, #3
	lsl r2, r2, #8
	add r3, r5, #0
	bl sub_02002F70
	add r0, r5, #0
	bl sub_02018340
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #1
	bl sub_0201A778
	str r0, [r4, #4]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x2c]
	add r0, r5, #0
	bl sub_0207C690
	str r0, [r4, #0x34]
	bl sub_0207C63C
	bl sub_0207C664
	bl sub_0207C730
	ldr r1, [r4, #0]
	add r0, r4, #0
	bl sub_0207C1CC
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	mov r2, #1
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, [r4, #4]
	mov r1, #0xff
	bl sub_0201ADA4
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	add r0, r5, #0
	bl sub_0200762C
	str r0, [r4, #0x18]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl sub_02015F84
	str r0, [r4, #0x44]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x67
	strb r1, [r0]
	add r0, r4, #0
	mov r2, #0x17
	mov r1, #2
	add r0, #0x66
	strb r1, [r0]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #4
	add r3, r5, #0
	bl sub_0200B144
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_0200B358
	str r0, [r4, #0xc]
	mov r0, #5
	lsl r0, r0, #6
	add r1, r5, #0
	bl sub_02023790
	str r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #0x30
	bl sub_02018144
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x3c]
	mov r0, #0
	mov r2, #0x30
	bl sub_020C4BB8
	ldr r1, [sp, #0x38]
	ldr r0, [r4, #0x3c]
	str r1, [r0, #0x2c]
	ldr r0, [sp, #0x3c]
	str r0, [r4, #0x48]
	ldr r0, [sp, #0x40]
	str r0, [r4, #0x4c]
	ldr r0, [sp, #0x44]
	str r0, [r4, #0x50]
	ldr r0, [sp, #0x48]
	str r0, [r4, #0x54]
	ldr r0, [sp, #0x4c]
	str r0, [r4, #0x78]
	ldr r0, [sp, #0x50]
	str r0, [r4, #0x7c]
	add r0, r4, #0
	bl sub_0207C498
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r2, _0207B098 ; =0x0000FFFF
	mov r1, #0xf
	mov r3, #1
	bl sub_02003178
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #0x10
	add r3, r2, #0
	bl sub_0200872C
	ldr r0, [r4, #0x14]
	mov r1, #0
	mov r2, #0xb
	add r3, r5, #0
	bl sub_0201567C
	mov r1, #1
	str r0, [r4, #0x58]
	bl sub_02015738
	ldr r0, _0207B09C ; =sub_0207B0A0
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	mov r0, #1
	bl sub_02002AC8
	bl sub_02039734
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0207B098: .word 0x0000FFFF
_0207B09C: .word sub_0207B0A0
	thumb_func_end sub_0207AE68

	thumb_func_start sub_0207B0A0
sub_0207B0A0: ; 0x0207B0A0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0207B180
	ldr r0, [r5, #0x18]
	bl sub_02007768
	bl sub_0207C770
	mov r0, #1
	mov r1, #0
	bl sub_020241BC
	add r5, #0x67
	ldrb r0, [r5]
	cmp r0, #0
	beq _0207B0CC
	add r0, r4, #0
	bl sub_0200DA58
_0207B0CC:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0207B0A0

	thumb_func_start sub_0207B0D0
sub_0207B0D0: ; 0x0207B0D0
	add r0, #0x67
	ldrb r0, [r0]
	cmp r0, #1
	bne _0207B0DC
	mov r0, #1
	bx lr
_0207B0DC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0207B0D0

	thumb_func_start sub_0207B0E0
sub_0207B0E0: ; 0x0207B0E0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0201A928
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_02002FA0
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_02002FA0
	ldr r0, [r4, #0x14]
	mov r1, #2
	bl sub_02002FA0
	ldr r0, [r4, #0x14]
	mov r1, #3
	bl sub_02002FA0
	ldr r0, [r4, #0x14]
	bl sub_02002F54
	ldr r0, [r4, #0x18]
	bl sub_02007B6C
	ldr r0, [r4, #0x44]
	bl sub_02015FB8
	ldr r0, [r4, #0x34]
	bl sub_020242C4
	ldr r0, [r4, #0]
	bl sub_0207C460
	ldr r0, [r4, #8]
	bl sub_0200B190
	ldr r0, [r4, #0xc]
	bl sub_0200B3F0
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	ldr r0, [r4, #0x3c]
	bl sub_020181C4
	ldr r0, [r4, #0x58]
	bl sub_02015760
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02006CA8
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	bl sub_02002AC8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207B0E0

	thumb_func_start sub_0207B180
sub_0207B180: ; 0x0207B180
	push {r4, lr}
	sub sp, #0x90
	add r4, r0, #0
	add r0, #0x70
	ldrb r1, [r0]
	cmp r1, #0
	beq _0207B25C
	mov r0, #1
	tst r0, r1
	ldr r0, [r4, #0x1c]
	bne _0207B1EE
	add r2, r4, #0
	add r2, #0x71
	ldrb r2, [r2]
	mov r1, #0xc
	neg r2, r2
	bl sub_02008274
	add r2, r4, #0
	add r2, #0x71
	ldrb r2, [r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	neg r2, r2
	bl sub_02008274
	add r2, r4, #0
	add r2, #0x71
	ldrb r2, [r2]
	ldr r0, [r4, #0x20]
	mov r1, #0xc
	bl sub_02008274
	add r2, r4, #0
	add r2, #0x71
	ldrb r2, [r2]
	ldr r0, [r4, #0x20]
	mov r1, #0xd
	bl sub_02008274
	ldr r0, [r4, #0x1c]
	mov r1, #0xc
	bl sub_020080C0
	cmp r0, #0
	bne _0207B25C
	add r0, r4, #0
	add r0, #0x70
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0x70
	strb r1, [r0]
	b _0207B25C
_0207B1EE:
	add r2, r4, #0
	add r2, #0x71
	ldrb r2, [r2]
	mov r1, #0xc
	bl sub_02008274
	add r2, r4, #0
	add r2, #0x71
	ldrb r2, [r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	bl sub_02008274
	add r2, r4, #0
	add r2, #0x71
	ldrb r2, [r2]
	ldr r0, [r4, #0x20]
	mov r1, #0xc
	neg r2, r2
	bl sub_02008274
	add r2, r4, #0
	add r2, #0x71
	ldrb r2, [r2]
	ldr r0, [r4, #0x20]
	mov r1, #0xd
	neg r2, r2
	bl sub_02008274
	ldr r0, [r4, #0x20]
	mov r1, #0xc
	bl sub_020080C0
	cmp r0, #0
	bne _0207B25C
	add r0, r4, #0
	add r0, #0x70
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0x70
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x71
	ldrb r0, [r0]
	cmp r0, #0x40
	bhs _0207B25C
	add r0, r4, #0
	add r0, #0x71
	ldrb r0, [r0]
	lsl r1, r0, #1
	add r0, r4, #0
	add r0, #0x71
	strb r1, [r0]
_0207B25C:
	ldr r1, [r4, #0x7c]
	mov r0, #1
	tst r0, r1
	beq _0207B296
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r0, #8
	bne _0207B296
	ldr r0, _0207B580 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0207B296
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0207B584 ; =0x00007FFF
	ldr r2, _0207B588 ; =0x0000F3FF
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	bl sub_02003178
	add r0, r4, #0
	mov r1, #0x29
	add r0, #0x64
	strb r1, [r0]
_0207B296:
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0x2d
	bhi _0207B396
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207B2AC: ; jump table
	.short _0207B308 - _0207B2AC - 2 ; case 0
	.short _0207B330 - _0207B2AC - 2 ; case 1
	.short _0207B35E - _0207B2AC - 2 ; case 2
	.short _0207B388 - _0207B2AC - 2 ; case 3
	.short _0207B3A4 - _0207B2AC - 2 ; case 4
	.short _0207B440 - _0207B2AC - 2 ; case 5
	.short _0207B48C - _0207B2AC - 2 ; case 6
	.short _0207B50E - _0207B2AC - 2 ; case 7
	.short _0207B5C4 - _0207B2AC - 2 ; case 8
	.short _0207B664 - _0207B2AC - 2 ; case 9
	.short _0207B6F2 - _0207B2AC - 2 ; case 10
	.short _0207B772 - _0207B2AC - 2 ; case 11
	.short _0207B7EE - _0207B2AC - 2 ; case 12
	.short _0207B862 - _0207B2AC - 2 ; case 13
	.short _0207B8DC - _0207B2AC - 2 ; case 14
	.short _0207B9A4 - _0207B2AC - 2 ; case 15
	.short _0207B920 - _0207B2AC - 2 ; case 16
	.short _0207B9A4 - _0207B2AC - 2 ; case 17
	.short _0207B956 - _0207B2AC - 2 ; case 18
	.short _0207B9A4 - _0207B2AC - 2 ; case 19
	.short _0207B9DC - _0207B2AC - 2 ; case 20
	.short _0207B9FE - _0207B2AC - 2 ; case 21
	.short _0207BA50 - _0207B2AC - 2 ; case 22
	.short _0207BAD2 - _0207B2AC - 2 ; case 23
	.short _0207BB50 - _0207B2AC - 2 ; case 24
	.short _0207BC70 - _0207B2AC - 2 ; case 25
	.short _0207B9A4 - _0207B2AC - 2 ; case 26
	.short _0207BC96 - _0207B2AC - 2 ; case 27
	.short _0207B9A4 - _0207B2AC - 2 ; case 28
	.short _0207BCE8 - _0207B2AC - 2 ; case 29
	.short _0207B9A4 - _0207B2AC - 2 ; case 30
	.short _0207BD0E - _0207B2AC - 2 ; case 31
	.short _0207BB88 - _0207B2AC - 2 ; case 32
	.short _0207B9A4 - _0207B2AC - 2 ; case 33
	.short _0207BBBC - _0207B2AC - 2 ; case 34
	.short _0207BBDE - _0207B2AC - 2 ; case 35
	.short _0207BC3E - _0207B2AC - 2 ; case 36
	.short _0207BD9A - _0207B2AC - 2 ; case 37
	.short _0207BDB8 - _0207B2AC - 2 ; case 38
	.short _0207BDE4 - _0207B2AC - 2 ; case 39
	.short _0207BE18 - _0207B2AC - 2 ; case 40
	.short _0207BE38 - _0207B2AC - 2 ; case 41
	.short _0207BEDE - _0207B2AC - 2 ; case 42
	.short _0207BF52 - _0207B2AC - 2 ; case 43
	.short _0207BFA6 - _0207B2AC - 2 ; case 44
	.short _0207C000 - _0207B2AC - 2 ; case 45
_0207B308:
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	bne _0207B396
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B330:
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	ldr r0, [r4, #0x58]
	mov r1, #0
	bl sub_02015738
	ldr r1, [r4, #0x7c]
	mov r0, #2
	tst r1, r0
	beq _0207B354
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207B354:
	mov r0, #4
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207B35E:
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	bne _0207B396
	mov r1, #0xe5
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B388:
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	beq _0207B39A
_0207B396:
	bl _0207C010
_0207B39A:
	mov r0, #4
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207B3A4:
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	bne _0207B4A4
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r3, r4, #0
	add r0, r4, #0
	add r3, #0x60
	add r0, #0x80
	ldrh r3, [r3]
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x1c]
	bl sub_020789F4
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0x60
	add r0, #0x80
	ldrh r2, [r2]
	ldr r0, [r0, #0]
	add r1, sp, #0x68
	mov r3, #1
	bl sub_020789BC
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x68
	bl sub_02007C10
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_02007B98
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r0, #0x60
	add r1, #0x84
	add r2, #0x86
	ldrh r0, [r0]
	ldrb r1, [r1]
	ldrb r2, [r2]
	bl sub_0200590C
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B5CC
	ldr r1, [r4, #0x7c]
	mov r0, #2
	tst r0, r1
	beq _0207B428
	ldr r1, _0207B58C ; =0x00000395
	add r0, r4, #0
	bl sub_0207C584
	b _0207B430
_0207B428:
	ldr r1, _0207B590 ; =0x00000393
	add r0, r4, #0
	bl sub_0207C584
_0207B430:
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	mov r0, #5
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207B440:
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0207B4A4
	bl sub_0200598C
	cmp r0, #0
	bne _0207B4A4
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl sub_020160F4
	cmp r0, #1
	bne _0207B4A4
	ldr r0, [r4, #0x1c]
	bl sub_02007C24
	cmp r0, #0
	bne _0207B4A4
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl sub_02015738
	ldr r0, _0207B594 ; =0x00000475
	bl sub_02005474
	add r0, r4, #0
	mov r1, #0x14
	add r0, #0x66
	strb r1, [r0]
	mov r0, #6
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207B48C:
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	beq _0207B4A8
_0207B4A4:
	bl _0207C010
_0207B4A8:
	ldr r0, [r4, #0x5c]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, sp, #0x10
	bl sub_0207C894
	mov r1, #0
	str r0, [r4, #0x30]
	bl sub_0207C8C4
	ldr r0, _0207B584 ; =0x00007FFF
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	mov r2, #0x10
	mov r3, #4
	bl sub_020086FC
	ldr r0, _0207B584 ; =0x00007FFF
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x20]
	mov r2, #0x10
	mov r3, #4
	bl sub_020086FC
	ldr r0, [r4, #0x5c]
	bl sub_020182A4
	mov r1, #2
	lsl r1, r1, #0xe
	cmp r0, r1
	bhi _0207B4F0
	bl sub_02022974
_0207B4F0:
	ldr r0, _0207B598 ; =0x000005F9
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x28
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B50E:
	add r0, r4, #0
	add r0, #0x73
	ldrb r0, [r0]
	cmp r0, #0x28
	bhs _0207B534
	add r0, r4, #0
	add r0, #0x73
	ldrb r0, [r0]
	add r1, r0, #2
	add r0, r4, #0
	add r0, #0x73
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x75
	ldrb r0, [r0]
	sub r1, r0, #2
	add r0, r4, #0
	add r0, #0x75
	strb r1, [r0]
_0207B534:
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	bne _0207B5CE
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0207C8C4
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_0207C8C4
	ldr r0, [r4, #0x30]
	mov r1, #7
	bl sub_0207C8C4
	ldr r0, [r4, #0x30]
	mov r1, #8
	bl sub_0207C8C4
	ldr r0, [r4, #0x30]
	mov r1, #9
	bl sub_0207C8C4
	ldr r0, [r4, #0x30]
	mov r1, #0xb
	bl sub_0207C8C4
	ldr r0, _0207B59C ; =0x000005FA
	b _0207B5A0
	; .align 2, 0
_0207B580: .word 0x021BF67C
_0207B584: .word 0x00007FFF
_0207B588: .word 0x0000F3FF
_0207B58C: .word 0x00000395
_0207B590: .word 0x00000393
_0207B594: .word 0x00000475
_0207B598: .word 0x000005F9
_0207B59C: .word 0x000005FA
_0207B5A0:
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x10
	add r0, #0x70
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #8
	add r0, #0x71
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B5C4:
	ldr r0, [r4, #0x30]
	bl sub_0207C8E0
	cmp r0, #0
	beq _0207B5D2
_0207B5CE:
	bl _0207C010
_0207B5D2:
	ldr r0, [r4, #0x30]
	mov r1, #3
	bl sub_0207C8C4
	ldr r0, [r4, #0x30]
	mov r1, #4
	bl sub_0207C8C4
	ldr r0, [r4, #0x30]
	mov r1, #5
	bl sub_0207C8C4
	ldr r0, [r4, #0x30]
	mov r1, #6
	bl sub_0207C8C4
	ldr r0, [r4, #0x30]
	mov r1, #0xa
	bl sub_0207C8C4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0207B95C ; =0x00007FFF
	ldr r2, _0207B960 ; =0x0000F3FF
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	mov r3, #2
	bl sub_02003178
	ldr r0, [r4, #0x1c]
	mov r1, #0xc
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	mov r2, #0
	bl sub_02007DEC
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #0x20]
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0x20]
	add r2, #0xf3
	bl sub_02007DEC
	ldr r0, _0207B964 ; =0x000005FB
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0
	add r0, #0x70
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #8
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B664:
	add r0, r4, #0
	add r0, #0x73
	ldrb r0, [r0]
	cmp r0, #0
	beq _0207B68A
	add r0, r4, #0
	add r0, #0x73
	ldrb r0, [r0]
	sub r1, r0, #2
	add r0, r4, #0
	add r0, #0x73
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x75
	ldrb r0, [r0]
	add r1, r0, #2
	add r0, r4, #0
	add r0, #0x75
	strb r1, [r0]
_0207B68A:
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	bne _0207B706
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	bne _0207B706
	ldr r0, [r4, #0x30]
	mov r1, #0xc
	bl sub_0207C8C4
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0207B95C ; =0x00007FFF
	ldr r2, _0207B960 ; =0x0000F3FF
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	mov r3, #4
	bl sub_02003178
	ldr r0, _0207B95C ; =0x00007FFF
	mov r1, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r2, #0
	mov r3, #3
	bl sub_0200872C
	ldr r0, _0207B968 ; =0x000005FC
	bl sub_02005748
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B6F2:
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	bne _0207B706
	ldr r0, [r4, #0x30]
	bl sub_0207C8E0
	cmp r0, #0
	beq _0207B70A
_0207B706:
	bl _0207C010
_0207B70A:
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r3, r4, #0
	add r0, r4, #0
	add r3, #0x62
	add r0, #0x80
	ldrh r3, [r3]
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x20]
	bl sub_020789F4
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0x62
	add r0, #0x80
	ldrh r2, [r2]
	ldr r0, [r0, #0]
	add r1, sp, #0x40
	mov r3, #1
	bl sub_020789BC
	ldr r0, [r4, #0x20]
	add r1, sp, #0x40
	bl sub_02007C10
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_02007B98
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r0, #0x62
	add r1, #0x85
	add r2, #0x86
	ldrh r0, [r0]
	ldrb r1, [r1]
	ldrb r2, [r2]
	bl sub_0200590C
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B772:
	bl sub_0200598C
	cmp r0, #0
	bne _0207B878
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl sub_020160F4
	cmp r0, #1
	bne _0207B878
	ldr r0, [r4, #0x20]
	bl sub_02007C24
	cmp r0, #0
	bne _0207B878
	add r2, r4, #0
	ldr r0, [r4, #0x28]
	mov r1, #5
	add r2, #0x62
	bl sub_02074B30
	ldr r0, [r4, #0x28]
	bl sub_0207803C
	ldr r0, [r4, #0x28]
	bl sub_0207418C
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B5CC
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200B538
	ldr r1, _0207B96C ; =0x00000396
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x28
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B7EE:
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0207B878
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	bne _0207B878
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x28]
	bl sub_0202736C
	ldr r0, [r4, #0x50]
	mov r1, #0xc
	bl sub_0202CF28
	ldr r0, [r4, #0x50]
	mov r1, #0x16
	bl sub_0202CFEC
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r1, r0, #0
	ldr r0, [r4, #0x54]
	bl sub_02056A48
	ldr r0, [r4, #0x28]
	mov r1, #0x4d
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0207B852
	ldr r0, [r4, #0x28]
	mov r1, #0xb3
	mov r2, #0
	bl sub_02074B30
_0207B852:
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B862:
	add r1, r4, #0
	ldr r0, [r4, #0x28]
	add r1, #0x68
	add r2, sp, #0xc
	bl sub_0207727C
	cmp r0, #0
	beq _0207B882
	ldr r1, _0207B970 ; =0x0000FFFE
	cmp r0, r1
	bne _0207B87A
_0207B878:
	b _0207C010
_0207B87A:
	add r1, r1, #1
	cmp r0, r1
	beq _0207B88C
	b _0207B8A0
_0207B882:
	mov r0, #0x27
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207B88C:
	add r0, sp, #0xc
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x6c
	strh r1, [r0]
	mov r0, #0xe
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207B8A0:
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B5CC
	add r2, sp, #0xc
	ldrh r2, [r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200B630
	add r0, r4, #0
	mov r1, #4
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x66
	strb r1, [r0]
	mov r0, #0x25
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207B8DC:
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B5CC
	add r2, r4, #0
	add r2, #0x6c
	ldrh r2, [r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200B630
	ldr r1, _0207B974 ; =0x000004A9
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B920:
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B5CC
	ldr r1, _0207B978 ; =0x000004AA
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B956:
	ldr r1, _0207B97C ; =0x000004AB
	b _0207B980
	nop
_0207B95C: .word 0x00007FFF
_0207B960: .word 0x0000F3FF
_0207B964: .word 0x000005FB
_0207B968: .word 0x000005FC
_0207B96C: .word 0x00000396
_0207B970: .word 0x0000FFFE
_0207B974: .word 0x000004A9
_0207B978: .word 0x000004AA
_0207B97C: .word 0x000004AB
_0207B980:
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #1
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B9A4:
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0207B9CA
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	beq _0207B9CC
_0207B9CA:
	b _0207C010
_0207B9CC:
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B9DC:
	ldr r0, [r4, #0x5c]
	ldr r1, _0207BD30 ; =0x020F0A30
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r2, #1
	mov r3, #8
	bl sub_02002100
	str r0, [r4, #0x40]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B9FE:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x5c]
	bl sub_02002114
	cmp r0, #0
	beq _0207BA16
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0207BA46
	add sp, #0x90
	pop {r4, pc}
_0207BA16:
	add r0, r4, #0
	mov r1, #0x16
	add r0, #0x64
	strb r1, [r0]
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r2, _0207BD34 ; =0x0000FFFF
	mov r1, #0xf
	mov r3, #1
	bl sub_02003178
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0x18]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_0200872C
	add sp, #0x90
	pop {r4, pc}
_0207BA46:
	mov r0, #0x20
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207BA50:
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	bne _0207BADC
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	ldr r0, [r4, #0]
	bl sub_0207C460
	ldr r0, [r4, #0x1c]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	ldr r0, [r4, #0x20]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x3c]
	mov r2, #1
	str r1, [r0, #0]
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x3c]
	str r1, [r0, #4]
	ldr r1, [r4, #0x3c]
	mov r0, #0
	strb r0, [r1, #0x11]
	ldr r1, [r4, #0x3c]
	strb r0, [r1, #0x14]
	ldr r1, [r4, #0x3c]
	strb r2, [r1, #0x13]
	add r1, r4, #0
	add r1, #0x6c
	ldrh r2, [r1]
	ldr r1, [r4, #0x3c]
	strh r2, [r1, #0x18]
	ldr r1, [r4, #0x3c]
	mov r2, #2
	strb r2, [r1, #0x12]
	ldr r1, [r4, #0x3c]
	str r0, [r1, #0x28]
	ldr r0, [r4, #0x3c]
	ldr r1, _0207BD38 ; =0x020F0A2C
	bl sub_0208D720
	add r0, r4, #0
	bl sub_0207C624
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BAD2:
	ldr r0, [r4, #0x38]
	bl sub_02006844
	cmp r0, #0
	bne _0207BADE
_0207BADC:
	b _0207C010
_0207BADE:
	ldr r0, [r4, #0x38]
	bl sub_02006814
	ldr r1, [r4, #0]
	add r0, r4, #0
	bl sub_0207C1CC
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	ldr r0, [r4, #0x1c]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x20]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x1c]
	bl sub_020089A0
	ldr r0, [r4, #0x20]
	bl sub_020089A0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r2, _0207BD34 ; =0x0000FFFF
	mov r1, #0xf
	mov r3, #1
	bl sub_02003178
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #0x10
	add r3, r2, #0
	bl sub_0200872C
	bl sub_02039734
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BB50:
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	bne _0207BC64
	ldr r0, [r4, #0x3c]
	ldrb r1, [r0, #0x16]
	cmp r1, #4
	bne _0207BB78
	mov r0, #0x20
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207BB78:
	add r0, r4, #0
	add r0, #0x6e
	strb r1, [r0]
	mov r0, #0x19
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207BB88:
	add r2, r4, #0
	add r2, #0x6c
	ldrh r2, [r2]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B630
	ldr r1, _0207BD3C ; =0x000004AD
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #1
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BBBC:
	ldr r0, [r4, #0x5c]
	ldr r1, _0207BD30 ; =0x020F0A30
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r2, #1
	mov r3, #8
	bl sub_02002100
	str r0, [r4, #0x40]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BBDE:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x5c]
	bl sub_02002114
	cmp r0, #0
	beq _0207BBF6
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0207BC34
	add sp, #0x90
	pop {r4, pc}
_0207BBF6:
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B5CC
	add r2, r4, #0
	add r2, #0x6c
	ldrh r2, [r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200B630
	ldr r1, _0207BD40 ; =0x000004AE
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x66
	strb r1, [r0]
	mov r0, #0x24
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207BC34:
	mov r0, #0xe
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207BC3E:
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0207BC64
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	beq _0207BC66
_0207BC64:
	b _0207C010
_0207BC66:
	mov r0, #0xd
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207BC70:
	ldr r1, _0207BD44 ; =0x000004AF
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BC96:
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B5CC
	add r1, r4, #0
	add r1, #0x6e
	ldrb r1, [r1]
	ldr r0, [r4, #0x28]
	mov r2, #0
	add r1, #0x36
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200B630
	mov r1, #0x4b
	add r0, r4, #0
	lsl r1, r1, #4
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BCE8:
	ldr r1, _0207BD48 ; =0x000004B1
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BD0E:
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B5CC
	add r2, r4, #0
	add r2, #0x6c
	ldrh r2, [r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200B630
	ldr r1, _0207BD4C ; =0x000004B2
	b _0207BD50
	; .align 2, 0
_0207BD30: .word 0x020F0A30
_0207BD34: .word 0x0000FFFF
_0207BD38: .word 0x020F0A2C
_0207BD3C: .word 0x000004AD
_0207BD40: .word 0x000004AE
_0207BD44: .word 0x000004AF
_0207BD48: .word 0x000004B1
_0207BD4C: .word 0x000004B2
_0207BD50:
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	add r2, r4, #0
	mov r1, #0
	add r0, #0x66
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x6e
	ldrb r1, [r1]
	ldr r0, [r4, #0x28]
	add r2, #0x66
	add r1, #0x3e
	bl sub_02074B30
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x6c
	add r2, #0x6e
	ldrh r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0x28]
	bl sub_02077230
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x66
	strb r1, [r0]
	mov r0, #0x25
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207BD9A:
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0207BDD8
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BDB8:
	bl sub_020061E4
	cmp r0, #0
	bne _0207BDD8
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	beq _0207BDDA
_0207BDD8:
	b _0207C010
_0207BDDA:
	mov r0, #0xd
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207BDE4:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r2, _0207C014 ; =0x0000FFFF
	mov r1, #0xf
	mov r3, #1
	bl sub_02003178
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0x18]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_0200872C
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BE18:
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	bne _0207BEE8
	ldr r0, [r4, #0x30]
	bl sub_0207C8F4
	add r0, r4, #0
	bl sub_0207C028
	mov r0, #1
	add r4, #0x67
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207BE38:
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	bne _0207BEE8
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #0x1c]
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0x1c]
	add r2, #0xf3
	bl sub_02007DEC
	ldr r0, [r4, #0x20]
	mov r1, #0xc
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x20]
	mov r1, #0xd
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x20]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	ldr r0, _0207C018 ; =0x00007FFF
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r2, _0207C01C ; =0x0000F3FF
	mov r1, #0xf
	bl sub_02003178
	ldr r0, _0207C018 ; =0x00007FFF
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #0x10
	add r3, r2, #0
	bl sub_0200872C
	add r0, r4, #0
	mov r1, #0
	add r0, #0x72
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x73
	strb r1, [r0]
	add r0, r4, #0
	mov r2, #0xff
	add r0, #0x74
	strb r2, [r0]
	add r0, r4, #0
	mov r2, #0xa0
	add r0, #0x75
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0x70
	strb r1, [r0]
	ldr r0, _0207C020 ; =0x00000475
	bl sub_020055D0
	ldr r0, [r4, #0x30]
	bl sub_0207C8F4
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BEDE:
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	beq _0207BEEA
_0207BEE8:
	b _0207C010
_0207BEEA:
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r3, r4, #0
	add r0, r4, #0
	add r3, #0x60
	add r0, #0x80
	ldrh r3, [r3]
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x1c]
	bl sub_020789F4
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0x60
	add r0, #0x80
	ldrh r2, [r2]
	ldr r0, [r0, #0]
	add r1, sp, #0x18
	mov r3, #1
	bl sub_020789BC
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x18
	bl sub_02007C10
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_02007B98
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r0, #0x60
	add r1, #0x84
	add r2, #0x86
	ldrh r0, [r0]
	ldrb r1, [r1]
	ldrb r2, [r2]
	bl sub_0200590C
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BF52:
	bl sub_0200598C
	cmp r0, #0
	bne _0207C010
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl sub_020160F4
	cmp r0, #1
	bne _0207C010
	ldr r0, [r4, #0x1c]
	bl sub_02007C24
	cmp r0, #0
	bne _0207C010
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B5CC
	ldr r1, _0207C024 ; =0x00000397
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x14
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BFA6:
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0207C010
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	bne _0207C010
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r2, _0207C014 ; =0x0000FFFF
	mov r1, #0xf
	mov r3, #1
	bl sub_02003178
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0x18]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_0200872C
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207C000:
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	bne _0207C010
	mov r0, #1
	add r4, #0x67
	strb r0, [r4]
_0207C010:
	add sp, #0x90
	pop {r4, pc}
	; .align 2, 0
_0207C014: .word 0x0000FFFF
_0207C018: .word 0x00007FFF
_0207C01C: .word 0x0000F3FF
_0207C020: .word 0x00000475
_0207C024: .word 0x00000397
	thumb_func_end sub_0207B180

	thumb_func_start sub_0207C028
sub_0207C028: ; 0x0207C028
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #6
	bgt _0207C03C
	bne _0207C038
	b _0207C1BA
_0207C038:
	add sp, #0x20
	pop {r4, r5, r6, pc}
_0207C03C:
	sub r0, #0xd
	cmp r0, #6
	bhi _0207C074
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207C04E: ; jump table
	.short _0207C05C - _0207C04E - 2 ; case 0
	.short _0207C05C - _0207C04E - 2 ; case 1
	.short _0207C1C8 - _0207C04E - 2 ; case 2
	.short _0207C1C8 - _0207C04E - 2 ; case 3
	.short _0207C1C8 - _0207C04E - 2 ; case 4
	.short _0207C1BA - _0207C04E - 2 ; case 5
	.short _0207C1BA - _0207C04E - 2 ; case 6
_0207C05C:
	ldr r0, [r4, #0x4c]
	ldr r2, [r4, #0x5c]
	mov r1, #4
	bl sub_0207D730
	cmp r0, #0
	beq _0207C074
	ldr r0, [r4, #0x24]
	bl sub_0207A0F8
	cmp r0, #6
	blt _0207C076
_0207C074:
	b _0207C1C8
_0207C076:
	ldr r0, [r4, #0x5c]
	bl sub_02073C74
	add r5, r0, #0
	ldr r0, [r4, #0x28]
	add r1, r5, #0
	bl sub_020775EC
	mov r0, #0x49
	lsl r0, r0, #2
	str r0, [sp]
	add r0, r5, #0
	mov r1, #5
	add r2, sp, #0
	bl sub_02074B30
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x9b
	add r2, sp, #0
	bl sub_02074B30
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #6
	add r2, sp, #0
	bl sub_02074B30
	add r0, r5, #0
	mov r1, #0xb
	add r2, sp, #0
	bl sub_02074B30
	mov r1, #0x19
	str r1, [sp, #4]
	add r6, sp, #0
_0207C0C2:
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02074B30
	ldr r0, [sp, #4]
	add r1, r0, #1
	str r1, [sp, #4]
	cmp r1, #0x36
	blt _0207C0C2
	mov r1, #0x4e
	str r1, [sp, #4]
	add r6, sp, #0
_0207C0DA:
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02074B30
	ldr r0, [sp, #4]
	add r1, r0, #1
	str r1, [sp, #4]
	cmp r1, #0x6e
	blt _0207C0DA
	mov r1, #0x7b
	str r1, [sp, #4]
	add r6, sp, #0
_0207C0F2:
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02074B30
	ldr r0, [sp, #4]
	add r1, r0, #1
	str r1, [sp, #4]
	cmp r1, #0x90
	blt _0207C0F2
	add r0, r5, #0
	mov r1, #0xb3
	mov r2, #0
	bl sub_02074B30
	add r0, r5, #0
	mov r1, #0x4d
	add r2, sp, #0
	bl sub_02074B30
	add r0, r5, #0
	mov r1, #0xa0
	add r2, sp, #0
	bl sub_02074B30
	ldr r0, [r4, #0x5c]
	bl sub_0202818C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0xaa
	add r2, r6, #0
	bl sub_02074B30
	add r0, r6, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #0xa2
	add r2, sp, #0
	bl sub_02074B30
	mov r0, #0
	add r1, sp, #8
	mov r2, #0x18
	bl sub_020C4BB8
	add r0, r5, #0
	mov r1, #0xab
	add r2, sp, #8
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207803C
	add r0, r5, #0
	bl sub_02075D6C
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x6f
	add r2, sp, #4
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0207A048
	ldr r0, [r4, #0x48]
	add r1, r5, #0
	bl sub_0202736C
	ldr r0, [r4, #0x50]
	mov r1, #0xc
	bl sub_0202CF28
	ldr r0, [r4, #0x50]
	mov r1, #0x16
	bl sub_0202CFEC
	add r0, r5, #0
	bl sub_02076B10
	add r1, r0, #0
	ldr r0, [r4, #0x54]
	bl sub_02056A48
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [r4, #0x4c]
	ldr r3, [r4, #0x5c]
	mov r1, #4
	mov r2, #1
	bl sub_0207D60C
	add sp, #0x20
	pop {r4, r5, r6, pc}
_0207C1BA:
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	mov r1, #6
	add r2, sp, #4
	bl sub_02074B30
_0207C1C8:
	add sp, #0x20
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0207C028

	thumb_func_start sub_0207C1CC
sub_0207C1CC: ; 0x0207C1CC
	push {r4, r5, r6, lr}
	sub sp, #0xb8
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201FF00
	ldr r6, _0207C440 ; =0x020F0A64
	add r3, sp, #0x3c
	mov r2, #5
_0207C1DE:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0207C1DE
	add r0, sp, #0x3c
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	ldr r6, _0207C444 ; =0x020F0A38
	add r3, sp, #0x2c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r6, _0207C448 ; =0x020F0A8C
	add r3, sp, #0x64
	mov r2, #0xa
_0207C23E:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0207C23E
	ldr r0, [r6, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	add r2, sp, #0x64
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0x80
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0x9c
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	ldr r1, _0207C44C ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strh r2, [r1]
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r6, _0207C450 ; =0x020F0A48
	add r3, sp, #0x10
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r0, [r5, #0x2c]
	bl sub_02027B50
	add r6, r0, #0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #0x5c]
	mov r1, #1
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0xa
	bl sub_0200E218
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0x5c]
	add r2, r4, #0
	str r0, [sp, #0xc]
	mov r0, #0x76
	mov r3, #3
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldr r0, [r5, #0x5c]
	add r2, r4, #0
	str r0, [sp, #0xc]
	mov r0, #0x76
	mov r3, #3
	bl sub_02006E60
	mov r1, #0
	str r1, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #0x14]
	ldr r3, [r5, #0x5c]
	mov r1, #0x76
	mov r2, #8
	bl sub_02003050
	add r0, r6, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xa0
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	ldr r3, [r5, #0x5c]
	mov r1, #0x26
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xb0
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	ldr r3, [r5, #0x5c]
	mov r1, #0xe
	mov r2, #7
	bl sub_02003050
	ldr r0, [r5, #0x5c]
	mov r1, #2
	str r0, [sp]
	ldr r0, [r5, #0]
	mov r2, #1
	mov r3, #0
	bl sub_0200DA60
	bl sub_0200DAA0
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x80
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	ldr r3, [r5, #0x5c]
	mov r1, #0x26
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0x5c]
	mov r1, #0xa
	str r0, [sp, #0xc]
	mov r0, #0xc
	add r2, r4, #0
	mov r3, #4
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0x5c]
	mov r1, #0xb
	str r0, [sp, #0xc]
	mov r0, #0xc
	add r2, r4, #0
	mov r3, #4
	bl sub_02006E60
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #0xc
	ldr r0, [r5, #0x14]
	ldr r3, [r5, #0x5c]
	add r2, r1, #0
	bl sub_02003050
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	ldr r2, _0207C454 ; =0xFFFF1FFF
	add r3, r1, #0
	and r3, r2
	lsr r1, r0, #0xd
	orr r1, r3
	ldr r3, _0207C458 ; =0x04001000
	str r1, [r0, #0]
	ldr r1, [r3, #0]
	and r1, r2
	str r1, [r3, #0]
	add r3, r0, #0
	add r3, #0x48
	ldrh r4, [r3]
	mov r2, #0x3f
	mov r1, #0x1f
	bic r4, r2
	orr r1, r4
	strh r1, [r3]
	add r0, #0x4a
	ldrh r3, [r0]
	mov r1, #0x12
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x72
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x73
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0x74
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0xa0
	add r0, #0x75
	strb r1, [r0]
	bl sub_0201FFD0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _0207C45C ; =sub_0207C520
	add r1, r5, #0
	bl sub_02017798
	add sp, #0xb8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207C440: .word 0x020F0A64
_0207C444: .word 0x020F0A38
_0207C448: .word 0x020F0A8C
_0207C44C: .word 0x04000008
_0207C450: .word 0x020F0A48
_0207C454: .word 0xFFFF1FFF
_0207C458: .word 0x04001000
_0207C45C: .word sub_0207C520
	thumb_func_end sub_0207C1CC

	thumb_func_start sub_0207C460
sub_0207C460: ; 0x0207C460
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207C460

	thumb_func_start sub_0207C498
sub_0207C498: ; 0x0207C498
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r1, [r4, #0x28]
	add r0, sp, #0x10
	mov r2, #2
	bl sub_02075EF4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	add r1, sp, #0x10
	mov r2, #0x80
	mov r3, #0x50
	bl sub_02007C34
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x5c]
	bl sub_02073C74
	add r5, r0, #0
	ldr r0, [r4, #0x28]
	add r1, r5, #0
	bl sub_020775EC
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #5
	add r2, #0x62
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	add r0, sp, #0x10
	add r1, r5, #0
	mov r2, #2
	bl sub_02075EF4
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	add r1, sp, #0x10
	mov r2, #0x80
	mov r3, #0x50
	bl sub_02007C34
	str r0, [r4, #0x20]
	mov r1, #0xc
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x20]
	mov r1, #0xd
	mov r2, #0
	bl sub_02007DEC
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207C498

	thumb_func_start sub_0207C520
sub_0207C520: ; 0x0207C520
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x75
	ldrb r2, [r0]
	add r0, r4, #0
	add r0, #0x73
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x72
	ldrb r0, [r0]
	mov r3, #0xff
	lsl r3, r3, #8
	lsl r0, r0, #8
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x74
	lsl r1, r1, #8
	and r1, r3
	ldrb r0, [r0]
	and r5, r3
	orr r1, r2
	orr r5, r0
	ldr r0, _0207C578 ; =0x04000040
	strh r5, [r0]
	strh r1, [r0, #4]
	ldr r0, [r4, #0x18]
	bl sub_02008A94
	bl sub_0201DCAC
	ldr r0, [r4, #0x14]
	bl sub_02003694
	ldr r0, [r4, #0]
	bl sub_0201C2B8
	ldr r3, _0207C57C ; =0x027E0000
	ldr r1, _0207C580 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, r4, r5, pc}
	nop
_0207C578: .word 0x04000040
_0207C57C: .word 0x027E0000
_0207C580: .word 0x00003FF8
	thumb_func_end sub_0207C520

	thumb_func_start sub_0207C584
sub_0207C584: ; 0x0207C584
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [r4, #4]
	mov r1, #0xff
	bl sub_0201ADA4
	ldr r0, [r4, #0x2c]
	bl sub_02027AC0
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _0207C5C8 ; =sub_0207C5CC
	mov r1, #1
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x10]
	bl sub_0201D738
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0207C5C8: .word sub_0207C5CC
	thumb_func_end sub_0207C584

	thumb_func_start sub_0207C5CC
sub_0207C5CC: ; 0x0207C5CC
	push {r4, lr}
	mov r4, #0
	cmp r1, #5
	bhi _0207C612
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207C5E0: ; jump table
	.short _0207C612 - _0207C5E0 - 2 ; case 0
	.short _0207C5EC - _0207C5E0 - 2 ; case 1
	.short _0207C5F4 - _0207C5E0 - 2 ; case 2
	.short _0207C5FC - _0207C5E0 - 2 ; case 3
	.short _0207C604 - _0207C5E0 - 2 ; case 4
	.short _0207C60C - _0207C5E0 - 2 ; case 5
_0207C5EC:
	bl sub_020057E0
	add r4, r0, #0
	b _0207C612
_0207C5F4:
	bl sub_020061E4
	add r4, r0, #0
	b _0207C612
_0207C5FC:
	ldr r0, _0207C618 ; =0x00000484
	bl sub_02006150
	b _0207C612
_0207C604:
	ldr r0, _0207C61C ; =0x000005E6
	bl sub_02005748
	b _0207C612
_0207C60C:
	ldr r0, _0207C620 ; =0x00000483
	bl sub_02006150
_0207C612:
	add r0, r4, #0
	pop {r4, pc}
	nop
_0207C618: .word 0x00000484
_0207C61C: .word 0x000005E6
_0207C620: .word 0x00000483
	thumb_func_end sub_0207C5CC

	thumb_func_start sub_0207C624
sub_0207C624: ; 0x0207C624
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0207C638 ; =0x020F410C
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x5c]
	bl sub_020067E8
	str r0, [r4, #0x38]
	pop {r4, pc}
	nop
_0207C638: .word 0x020F410C
	thumb_func_end sub_0207C624

	thumb_func_start sub_0207C63C
sub_0207C63C: ; 0x0207C63C
	push {r3, lr}
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0207C65C ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0207C660 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	pop {r3, pc}
	; .align 2, 0
_0207C65C: .word 0xFFFFE0FF
_0207C660: .word 0x04001000
	thumb_func_end sub_0207C63C

	thumb_func_start sub_0207C664
sub_0207C664: ; 0x0207C664
	push {r3, lr}
	mov r0, #7
	str r0, [sp]
	ldr r0, _0207C688 ; =0x04000050
	mov r1, #0
	mov r2, #0xe
	mov r3, #0xb
	bl sub_020BF55C
	mov r0, #8
	str r0, [sp]
	ldr r0, _0207C68C ; =0x04001050
	mov r1, #0
	mov r2, #0xe
	mov r3, #7
	bl sub_020BF55C
	pop {r3, pc}
	; .align 2, 0
_0207C688: .word 0x04000050
_0207C68C: .word 0x04001050
	thumb_func_end sub_0207C664

	thumb_func_start sub_0207C690
sub_0207C690: ; 0x0207C690
	push {r3, lr}
	sub sp, #8
	mov r2, #2
	ldr r1, _0207C6A8 ; =sub_0207C6AC
	str r2, [sp]
	str r1, [sp, #4]
	mov r1, #0
	add r3, r1, #0
	bl sub_02024220
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
_0207C6A8: .word sub_0207C6AC
	thumb_func_end sub_0207C690

	thumb_func_start sub_0207C6AC
sub_0207C6AC: ; 0x0207C6AC
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _0207C718 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0207C71C ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0207C720 ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	mov r0, #0
	ldr r2, _0207C724 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020BFD58
	ldr r1, _0207C728 ; =0xBFFF0000
	ldr r0, _0207C72C ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_0207C718: .word 0x04000008
_0207C71C: .word 0xFFFFCFFD
_0207C720: .word 0x0000CFFB
_0207C724: .word 0x00007FFF
_0207C728: .word 0xBFFF0000
_0207C72C: .word 0x04000580
	thumb_func_end sub_0207C6AC

	thumb_func_start sub_0207C730
sub_0207C730: ; 0x0207C730
	push {r3, r4, r5, lr}
	ldr r3, _0207C768 ; =0x02100DEC
	mov r0, #2
	mov r1, #0
	ldr r3, [r3, #0]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _0207C76C ; =0x02100DF4
	mov r1, #0
	add r4, r0, #0
	ldr r3, [r3, #0]
	mov r0, #0xa0
	add r2, r1, #0
	blx r3
	add r5, r0, #0
	cmp r4, #0
	bne _0207C758
	bl sub_02022974
_0207C758:
	cmp r5, #0
	bne _0207C760
	bl sub_02022974
_0207C760:
	bl sub_02014000
	pop {r3, r4, r5, pc}
	nop
_0207C768: .word 0x02100DEC
_0207C76C: .word 0x02100DF4
	thumb_func_end sub_0207C730

	thumb_func_start sub_0207C770
sub_0207C770: ; 0x0207C770
	push {r3, lr}
	bl sub_020241B4
	bl sub_0201469C
	cmp r0, #0
	ble _0207C786
	bl sub_020241B4
	bl sub_020A73C0
_0207C786:
	bl sub_020146C0
	mov r0, #1
	mov r1, #0
	bl sub_020241BC
	pop {r3, pc}
	thumb_func_end sub_0207C770

	thumb_func_start sub_0207C794
sub_0207C794: ; 0x0207C794
	push {r4, lr}
	ldr r3, _0207C7AC ; =0x02100DEC
	mov r2, #0
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bl sub_020145B4
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_0207C7AC: .word 0x02100DEC
	thumb_func_end sub_0207C794

	thumb_func_start sub_0207C7B0
sub_0207C7B0: ; 0x0207C7B0
	push {r4, lr}
	ldr r3, _0207C7C8 ; =0x02100DF4
	mov r2, #0
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bl sub_020145F4
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_0207C7C8: .word 0x02100DF4
	thumb_func_end sub_0207C7B0

	thumb_func_start sub_0207C7CC
sub_0207C7CC: ; 0x0207C7CC
	push {r4, lr}
	sub sp, #8
	mov r1, #0x12
	lsl r1, r1, #0xa
	add r4, r0, #0
	bl sub_02018144
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r3, #0x12
	ldr r0, _0207C80C ; =sub_0207C794
	ldr r1, _0207C810 ; =sub_0207C7B0
	lsl r3, r3, #0xa
	str r4, [sp, #4]
	bl sub_02014014
	add r4, r0, #0
	bl sub_02014784
	add r2, r0, #0
	beq _0207C804
	mov r0, #1
	mov r1, #0xe1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
_0207C804:
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	nop
_0207C80C: .word sub_0207C794
_0207C810: .word sub_0207C7B0
	thumb_func_end sub_0207C7CC

	thumb_func_start sub_0207C814
sub_0207C814: ; 0x0207C814
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_0207C7CC
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_020144C4
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0xa
	mov r3, #1
	bl sub_020144CC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207C814

	thumb_func_start sub_0207C83C
sub_0207C83C: ; 0x0207C83C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02014730
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201411C
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207C83C

	thumb_func_start sub_0207C854
sub_0207C854: ; 0x0207C854
	push {r3}
	sub sp, #0xc
	add r1, sp, #0
	mov r2, #0
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	mov r1, #0x56
	lsl r1, r1, #4
	str r2, [sp]
	str r2, [sp, #8]
	str r1, [sp, #4]
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0]
	ldr r1, [r1, #4]
	add r1, r2, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #4]
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #8]
	ldr r1, [r1, #0]
	ldr r1, [r1, #0xc]
	add r1, r2, r1
	str r1, [r0, #0x30]
	add sp, #0xc
	pop {r3}
	bx lr
	thumb_func_end sub_0207C854

	thumb_func_start sub_0207C894
sub_0207C894: ; 0x0207C894
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	bne _0207C8A8
	bl sub_02022974
_0207C8A8:
	ldr r0, [r5, #0]
	ldr r2, [r5, #4]
	mov r1, #0x7c
	str r0, [r4, #0]
	str r2, [r4, #4]
	ldr r0, [r4, #0]
	bl sub_0207C814
	mov r1, #1
	str r0, [r4, #0xc]
	bl sub_02014788
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207C894

	thumb_func_start sub_0207C8C4
sub_0207C8C4: ; 0x0207C8C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	ldr r2, _0207C8DC ; =sub_0207C854
	add r3, r4, #0
	bl sub_020146F4
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02014788
	pop {r4, pc}
	; .align 2, 0
_0207C8DC: .word sub_0207C854
	thumb_func_end sub_0207C8C4

	thumb_func_start sub_0207C8E0
sub_0207C8E0: ; 0x0207C8E0
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02014710
	cmp r0, #0
	beq _0207C8F0
	mov r0, #1
	pop {r3, pc}
_0207C8F0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0207C8E0

	thumb_func_start sub_0207C8F4
sub_0207C8F4: ; 0x0207C8F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207C83C
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207C8F4

	thumb_func_start sub_0207C908
sub_0207C908: ; 0x0207C908
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x17
	blo _0207C914
	bl sub_02022974
_0207C914:
	ldr r0, _0207C91C ; =0x020F0AF0
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_0207C91C: .word 0x020F0AF0
	thumb_func_end sub_0207C908

	thumb_func_start sub_0207C920
sub_0207C920: ; 0x0207C920
	mov r0, #0x4a
	bx lr
	thumb_func_end sub_0207C920

	thumb_func_start sub_0207C924
sub_0207C924: ; 0x0207C924
	mov r0, #0xf2
	bx lr
	thumb_func_end sub_0207C924

	thumb_func_start sub_0207C928
sub_0207C928: ; 0x0207C928
	mov r0, #0xf3
	bx lr
	thumb_func_end sub_0207C928

	thumb_func_start sub_0207C92C
sub_0207C92C: ; 0x0207C92C
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x17
	blo _0207C938
	bl sub_02022974
_0207C938:
	ldr r0, _0207C940 ; =0x020F0B4C
	ldrb r0, [r0, r4]
	pop {r4, pc}
	nop
_0207C940: .word 0x020F0B4C
	thumb_func_end sub_0207C92C

	thumb_func_start sub_0207C944
sub_0207C944: ; 0x0207C944
	mov r0, #0x1b
	bx lr
	thumb_func_end sub_0207C944

	thumb_func_start sub_0207C948
sub_0207C948: ; 0x0207C948
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r3, #0
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_0207C944
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_0207C908
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r4, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200CBDC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207C948

	thumb_func_start sub_0207C97C
sub_0207C97C: ; 0x0207C97C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0207C944
	str r0, [sp, #0x10]
	bl sub_0207C920
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r5, [sp, #8]
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	add r1, r7, #0
	str r4, [sp, #0xc]
	bl sub_0200CC9C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207C97C

	thumb_func_start sub_0207C9B0
sub_0207C9B0: ; 0x0207C9B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #0x18]
	bl sub_0207C944
	add r4, r0, #0
	bl sub_0207C920
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	add r1, r6, #0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r2, r7, #0
	bl sub_0200CD7C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207C9B0

	thumb_func_start sub_0207C9EC
sub_0207C9EC: ; 0x0207C9EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0207C944
	str r0, [sp, #8]
	bl sub_0207C924
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	str r6, [sp, #4]
	bl sub_0200CE0C
	bl sub_0207C944
	add r6, r0, #0
	bl sub_0207C928
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	str r7, [sp, #4]
	bl sub_0200CE3C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0207C9EC

	thumb_func_start sub_0207CA34
sub_0207CA34: ; 0x0207CA34
	ldr r3, _0207CA38 ; =sub_0200D070
	bx r3
	; .align 2, 0
_0207CA38: .word sub_0200D070
	thumb_func_end sub_0207CA34

	thumb_func_start sub_0207CA3C
sub_0207CA3C: ; 0x0207CA3C
	ldr r3, _0207CA40 ; =sub_0200D080
	bx r3
	; .align 2, 0
_0207CA40: .word sub_0200D080
	thumb_func_end sub_0207CA3C

	thumb_func_start sub_0207CA44
sub_0207CA44: ; 0x0207CA44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_0200D090
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D0A0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207CA44

	thumb_func_start sub_0207CA58
sub_0207CA58: ; 0x0207CA58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r3, #0
	add r4, r0, #0
	add r7, r1, #0
	add r5, sp, #0
	mov r3, #6
_0207CA66:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _0207CA66
	ldr r0, [r6, #0]
	str r0, [r5, #0]
	add r0, r2, #0
	bl sub_0207C92C
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	add r2, sp, #0
	bl sub_0200CE6C
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0207CA58

	thumb_func_start sub_0207CA88
sub_0207CA88: ; 0x0207CA88
	ldr r3, _0207CA8C ; =sub_0200D0F4
	bx r3
	; .align 2, 0
_0207CA8C: .word sub_0200D0F4
	thumb_func_end sub_0207CA88

	thumb_func_start sub_0207CA90
sub_0207CA90: ; 0x0207CA90
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #3
	blo _0207CA9C
	bl sub_02022974
_0207CA9C:
	ldr r0, _0207CAA4 ; =0x020F0AE4
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_0207CAA4: .word 0x020F0AE4
	thumb_func_end sub_0207CA90

	thumb_func_start sub_0207CAA8
sub_0207CAA8: ; 0x0207CAA8
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #3
	blo _0207CAB4
	bl sub_02022974
_0207CAB4:
	ldr r0, _0207CABC ; =0x020F0AE0
	ldrb r0, [r0, r4]
	pop {r4, pc}
	nop
_0207CABC: .word 0x020F0AE0
	thumb_func_end sub_0207CAA8

	thumb_func_start sub_0207CAC0
sub_0207CAC0: ; 0x0207CAC0
	mov r0, #0x1b
	bx lr
	thumb_func_end sub_0207CAC0

	thumb_func_start sub_0207CAC4
sub_0207CAC4: ; 0x0207CAC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r3, #0
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_0207CAC0
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_0207CA90
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r4, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200CBDC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207CAC4

	thumb_func_start sub_0207CAF8
sub_0207CAF8: ; 0x0207CAF8
	ldr r3, _0207CAFC ; =sub_0200D070
	bx r3
	; .align 2, 0
_0207CAFC: .word sub_0200D070
	thumb_func_end sub_0207CAF8

	thumb_func_start sub_0207CB00
sub_0207CB00: ; 0x0207CB00
	ldr r3, _0207CB04 ; =sub_0200D0F4
	bx r3
	; .align 2, 0
_0207CB04: .word sub_0200D0F4
	thumb_func_end sub_0207CB00

	thumb_func_start sub_0207CB08
sub_0207CB08: ; 0x0207CB08
	push {r4, lr}
	mov r1, #0x78
	bl sub_02018144
	mov r1, #0
	mov r2, #0x78
	add r4, r0, #0
	bl sub_020D5124
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207CB08

	thumb_func_start sub_0207CB20
sub_0207CB20: ; 0x0207CB20
	mov r0, #0x78
	bx lr
	thumb_func_end sub_0207CB20

	thumb_func_start sub_0207CB24
sub_0207CB24: ; 0x0207CB24
	add r0, #0x65
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207CB24

	thumb_func_start sub_0207CB2C
sub_0207CB2C: ; 0x0207CB2C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r1, r2, #0
	add r5, r0, #0
	add r6, r3, #0
	bl sub_0207CB24
	str r4, [r5, #0]
	str r6, [r5, #0x6c]
	mov r0, #0
	add r5, #0x66
	strh r0, [r5]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0207CB2C

	thumb_func_start sub_0207CB48
sub_0207CB48: ; 0x0207CB48
	push {r3, r4}
	mov r4, #0xc
	mul r4, r3
	add r0, r0, r4
	str r1, [r0, #4]
	strb r2, [r0, #0xc]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0207CB48

	thumb_func_start sub_0207CB58
sub_0207CB58: ; 0x0207CB58
	add r1, r0, #0
	add r1, #0x76
	ldrh r2, [r1]
	mov r1, #1
	add r0, #0x76
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	bx lr
	thumb_func_end sub_0207CB58

	thumb_func_start sub_0207CB6C
sub_0207CB6C: ; 0x0207CB6C
	str r1, [r0, #0x70]
	bx lr
	thumb_func_end sub_0207CB6C

	thumb_func_start sub_0207CB70
sub_0207CB70: ; 0x0207CB70
	add r0, #0x74
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207CB70

	thumb_func_start sub_0207CB78
sub_0207CB78: ; 0x0207CB78
	add r2, r0, #0
	add r2, #0x76
	ldrh r3, [r2]
	ldr r2, _0207CB90 ; =0xFFFF0001
	lsl r1, r1, #0x11
	and r2, r3
	lsr r1, r1, #0x10
	orr r1, r2
	add r0, #0x76
	strh r1, [r0]
	bx lr
	nop
_0207CB90: .word 0xFFFF0001
	thumb_func_end sub_0207CB78

	thumb_func_start sub_0207CB94
sub_0207CB94: ; 0x0207CB94
	add r0, #0x66
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207CB94

	thumb_func_start sub_0207CB9C
sub_0207CB9C: ; 0x0207CB9C
	add r0, #0x68
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207CB9C

	thumb_func_start sub_0207CBA4
sub_0207CBA4: ; 0x0207CBA4
	add r0, #0x74
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207CBA4

	thumb_func_start sub_0207CBAC
sub_0207CBAC: ; 0x0207CBAC
	add r0, #0x75
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207CBAC

	thumb_func_start sub_0207CBB4
sub_0207CBB4: ; 0x0207CBB4
	push {r3, lr}
	bl sub_02025E50
	bl sub_0202B5B4
	pop {r3, pc}
	thumb_func_end sub_0207CBB4

	thumb_func_start sub_0207CBC0
sub_0207CBC0: ; 0x0207CBC0
	push {r4, r5, r6, lr}
	bl sub_0202CA1C
	add r6, r0, #0
	mov r5, #0
	mov r4, #1
_0207CBCC:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202CBC8
	add r4, r4, #1
	add r5, r5, r0
	cmp r4, #0x50
	bls _0207CBCC
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0207CBC0

	thumb_func_start sub_0207CBE0
sub_0207CBE0: ; 0x0207CBE0
	push {r3, lr}
	bl sub_0202A750
	bl sub_02029D04
	bl sub_02029DF0
	pop {r3, pc}
	thumb_func_end sub_0207CBE0

	thumb_func_start sub_0207CBF0
sub_0207CBF0: ; 0x0207CBF0
	push {r3, lr}
	bl sub_0202A750
	bl sub_02029D04
	bl sub_02029E0C
	pop {r3, pc}
	thumb_func_end sub_0207CBF0

	thumb_func_start sub_0207CC00
sub_0207CC00: ; 0x0207CC00
	push {r3, lr}
	bl sub_0202D750
	mov r1, #0
	add r2, r1, #0
	bl sub_0202D230
	pop {r3, pc}
	thumb_func_end sub_0207CC00

	thumb_func_start sub_0207CC10
sub_0207CC10: ; 0x0207CC10
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp, #8]
	add r5, r2, #0
	add r4, r3, #0
	mov r0, #0
	mov r1, #0x1a
	mov r2, #7
	bl sub_0200B144
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0200B358
	add r4, r0, #0
	cmp r5, #0
	bne _0207CC40
	add r0, r6, #0
	mov r1, #0x63
	bl sub_0200B1EC
	add r5, r0, #0
	b _0207CD12
_0207CC40:
	mov r1, #0x1b
	lsl r1, r1, #4
	cmp r5, r1
	bne _0207CC6C
	add r0, r6, #0
	mov r1, #0x61
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0207CC00
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r3, #4
	bl sub_0200B60C
	b _0207CD12
_0207CC6C:
	add r2, r1, #2
	cmp r5, r2
	bne _0207CC96
	add r0, r6, #0
	mov r1, #0x5c
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0207CBC0
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r3, #4
	bl sub_0200B60C
	b _0207CD12
_0207CC96:
	add r2, r1, #3
	cmp r5, r2
	bne _0207CCD8
	add r0, r6, #0
	mov r1, #0x5d
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0207CBE0
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r3, #3
	bl sub_0200B60C
	add r0, r7, #0
	bl sub_0207CBF0
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	add r0, r4, #0
	mov r3, #2
	str r1, [sp, #4]
	bl sub_0200B60C
	b _0207CD12
_0207CCD8:
	add r1, #0xc
	cmp r5, r1
	bne _0207CD02
	add r0, r6, #0
	mov r1, #0x39
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0207CBB4
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r3, #5
	bl sub_0200B60C
	b _0207CD12
_0207CD02:
	bl sub_0200B3F0
	add r0, r6, #0
	bl sub_0200B190
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0207CD12:
	ldr r1, [sp, #8]
	add r0, r4, #0
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B3F0
	add r0, r6, #0
	bl sub_0200B190
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0207CC10

	thumb_func_start sub_0207CD34
sub_0207CD34: ; 0x0207CD34
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r4, [sp, #0x18]
	cmp r3, #1
	beq _0207CD4A
	cmp r3, #2
	beq _0207CD68
	cmp r3, #3
	beq _0207CD86
	b _0207CDA4
_0207CD4A:
	mov r0, #1
	mov r1, #0x1a
	mov r2, #7
	add r3, r4, #0
	bl sub_0200B144
	add r4, r0, #0
	mov r1, #0x38
	add r2, r5, #0
	bl sub_0200B1B8
	add r0, r4, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
_0207CD68:
	mov r0, #1
	mov r1, #0x1a
	mov r2, #7
	add r3, r4, #0
	bl sub_0200B144
	add r4, r0, #0
	mov r1, #0x6f
	add r2, r5, #0
	bl sub_0200B1B8
	add r0, r4, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
_0207CD86:
	mov r0, #1
	mov r1, #0x1a
	mov r2, #7
	add r3, r4, #0
	bl sub_0200B144
	add r4, r0, #0
	mov r1, #0x70
	add r2, r5, #0
	bl sub_0200B1B8
	add r0, r4, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
_0207CDA4:
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xd5
	add r3, r4, #0
	bl sub_0200B144
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0200B358
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0x24
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B498
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B3F0
	add r0, r7, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207CD34

	thumb_func_start sub_0207CDEC
sub_0207CDEC: ; 0x0207CDEC
	push {r3, r4, r5, r6}
	add r3, r0, #0
	add r0, r2, #0
	cmp r1, r0
	beq _0207CE72
	lsl r2, r1, #2
	ldrh r4, [r3, r2]
	add r5, r3, r2
	add r2, sp, #0
	strh r4, [r2]
	ldrh r4, [r5, #2]
	strh r4, [r2, #2]
	cmp r0, r1
	bls _0207CE38
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #0x10
	lsl r2, r0, #0x10
	asr r1, r1, #0x10
	asr r5, r2, #0x10
	cmp r1, r5
	bge _0207CE64
	lsl r2, r1, #2
	add r2, r3, r2
	add r4, r2, #0
_0207CE20:
	ldrh r6, [r2, #4]
	add r1, r1, #1
	lsl r1, r1, #0x10
	strh r6, [r4]
	ldrh r6, [r2, #6]
	asr r1, r1, #0x10
	add r2, r2, #4
	strh r6, [r4, #2]
	add r4, r4, #4
	cmp r1, r5
	blt _0207CE20
	b _0207CE64
_0207CE38:
	lsl r1, r1, #0x10
	asr r5, r1, #0x10
	lsl r1, r0, #0x10
	asr r4, r1, #0x10
	cmp r5, r4
	ble _0207CE64
	lsl r1, r5, #2
	add r1, r3, r1
	add r2, r1, #0
_0207CE4A:
	sub r6, r1, #4
	ldrh r6, [r6]
	sub r5, r5, #1
	lsl r5, r5, #0x10
	strh r6, [r2]
	sub r6, r1, #2
	ldrh r6, [r6]
	asr r5, r5, #0x10
	sub r1, r1, #4
	strh r6, [r2, #2]
	sub r2, r2, #4
	cmp r5, r4
	bgt _0207CE4A
_0207CE64:
	lsl r4, r0, #2
	add r0, sp, #0
	ldrh r1, [r0]
	add r2, r3, r4
	strh r1, [r3, r4]
	ldrh r0, [r0, #2]
	strh r0, [r2, #2]
_0207CE72:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207CDEC

	thumb_func_start sub_0207CE78
sub_0207CE78: ; 0x0207CE78
	cmp r1, #3
	bhi _0207CEEA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207CE88: ; jump table
	.short _0207CE90 - _0207CE88 - 2 ; case 0
	.short _0207CEA2 - _0207CE88 - 2 ; case 1
	.short _0207CEBC - _0207CE88 - 2 ; case 2
	.short _0207CED8 - _0207CE88 - 2 ; case 3
_0207CE90:
	cmp r0, #0
	beq _0207CEEA
	ldr r1, _0207CEF0 ; =0x0000FFFF
	cmp r0, r1
	beq _0207CEEA
	lsl r1, r0, #3
	ldr r0, _0207CEF4 ; =0x020F0CC4
	ldrh r0, [r0, r1]
	bx lr
_0207CEA2:
	cmp r0, #0
	bne _0207CEAA
	ldr r0, _0207CEF8 ; =0x000002C3
	bx lr
_0207CEAA:
	ldr r1, _0207CEF0 ; =0x0000FFFF
	cmp r0, r1
	bne _0207CEB4
	ldr r0, _0207CEFC ; =0x000002C5
	bx lr
_0207CEB4:
	lsl r1, r0, #3
	ldr r0, _0207CF00 ; =0x020F0CC6
	ldrh r0, [r0, r1]
	bx lr
_0207CEBC:
	cmp r0, #0
	bne _0207CEC6
	mov r0, #0xb1
	lsl r0, r0, #2
	bx lr
_0207CEC6:
	ldr r1, _0207CEF0 ; =0x0000FFFF
	cmp r0, r1
	bne _0207CED0
	ldr r0, _0207CF04 ; =0x000002C6
	bx lr
_0207CED0:
	lsl r1, r0, #3
	ldr r0, _0207CF08 ; =0x020F0CC8
	ldrh r0, [r0, r1]
	bx lr
_0207CED8:
	cmp r0, #0
	beq _0207CEEA
	ldr r1, _0207CEF0 ; =0x0000FFFF
	cmp r0, r1
	beq _0207CEEA
	lsl r1, r0, #3
	ldr r0, _0207CF0C ; =0x020F0CCA
	ldrh r0, [r0, r1]
	bx lr
_0207CEEA:
	mov r0, #0
	bx lr
	nop
_0207CEF0: .word 0x0000FFFF
_0207CEF4: .word 0x020F0CC4
_0207CEF8: .word 0x000002C3
_0207CEFC: .word 0x000002C5
_0207CF00: .word 0x020F0CC6
_0207CF04: .word 0x000002C6
_0207CF08: .word 0x020F0CC8
_0207CF0C: .word 0x020F0CCA
	thumb_func_end sub_0207CE78

	thumb_func_start sub_0207CF10
sub_0207CF10: ; 0x0207CF10
	push {r3, r4}
	ldr r3, _0207CF38 ; =0x020F0CC4
	ldr r2, _0207CF3C ; =0x000001D3
	mov r4, #1
_0207CF18:
	lsl r1, r4, #3
	add r1, r3, r1
	ldrh r1, [r1, #6]
	cmp r0, r1
	bne _0207CF28
	add r0, r4, #0
	pop {r3, r4}
	bx lr
_0207CF28:
	add r1, r4, #1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r4, r2
	bls _0207CF18
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0207CF38: .word 0x020F0CC4
_0207CF3C: .word 0x000001D3
	thumb_func_end sub_0207CF10

	thumb_func_start sub_0207CF40
sub_0207CF40: ; 0x0207CF40
	mov r0, #1
	bx lr
	thumb_func_end sub_0207CF40

	thumb_func_start sub_0207CF44
sub_0207CF44: ; 0x0207CF44
	mov r0, #0
	bx lr
	thumb_func_end sub_0207CF44

	thumb_func_start sub_0207CF48
sub_0207CF48: ; 0x0207CF48
	push {r3, lr}
	add r3, r0, #0
	ldr r0, _0207CF90 ; =0x000001D3
	cmp r3, r0
	bls _0207CF54
	mov r3, #0
_0207CF54:
	cmp r1, #0
	beq _0207CF62
	cmp r1, #1
	beq _0207CF70
	cmp r1, #2
	beq _0207CF7E
	b _0207CF8C
_0207CF62:
	ldr r1, _0207CF94 ; =0x020F0CC4
	lsl r3, r3, #3
	ldrh r1, [r1, r3]
	mov r0, #0xf
	bl sub_02006AC0
	pop {r3, pc}
_0207CF70:
	ldr r1, _0207CF98 ; =0x020F0CC6
	lsl r3, r3, #3
	ldrh r1, [r1, r3]
	mov r0, #0x10
	bl sub_02006AC0
	pop {r3, pc}
_0207CF7E:
	ldr r1, _0207CF9C ; =0x020F0CC8
	lsl r3, r3, #3
	ldrh r1, [r1, r3]
	mov r0, #0x10
	bl sub_02006AC0
	pop {r3, pc}
_0207CF8C:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0207CF90: .word 0x000001D3
_0207CF94: .word 0x020F0CC4
_0207CF98: .word 0x020F0CC6
_0207CF9C: .word 0x020F0CC8
	thumb_func_end sub_0207CF48

	thumb_func_start sub_0207CFA0
sub_0207CFA0: ; 0x0207CFA0
	push {r4, r5, r6, lr}
	add r3, r2, #0
	mov r2, #0x62
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r6, r0, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0200B1B8
	add r0, r6, #0
	bl sub_0200B190
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0207CFA0

	thumb_func_start sub_0207CFC8
sub_0207CFC8: ; 0x0207CFC8
	push {r4, r5, r6, lr}
	add r3, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	ldr r2, _0207CFEC ; =0x00000187
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r6, r0, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0200B1B8
	add r0, r6, #0
	bl sub_0200B190
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207CFEC: .word 0x00000187
	thumb_func_end sub_0207CFC8

	thumb_func_start sub_0207CFF0
sub_0207CFF0: ; 0x0207CFF0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0
	add r5, r2, #0
	bl sub_0207CF48
	add r6, r0, #0
	add r1, r4, #0
	bl sub_0207D014
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02018238
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0207CFF0

	thumb_func_start sub_0207D014
sub_0207D014: ; 0x0207D014
	push {r3, lr}
	cmp r1, #0xe
	bhi _0207D094
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207D026: ; jump table
	.short _0207D044 - _0207D026 - 2 ; case 0
	.short _0207D048 - _0207D026 - 2 ; case 1
	.short _0207D04C - _0207D026 - 2 ; case 2
	.short _0207D050 - _0207D026 - 2 ; case 3
	.short _0207D058 - _0207D026 - 2 ; case 4
	.short _0207D060 - _0207D026 - 2 ; case 5
	.short _0207D068 - _0207D026 - 2 ; case 6
	.short _0207D06C - _0207D026 - 2 ; case 7
	.short _0207D070 - _0207D026 - 2 ; case 8
	.short _0207D074 - _0207D026 - 2 ; case 9
	.short _0207D078 - _0207D026 - 2 ; case 10
	.short _0207D07C - _0207D026 - 2 ; case 11
	.short _0207D080 - _0207D026 - 2 ; case 12
	.short _0207D088 - _0207D026 - 2 ; case 13
	.short _0207D090 - _0207D026 - 2 ; case 14
_0207D044:
	ldrh r0, [r0]
	pop {r3, pc}
_0207D048:
	ldrb r0, [r0, #2]
	pop {r3, pc}
_0207D04C:
	ldrb r0, [r0, #3]
	pop {r3, pc}
_0207D050:
	ldrh r0, [r0, #8]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	pop {r3, pc}
_0207D058:
	ldrh r0, [r0, #8]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	pop {r3, pc}
_0207D060:
	ldrh r0, [r0, #8]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1c
	pop {r3, pc}
_0207D068:
	ldrb r0, [r0, #0xa]
	pop {r3, pc}
_0207D06C:
	ldrb r0, [r0, #0xb]
	pop {r3, pc}
_0207D070:
	ldrb r0, [r0, #4]
	pop {r3, pc}
_0207D074:
	ldrb r0, [r0, #5]
	pop {r3, pc}
_0207D078:
	ldrb r0, [r0, #6]
	pop {r3, pc}
_0207D07C:
	ldrb r0, [r0, #7]
	pop {r3, pc}
_0207D080:
	ldrh r0, [r0, #8]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	pop {r3, pc}
_0207D088:
	ldrh r0, [r0, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1b
	pop {r3, pc}
_0207D090:
	ldrb r0, [r0, #0xc]
	pop {r3, pc}
_0207D094:
	ldrb r2, [r0, #0xc]
	cmp r2, #0
	beq _0207D0A0
	cmp r2, #1
	beq _0207D0A4
	b _0207D0AC
_0207D0A0:
	ldrb r0, [r0, #0xe]
	pop {r3, pc}
_0207D0A4:
	add r0, #0xe
	bl sub_0207D0B0
	pop {r3, pc}
_0207D0AC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0207D014

	thumb_func_start sub_0207D0B0
sub_0207D0B0: ; 0x0207D0B0
	sub r1, #0xf
	cmp r1, #0x2b
	bls _0207D0B8
	b _0207D262
_0207D0B8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207D0C4: ; jump table
	.short _0207D11C - _0207D0C4 - 2 ; case 0
	.short _0207D124 - _0207D0C4 - 2 ; case 1
	.short _0207D12C - _0207D0C4 - 2 ; case 2
	.short _0207D134 - _0207D0C4 - 2 ; case 3
	.short _0207D13C - _0207D0C4 - 2 ; case 4
	.short _0207D144 - _0207D0C4 - 2 ; case 5
	.short _0207D14C - _0207D0C4 - 2 ; case 6
	.short _0207D154 - _0207D0C4 - 2 ; case 7
	.short _0207D15C - _0207D0C4 - 2 ; case 8
	.short _0207D164 - _0207D0C4 - 2 ; case 9
	.short _0207D16C - _0207D0C4 - 2 ; case 10
	.short _0207D174 - _0207D0C4 - 2 ; case 11
	.short _0207D17C - _0207D0C4 - 2 ; case 12
	.short _0207D184 - _0207D0C4 - 2 ; case 13
	.short _0207D18C - _0207D0C4 - 2 ; case 14
	.short _0207D194 - _0207D0C4 - 2 ; case 15
	.short _0207D19C - _0207D0C4 - 2 ; case 16
	.short _0207D1A4 - _0207D0C4 - 2 ; case 17
	.short _0207D1AC - _0207D0C4 - 2 ; case 18
	.short _0207D1B4 - _0207D0C4 - 2 ; case 19
	.short _0207D1BC - _0207D0C4 - 2 ; case 20
	.short _0207D1C4 - _0207D0C4 - 2 ; case 21
	.short _0207D1CC - _0207D0C4 - 2 ; case 22
	.short _0207D1D4 - _0207D0C4 - 2 ; case 23
	.short _0207D1DC - _0207D0C4 - 2 ; case 24
	.short _0207D1E4 - _0207D0C4 - 2 ; case 25
	.short _0207D1EC - _0207D0C4 - 2 ; case 26
	.short _0207D1F4 - _0207D0C4 - 2 ; case 27
	.short _0207D1FC - _0207D0C4 - 2 ; case 28
	.short _0207D204 - _0207D0C4 - 2 ; case 29
	.short _0207D20C - _0207D0C4 - 2 ; case 30
	.short _0207D214 - _0207D0C4 - 2 ; case 31
	.short _0207D21C - _0207D0C4 - 2 ; case 32
	.short _0207D224 - _0207D0C4 - 2 ; case 33
	.short _0207D22A - _0207D0C4 - 2 ; case 34
	.short _0207D230 - _0207D0C4 - 2 ; case 35
	.short _0207D236 - _0207D0C4 - 2 ; case 36
	.short _0207D23C - _0207D0C4 - 2 ; case 37
	.short _0207D242 - _0207D0C4 - 2 ; case 38
	.short _0207D248 - _0207D0C4 - 2 ; case 39
	.short _0207D24C - _0207D0C4 - 2 ; case 40
	.short _0207D250 - _0207D0C4 - 2 ; case 41
	.short _0207D256 - _0207D0C4 - 2 ; case 42
	.short _0207D25C - _0207D0C4 - 2 ; case 43
_0207D11C:
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
_0207D124:
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bx lr
_0207D12C:
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bx lr
_0207D134:
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bx lr
_0207D13C:
	ldrb r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bx lr
_0207D144:
	ldrb r0, [r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	bx lr
_0207D14C:
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bx lr
_0207D154:
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
_0207D15C:
	ldrb r0, [r0, #1]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
_0207D164:
	ldrb r0, [r0, #1]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bx lr
_0207D16C:
	ldrb r0, [r0, #1]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bx lr
_0207D174:
	ldrb r0, [r0, #1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bx lr
_0207D17C:
	ldrb r0, [r0, #1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bx lr
_0207D184:
	ldrb r0, [r0, #2]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bx lr
_0207D18C:
	ldrb r0, [r0, #2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bx lr
_0207D194:
	ldrb r0, [r0, #3]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bx lr
_0207D19C:
	ldrb r0, [r0, #3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bx lr
_0207D1A4:
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bx lr
_0207D1AC:
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	bx lr
_0207D1B4:
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bx lr
_0207D1BC:
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
_0207D1C4:
	ldrb r0, [r0, #5]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
_0207D1CC:
	ldrb r0, [r0, #5]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bx lr
_0207D1D4:
	ldrb r0, [r0, #5]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bx lr
_0207D1DC:
	ldrb r0, [r0, #5]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bx lr
_0207D1E4:
	ldrb r0, [r0, #5]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bx lr
_0207D1EC:
	ldrb r0, [r0, #5]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	bx lr
_0207D1F4:
	ldrb r0, [r0, #5]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bx lr
_0207D1FC:
	ldrb r0, [r0, #5]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
_0207D204:
	ldrb r0, [r0, #6]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
_0207D20C:
	ldrb r0, [r0, #6]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bx lr
_0207D214:
	ldrb r0, [r0, #6]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bx lr
_0207D21C:
	ldrb r0, [r0, #6]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bx lr
_0207D224:
	mov r1, #7
	ldrsb r0, [r0, r1]
	bx lr
_0207D22A:
	mov r1, #8
	ldrsb r0, [r0, r1]
	bx lr
_0207D230:
	mov r1, #9
	ldrsb r0, [r0, r1]
	bx lr
_0207D236:
	mov r1, #0xa
	ldrsb r0, [r0, r1]
	bx lr
_0207D23C:
	mov r1, #0xb
	ldrsb r0, [r0, r1]
	bx lr
_0207D242:
	mov r1, #0xc
	ldrsb r0, [r0, r1]
	bx lr
_0207D248:
	ldrb r0, [r0, #0xd]
	bx lr
_0207D24C:
	ldrb r0, [r0, #0xe]
	bx lr
_0207D250:
	mov r1, #0xf
	ldrsb r0, [r0, r1]
	bx lr
_0207D256:
	mov r1, #0x10
	ldrsb r0, [r0, r1]
	bx lr
_0207D25C:
	mov r1, #0x11
	ldrsb r0, [r0, r1]
	bx lr
_0207D262:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207D0B0

	thumb_func_start sub_0207D268
sub_0207D268: ; 0x0207D268
	mov r2, #0x52
	lsl r2, r2, #2
	cmp r0, r2
	blo _0207D278
	add r1, r2, #0
	add r1, #0x63
	cmp r0, r1
	bls _0207D27C
_0207D278:
	mov r0, #0
	bx lr
_0207D27C:
	sub r0, r0, r2
	lsl r0, r0, #0x10
	lsr r1, r0, #0xf
	ldr r0, _0207D288 ; =0x020F0BFC
	ldrh r0, [r0, r1]
	bx lr
	; .align 2, 0
_0207D288: .word 0x020F0BFC
	thumb_func_end sub_0207D268

	thumb_func_start sub_0207D28C
sub_0207D28C: ; 0x0207D28C
	ldr r2, _0207D2B0 ; =0x020F0BFC
	mov r3, #0
_0207D290:
	lsl r1, r3, #1
	add r1, r2, r1
	add r1, #0xb8
	ldrh r1, [r1]
	cmp r0, r1
	bne _0207D2A0
	mov r0, #1
	bx lr
_0207D2A0:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #8
	blo _0207D290
	mov r0, #0
	bx lr
	nop
_0207D2B0: .word 0x020F0BFC
	thumb_func_end sub_0207D28C

	thumb_func_start sub_0207D2B4
sub_0207D2B4: ; 0x0207D2B4
	mov r2, #0x52
	lsl r2, r2, #2
	cmp r0, r2
	blo _0207D2C4
	add r1, r2, #0
	add r1, #0x63
	cmp r0, r1
	bls _0207D2C8
_0207D2C4:
	mov r0, #0
	bx lr
_0207D2C8:
	sub r0, r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_0207D2B4

	thumb_func_start sub_0207D2D0
sub_0207D2D0: ; 0x0207D2D0
	ldr r3, _0207D2EC ; =0x020F0B64
	mov r2, #0
_0207D2D4:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0207D2DE
	mov r0, #1
	bx lr
_0207D2DE:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0xc
	blo _0207D2D4
	mov r0, #0
	bx lr
	nop
_0207D2EC: .word 0x020F0B64
	thumb_func_end sub_0207D2D0

	thumb_func_start sub_0207D2F0
sub_0207D2F0: ; 0x0207D2F0
	ldr r3, _0207D30C ; =0x020F0B64
	mov r2, #0
_0207D2F4:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0207D300
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	bx lr
_0207D300:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0xc
	blo _0207D2F4
	mov r0, #0
	bx lr
	; .align 2, 0
_0207D30C: .word 0x020F0B64
	thumb_func_end sub_0207D2F0

	thumb_func_start sub_0207D310
sub_0207D310: ; 0x0207D310
	cmp r0, #0xc
	blo _0207D318
	mov r0, #0
	bx lr
_0207D318:
	lsl r1, r0, #1
	ldr r0, _0207D320 ; =0x020F0B64
	ldrh r0, [r0, r1]
	bx lr
	; .align 2, 0
_0207D320: .word 0x020F0B64
	thumb_func_end sub_0207D310

	thumb_func_start sub_0207D324
sub_0207D324: ; 0x0207D324
	ldr r3, _0207D340 ; =0x020F0B7C
	mov r2, #0
_0207D328:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0207D332
	mov r0, #1
	bx lr
_0207D332:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0x40
	blo _0207D328
	mov r0, #0
	bx lr
	nop
_0207D340: .word 0x020F0B7C
	thumb_func_end sub_0207D324

	thumb_func_start sub_0207D344
sub_0207D344: ; 0x0207D344
	cmp r0, #0x95
	bhs _0207D34C
	mov r0, #0xff
	bx lr
_0207D34C:
	sub r0, #0x95
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_0207D344

	thumb_func_start sub_0207D354
sub_0207D354: ; 0x0207D354
	cmp r0, #0x40
	blo _0207D35C
	ldr r0, _0207D364 ; =0x0000FFFF
	bx lr
_0207D35C:
	lsl r1, r0, #1
	ldr r0, _0207D368 ; =0x020F0B7C
	ldrh r0, [r0, r1]
	bx lr
	; .align 2, 0
_0207D364: .word 0x0000FFFF
_0207D368: .word 0x020F0B7C
	thumb_func_end sub_0207D354

	thumb_func_start sub_0207D36C
sub_0207D36C: ; 0x0207D36C
	ldr r1, _0207D384 ; =0x0000FFDE
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #3
	bhi _0207D37C
	mov r0, #1
	b _0207D37E
_0207D37C:
	mov r0, #0
_0207D37E:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	; .align 2, 0
_0207D384: .word 0x0000FFDE
	thumb_func_end sub_0207D36C

	thumb_func_start sub_0207D388
sub_0207D388: ; 0x0207D388
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _0207D3AC ; =0x000001D3
	mov r1, #0
	bl sub_0207CE78
	mov r1, #0x24
	mul r1, r0
	str r1, [sp]
	mov r1, #0
	mov r0, #0xf
	add r2, r4, #0
	add r3, r1, #0
	bl sub_02006B18
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0207D3AC: .word 0x000001D3
	thumb_func_end sub_0207D388

	thumb_func_start sub_0207D3B0
sub_0207D3B0: ; 0x0207D3B0
	mov r2, #0x24
	mul r2, r1
	add r0, r0, r2
	bx lr
	thumb_func_end sub_0207D3B0

	thumb_func_start sub_0207D3B8
sub_0207D3B8: ; 0x0207D3B8
	ldr r0, _0207D3BC ; =0x00000774
	bx lr
	; .align 2, 0
_0207D3BC: .word 0x00000774
	thumb_func_end sub_0207D3B8

	thumb_func_start sub_0207D3C0
sub_0207D3C0: ; 0x0207D3C0
	push {r4, lr}
	ldr r1, _0207D3D4 ; =0x00000774
	bl sub_02018144
	add r4, r0, #0
	bl sub_0207D3D8
	add r0, r4, #0
	pop {r4, pc}
	nop
_0207D3D4: .word 0x00000774
	thumb_func_end sub_0207D3C0

	thumb_func_start sub_0207D3D8
sub_0207D3D8: ; 0x0207D3D8
	ldr r3, _0207D3E4 ; =sub_020C4AF0
	add r1, r0, #0
	mov r0, #0
	ldr r2, _0207D3E8 ; =0x00000774
	bx r3
	nop
_0207D3E4: .word sub_020C4AF0
_0207D3E8: .word 0x00000774
	thumb_func_end sub_0207D3D8

	thumb_func_start sub_0207D3EC
sub_0207D3EC: ; 0x0207D3EC
	ldr r3, _0207D3F4 ; =sub_020C4DB0
	ldr r2, _0207D3F8 ; =0x00000774
	bx r3
	nop
_0207D3F4: .word sub_020C4DB0
_0207D3F8: .word 0x00000774
	thumb_func_end sub_0207D3EC

	thumb_func_start sub_0207D3FC
sub_0207D3FC: ; 0x0207D3FC
	mov r1, #0x77
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_0207D3FC

	thumb_func_start sub_0207D404
sub_0207D404: ; 0x0207D404
	mov r2, #0x77
	lsl r2, r2, #4
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_0207D404

	thumb_func_start sub_0207D40C
sub_0207D40C: ; 0x0207D40C
	push {r4, r5, r6, lr}
	add r5, r2, #0
	add r4, r0, #0
	add r0, r1, #0
	ldr r2, [sp, #0x10]
	mov r1, #5
	add r6, r3, #0
	bl sub_0207CFF0
	cmp r0, #7
	bhi _0207D49C
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207D42E: ; jump table
	.short _0207D44C - _0207D42E - 2 ; case 0
	.short _0207D460 - _0207D42E - 2 ; case 1
	.short _0207D46C - _0207D42E - 2 ; case 2
	.short _0207D490 - _0207D42E - 2 ; case 3
	.short _0207D454 - _0207D42E - 2 ; case 4
	.short _0207D484 - _0207D42E - 2 ; case 5
	.short _0207D478 - _0207D42E - 2 ; case 6
	.short _0207D43E - _0207D42E - 2 ; case 7
_0207D43E:
	mov r1, #0xa5
	lsl r1, r1, #2
	add r1, r4, r1
	str r1, [r5, #0]
	mov r1, #0x32
	str r1, [r6, #0]
	pop {r4, r5, r6, pc}
_0207D44C:
	str r4, [r5, #0]
	mov r1, #0xa5
	str r1, [r6, #0]
	pop {r4, r5, r6, pc}
_0207D454:
	ldr r1, _0207D4A0 ; =0x000005BC
	add r1, r4, r1
	str r1, [r5, #0]
	mov r1, #0x40
	str r1, [r6, #0]
	pop {r4, r5, r6, pc}
_0207D460:
	ldr r1, _0207D4A4 ; =0x0000051C
	add r1, r4, r1
	str r1, [r5, #0]
	mov r1, #0x28
	str r1, [r6, #0]
	pop {r4, r5, r6, pc}
_0207D46C:
	ldr r1, _0207D4A8 ; =0x000006BC
	add r1, r4, r1
	str r1, [r5, #0]
	mov r1, #0xf
	str r1, [r6, #0]
	pop {r4, r5, r6, pc}
_0207D478:
	ldr r1, _0207D4AC ; =0x000006F8
	add r1, r4, r1
	str r1, [r5, #0]
	mov r1, #0x1e
	str r1, [r6, #0]
	pop {r4, r5, r6, pc}
_0207D484:
	ldr r1, _0207D4B0 ; =0x000004EC
	add r1, r4, r1
	str r1, [r5, #0]
	mov r1, #0xc
	str r1, [r6, #0]
	pop {r4, r5, r6, pc}
_0207D490:
	mov r1, #0xd7
	lsl r1, r1, #2
	add r1, r4, r1
	str r1, [r5, #0]
	mov r1, #0x64
	str r1, [r6, #0]
_0207D49C:
	pop {r4, r5, r6, pc}
	nop
_0207D4A0: .word 0x000005BC
_0207D4A4: .word 0x0000051C
_0207D4A8: .word 0x000006BC
_0207D4AC: .word 0x000006F8
_0207D4B0: .word 0x000004EC
	thumb_func_end sub_0207D40C

	thumb_func_start sub_0207D4B4
sub_0207D4B4: ; 0x0207D4B4
	push {r4, r5, r6, r7}
	add r5, r1, #0
	mov r1, #0
	add r7, r0, #0
	add r4, r2, #0
	mov ip, r3
	mvn r1, r1
	mov r0, #0
	cmp r5, #0
	bls _0207D502
	add r2, r7, #0
	add r3, r1, #0
_0207D4CC:
	ldrh r6, [r2]
	cmp r4, r6
	bne _0207D4EA
	lsl r0, r0, #2
	add r0, r7, r0
	ldrh r2, [r0, #2]
	mov r1, ip
	add r2, r1, r2
	add r1, sp, #0
	ldrh r1, [r1, #0x10]
	cmp r2, r1
	ble _0207D514
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_0207D4EA:
	cmp r1, r3
	bne _0207D4FA
	cmp r6, #0
	bne _0207D4FA
	ldrh r6, [r2, #2]
	cmp r6, #0
	bne _0207D4FA
	add r1, r0, #0
_0207D4FA:
	add r0, r0, #1
	add r2, r2, #4
	cmp r0, r5
	blo _0207D4CC
_0207D502:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _0207D510
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_0207D510:
	lsl r0, r1, #2
	add r0, r7, r0
_0207D514:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_0207D4B4

	thumb_func_start sub_0207D518
sub_0207D518: ; 0x0207D518
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	str r3, [sp]
	add r2, sp, #8
	add r3, sp, #4
	add r5, r1, #0
	bl sub_0207D40C
	cmp r0, #3
	bne _0207D542
	mov r0, #0x63
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0207D4B4
	add sp, #0xc
	pop {r4, r5, pc}
_0207D542:
	ldr r0, _0207D558 ; =0x000003E7
	add r2, r5, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r3, r4, #0
	bl sub_0207D4B4
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0207D558: .word 0x000003E7
	thumb_func_end sub_0207D518

	thumb_func_start sub_0207D55C
sub_0207D55C: ; 0x0207D55C
	push {r3, lr}
	bl sub_0207D518
	cmp r0, #0
	beq _0207D56A
	mov r0, #1
	pop {r3, pc}
_0207D56A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0207D55C

	thumb_func_start sub_0207D570
sub_0207D570: ; 0x0207D570
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0207D518
	str r0, [sp, #8]
	cmp r0, #0
	bne _0207D58C
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0207D58C:
	strh r5, [r0]
	ldr r1, [sp, #8]
	add r2, sp, #8
	ldrh r0, [r1, #2]
	add r3, sp, #4
	add r0, r0, r4
	strh r0, [r1, #2]
	add r0, r7, #0
	add r1, r5, #0
	str r6, [sp]
	bl sub_0207D40C
	sub r0, r0, #3
	cmp r0, #1
	bhi _0207D5B2
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl sub_0207D7CC
_0207D5B2:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0207D570

	thumb_func_start sub_0207D5B8
sub_0207D5B8: ; 0x0207D5B8
	push {r3, r4, r5, r6}
	mov r5, #0
	cmp r1, #0
	bls _0207D5E0
	add r6, r0, #0
_0207D5C2:
	ldrh r4, [r6]
	cmp r2, r4
	bne _0207D5D8
	lsl r1, r5, #2
	add r0, r0, r1
	ldrh r1, [r0, #2]
	cmp r1, r3
	bhs _0207D5E2
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_0207D5D8:
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, r1
	blo _0207D5C2
_0207D5E0:
	mov r0, #0
_0207D5E2:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207D5B8

	thumb_func_start sub_0207D5E8
sub_0207D5E8: ; 0x0207D5E8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	str r3, [sp]
	add r2, sp, #8
	add r3, sp, #4
	add r5, r1, #0
	bl sub_0207D40C
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0207D5B8
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0207D5E8

	thumb_func_start sub_0207D60C
sub_0207D60C: ; 0x0207D60C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0207D5E8
	str r0, [sp, #8]
	cmp r0, #0
	bne _0207D628
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0207D628:
	ldrh r1, [r0, #2]
	sub r1, r1, r5
	strh r1, [r0, #2]
	ldr r1, [sp, #8]
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _0207D63A
	mov r0, #0
	strh r0, [r1]
_0207D63A:
	str r4, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #8
	add r3, sp, #4
	bl sub_0207D40C
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl sub_0207D780
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207D60C

	thumb_func_start sub_0207D658
sub_0207D658: ; 0x0207D658
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r3, #0
	bl sub_0207D5B8
	cmp r0, #0
	bne _0207D66C
	mov r0, #0
	pop {r4, r5, r6, pc}
_0207D66C:
	ldrh r1, [r0, #2]
	sub r1, r1, r4
	strh r1, [r0, #2]
	ldrh r1, [r0, #2]
	cmp r1, #0
	bne _0207D67C
	mov r1, #0
	strh r1, [r0]
_0207D67C:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207D780
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0207D658

	thumb_func_start sub_0207D688
sub_0207D688: ; 0x0207D688
	push {r3, lr}
	bl sub_0207D5E8
	cmp r0, #0
	beq _0207D696
	mov r0, #1
	pop {r3, pc}
_0207D696:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0207D688

	thumb_func_start sub_0207D69C
sub_0207D69C: ; 0x0207D69C
	cmp r1, #7
	bhi _0207D6FC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207D6AC: ; jump table
	.short _0207D6C6 - _0207D6AC - 2 ; case 0
	.short _0207D6D2 - _0207D6AC - 2 ; case 1
	.short _0207D6DA - _0207D6AC - 2 ; case 2
	.short _0207D6F2 - _0207D6AC - 2 ; case 3
	.short _0207D6CA - _0207D6AC - 2 ; case 4
	.short _0207D6EA - _0207D6AC - 2 ; case 5
	.short _0207D6E2 - _0207D6AC - 2 ; case 6
	.short _0207D6BC - _0207D6AC - 2 ; case 7
_0207D6BC:
	mov r1, #0xa5
	lsl r1, r1, #2
	add r0, r0, r1
	mov r2, #0x32
	b _0207D700
_0207D6C6:
	mov r2, #0xa5
	b _0207D700
_0207D6CA:
	ldr r1, _0207D71C ; =0x000005BC
	mov r2, #0x40
	add r0, r0, r1
	b _0207D700
_0207D6D2:
	ldr r1, _0207D720 ; =0x0000051C
	mov r2, #0x28
	add r0, r0, r1
	b _0207D700
_0207D6DA:
	ldr r1, _0207D724 ; =0x000006BC
	mov r2, #0xf
	add r0, r0, r1
	b _0207D700
_0207D6E2:
	ldr r1, _0207D728 ; =0x000006F8
	mov r2, #0x1e
	add r0, r0, r1
	b _0207D700
_0207D6EA:
	ldr r1, _0207D72C ; =0x000004EC
	mov r2, #0xc
	add r0, r0, r1
	b _0207D700
_0207D6F2:
	mov r1, #0xd7
	lsl r1, r1, #2
	add r0, r0, r1
	mov r2, #0x64
	b _0207D700
_0207D6FC:
	mov r0, #0
	bx lr
_0207D700:
	mov r3, #0
	cmp r2, #0
	bls _0207D718
_0207D706:
	ldrh r1, [r0]
	cmp r1, #0
	beq _0207D710
	mov r0, #1
	bx lr
_0207D710:
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, r2
	blo _0207D706
_0207D718:
	mov r0, #0
	bx lr
	; .align 2, 0
_0207D71C: .word 0x000005BC
_0207D720: .word 0x0000051C
_0207D724: .word 0x000006BC
_0207D728: .word 0x000006F8
_0207D72C: .word 0x000004EC
	thumb_func_end sub_0207D69C

	thumb_func_start sub_0207D730
sub_0207D730: ; 0x0207D730
	push {r3, lr}
	add r3, r2, #0
	mov r2, #1
	bl sub_0207D5E8
	cmp r0, #0
	bne _0207D742
	mov r0, #0
	pop {r3, pc}
_0207D742:
	ldrh r0, [r0, #2]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0207D730

	thumb_func_start sub_0207D748
sub_0207D748: ; 0x0207D748
	push {r3, lr}
	mov r3, #1
	bl sub_0207D5B8
	cmp r0, #0
	bne _0207D758
	mov r0, #0
	pop {r3, pc}
_0207D758:
	ldrh r0, [r0, #2]
	pop {r3, pc}
	thumb_func_end sub_0207D748

	thumb_func_start sub_0207D75C
sub_0207D75C: ; 0x0207D75C
	push {r3}
	sub sp, #4
	ldrh r3, [r0]
	add r2, sp, #0
	strh r3, [r2]
	ldrh r3, [r0, #2]
	strh r3, [r2, #2]
	ldrh r3, [r1]
	strh r3, [r0]
	ldrh r3, [r1, #2]
	strh r3, [r0, #2]
	ldrh r0, [r2]
	strh r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r1, #2]
	add sp, #4
	pop {r3}
	bx lr
	thumb_func_end sub_0207D75C

	thumb_func_start sub_0207D780
sub_0207D780: ; 0x0207D780
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	add r7, r1, #0
	str r0, [sp, #4]
	sub r0, r7, #1
	str r0, [sp, #8]
	beq _0207D7C6
	ldr r4, [sp]
_0207D794:
	ldr r0, [sp, #4]
	add r6, r0, #1
	cmp r6, r7
	bhs _0207D7B8
	ldr r0, [sp]
	lsl r1, r6, #2
	add r5, r0, r1
_0207D7A2:
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0207D7B0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0207D75C
_0207D7B0:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r7
	blo _0207D7A2
_0207D7B8:
	ldr r0, [sp, #4]
	add r4, r4, #4
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #4]
	cmp r1, r0
	blo _0207D794
_0207D7C6:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207D780

	thumb_func_start sub_0207D7CC
sub_0207D7CC: ; 0x0207D7CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	add r7, r1, #0
	str r0, [sp, #4]
	sub r0, r7, #1
	str r0, [sp, #8]
	beq _0207D820
	ldr r4, [sp]
_0207D7E0:
	ldr r0, [sp, #4]
	add r6, r0, #1
	cmp r6, r7
	bhs _0207D812
	ldr r0, [sp]
	lsl r1, r6, #2
	add r5, r0, r1
_0207D7EE:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0207D802
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _0207D80A
	ldrh r1, [r4]
	ldrh r0, [r5]
	cmp r1, r0
	bls _0207D80A
_0207D802:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0207D75C
_0207D80A:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r7
	blo _0207D7EE
_0207D812:
	ldr r0, [sp, #4]
	add r4, r4, #4
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #4]
	cmp r1, r0
	blo _0207D7E0
_0207D820:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0207D7CC

	thumb_func_start sub_0207D824
sub_0207D824: ; 0x0207D824
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r0, r2, #0x18
	add r7, r1, #0
	lsr r0, r0, #0x18
	bl sub_0207CB08
	add r6, r0, #0
	ldrb r0, [r7]
	mov r4, #0
	cmp r0, #0xff
	beq _0207D8F6
_0207D83C:
	ldrb r0, [r7, r4]
	cmp r0, #7
	bhi _0207D8EE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207D84E: ; jump table
	.short _0207D872 - _0207D84E - 2 ; case 0
	.short _0207D894 - _0207D84E - 2 ; case 1
	.short _0207D8A6 - _0207D84E - 2 ; case 2
	.short _0207D8DC - _0207D84E - 2 ; case 3
	.short _0207D882 - _0207D84E - 2 ; case 4
	.short _0207D8CA - _0207D84E - 2 ; case 5
	.short _0207D8B8 - _0207D84E - 2 ; case 6
	.short _0207D85E - _0207D84E - 2 ; case 7
_0207D85E:
	mov r1, #0xa5
	lsl r1, r1, #2
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #7
	lsr r3, r3, #0x18
	bl sub_0207CB48
	b _0207D8EE
_0207D872:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	lsr r3, r3, #0x18
	bl sub_0207CB48
	b _0207D8EE
_0207D882:
	ldr r1, _0207D8FC ; =0x000005BC
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #4
	lsr r3, r3, #0x18
	bl sub_0207CB48
	b _0207D8EE
_0207D894:
	ldr r1, _0207D900 ; =0x0000051C
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #1
	lsr r3, r3, #0x18
	bl sub_0207CB48
	b _0207D8EE
_0207D8A6:
	ldr r1, _0207D904 ; =0x000006BC
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_0207CB48
	b _0207D8EE
_0207D8B8:
	ldr r1, _0207D908 ; =0x000006F8
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #6
	lsr r3, r3, #0x18
	bl sub_0207CB48
	b _0207D8EE
_0207D8CA:
	ldr r1, _0207D90C ; =0x000004EC
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #5
	lsr r3, r3, #0x18
	bl sub_0207CB48
	b _0207D8EE
_0207D8DC:
	mov r1, #0xd7
	lsl r1, r1, #2
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #3
	lsr r3, r3, #0x18
	bl sub_0207CB48
_0207D8EE:
	add r4, r4, #1
	ldrb r0, [r7, r4]
	cmp r0, #0xff
	bne _0207D83C
_0207D8F6:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207D8FC: .word 0x000005BC
_0207D900: .word 0x0000051C
_0207D904: .word 0x000006BC
_0207D908: .word 0x000006F8
_0207D90C: .word 0x000004EC
	thumb_func_end sub_0207D824

	thumb_func_start sub_0207D910
sub_0207D910: ; 0x0207D910
	cmp r1, #7
	bhi _0207D96E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207D920: ; jump table
	.short _0207D93A - _0207D920 - 2 ; case 0
	.short _0207D946 - _0207D920 - 2 ; case 1
	.short _0207D94E - _0207D920 - 2 ; case 2
	.short _0207D966 - _0207D920 - 2 ; case 3
	.short _0207D93E - _0207D920 - 2 ; case 4
	.short _0207D95E - _0207D920 - 2 ; case 5
	.short _0207D956 - _0207D920 - 2 ; case 6
	.short _0207D930 - _0207D920 - 2 ; case 7
_0207D930:
	mov r1, #0xa5
	lsl r1, r1, #2
	add r0, r0, r1
	mov r3, #0x32
	b _0207D96E
_0207D93A:
	mov r3, #0xa5
	b _0207D96E
_0207D93E:
	ldr r1, _0207D97C ; =0x000005BC
	mov r3, #0x40
	add r0, r0, r1
	b _0207D96E
_0207D946:
	ldr r1, _0207D980 ; =0x0000051C
	mov r3, #0x28
	add r0, r0, r1
	b _0207D96E
_0207D94E:
	ldr r1, _0207D984 ; =0x000006BC
	mov r3, #0xf
	add r0, r0, r1
	b _0207D96E
_0207D956:
	ldr r1, _0207D988 ; =0x000006F8
	mov r3, #0x1e
	add r0, r0, r1
	b _0207D96E
_0207D95E:
	ldr r1, _0207D98C ; =0x000004EC
	mov r3, #0xc
	add r0, r0, r1
	b _0207D96E
_0207D966:
	mov r1, #0xd7
	lsl r1, r1, #2
	add r0, r0, r1
	mov r3, #0x64
_0207D96E:
	cmp r2, r3
	blo _0207D976
	mov r0, #0
	bx lr
_0207D976:
	lsl r1, r2, #2
	add r0, r0, r1
	bx lr
	; .align 2, 0
_0207D97C: .word 0x000005BC
_0207D980: .word 0x0000051C
_0207D984: .word 0x000006BC
_0207D988: .word 0x000006F8
_0207D98C: .word 0x000004EC
	thumb_func_end sub_0207D910

	thumb_func_start sub_0207D990
sub_0207D990: ; 0x0207D990
	ldr r3, _0207D998 ; =sub_020245BC
	mov r1, #3
	bx r3
	nop
_0207D998: .word sub_020245BC
	thumb_func_end sub_0207D990

	thumb_func_start sub_0207D99C
sub_0207D99C: ; 0x0207D99C
	push {r4, lr}
	mov r1, #0x24
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x24
	bl sub_020C4AF0
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0207D99C

	thumb_func_start sub_0207D9B4
sub_0207D9B4: ; 0x0207D9B4
	push {r3, r4}
	add r4, r0, r1
	ldrb r4, [r4, #8]
	strb r4, [r2]
	ldrb r0, [r0, r1]
	strb r0, [r3]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0207D9B4

	thumb_func_start sub_0207D9C4
sub_0207D9C4: ; 0x0207D9C4
	ldrh r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0207D9C4

	thumb_func_start sub_0207D9C8
sub_0207D9C8: ; 0x0207D9C8
	push {r3, r4}
	add r4, r0, r1
	strb r2, [r4, #8]
	strb r3, [r0, r1]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0207D9C8

	thumb_func_start sub_0207D9D4
sub_0207D9D4: ; 0x0207D9D4
	strh r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_0207D9D4

	thumb_func_start sub_0207D9D8
sub_0207D9D8: ; 0x0207D9D8
	add r1, r0, r1
	ldrb r0, [r1, #0x19]
	strb r0, [r2]
	ldrb r0, [r1, #0x14]
	strb r0, [r3]
	bx lr
	thumb_func_end sub_0207D9D8

	thumb_func_start sub_0207D9E4
sub_0207D9E4: ; 0x0207D9E4
	ldrh r0, [r0, #0x1e]
	bx lr
	thumb_func_end sub_0207D9E4

	thumb_func_start sub_0207D9E8
sub_0207D9E8: ; 0x0207D9E8
	ldrh r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_0207D9E8

	thumb_func_start sub_0207D9EC
sub_0207D9EC: ; 0x0207D9EC
	ldrh r0, [r0, #0x22]
	bx lr
	thumb_func_end sub_0207D9EC

	thumb_func_start sub_0207D9F0
sub_0207D9F0: ; 0x0207D9F0
	add r0, r0, r1
	strb r2, [r0, #0x19]
	strb r3, [r0, #0x14]
	bx lr
	thumb_func_end sub_0207D9F0

	thumb_func_start sub_0207D9F8
sub_0207D9F8: ; 0x0207D9F8
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_0207DA00:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r6, #0
	bl sub_0207D9F0
	add r4, r4, #1
	cmp r4, #5
	blo _0207DA00
	add r0, r5, #0
	mov r1, #0
	bl sub_0207DA24
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0207D9F8

	thumb_func_start sub_0207DA1C
sub_0207DA1C: ; 0x0207DA1C
	strh r1, [r0, #0x1e]
	strh r2, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207DA1C

	thumb_func_start sub_0207DA24
sub_0207DA24: ; 0x0207DA24
	strh r1, [r0, #0x22]
	bx lr
	thumb_func_end sub_0207DA24

	thumb_func_start sub_0207DA28
sub_0207DA28: ; 0x0207DA28
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0x1d
	bls _0207DA42
	b _0207DD82
_0207DA42:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207DA4E: ; jump table
	.short _0207DA8A - _0207DA4E - 2 ; case 0
	.short _0207DA90 - _0207DA4E - 2 ; case 1
	.short _0207DAB4 - _0207DA4E - 2 ; case 2
	.short _0207DAC6 - _0207DA4E - 2 ; case 3
	.short _0207DB9E - _0207DA4E - 2 ; case 4
	.short _0207DBB4 - _0207DA4E - 2 ; case 5
	.short _0207DBBA - _0207DA4E - 2 ; case 6
	.short _0207DBC8 - _0207DA4E - 2 ; case 7
	.short _0207DBCE - _0207DA4E - 2 ; case 8
	.short _0207DBEA - _0207DA4E - 2 ; case 9
	.short _0207DBEA - _0207DA4E - 2 ; case 10
	.short _0207DBEA - _0207DA4E - 2 ; case 11
	.short _0207DC00 - _0207DA4E - 2 ; case 12
	.short _0207DC12 - _0207DA4E - 2 ; case 13
	.short _0207DC26 - _0207DA4E - 2 ; case 14
	.short _0207DC3A - _0207DA4E - 2 ; case 15
	.short _0207DC50 - _0207DA4E - 2 ; case 16
	.short _0207DC68 - _0207DA4E - 2 ; case 17
	.short _0207DC80 - _0207DA4E - 2 ; case 18
	.short _0207DC92 - _0207DA4E - 2 ; case 19
	.short _0207DCA6 - _0207DA4E - 2 ; case 20
	.short _0207DCC0 - _0207DA4E - 2 ; case 21
	.short _0207DCD6 - _0207DA4E - 2 ; case 22
	.short _0207DCE8 - _0207DA4E - 2 ; case 23
	.short _0207DCFC - _0207DA4E - 2 ; case 24
	.short _0207DD16 - _0207DA4E - 2 ; case 25
	.short _0207DD2C - _0207DA4E - 2 ; case 26
	.short _0207DD3E - _0207DA4E - 2 ; case 27
	.short _0207DD52 - _0207DA4E - 2 ; case 28
	.short _0207DD6C - _0207DA4E - 2 ; case 29
_0207DA8A:
	ldr r1, [r5, #0xc]
	ldr r0, [r4, #0]
	str r1, [r0, #0]
_0207DA90:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _0207DAE2
	ldr r0, [r5, #0xc]
	bl sub_02039074
	cmp r0, #0
	beq _0207DAE2
	mov r0, #0xa
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	mov r1, #0
	strh r1, [r0]
	b _0207DD86
_0207DAB4:
	ldr r1, _0207DD8C ; =0x020F1B98
	ldr r2, [r4, #0]
	add r0, r6, #0
	bl sub_02050A38
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DAC6:
	ldr r0, [r5, #0xc]
	bl sub_02039074
	cmp r0, #0
	beq _0207DADA
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AF5C
_0207DADA:
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	cmp r0, #0xf
	bls _0207DAE4
_0207DAE2:
	b _0207DD86
_0207DAE4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207DAF0: ; jump table
	.short _0207DD86 - _0207DAF0 - 2 ; case 0
	.short _0207DB1C - _0207DAF0 - 2 ; case 1
	.short _0207DB2A - _0207DAF0 - 2 ; case 2
	.short _0207DB10 - _0207DAF0 - 2 ; case 3
	.short _0207DB46 - _0207DAF0 - 2 ; case 4
	.short _0207DB54 - _0207DAF0 - 2 ; case 5
	.short _0207DB38 - _0207DAF0 - 2 ; case 6
	.short _0207DB62 - _0207DAF0 - 2 ; case 7
	.short _0207DB74 - _0207DAF0 - 2 ; case 8
	.short _0207DB98 - _0207DAF0 - 2 ; case 9
	.short _0207DB68 - _0207DAF0 - 2 ; case 10
	.short _0207DB7A - _0207DAF0 - 2 ; case 11
	.short _0207DB80 - _0207DAF0 - 2 ; case 12
	.short _0207DB86 - _0207DAF0 - 2 ; case 13
	.short _0207DB8C - _0207DAF0 - 2 ; case 14
	.short _0207DB92 - _0207DAF0 - 2 ; case 15
_0207DB10:
	mov r0, #0
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	mov r0, #4
	str r0, [r4, #4]
	b _0207DD86
_0207DB1C:
	mov r0, #0x32
	strb r0, [r4, #0xc]
	mov r0, #0
	strb r0, [r4, #0xd]
	mov r0, #4
	str r0, [r4, #4]
	b _0207DD86
_0207DB2A:
	mov r0, #0x64
	strb r0, [r4, #0xc]
	mov r0, #0
	strb r0, [r4, #0xd]
	mov r0, #4
	str r0, [r4, #4]
	b _0207DD86
_0207DB38:
	mov r0, #0
	strb r0, [r4, #0xc]
	mov r0, #1
	strb r0, [r4, #0xd]
	mov r0, #4
	str r0, [r4, #4]
	b _0207DD86
_0207DB46:
	mov r0, #0x32
	strb r0, [r4, #0xc]
	mov r0, #1
	strb r0, [r4, #0xd]
	mov r0, #4
	str r0, [r4, #4]
	b _0207DD86
_0207DB54:
	mov r0, #0x64
	strb r0, [r4, #0xc]
	mov r0, #1
	strb r0, [r4, #0xd]
	mov r0, #4
	str r0, [r4, #4]
	b _0207DD86
_0207DB62:
	mov r0, #6
	str r0, [r4, #4]
	b _0207DD86
_0207DB68:
	ldr r0, [r4, #8]
	mov r1, #1
	strh r1, [r0]
	mov r0, #0xb
	str r0, [r4, #4]
	b _0207DD86
_0207DB74:
	mov r0, #9
	str r0, [r4, #4]
	b _0207DD86
_0207DB7A:
	mov r0, #0xc
	str r0, [r4, #4]
	b _0207DD86
_0207DB80:
	mov r0, #0x10
	str r0, [r4, #4]
	b _0207DD86
_0207DB86:
	mov r0, #0x12
	str r0, [r4, #4]
	b _0207DD86
_0207DB8C:
	mov r0, #0x16
	str r0, [r4, #4]
	b _0207DD86
_0207DB92:
	mov r0, #0x1a
	str r0, [r4, #4]
	b _0207DD86
_0207DB98:
	mov r0, #8
	str r0, [r4, #4]
	b _0207DD86
_0207DB9E:
	ldr r1, [r4, #0]
	ldrb r2, [r4, #0xc]
	ldrb r3, [r4, #0xd]
	ldr r1, [r1, #8]
	add r0, r6, #0
	bl sub_020516F4
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DBB4:
	mov r0, #2
	str r0, [r4, #4]
	b _0207DD86
_0207DBBA:
	add r0, r6, #0
	bl sub_0203DDDC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DBC8:
	mov r0, #2
	str r0, [r4, #4]
	b _0207DD86
_0207DBCE:
	ldr r2, _0207DD90 ; =0x00040100
	mov r0, #3
	mov r1, #0x36
	bl sub_02017FC8
	bl sub_02099570
	mov r0, #0x36
	bl ov18_0221F800
	mov r0, #0
	bl sub_020C3EE4
	b _0207DD86
_0207DBEA:
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0207DC00:
	add r1, r5, #0
	mov r2, #0xb
	mov r3, #0
	bl sub_0207DE04
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DC12:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0207DC72
	add r0, r4, #0
	bl sub_0207DE40
	str r0, [r4, #4]
	b _0207DD86
_0207DC26:
	ldr r2, [r4, #0x14]
	add r0, r5, #0
	mov r1, #0xb
	bl sub_020996A0
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DC3A:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0207DC72
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	mov r0, #2
	str r0, [r4, #4]
	b _0207DD86
_0207DC50:
	mov r0, #0
	bl sub_0203632C
	add r0, r5, #0
	mov r1, #0
	bl sub_0209BA18
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DC68:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0207DC74
_0207DC72:
	b _0207DD86
_0207DC74:
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	mov r0, #2
	str r0, [r4, #4]
	b _0207DD86
_0207DC80:
	add r1, r5, #0
	mov r2, #0xb
	mov r3, #1
	bl sub_0207DE04
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DC92:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0207DD86
	add r0, r4, #0
	bl sub_0207DE40
	str r0, [r4, #4]
	b _0207DD86
_0207DCA6:
	add r0, r5, #0
	bl sub_0207DF9C
	ldr r2, [r4, #0x14]
	add r0, r5, #0
	mov r1, #0xb
	bl sub_0207DE90
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DCC0:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0207DD86
	mov r0, #2
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl sub_0207DED8
	b _0207DD86
_0207DCD6:
	add r1, r5, #0
	mov r2, #0xb
	mov r3, #2
	bl sub_0207DE04
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DCE8:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0207DD86
	add r0, r4, #0
	bl sub_0207DE40
	str r0, [r4, #4]
	b _0207DD86
_0207DCFC:
	add r0, r5, #0
	bl sub_0207DF9C
	ldr r2, [r4, #0x14]
	add r0, r5, #0
	mov r1, #0xb
	bl sub_0207DEEC
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DD16:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0207DD86
	mov r0, #2
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl sub_0207DF2C
	b _0207DD86
_0207DD2C:
	add r1, r5, #0
	mov r2, #0xb
	mov r3, #3
	bl sub_0207DE04
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DD3E:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0207DD86
	add r0, r4, #0
	bl sub_0207DE40
	str r0, [r4, #4]
	b _0207DD86
_0207DD52:
	add r0, r5, #0
	bl sub_0207DF9C
	ldr r2, [r4, #0x14]
	add r0, r5, #0
	mov r1, #0xb
	bl sub_0207DF40
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DD6C:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0207DD86
	mov r0, #2
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl sub_0207DF88
	b _0207DD86
_0207DD82:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0207DD86:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0207DD8C: .word 0x020F1B98
_0207DD90: .word 0x00040100
	thumb_func_end sub_0207DA28

	thumb_func_start sub_0207DD94
sub_0207DD94: ; 0x0207DD94
	push {r4, lr}
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018184
	mov r1, #0
	mov r2, #0x18
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018184
	mov r1, #0
	mov r2, #0xc
	str r0, [r4, #0]
	bl sub_020C4CF4
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207DD94

	thumb_func_start sub_0207DDC0
sub_0207DDC0: ; 0x0207DDC0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0207DD94
	add r2, r0, #0
	ldr r0, [r2, #0]
	mov r1, #2
	str r1, [r0, #4]
	ldr r1, _0207DDDC ; =sub_0207DA28
	add r0, r4, #0
	bl sub_02050944
	pop {r4, pc}
	nop
_0207DDDC: .word sub_0207DA28
	thumb_func_end sub_0207DDC0

	thumb_func_start sub_0207DDE0
sub_0207DDE0: ; 0x0207DDE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0207DD94
	add r2, r0, #0
	ldr r0, [r2, #0]
	mov r1, #1
	str r1, [r0, #4]
	ldr r1, _0207DE00 ; =sub_0207DA28
	add r0, r5, #0
	str r4, [r2, #8]
	bl sub_02050944
	pop {r3, r4, r5, pc}
	nop
_0207DE00: .word sub_0207DA28
	thumb_func_end sub_0207DDE0

	thumb_func_start sub_0207DE04
sub_0207DE04: ; 0x0207DE04
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	mov r1, #0xc
	add r4, r3, #0
	bl sub_02018144
	add r2, r0, #0
	strb r4, [r2]
	mov r0, #2
	strb r0, [r2, #1]
	ldr r0, _0207DE38 ; =0x020F1B64
	ldr r1, _0207DE3C ; =0x020F1B88
	ldrb r0, [r0, r4]
	strb r0, [r2, #2]
	mov r0, #0
	strb r0, [r2, #3]
	strb r0, [r2, #4]
	ldr r0, [r5, #0xc]
	str r0, [r2, #8]
	add r0, r5, #0
	str r2, [r6, #0x10]
	bl sub_0203CD84
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207DE38: .word 0x020F1B64
_0207DE3C: .word 0x020F1B88
	thumb_func_end sub_0207DE04

	thumb_func_start sub_0207DE40
sub_0207DE40: ; 0x0207DE40
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #3]
	cmp r1, #1
	bne _0207DE7E
	ldrb r1, [r0]
	cmp r1, #3
	bhi _0207DE82
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207DE5E: ; jump table
	.short _0207DE66 - _0207DE5E - 2 ; case 0
	.short _0207DE6C - _0207DE5E - 2 ; case 1
	.short _0207DE72 - _0207DE5E - 2 ; case 2
	.short _0207DE78 - _0207DE5E - 2 ; case 3
_0207DE66:
	mov r1, #0xe
	str r1, [r4, #4]
	b _0207DE82
_0207DE6C:
	mov r1, #0x14
	str r1, [r4, #4]
	b _0207DE82
_0207DE72:
	mov r1, #0x18
	str r1, [r4, #4]
	b _0207DE82
_0207DE78:
	mov r1, #0x1c
	str r1, [r4, #4]
	b _0207DE82
_0207DE7E:
	mov r1, #1
	str r1, [r4, #4]
_0207DE82:
	ldrb r0, [r0, #4]
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	ldr r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end sub_0207DE40

	thumb_func_start sub_0207DE90
sub_0207DE90: ; 0x0207DE90
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x3c
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x3c
	bl sub_020D5124
	add r0, r4, #0
	add r0, #0x38
	strb r6, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x39
	strb r1, [r0]
	ldr r0, [r5, #0xc]
	mov r1, #2
	str r0, [r4, #0x34]
	ldr r0, _0207DED0 ; =0x00000072
	bl sub_02006590
	ldr r1, _0207DED4 ; =0x020F1B68
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207DED0: .word 0x00000072
_0207DED4: .word 0x020F1B68
	thumb_func_end sub_0207DE90

	thumb_func_start sub_0207DED8
sub_0207DED8: ; 0x0207DED8
	push {r3, lr}
	bl sub_020181C4
	ldr r0, _0207DEE8 ; =0x00000072
	bl sub_02006514
	pop {r3, pc}
	nop
_0207DEE8: .word 0x00000072
	thumb_func_end sub_0207DED8

	thumb_func_start sub_0207DEEC
sub_0207DEEC: ; 0x0207DEEC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x40
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x40
	bl sub_020D5124
	str r6, [r4, #0x3c]
	mov r0, #0
	str r0, [r4, #0x38]
	ldr r0, [r5, #0xc]
	mov r1, #2
	str r0, [r4, #0x34]
	ldr r0, _0207DF24 ; =0x00000072
	bl sub_02006590
	ldr r1, _0207DF28 ; =0x020F1B78
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207DF24: .word 0x00000072
_0207DF28: .word 0x020F1B78
	thumb_func_end sub_0207DEEC

	thumb_func_start sub_0207DF2C
sub_0207DF2C: ; 0x0207DF2C
	push {r3, lr}
	bl sub_020181C4
	ldr r0, _0207DF3C ; =0x00000072
	bl sub_02006514
	pop {r3, pc}
	nop
_0207DF3C: .word 0x00000072
	thumb_func_end sub_0207DF2C

	thumb_func_start sub_0207DF40
sub_0207DF40: ; 0x0207DF40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x3c
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x3c
	bl sub_020C4CF4
	add r0, r4, #0
	add r0, #0x38
	strb r6, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x39
	strb r1, [r0]
	ldr r0, [r5, #0xc]
	mov r1, #2
	str r0, [r4, #0x34]
	ldr r0, _0207DF80 ; =0x00000072
	bl sub_02006590
	ldr r1, _0207DF84 ; =0x020F1BA8
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207DF80: .word 0x00000072
_0207DF84: .word 0x020F1BA8
	thumb_func_end sub_0207DF40

	thumb_func_start sub_0207DF88
sub_0207DF88: ; 0x0207DF88
	push {r3, lr}
	bl sub_020181C4
	ldr r0, _0207DF98 ; =0x00000072
	bl sub_02006514
	pop {r3, pc}
	nop
_0207DF98: .word 0x00000072
	thumb_func_end sub_0207DF88

	thumb_func_start sub_0207DF9C
sub_0207DF9C: ; 0x0207DF9C
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x32
	bl sub_0202CFEC
	pop {r3, pc}
	thumb_func_end sub_0207DF9C

	thumb_func_start sub_0207DFAC
sub_0207DFAC: ; 0x0207DFAC
	push {r4, lr}
	add r4, r0, #0
	bl sub_020388E8
	mov r1, #0x24
	ldrb r2, [r0, #0x1b]
	mul r1, r4
	add r0, r0, r1
	add r0, #0x3f
	ldrb r0, [r0]
	cmp r2, #0xc
	bne _0207DFCC
	cmp r0, #5
	bne _0207DFCC
	mov r0, #1
	pop {r4, pc}
_0207DFCC:
	cmp r2, #0xd
	bne _0207DFD8
	cmp r0, #6
	bne _0207DFD8
	mov r0, #1
	pop {r4, pc}
_0207DFD8:
	cmp r2, #0xe
	bne _0207DFE4
	cmp r0, #7
	bne _0207DFE4
	mov r0, #1
	pop {r4, pc}
_0207DFE4:
	cmp r2, #9
	bne _0207DFF0
	cmp r0, #2
	bne _0207DFF0
	mov r0, #1
	pop {r4, pc}
_0207DFF0:
	cmp r2, #0xa
	bne _0207DFFC
	cmp r0, #3
	bne _0207DFFC
	mov r0, #1
	pop {r4, pc}
_0207DFFC:
	cmp r2, #0xb
	bne _0207E008
	cmp r0, #4
	bne _0207E008
	mov r0, #1
	pop {r4, pc}
_0207E008:
	cmp r2, #0xf
	bne _0207E014
	cmp r0, #8
	bne _0207E014
	mov r0, #1
	pop {r4, pc}
_0207E014:
	cmp r2, #0x13
	bne _0207E020
	cmp r0, #0x12
	bne _0207E020
	mov r0, #1
	pop {r4, pc}
_0207E020:
	cmp r2, #0x15
	bne _0207E02C
	cmp r0, #0x14
	bne _0207E02C
	mov r0, #1
	pop {r4, pc}
_0207E02C:
	cmp r2, #0x17
	bne _0207E038
	cmp r0, #0x16
	bne _0207E038
	mov r0, #1
	pop {r4, pc}
_0207E038:
	cmp r2, #0x19
	bne _0207E044
	cmp r0, #0x18
	bne _0207E044
	mov r0, #1
	pop {r4, pc}
_0207E044:
	cmp r2, #0x1b
	bne _0207E050
	cmp r0, #0x1a
	bne _0207E050
	mov r0, #1
	pop {r4, pc}
_0207E050:
	cmp r2, #0x10
	bne _0207E05C
	cmp r0, #1
	bne _0207E05C
	mov r0, #1
	pop {r4, pc}
_0207E05C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0207DFAC

	thumb_func_start sub_0207E060
sub_0207E060: ; 0x0207E060
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x24
	bl sub_02018144
	mov r1, #0
	mov r2, #0x24
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x1c
	strb r0, [r4, #0x1b]
	add r0, r5, #0
	bl sub_02025F30
	strb r0, [r4, #0x1e]
	add r0, r5, #0
	bl sub_02025F8C
	strb r0, [r4, #0x1d]
	add r0, r5, #0
	bl sub_02025FCC
	strb r0, [r4, #0x18]
	add r0, r5, #0
	bl sub_02025FD8
	strb r0, [r4, #0x19]
	add r0, r4, #0
	mov r1, #0x24
	bl ov4_021D222C
	cmp r0, #1
	beq _0207E0AA
	bl sub_02022974
_0207E0AA:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0207E060

	thumb_func_start sub_0207E0B0
sub_0207E0B0: ; 0x0207E0B0
	ldr r3, _0207E0B4 ; =sub_020181C4
	bx r3
	; .align 2, 0
_0207E0B4: .word sub_020181C4
	thumb_func_end sub_0207E0B0

	thumb_func_start sub_0207E0B8
sub_0207E0B8: ; 0x0207E0B8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _0207E290 ; =0xFFFFE0FF
	ldr r3, _0207E294 ; =0x04001000
	and r2, r1
	str r2, [r0, #0]
	ldr r2, [r3, #0]
	add r0, #0x50
	and r1, r2
	str r1, [r3, #0]
	mov r1, #0
	strh r1, [r0]
	add r3, #0x50
	strh r1, [r3]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	mov r1, #0xc
	mov r0, #3
	lsl r2, r1, #0xe
	bl sub_02017FC8
	mov r0, #0x14
	mov r1, #0xc
	bl sub_02006C24
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0207ECC0
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0xc
	str r1, [sp, #8]
	mov r1, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	add r0, r5, #0
	bl sub_0207EDC0
	bl sub_0207E8C0
	ldr r0, [r5, #0]
	bl sub_0207E918
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207EB6C
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	mov r1, #0
	mov r0, #0x39
	add r2, r1, #0
	bl sub_02004550
	add r0, r5, #0
	bl sub_02081A24
	add r0, r5, #0
	bl sub_02082C2C
	add r0, r5, #0
	bl sub_02082E58
	add r0, r5, #0
	bl sub_0207EE14
	add r0, r5, #0
	bl sub_0207F308
	ldr r1, _0207E298 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	mov r2, #1
	bl sub_02080500
	ldr r1, _0207E29C ; =0x000005A4
	ldr r3, [r5, r1]
	add r0, r3, #0
	add r0, #0x20
	ldrb r2, [r0]
	cmp r2, #5
	beq _0207E192
	cmp r2, #0x10
	bne _0207E1A8
_0207E192:
	ldrh r0, [r3, #0x24]
	bl sub_020857A8
	cmp r0, #0
	bne _0207E25A
	add r0, r5, #0
	mov r1, #0x20
	mov r2, #1
	bl sub_020826E0
	b _0207E25A
_0207E1A8:
	cmp r2, #6
	bne _0207E1B8
	add r0, r5, #0
	mov r1, #0x21
	mov r2, #1
	bl sub_020826E0
	b _0207E25A
_0207E1B8:
	cmp r2, #9
	beq _0207E1C0
	cmp r2, #0xe
	bne _0207E1CC
_0207E1C0:
	add r0, r5, #0
	mov r1, #0x1f
	mov r2, #1
	bl sub_020826E0
	b _0207E25A
_0207E1CC:
	cmp r2, #7
	beq _0207E1E0
	cmp r2, #8
	beq _0207E1E0
	add r0, r2, #0
	add r0, #0xf5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0207E1EC
_0207E1E0:
	ldr r0, _0207E2A0 ; =0x000005C8
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_0200D414
	b _0207E25A
_0207E1EC:
	cmp r2, #2
	beq _0207E1F4
	cmp r2, #0x11
	bne _0207E200
_0207E1F4:
	add r0, r5, #0
	mov r1, #0x22
	mov r2, #1
	bl sub_020826E0
	b _0207E25A
_0207E200:
	cmp r2, #0xf
	bne _0207E210
	add r0, r5, #0
	mov r1, #0x22
	mov r2, #1
	bl sub_020826E0
	b _0207E25A
_0207E210:
	cmp r2, #0x16
	bne _0207E220
	add r0, r5, #0
	mov r1, #0x22
	mov r2, #1
	bl sub_020826E0
	b _0207E25A
_0207E220:
	cmp r2, #0x17
	bne _0207E230
	add r0, r5, #0
	mov r1, #0x22
	mov r2, #1
	bl sub_020826E0
	b _0207E25A
_0207E230:
	cmp r2, #0x15
	bne _0207E240
	add r0, r5, #0
	mov r1, #0xc5
	mov r2, #1
	bl sub_020826E0
	b _0207E25A
_0207E240:
	cmp r2, #0xa
	beq _0207E250
	add r0, r5, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	b _0207E25A
_0207E250:
	add r1, #0x24
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_0200D414
_0207E25A:
	add r0, r5, #0
	bl sub_02081BC0
	add r0, r5, #0
	bl sub_0207F9A0
	add r0, r5, #0
	bl sub_020818F8
	cmp r0, #0
	bne _0207E278
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
_0207E278:
	ldr r0, _0207E2A4 ; =sub_0207E898
	add r1, r5, #0
	bl sub_02017798
	bl sub_020397E4
	add r0, r4, #0
	bl sub_02006CA8
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0207E290: .word 0xFFFFE0FF
_0207E294: .word 0x04001000
_0207E298: .word 0x00000B29
_0207E29C: .word 0x000005A4
_0207E2A0: .word 0x000005C8
_0207E2A4: .word sub_0207E898
	thumb_func_end sub_0207E0B8

	thumb_func_start sub_0207E2A8
sub_0207E2A8: ; 0x0207E2A8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_0200682C
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #0x21
	bhi _0207E322
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207E2C4: ; jump table
	.short _0207E308 - _0207E2C4 - 2 ; case 0
	.short _0207E310 - _0207E2C4 - 2 ; case 1
	.short _0207E318 - _0207E2C4 - 2 ; case 2
	.short _0207E32A - _0207E2C4 - 2 ; case 3
	.short _0207E332 - _0207E2C4 - 2 ; case 4
	.short _0207E33A - _0207E2C4 - 2 ; case 5
	.short _0207E344 - _0207E2C4 - 2 ; case 6
	.short _0207E34C - _0207E2C4 - 2 ; case 7
	.short _0207E354 - _0207E2C4 - 2 ; case 8
	.short _0207E35C - _0207E2C4 - 2 ; case 9
	.short _0207E364 - _0207E2C4 - 2 ; case 10
	.short _0207E36C - _0207E2C4 - 2 ; case 11
	.short _0207E374 - _0207E2C4 - 2 ; case 12
	.short _0207E37C - _0207E2C4 - 2 ; case 13
	.short _0207E384 - _0207E2C4 - 2 ; case 14
	.short _0207E38C - _0207E2C4 - 2 ; case 15
	.short _0207E394 - _0207E2C4 - 2 ; case 16
	.short _0207E39C - _0207E2C4 - 2 ; case 17
	.short _0207E3A4 - _0207E2C4 - 2 ; case 18
	.short _0207E3AC - _0207E2C4 - 2 ; case 19
	.short _0207E3B4 - _0207E2C4 - 2 ; case 20
	.short _0207E3BC - _0207E2C4 - 2 ; case 21
	.short _0207E3C4 - _0207E2C4 - 2 ; case 22
	.short _0207E3CC - _0207E2C4 - 2 ; case 23
	.short _0207E3D4 - _0207E2C4 - 2 ; case 24
	.short _0207E3DC - _0207E2C4 - 2 ; case 25
	.short _0207E3E4 - _0207E2C4 - 2 ; case 26
	.short _0207E3EC - _0207E2C4 - 2 ; case 27
	.short _0207E3F4 - _0207E2C4 - 2 ; case 28
	.short _0207E40C - _0207E2C4 - 2 ; case 29
	.short _0207E41A - _0207E2C4 - 2 ; case 30
	.short _0207E422 - _0207E2C4 - 2 ; case 31
	.short _0207E43C - _0207E2C4 - 2 ; case 32
	.short _0207E44A - _0207E2C4 - 2 ; case 33
_0207E308:
	bl sub_0207E490
	str r0, [r4, #0]
	b _0207E462
_0207E310:
	bl sub_0207E518
	str r0, [r4, #0]
	b _0207E462
_0207E318:
	add r1, r4, #0
	bl sub_02080B34
	cmp r0, #1
	beq _0207E324
_0207E322:
	b _0207E462
_0207E324:
	mov r0, #1
	str r0, [r4, #0]
	b _0207E462
_0207E32A:
	bl sub_02084B34
	str r0, [r4, #0]
	b _0207E462
_0207E332:
	bl sub_0207E5B4
	str r0, [r4, #0]
	b _0207E462
_0207E33A:
	ldr r1, _0207E480 ; =0x00000B18
	ldr r1, [r5, r1]
	blx r1
	str r0, [r4, #0]
	b _0207E462
_0207E344:
	bl sub_02086774
	str r0, [r4, #0]
	b _0207E462
_0207E34C:
	bl sub_02085804
	str r0, [r4, #0]
	b _0207E462
_0207E354:
	bl sub_0207E5F4
	str r0, [r4, #0]
	b _0207E462
_0207E35C:
	bl sub_02081594
	str r0, [r4, #0]
	b _0207E462
_0207E364:
	bl sub_020815B8
	str r0, [r4, #0]
	b _0207E462
_0207E36C:
	bl sub_0208150C
	str r0, [r4, #0]
	b _0207E462
_0207E374:
	bl sub_0208153C
	str r0, [r4, #0]
	b _0207E462
_0207E37C:
	bl sub_02081578
	str r0, [r4, #0]
	b _0207E462
_0207E384:
	bl sub_02081760
	str r0, [r4, #0]
	b _0207E462
_0207E38C:
	bl sub_0207E634
	str r0, [r4, #0]
	b _0207E462
_0207E394:
	bl sub_02081224
	str r0, [r4, #0]
	b _0207E462
_0207E39C:
	bl sub_02083658
	str r0, [r4, #0]
	b _0207E462
_0207E3A4:
	bl sub_020836A8
	str r0, [r4, #0]
	b _0207E462
_0207E3AC:
	bl sub_020836E4
	str r0, [r4, #0]
	b _0207E462
_0207E3B4:
	bl sub_020839BC
	str r0, [r4, #0]
	b _0207E462
_0207E3BC:
	bl sub_0207E750
	str r0, [r4, #0]
	b _0207E462
_0207E3C4:
	bl sub_020863A0
	str r0, [r4, #0]
	b _0207E462
_0207E3CC:
	bl sub_020845A8
	str r0, [r4, #0]
	b _0207E462
_0207E3D4:
	bl sub_0207E6C0
	str r0, [r4, #0]
	b _0207E462
_0207E3DC:
	bl sub_0207E6E4
	str r0, [r4, #0]
	b _0207E462
_0207E3E4:
	bl sub_0207E708
	str r0, [r4, #0]
	b _0207E462
_0207E3EC:
	bl sub_0207E714
	str r0, [r4, #0]
	b _0207E462
_0207E3F4:
	bl sub_020805E4
	cmp r0, #0
	bne _0207E402
	mov r0, #0x1d
	str r0, [r4, #0]
	b _0207E462
_0207E402:
	cmp r0, #3
	bne _0207E462
	mov r0, #1
	str r0, [r4, #0]
	b _0207E462
_0207E40C:
	bl sub_02083D1C
	cmp r0, #1
	bne _0207E462
	mov r0, #1
	str r0, [r4, #0]
	b _0207E462
_0207E41A:
	bl sub_02080BF4
	str r0, [r4, #0]
	b _0207E462
_0207E422:
	bl ov118_021D0DBC
	cmp r0, #1
	bne _0207E436
	add r0, r5, #0
	bl sub_020819CC
	mov r0, #0x19
	str r0, [r4, #0]
	b _0207E462
_0207E436:
	mov r0, #0x1f
	str r0, [r4, #0]
	b _0207E462
_0207E43C:
	mov r0, #1
	mov r1, #0xc
	bl sub_0208C120
	mov r0, #0x21
	str r0, [r4, #0]
	b _0207E462
_0207E44A:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0207E462
	ldr r0, _0207E484 ; =0x00000B29
	ldrb r1, [r5, r0]
	ldr r0, _0207E488 ; =0x000005A4
	ldr r0, [r5, r0]
	add r0, #0x22
	strb r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0207E462:
	add r0, r5, #0
	bl sub_020831B4
	add r0, r5, #0
	bl sub_02083334
	add r0, r5, #0
	bl sub_0207FE1C
	ldr r0, _0207E48C ; =0x000005AC
	ldr r0, [r5, r0]
	bl sub_0200C7EC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0207E480: .word 0x00000B18
_0207E484: .word 0x00000B29
_0207E488: .word 0x000005A4
_0207E48C: .word 0x000005AC
	thumb_func_end sub_0207E2A8

	thumb_func_start sub_0207E490
sub_0207E490: ; 0x0207E490
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #1
	bne _0207E50A
	ldr r0, _0207E510 ; =0x000005A4
	ldr r2, [r4, r0]
	add r0, r2, #0
	add r0, #0x20
	ldrb r1, [r0]
	cmp r1, #5
	beq _0207E4AE
	cmp r1, #0x10
	bne _0207E4C6
_0207E4AE:
	ldrh r0, [r2, #0x24]
	bl sub_020857A8
	cmp r0, #1
	bne _0207E4C2
	ldr r0, _0207E514 ; =0x00000B26
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #7
	pop {r4, pc}
_0207E4C2:
	mov r0, #4
	pop {r4, pc}
_0207E4C6:
	cmp r1, #6
	bne _0207E4CE
	mov r0, #0x15
	pop {r4, pc}
_0207E4CE:
	cmp r1, #7
	bne _0207E4DA
	add r0, r4, #0
	bl sub_020862F8
	pop {r4, pc}
_0207E4DA:
	cmp r1, #8
	bne _0207E4E6
	add r0, r4, #0
	bl sub_02085EF4
	pop {r4, pc}
_0207E4E6:
	add r0, r1, #0
	add r0, #0xf5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0207E4F6
	mov r0, #0xe
	pop {r4, pc}
_0207E4F6:
	cmp r1, #9
	bne _0207E4FE
	mov r0, #8
	pop {r4, pc}
_0207E4FE:
	cmp r1, #0xa
	bne _0207E506
	mov r0, #0x10
	pop {r4, pc}
_0207E506:
	mov r0, #1
	pop {r4, pc}
_0207E50A:
	mov r0, #0
	pop {r4, pc}
	nop
_0207E510: .word 0x000005A4
_0207E514: .word 0x00000B26
	thumb_func_end sub_0207E490

	thumb_func_start sub_0207E518
sub_0207E518: ; 0x0207E518
	push {r4, lr}
	add r4, r0, #0
	bl sub_0207FE98
	cmp r0, #0
	bne _0207E55E
	ldr r0, _0207E5B0 ; =0x000005A4
	ldr r1, [r4, r0]
	add r0, r1, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #3
	beq _0207E536
	cmp r0, #0x14
	bne _0207E540
_0207E536:
	mov r0, #0
	add r1, #0x23
	strb r0, [r1]
	mov r0, #0x20
	pop {r4, pc}
_0207E540:
	cmp r0, #0xe
	bne _0207E54E
	add r0, r4, #0
	bl sub_020868B0
	mov r0, #0x18
	pop {r4, pc}
_0207E54E:
	cmp r0, #0x13
	bne _0207E55A
	add r0, r4, #0
	bl sub_0208188C
	pop {r4, pc}
_0207E55A:
	mov r0, #2
	pop {r4, pc}
_0207E55E:
	cmp r0, #4
	bne _0207E56A
	add r0, r4, #0
	bl sub_02080670
	pop {r4, pc}
_0207E56A:
	cmp r0, #3
	bne _0207E57C
	ldr r0, _0207E5B0 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	pop {r4, pc}
_0207E57C:
	cmp r0, #2
	bne _0207E5AA
	ldr r0, _0207E5B0 ; =0x000005A4
	ldr r2, [r4, r0]
	add r1, r2, #0
	add r1, #0x20
	ldrb r1, [r1]
	cmp r1, #0xf
	beq _0207E598
	mov r0, #1
	add r2, #0x23
	strb r0, [r2]
	mov r0, #0x20
	pop {r4, pc}
_0207E598:
	add r0, #0x24
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D414
	add r0, r4, #0
	bl sub_02084780
	pop {r4, pc}
_0207E5AA:
	mov r0, #1
	pop {r4, pc}
	nop
_0207E5B0: .word 0x000005A4
	thumb_func_end sub_0207E518

	thumb_func_start sub_0207E5B4
sub_0207E5B4: ; 0x0207E5B4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02080FD0
	cmp r0, #0
	beq _0207E5C4
	cmp r0, #2
	bne _0207E5D6
_0207E5C4:
	ldr r0, _0207E5EC ; =0x000005C8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D414
	add r0, r4, #0
	bl sub_0208107C
	pop {r4, pc}
_0207E5D6:
	cmp r0, #3
	bne _0207E5E8
	ldr r0, _0207E5F0 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	pop {r4, pc}
_0207E5E8:
	mov r0, #4
	pop {r4, pc}
	; .align 2, 0
_0207E5EC: .word 0x000005C8
_0207E5F0: .word 0x000005A4
	thumb_func_end sub_0207E5B4

	thumb_func_start sub_0207E5F4
sub_0207E5F4: ; 0x0207E5F4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02080FD0
	cmp r0, #0
	beq _0207E604
	cmp r0, #2
	bne _0207E616
_0207E604:
	ldr r0, _0207E62C ; =0x000005C8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D414
	add r0, r4, #0
	bl sub_02081224
	pop {r4, pc}
_0207E616:
	cmp r0, #3
	bne _0207E628
	ldr r0, _0207E630 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	pop {r4, pc}
_0207E628:
	mov r0, #8
	pop {r4, pc}
	; .align 2, 0
_0207E62C: .word 0x000005C8
_0207E630: .word 0x000005A4
	thumb_func_end sub_0207E5F4

	thumb_func_start sub_0207E634
sub_0207E634: ; 0x0207E634
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_02001BE0
	add r2, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r2, r0
	beq _0207E656
	add r0, r0, #1
	cmp r2, r0
	beq _0207E6B2
	b _0207E6A6
_0207E656:
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200DC9C
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _0207E6B8 ; =0x000006FC
	ldr r0, [r4, r0]
	bl sub_02013A3C
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	ldr r0, _0207E6BC ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_0207E6A6:
	add r0, r4, #0
	add r1, sp, #0
	blx r2
	ldr r0, [sp]
	add sp, #4
	pop {r3, r4, pc}
_0207E6B2:
	mov r0, #0xf
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0207E6B8: .word 0x000006FC
_0207E6BC: .word 0x000005C8
	thumb_func_end sub_0207E634

	thumb_func_start sub_0207E6C0
sub_0207E6C0: ; 0x0207E6C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0207E6DC ; =0x00000B28
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0207E6D6
	ldr r0, _0207E6E0 ; =0x00000B26
	ldrb r0, [r4, r0]
	pop {r4, pc}
_0207E6D6:
	mov r0, #0x18
	pop {r4, pc}
	nop
_0207E6DC: .word 0x00000B28
_0207E6E0: .word 0x00000B26
	thumb_func_end sub_0207E6C0

	thumb_func_start sub_0207E6E4
sub_0207E6E4: ; 0x0207E6E4
	push {r3, lr}
	ldr r0, _0207E700 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0207E6FA
	ldr r0, _0207E704 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x20
	pop {r3, pc}
_0207E6FA:
	mov r0, #0x19
	pop {r3, pc}
	nop
_0207E700: .word 0x021BF67C
_0207E704: .word 0x000005DC
	thumb_func_end sub_0207E6E4

	thumb_func_start sub_0207E708
sub_0207E708: ; 0x0207E708
	push {r3, lr}
	bl sub_020827EC
	mov r0, #0x1b
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0207E708

	thumb_func_start sub_0207E714
sub_0207E714: ; 0x0207E714
	push {r4, lr}
	add r4, r0, #0
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0xc
	bl sub_02002114
	cmp r0, #0
	beq _0207E732
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0207E73C
	b _0207E748
_0207E732:
	ldr r1, _0207E74C ; =0x00000B1C
	add r0, r4, #0
	ldr r1, [r4, r1]
	blx r1
	pop {r4, pc}
_0207E73C:
	mov r1, #0xb2
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	blx r1
	pop {r4, pc}
_0207E748:
	mov r0, #0x1b
	pop {r4, pc}
	; .align 2, 0
_0207E74C: .word 0x00000B1C
	thumb_func_end sub_0207E714

	thumb_func_start sub_0207E750
sub_0207E750: ; 0x0207E750
	push {r4, lr}
	add r4, r0, #0
	bl sub_02080FD0
	cmp r0, #0
	beq _0207E760
	cmp r0, #2
	bne _0207E7B2
_0207E760:
	ldr r0, _0207E7C8 ; =0x000005C8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D414
	ldr r0, _0207E7CC ; =0x00000B29
	mov r1, #0x2c
	ldrb r0, [r4, r0]
	add r2, r0, #0
	mul r2, r1
	ldr r0, _0207E7D0 ; =0x00000714
	add r2, r4, r2
	ldrb r0, [r2, r0]
	cmp r0, #1
	beq _0207E786
	add r0, r4, #0
	bl sub_0208615C
	pop {r4, pc}
_0207E786:
	add r0, r4, #0
	sub r1, #0x2d
	mov r2, #1
	bl sub_02082708
	ldr r1, _0207E7D4 ; =0x000005A4
	mov r2, #0
	ldr r0, [r4, r1]
	add r1, #0xf8
	add r0, #0x23
	strb r2, [r0]
	ldr r0, _0207E7D8 ; =0x00000B26
	mov r2, #0x19
	strb r2, [r4, r0]
	ldr r2, _0207E7DC ; =0x000006A4
	ldr r0, [r4, r1]
	ldr r2, [r4, r2]
	mov r1, #0x69
	bl sub_0200B1B8
	mov r0, #0x18
	pop {r4, pc}
_0207E7B2:
	cmp r0, #3
	bne _0207E7C4
	ldr r0, _0207E7D4 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	pop {r4, pc}
_0207E7C4:
	mov r0, #0x15
	pop {r4, pc}
	; .align 2, 0
_0207E7C8: .word 0x000005C8
_0207E7CC: .word 0x00000B29
_0207E7D0: .word 0x00000714
_0207E7D4: .word 0x000005A4
_0207E7D8: .word 0x00000B26
_0207E7DC: .word 0x000006A4
	thumb_func_end sub_0207E750

	thumb_func_start sub_0207E7E0
sub_0207E7E0: ; 0x0207E7E0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0200682C
	add r6, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r6, #0
	bl sub_02082FF4
	add r0, r6, #0
	bl sub_02081B90
	ldr r0, [r6, #0]
	bl sub_0207EA24
	bl sub_0201E530
	bl sub_0201DC3C
	ldr r7, _0207E87C ; =0x00000704
	mov r4, #0
	add r5, r6, #0
_0207E812:
	ldr r0, [r5, r7]
	bl sub_020237BC
	add r4, r4, #1
	add r5, #0x2c
	cmp r4, #6
	blo _0207E812
	ldr r0, _0207E880 ; =0x000006A4
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0207E884 ; =0x000006A8
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r7, _0207E888 ; =0x000006AC
	mov r5, #0
	add r4, r6, #0
_0207E836:
	ldr r0, [r4, r7]
	bl sub_020237BC
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x14
	blo _0207E836
	ldr r0, _0207E88C ; =0x0000069C
	ldr r0, [r6, r0]
	bl sub_0200B190
	ldr r0, _0207E890 ; =0x00000698
	ldr r0, [r6, r0]
	bl sub_0200C560
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_0200B3F0
	ldr r0, _0207E894 ; =0x00000B38
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0207E86A
	bl sub_0207A2C0
_0207E86A:
	ldr r0, [sp]
	bl sub_02006830
	mov r0, #0xc
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207E87C: .word 0x00000704
_0207E880: .word 0x000006A4
_0207E884: .word 0x000006A8
_0207E888: .word 0x000006AC
_0207E88C: .word 0x0000069C
_0207E890: .word 0x00000698
_0207E894: .word 0x00000B38
	thumb_func_end sub_0207E7E0

	thumb_func_start sub_0207E898
sub_0207E898: ; 0x0207E898
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_0201C2B8
	bl sub_0201DCAC
	bl sub_0200C800
	ldr r3, _0207E8B8 ; =0x027E0000
	ldr r1, _0207E8BC ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_0207E8B8: .word 0x027E0000
_0207E8BC: .word 0x00003FF8
	thumb_func_end sub_0207E898

	thumb_func_start sub_0207E8C0
sub_0207E8C0: ; 0x0207E8C0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0207E8DC ; =0x020F1CD0
	add r3, sp, #0
	mov r2, #5
_0207E8CA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0207E8CA
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0207E8DC: .word 0x020F1CD0
	thumb_func_end sub_0207E8C0

	thumb_func_start sub_0207E8E0
sub_0207E8E0: ; 0x0207E8E0
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r5, _0207E914 ; =0x020F1C40
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_0207E914: .word 0x020F1C40
	thumb_func_end sub_0207E8E0

	thumb_func_start sub_0207E918
sub_0207E918: ; 0x0207E918
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _0207EA0C ; =0x020F1BC4
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	add r0, r4, #0
	bl sub_0207E8E0
	ldr r5, _0207EA10 ; =0x020F1BEC
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _0207EA14 ; =0x020F1C08
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _0207EA18 ; =0x020F1C24
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	ldr r5, _0207EA1C ; =0x020F1C78
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r5, _0207EA20 ; =0x020F1C5C
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0xc
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xc
	bl sub_02019690
	add sp, #0x9c
	pop {r4, r5, pc}
	; .align 2, 0
_0207EA0C: .word 0x020F1BC4
_0207EA10: .word 0x020F1BEC
_0207EA14: .word 0x020F1C08
_0207EA18: .word 0x020F1C24
_0207EA1C: .word 0x020F1C78
_0207EA20: .word 0x020F1C5C
	thumb_func_end sub_0207E918

	thumb_func_start sub_0207EA24
sub_0207EA24: ; 0x0207EA24
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x13
	mov r1, #0
	bl sub_0201FF74
	add r0, r4, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	mov r0, #0xc
	add r1, r4, #0
	bl sub_02018238
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207EA24

	thumb_func_start sub_0207EA74
sub_0207EA74: ; 0x0207EA74
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	bne _0207EAA4
	mov r0, #0
	add r1, r0, #0
	bl sub_02019120
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02019044
	mov r0, #1
	mov r1, #0
	add r2, r0, #0
	bl sub_020BDE40
	mov r0, #0xc
	bl sub_0207EAD4
	mov r1, #0x2d
	lsl r1, r1, #6
	str r0, [r4, r1]
	pop {r4, pc}
_0207EAA4:
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x2d
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_0207EB64
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	bl sub_020BDE40
	ldr r0, [r4, #0]
	bl sub_0207E8E0
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0xc
	bl sub_02019690
	pop {r4, pc}
	thumb_func_end sub_0207EA74

	thumb_func_start sub_0207EAD4
sub_0207EAD4: ; 0x0207EAD4
	push {r3, lr}
	sub sp, #8
	mov r1, #2
	str r1, [sp]
	ldr r1, _0207EAF0 ; =sub_0207EAF4
	mov r2, #1
	str r1, [sp, #4]
	mov r1, #0
	add r3, r1, #0
	bl sub_02024220
	add sp, #8
	pop {r3, pc}
	nop
_0207EAF0: .word sub_0207EAF4
	thumb_func_end sub_0207EAD4

	thumb_func_start sub_0207EAF4
sub_0207EAF4: ; 0x0207EAF4
	push {r3, lr}
	ldr r0, _0207EB4C ; =0x04000060
	ldr r1, _0207EB50 ; =0xFFFFCFFD
	ldrh r2, [r0]
	and r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	add r2, r1, #2
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0207EB54 ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	mov r0, #0
	ldr r2, _0207EB58 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020BFD58
	ldr r1, _0207EB5C ; =0xBFFF0000
	ldr r0, _0207EB60 ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	nop
_0207EB4C: .word 0x04000060
_0207EB50: .word 0xFFFFCFFD
_0207EB54: .word 0x0000CFFB
_0207EB58: .word 0x00007FFF
_0207EB5C: .word 0xBFFF0000
_0207EB60: .word 0x04000580
	thumb_func_end sub_0207EAF4

	thumb_func_start sub_0207EB64
sub_0207EB64: ; 0x0207EB64
	ldr r3, _0207EB68 ; =sub_020242C4
	bx r3
	; .align 2, 0
_0207EB68: .word sub_020242C4
	thumb_func_end sub_0207EB64

	thumb_func_start sub_0207EB6C
sub_0207EB6C: ; 0x0207EB6C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	add r4, r1, #0
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0xf
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0x11
	mov r3, #3
	bl sub_0200710C
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0xc
	bl sub_02006CB8
	add r1, sp, #0x10
	add r6, r0, #0
	bl sub_020A71B0
	ldr r2, [sp, #0x10]
	mov r0, #3
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #8]
	mov r3, #0
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_0201972C
	ldr r1, [sp, #0x10]
	ldr r0, _0207ECB8 ; =0x000004A4
	ldr r1, [r1, #0xc]
	mov r2, #1
	add r0, r5, r0
	add r1, #0x60
	lsl r2, r2, #8
	bl sub_020D50B8
	mov r0, #0xc
	add r1, r6, #0
	bl sub_02018238
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0xc
	bl sub_02002E98
	mov r1, #0
	str r1, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	mov r2, #1
	mov r3, #0xe
	bl sub_0200DAA4
	ldr r0, _0207ECBC ; =0x000005A4
	ldr r0, [r5, r0]
	ldr r0, [r0, #0xc]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #0
	mov r2, #0xa
	mov r3, #0xf
	bl sub_0200DD0C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #3
	mov r3, #4
	bl sub_020070E8
	mov r3, #0x20
	mov r1, #4
	str r3, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0xc
	str r1, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0xe
	mov r3, #5
	bl sub_0200710C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	mov r2, #0x99
	lsl r2, r2, #2
	mov r3, #0xf9
	add r1, r5, r2
	add r2, #0xc0
	lsl r3, r3, #2
	mov r0, #0xc
	add r2, r5, r2
	add r3, r5, r3
	bl sub_02081940
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0207ECB8: .word 0x000004A4
_0207ECBC: .word 0x000005A4
	thumb_func_end sub_0207EB6C

	thumb_func_start sub_0207ECC0
sub_0207ECC0: ; 0x0207ECC0
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0207ED9C ; =0x00000B44
	mov r2, #0xc
	add r4, r0, #0
	bl sub_0200681C
	ldr r2, _0207ED9C ; =0x00000B44
	mov r1, #0
	add r6, r0, #0
	bl sub_020D5124
	add r0, r4, #0
	bl sub_02006840
	ldr r1, _0207EDA0 ; =0x000005A4
	str r0, [r6, r1]
	mov r0, #0xc
	bl sub_02018340
	str r0, [r6, #0]
	ldr r0, _0207EDA0 ; =0x000005A4
	ldr r1, [r6, r0]
	add r0, r1, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #2
	bne _0207ED08
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _0207ED08
	mov r0, #0xc
	bl sub_0207A2A8
	ldr r1, _0207EDA4 ; =0x00000B38
	str r0, [r6, r1]
	b _0207ED0E
_0207ED08:
	ldr r0, _0207EDA4 ; =0x00000B38
	mov r1, #0
	str r1, [r6, r0]
_0207ED0E:
	ldr r2, _0207EDA8 ; =0x000001C5
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xc
	bl sub_0200B144
	ldr r1, _0207EDAC ; =0x0000069C
	mov r2, #0
	str r0, [r6, r1]
	mov r0, #0xf
	mov r1, #0xe
	mov r3, #0xc
	bl sub_0200C440
	ldr r1, _0207EDB0 ; =0x00000698
	str r0, [r6, r1]
	mov r0, #0xc
	bl sub_0200B358
	mov r1, #0x6a
	lsl r1, r1, #4
	add r7, r1, #0
	str r0, [r6, r1]
	mov r4, #0
	add r5, r6, #0
	add r7, #0x64
_0207ED42:
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02023790
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, #0x2c
	cmp r4, #6
	blo _0207ED42
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0xc
	bl sub_02023790
	ldr r1, _0207EDB4 ; =0x000006A4
	str r0, [r6, r1]
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0xc
	bl sub_02023790
	ldr r1, _0207EDB8 ; =0x000006A8
	mov r5, #0
	str r0, [r6, r1]
	add r4, r6, #0
	add r7, r1, #4
_0207ED76:
	mov r0, #0x20
	mov r1, #0xc
	bl sub_02023790
	str r0, [r4, r7]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x14
	blo _0207ED76
	ldr r0, _0207EDA0 ; =0x000005A4
	ldr r0, [r6, r0]
	add r0, #0x22
	ldrb r1, [r0]
	ldr r0, _0207EDBC ; =0x00000B29
	strb r1, [r6, r0]
	add r0, r0, #1
	strb r1, [r6, r0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0207ED9C: .word 0x00000B44
_0207EDA0: .word 0x000005A4
_0207EDA4: .word 0x00000B38
_0207EDA8: .word 0x000001C5
_0207EDAC: .word 0x0000069C
_0207EDB0: .word 0x00000698
_0207EDB4: .word 0x000006A4
_0207EDB8: .word 0x000006A8
_0207EDBC: .word 0x00000B29
	thumb_func_end sub_0207ECC0

	thumb_func_start sub_0207EDC0
sub_0207EDC0: ; 0x0207EDC0
	push {r3, r4}
	ldr r2, _0207EE0C ; =0x000005A4
	mov r3, #0x80
	ldr r1, [r0, r2]
	add r1, #0x20
	ldrb r4, [r1]
	add r1, r4, #0
	tst r1, r3
	beq _0207EDEC
	ldr r1, _0207EE10 ; =0x00000B27
	ldrb r4, [r0, r1]
	orr r4, r3
	strb r4, [r0, r1]
	ldr r1, [r0, r2]
	add r0, r1, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, #0x20
	eor r0, r3
	strb r0, [r1]
	pop {r3, r4}
	bx lr
_0207EDEC:
	cmp r4, #0x15
	bne _0207EDFC
	ldr r1, _0207EE10 ; =0x00000B27
	ldrb r2, [r0, r1]
	orr r2, r3
	strb r2, [r0, r1]
	pop {r3, r4}
	bx lr
_0207EDFC:
	ldr r2, _0207EE10 ; =0x00000B27
	mov r1, #0x80
	ldrb r3, [r0, r2]
	bic r3, r1
	strb r3, [r0, r2]
	pop {r3, r4}
	bx lr
	nop
_0207EE0C: .word 0x000005A4
_0207EE10: .word 0x00000B27
	thumb_func_end sub_0207EDC0

	thumb_func_start sub_0207EE14
sub_0207EE14: ; 0x0207EE14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0207EEE8 ; =0x000005A4
	mov r4, #3
	ldr r1, [r5, r0]
	add r0, r1, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #2
	bne _0207EE30
	ldr r1, _0207EEEC ; =0x020F1CF8
	ldr r0, _0207EEF0 ; =0x0000080C
	str r1, [r5, r0]
	b _0207EE60
_0207EE30:
	add r1, #0x20
	ldrb r1, [r1]
	cmp r1, #2
	beq _0207EE48
	cmp r1, #0x11
	beq _0207EE48
	add r0, r1, #0
	add r0, #0xea
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0207EE50
_0207EE48:
	ldr r1, _0207EEF4 ; =0x020F1D38
	ldr r0, _0207EEF0 ; =0x0000080C
	str r1, [r5, r0]
	b _0207EE60
_0207EE50:
	cmp r1, #0x15
	ldr r0, _0207EEF0 ; =0x0000080C
	bne _0207EE5C
	ldr r1, _0207EEF8 ; =0x020F1D78
	str r1, [r5, r0]
	b _0207EE60
_0207EE5C:
	ldr r1, _0207EEFC ; =0x020F1DB8
	str r1, [r5, r0]
_0207EE60:
	ldr r0, _0207EEE8 ; =0x000005A4
	ldr r1, [r5, r0]
	add r1, #0x20
	ldrb r1, [r1]
	cmp r1, #2
	beq _0207EEBA
	cmp r1, #0x11
	beq _0207EEBA
	cmp r1, #0x17
	beq _0207EEBA
	cmp r1, #0x16
	beq _0207EEBA
	add r0, #0x2c
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0207EF00 ; =0x000005D4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldr r0, _0207EF00 ; =0x000005D4
	add r1, sp, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D50C
	ldr r0, _0207EF00 ; =0x000005D4
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	mov r1, #2
	ldrsh r1, [r3, r1]
	sub r2, #8
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	asr r2, r2, #0x10
	bl sub_0200D494
	mov r0, #1
	eor r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0207EEBA:
	ldr r0, _0207EEE8 ; =0x000005A4
	ldr r0, [r5, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #4
	beq _0207EECA
	cmp r0, #0x15
	bne _0207EEDC
_0207EECA:
	ldr r0, _0207EF00 ; =0x000005D4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	mov r0, #2
	eor r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0207EEDC:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020825B4
	pop {r3, r4, r5, pc}
	nop
_0207EEE8: .word 0x000005A4
_0207EEEC: .word 0x020F1CF8
_0207EEF0: .word 0x0000080C
_0207EEF4: .word 0x020F1D38
_0207EEF8: .word 0x020F1D78
_0207EEFC: .word 0x020F1DB8
_0207EF00: .word 0x000005D4
	thumb_func_end sub_0207EE14

	thumb_func_start sub_0207EF04
sub_0207EF04: ; 0x0207EF04
	mov r2, #0x2c
	mul r2, r1
	add r1, r0, r2
	ldr r0, _0207EF10 ; =0x0000072D
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_0207EF10: .word 0x0000072D
	thumb_func_end sub_0207EF04

	thumb_func_start sub_0207EF14
sub_0207EF14: ; 0x0207EF14
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp]
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #0x2c
	add r4, r0, #0
	ldr r0, _0207F060 ; =0x0000072D
	mul r4, r1
	add r0, r5, r0
	mov r1, #0
	str r0, [sp, #8]
	strb r1, [r0, r4]
	ldr r0, _0207F064 ; =0x000005A4
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0207A0F8
	ldr r1, [sp]
	cmp r0, r1
	bgt _0207EF44
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0207EF44:
	ldr r0, _0207F064 ; =0x000005A4
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	bne _0207EF66
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0207EF66:
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02081ED8
	ldr r0, [sp]
	mov r1, #0x2c
	add r6, r0, #0
	mul r6, r1
	ldr r1, _0207F068 ; =0x00000708
	ldr r0, [sp, #4]
	add r2, r5, r6
	strh r0, [r2, r1]
	add r0, r7, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	ldr r1, _0207F06C ; =0x0000070A
	add r2, r5, r6
	strh r0, [r2, r1]
	add r0, r7, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	ldr r1, _0207F070 ; =0x0000070C
	add r2, r5, r6
	strh r0, [r2, r1]
	add r0, r7, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	ldr r1, _0207F074 ; =0x0000070E
	add r2, r5, r6
	strh r0, [r2, r1]
	add r0, r7, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	mov r1, #0x71
	add r2, r5, r6
	lsl r1, r1, #4
	strh r0, [r2, r1]
	add r0, r7, #0
	mov r1, #0xa2
	mov r2, #0
	bl sub_02074470
	ldr r1, _0207F078 ; =0x00000716
	add r2, r5, r6
	strh r0, [r2, r1]
	add r0, r7, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	ldr r1, _0207F07C ; =0x00000714
	add r2, r5, r6
	strb r0, [r2, r1]
	add r0, r7, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	ldr r1, _0207F080 ; =0x00000715
	add r2, r5, r6
	strb r0, [r2, r1]
	add r0, r7, #0
	mov r1, #0xb0
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	ldr r0, _0207F084 ; =0x00000712
	bne _0207F00C
	add r2, r5, r0
	ldrh r1, [r2, r4]
	ldr r0, _0207F088 ; =0xFFFFEFFF
	and r0, r1
	b _0207F016
_0207F00C:
	add r2, r5, r0
	ldrh r1, [r2, r4]
	mov r0, #1
	lsl r0, r0, #0xc
	orr r0, r1
_0207F016:
	strh r0, [r2, r4]
	ldr r0, _0207F084 ; =0x00000712
	add r6, r5, r0
	add r0, r7, #0
	bl sub_02075D6C
	lsl r0, r0, #0x1e
	ldrh r2, [r6, r4]
	ldr r1, _0207F08C ; =0xFFFF9FFF
	lsr r0, r0, #0x11
	and r1, r2
	orr r0, r1
	strh r0, [r6, r4]
	ldr r0, [sp, #8]
	mov r1, #1
	strb r1, [r0, r4]
	add r0, r7, #0
	bl sub_0208E9F0
	lsl r0, r0, #0x18
	ldrh r1, [r6, r4]
	ldr r2, _0207F090 ; =0xFFFFF000
	lsr r0, r0, #0x18
	and r1, r2
	lsr r2, r2, #0x14
	and r0, r2
	orr r0, r1
	strh r0, [r6, r4]
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0207F094
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0207F060: .word 0x0000072D
_0207F064: .word 0x000005A4
_0207F068: .word 0x00000708
_0207F06C: .word 0x0000070A
_0207F070: .word 0x0000070C
_0207F074: .word 0x0000070E
_0207F078: .word 0x00000716
_0207F07C: .word 0x00000714
_0207F080: .word 0x00000715
_0207F084: .word 0x00000712
_0207F088: .word 0xFFFFEFFF
_0207F08C: .word 0xFFFF9FFF
_0207F090: .word 0xFFFFF000
	thumb_func_end sub_0207EF14

	thumb_func_start sub_0207F094
sub_0207F094: ; 0x0207F094
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _0207F124 ; =0x000005A4
	add r5, r1, #0
	ldr r1, [r7, r0]
	add r0, r1, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _0207F120
	mov r0, #0x2c
	add r6, r2, #0
	mul r6, r0
	ldr r0, _0207F128 ; =0x00000714
	add r3, r7, r6
	ldrb r2, [r3, r0]
	cmp r2, #1
	beq _0207F0C0
	sub r0, #0xa
	ldrh r0, [r3, r0]
	cmp r0, #0
	bne _0207F0CE
_0207F0C0:
	ldr r0, _0207F12C ; =0x00000712
	add r2, r7, r0
	ldrh r1, [r2, r6]
	ldr r0, _0207F130 ; =0xFFFF7FFF
	and r0, r1
	strh r0, [r2, r6]
	pop {r3, r4, r5, r6, r7, pc}
_0207F0CE:
	add r1, #0x2a
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_0207F134
	str r0, [sp]
	mov r4, #0
_0207F0DC:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0207F0F2
	add r4, r4, #1
	cmp r4, #4
	blo _0207F0DC
_0207F0F2:
	ldr r0, _0207F124 ; =0x000005A4
	ldr r0, [r7, r0]
	add r0, #0x2b
	ldrb r1, [r0]
	ldr r0, [sp]
	cmp r1, r0
	bhi _0207F114
	cmp r4, #2
	blo _0207F114
	ldr r0, _0207F12C ; =0x00000712
	add r2, r7, r0
	ldrh r1, [r2, r6]
	mov r0, #2
	lsl r0, r0, #0xe
	orr r0, r1
	strh r0, [r2, r6]
	pop {r3, r4, r5, r6, r7, pc}
_0207F114:
	ldr r0, _0207F12C ; =0x00000712
	add r2, r7, r0
	ldrh r1, [r2, r6]
	ldr r0, _0207F130 ; =0xFFFF7FFF
	and r0, r1
	strh r0, [r2, r6]
_0207F120:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207F124: .word 0x000005A4
_0207F128: .word 0x00000714
_0207F12C: .word 0x00000712
_0207F130: .word 0xFFFF7FFF
	thumb_func_end sub_0207F094

	thumb_func_start sub_0207F134
sub_0207F134: ; 0x0207F134
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #4
	bls _0207F13E
	b _0207F242
_0207F13E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207F14A: ; jump table
	.short _0207F154 - _0207F14A - 2 ; case 0
	.short _0207F184 - _0207F14A - 2 ; case 1
	.short _0207F1B4 - _0207F14A - 2 ; case 2
	.short _0207F1E4 - _0207F14A - 2 ; case 3
	.short _0207F214 - _0207F14A - 2 ; case 4
_0207F154:
	mov r1, #0x7b
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x7c
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x7d
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x7e
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	b _0207F242
_0207F184:
	mov r1, #0x7f
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x80
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x81
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x82
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	b _0207F242
_0207F1B4:
	mov r1, #0x83
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x84
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x85
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x86
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	b _0207F242
_0207F1E4:
	mov r1, #0x87
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x88
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x89
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x8a
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	b _0207F242
_0207F214:
	mov r1, #0x8b
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x8c
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x8d
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x8e
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
_0207F242:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0207F134

	thumb_func_start sub_0207F248
sub_0207F248: ; 0x0207F248
	mov r1, #0x39
	lsl r1, r1, #4
	add r0, r0, r1
	bx lr
	thumb_func_end sub_0207F248

	thumb_func_start sub_0207F250
sub_0207F250: ; 0x0207F250
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0
	beq _0207F270
	ldr r0, _0207F300 ; =0x000005A4
	ldr r0, [r5, r0]
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0207F278
	cmp r4, #1
	bne _0207F278
_0207F270:
	mov r0, #0x99
	lsl r0, r0, #2
	add r0, r5, r0
	b _0207F27E
_0207F278:
	mov r0, #0xc9
	lsl r0, r0, #2
	add r0, r5, r0
_0207F27E:
	mov r1, #0x2c
	mul r1, r4
	ldr r2, _0207F304 ; =0x00000718
	add r1, r5, r1
	strb r6, [r1, r2]
	add r2, r2, #1
	strb r7, [r1, r2]
	mov r2, #0x10
	str r2, [sp]
	mov r1, #6
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r5, #0]
	mov r1, #2
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020198E8
	add r0, sp, #0x20
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	bne _0207F2D8
	add r0, r7, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x10
	add r3, r6, #6
	str r0, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [r5, #0]
	mov r1, #2
	mov r2, #0x17
	lsr r3, r3, #0x18
	bl sub_02019CB8
_0207F2D8:
	mov r0, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r4, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	mov r1, #2
	add r2, r6, #0
	add r3, r7, #0
	bl sub_02019E2C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207F8F8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0207F300: .word 0x000005A4
_0207F304: .word 0x00000718
	thumb_func_end sub_0207F250

	thumb_func_start sub_0207F308
sub_0207F308: ; 0x0207F308
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0207F37C ; =0x000005A4
	ldr r2, [r4, r0]
	add r0, r2, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #2
	bne _0207F31E
	ldr r1, _0207F380 ; =0x020F1E40
	b _0207F320
_0207F31E:
	ldr r1, _0207F384 ; =0x020F1DF8
_0207F320:
	add r2, #0x20
	ldrb r0, [r2]
	cmp r0, #0x10
	bne _0207F330
	add r0, r4, #0
	bl sub_0207F4AC
	b _0207F368
_0207F330:
	cmp r0, #6
	bne _0207F33C
	add r0, r4, #0
	bl sub_0207F5A0
	b _0207F368
_0207F33C:
	cmp r0, #0xd
	bne _0207F348
	add r0, r4, #0
	bl sub_0207F694
	b _0207F368
_0207F348:
	cmp r0, #2
	beq _0207F35A
	cmp r0, #0x11
	beq _0207F35A
	add r0, #0xea
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0207F362
_0207F35A:
	add r0, r4, #0
	bl sub_0207F788
	b _0207F368
_0207F362:
	add r0, r4, #0
	bl sub_0207F388
_0207F368:
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_0201C3C0
	ldr r0, [r4, #0]
	mov r1, #4
	bl sub_0201C3C0
	pop {r4, pc}
	nop
_0207F37C: .word 0x000005A4
_0207F380: .word 0x020F1E40
_0207F384: .word 0x020F1DF8
	thumb_func_end sub_0207F308

	thumb_func_start sub_0207F388
sub_0207F388: ; 0x0207F388
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x13
	mov r1, #0xc
	bl sub_02006C24
	str r0, [sp, #8]
	mov r4, #0
_0207F39C:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207EF14
	cmp r0, #1
	bne _0207F47A
	mov r0, #0x2c
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0207F4A4 ; =0x00000714
	str r1, [sp, #4]
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0207F3DA
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	mov r0, #0
	str r0, [sp]
	add r3, r6, r2
	ldrh r2, [r6, r2]
	ldrh r3, [r3, #2]
	add r0, r5, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0207F250
	b _0207F3FA
_0207F3DA:
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	mov r0, #1
	str r0, [sp]
	add r3, r6, r2
	ldrh r2, [r6, r2]
	ldrh r3, [r3, #2]
	add r0, r5, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0207F250
_0207F3FA:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020821F8
	mov r0, #0xc
	mul r0, r4
	add r7, r6, r0
	ldr r0, [sp, #8]
	add r1, r4, #0
	str r0, [sp]
	ldrh r2, [r7, #4]
	ldrh r3, [r7, #6]
	add r0, r5, #0
	bl sub_02082CEC
	ldrh r2, [r7, #8]
	ldrh r3, [r7, #0xa]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02082FAC
	mov r2, #0x71
	ldr r3, [sp, #4]
	lsl r2, r2, #4
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083040
	mov r2, #4
	mov r3, #6
	ldrsh r2, [r7, r2]
	ldrsh r3, [r7, r3]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830A0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083104
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830D4
	mov r2, #0x2c
	mul r2, r4
	add r3, r5, r2
	ldr r2, _0207F4A8 ; =0x00000712
	add r0, r5, #0
	ldrh r2, [r3, r2]
	add r1, r4, #0
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02080A50
	b _0207F490
_0207F47A:
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	add r7, r6, r2
	mov r3, #2
	ldrsh r2, [r6, r2]
	ldrsh r3, [r7, r3]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207F884
_0207F490:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _0207F39C
	ldr r0, [sp, #8]
	bl sub_02006CA8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0207F4A4: .word 0x00000714
_0207F4A8: .word 0x00000712
	thumb_func_end sub_0207F388

	thumb_func_start sub_0207F4AC
sub_0207F4AC: ; 0x0207F4AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp, #4]
	mov r0, #0x13
	mov r1, #0xc
	bl sub_02006C24
	str r0, [sp, #8]
	mov r4, #0
_0207F4C0:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207EF14
	cmp r0, #1
	bne _0207F56C
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #4]
	ldr r3, [sp, #4]
	add r6, r0, r2
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r3, r2]
	ldrh r3, [r6, #2]
	add r0, r5, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0207F250
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0208232C
	ldr r0, [sp, #8]
	add r1, r4, #0
	str r0, [sp]
	ldrh r2, [r6, #4]
	ldrh r3, [r6, #6]
	add r0, r5, #0
	bl sub_02082CEC
	ldrh r2, [r6, #8]
	ldrh r3, [r6, #0xa]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02082FAC
	mov r2, #0x71
	mov r0, #0x2c
	add r7, r4, #0
	mul r7, r0
	add r3, r5, r7
	lsl r2, r2, #4
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083040
	mov r2, #4
	mov r3, #6
	ldrsh r2, [r6, r2]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830A0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083104
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830D4
	ldr r2, _0207F59C ; =0x00000712
	add r3, r5, r7
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02080A50
	b _0207F586
_0207F56C:
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #4]
	ldr r6, [sp, #4]
	add r3, r0, r2
	ldrsh r2, [r6, r2]
	mov r6, #2
	ldrsh r3, [r3, r6]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207F884
_0207F586:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _0207F4C0
	ldr r0, [sp, #8]
	bl sub_02006CA8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0207F59C: .word 0x00000712
	thumb_func_end sub_0207F4AC

	thumb_func_start sub_0207F5A0
sub_0207F5A0: ; 0x0207F5A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp, #4]
	mov r0, #0x13
	mov r1, #0xc
	bl sub_02006C24
	str r0, [sp, #8]
	mov r4, #0
_0207F5B4:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207EF14
	cmp r0, #1
	bne _0207F660
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #4]
	ldr r3, [sp, #4]
	add r6, r0, r2
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r3, r2]
	ldrh r3, [r6, #2]
	add r0, r5, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0207F250
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020823C4
	ldr r0, [sp, #8]
	add r1, r4, #0
	str r0, [sp]
	ldrh r2, [r6, #4]
	ldrh r3, [r6, #6]
	add r0, r5, #0
	bl sub_02082CEC
	ldrh r2, [r6, #8]
	ldrh r3, [r6, #0xa]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02082FAC
	mov r2, #0x71
	mov r0, #0x2c
	add r7, r4, #0
	mul r7, r0
	add r3, r5, r7
	lsl r2, r2, #4
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083040
	mov r2, #4
	mov r3, #6
	ldrsh r2, [r6, r2]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830A0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083104
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830D4
	ldr r2, _0207F690 ; =0x00000712
	add r3, r5, r7
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02080A50
	b _0207F67A
_0207F660:
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #4]
	ldr r6, [sp, #4]
	add r3, r0, r2
	ldrsh r2, [r6, r2]
	mov r6, #2
	ldrsh r3, [r3, r6]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207F884
_0207F67A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _0207F5B4
	ldr r0, [sp, #8]
	bl sub_02006CA8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0207F690: .word 0x00000712
	thumb_func_end sub_0207F5A0

	thumb_func_start sub_0207F694
sub_0207F694: ; 0x0207F694
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp, #4]
	mov r0, #0x13
	mov r1, #0xc
	bl sub_02006C24
	str r0, [sp, #8]
	mov r4, #0
_0207F6A8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207EF14
	cmp r0, #1
	bne _0207F754
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #4]
	ldr r3, [sp, #4]
	add r6, r0, r2
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r3, r2]
	ldrh r3, [r6, #2]
	add r0, r5, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0207F250
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0208245C
	ldr r0, [sp, #8]
	add r1, r4, #0
	str r0, [sp]
	ldrh r2, [r6, #4]
	ldrh r3, [r6, #6]
	add r0, r5, #0
	bl sub_02082CEC
	ldrh r2, [r6, #8]
	ldrh r3, [r6, #0xa]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02082FAC
	mov r2, #0x71
	mov r0, #0x2c
	add r7, r4, #0
	mul r7, r0
	add r3, r5, r7
	lsl r2, r2, #4
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083040
	mov r2, #4
	mov r3, #6
	ldrsh r2, [r6, r2]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830A0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083104
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830D4
	ldr r2, _0207F784 ; =0x00000712
	add r3, r5, r7
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02080A50
	b _0207F76E
_0207F754:
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #4]
	ldr r6, [sp, #4]
	add r3, r0, r2
	ldrsh r2, [r6, r2]
	mov r6, #2
	ldrsh r3, [r3, r6]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207F884
_0207F76E:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _0207F6A8
	ldr r0, [sp, #8]
	bl sub_02006CA8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0207F784: .word 0x00000712
	thumb_func_end sub_0207F694

	thumb_func_start sub_0207F788
sub_0207F788: ; 0x0207F788
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp, #4]
	mov r0, #0x13
	mov r1, #0xc
	bl sub_02006C24
	str r0, [sp, #8]
	mov r4, #0
_0207F79C:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207EF14
	cmp r0, #1
	bne _0207F850
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #4]
	ldr r3, [sp, #4]
	add r6, r0, r2
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r3, r2]
	ldrh r3, [r6, #2]
	add r0, r5, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0207F250
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020824C0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02082508
	ldr r0, [sp, #8]
	add r1, r4, #0
	str r0, [sp]
	ldrh r2, [r6, #4]
	ldrh r3, [r6, #6]
	add r0, r5, #0
	bl sub_02082CEC
	ldrh r2, [r6, #8]
	ldrh r3, [r6, #0xa]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02082FAC
	mov r2, #0x71
	mov r0, #0x2c
	add r7, r4, #0
	mul r7, r0
	add r3, r5, r7
	lsl r2, r2, #4
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083040
	mov r2, #4
	mov r3, #6
	ldrsh r2, [r6, r2]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830A0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083104
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830D4
	ldr r2, _0207F880 ; =0x00000712
	add r3, r5, r7
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02080A50
	b _0207F86A
_0207F850:
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #4]
	ldr r6, [sp, #4]
	add r3, r0, r2
	ldrsh r2, [r6, r2]
	mov r6, #2
	ldrsh r3, [r3, r6]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207F884
_0207F86A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _0207F79C
	ldr r0, [sp, #8]
	bl sub_02006CA8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0207F880: .word 0x00000712
	thumb_func_end sub_0207F788

	thumb_func_start sub_0207F884
sub_0207F884: ; 0x0207F884
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r1, #0
	add r4, r2, #0
	mov r1, #0x10
	mov r2, #0xf9
	add r5, r0, #0
	lsl r2, r2, #2
	add r6, r3, #0
	lsl r3, r6, #0x18
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r2, r5, r2
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	lsl r2, r4, #0x18
	ldr r0, [r5, #0]
	mov r1, #2
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_020198E8
	mov r0, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	lsl r2, r4, #0x18
	lsl r3, r6, #0x18
	ldr r0, [r5, #0]
	mov r1, #2
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02019E2C
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #7
	bl sub_02083014
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_02083040
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02083104
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207F884

	thumb_func_start sub_0207F8F8
sub_0207F8F8: ; 0x0207F8F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0207F974 ; =0x000005A4
	add r6, r1, #0
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	ldr r1, _0207F978 ; =0x00000B27
	ldrb r2, [r5, r1]
	lsl r3, r2, #0x19
	lsr r3, r3, #0x1f
	cmp r3, #1
	bne _0207F928
	add r1, r1, #2
	ldrb r1, [r5, r1]
	cmp r6, r1
	beq _0207F924
	lsl r1, r2, #0x1a
	lsr r1, r1, #0x1a
	cmp r6, r1
	bne _0207F928
_0207F924:
	mov r4, #7
	b _0207F95C
_0207F928:
	ldr r1, _0207F97C ; =0x00000B29
	ldrb r1, [r5, r1]
	cmp r6, r1
	bne _0207F934
	mov r4, #4
	b _0207F936
_0207F934:
	mov r4, #0
_0207F936:
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0207F94A
	add r0, r4, #2
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	b _0207F95C
_0207F94A:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207F984
	cmp r0, #1
	bne _0207F95C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0207F95C:
	ldr r1, _0207F980 ; =0x000004A4
	add r3, r6, #3
	add r2, r5, r1
	lsl r1, r4, #5
	lsl r3, r3, #0x15
	add r1, r2, r1
	mov r0, #2
	mov r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0201972C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207F974: .word 0x000005A4
_0207F978: .word 0x00000B27
_0207F97C: .word 0x00000B29
_0207F980: .word 0x000004A4
	thumb_func_end sub_0207F8F8

	thumb_func_start sub_0207F984
sub_0207F984: ; 0x0207F984
	ldr r2, _0207F99C ; =0x000005A4
	ldr r0, [r0, r2]
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #2
	bne _0207F996
	mov r0, #1
	tst r1, r0
	bne _0207F998
_0207F996:
	mov r0, #0
_0207F998:
	bx lr
	nop
_0207F99C: .word 0x000005A4
	thumb_func_end sub_0207F984

	thumb_func_start sub_0207F9A0
sub_0207F9A0: ; 0x0207F9A0
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r3, #0
	ldr r0, _0207F9F0 ; =0x00000B29
	str r3, [sp]
	ldrb r0, [r4, r0]
	add r1, sp, #0xc
	add r1, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _0207F9F4 ; =0x0000080C
	add r2, sp, #0xc
	ldr r0, [r4, r0]
	bl sub_0201E028
	ldr r0, _0207F9F8 ; =0x000005A4
	ldr r1, _0207F9F0 ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	add r0, #0x21
	ldrb r0, [r0]
	bl sub_020805D0
	add r1, r0, #0
	ldr r0, _0207F9FC ; =0x000005C8
	ldr r0, [r4, r0]
	bl sub_02021D6C
	ldr r0, _0207F9FC ; =0x000005C8
	add r2, sp, #0xc
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	ldr r0, [r4, r0]
	bl sub_0200D494
	add sp, #0x10
	pop {r4, pc}
	nop
_0207F9F0: .word 0x00000B29
_0207F9F4: .word 0x0000080C
_0207F9F8: .word 0x000005A4
_0207F9FC: .word 0x000005C8
	thumb_func_end sub_0207F9A0

	thumb_func_start sub_0207FA00
sub_0207FA00: ; 0x0207FA00
	push {r4, lr}
	add r4, r0, #0
	bl sub_0207FA24
	cmp r0, #1
	bne _0207FA10
	mov r0, #1
	pop {r4, pc}
_0207FA10:
	add r0, r4, #0
	bl sub_0207FC94
	cmp r0, #1
	bne _0207FA1E
	mov r0, #2
	pop {r4, pc}
_0207FA1E:
	mov r0, #5
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207FA00

	thumb_func_start sub_0207FA24
sub_0207FA24: ; 0x0207FA24
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _0207FBC4 ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x4c]
	mov r3, #4
	tst r1, r0
	beq _0207FA3A
	mov r3, #0
	b _0207FA56
_0207FA3A:
	mov r1, #0x80
	tst r1, r0
	beq _0207FA44
	mov r3, #1
	b _0207FA56
_0207FA44:
	mov r1, #0x20
	tst r1, r0
	beq _0207FA4E
	mov r3, #2
	b _0207FA56
_0207FA4E:
	mov r1, #0x10
	tst r0, r1
	beq _0207FA56
	mov r3, #3
_0207FA56:
	cmp r3, #4
	bne _0207FA60
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0207FA60:
	ldr r4, _0207FBC8 ; =0x00000B29
	ldrb r0, [r5, r4]
	cmp r0, #6
	bne _0207FA9C
	cmp r3, #0
	add r1, sp, #0
	bne _0207FA8E
	add r4, r4, #1
	ldrb r6, [r5, r4]
	mov r4, #1
	ldr r3, _0207FBCC ; =0x020F1BD4
	and r4, r6
	add r6, r4, #2
	mov r4, #6
	mul r4, r6
	add r0, r5, #0
	add r1, #1
	add r2, sp, #0
	add r3, r3, r4
	bl sub_0207FC30
	add r6, r0, #0
	b _0207FB1E
_0207FA8E:
	add r0, r5, #0
	add r1, #1
	add r2, sp, #0
	bl sub_0207FBE0
	add r6, r0, #0
	b _0207FB1E
_0207FA9C:
	cmp r0, #7
	bne _0207FB10
	ldr r0, _0207FBD0 ; =0x000005A4
	ldr r0, [r5, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #2
	beq _0207FADE
	cmp r0, #0x11
	beq _0207FADE
	cmp r0, #0x17
	beq _0207FADE
	cmp r0, #0x16
	beq _0207FADE
	cmp r3, #0
	bne _0207FADE
	add r4, r4, #1
	ldrb r6, [r5, r4]
	mov r4, #1
	add r1, sp, #0
	and r4, r6
	add r6, r4, #2
	mov r4, #6
	ldr r3, _0207FBCC ; =0x020F1BD4
	mul r4, r6
	add r0, r5, #0
	add r1, #1
	add r2, sp, #0
	add r3, r3, r4
	bl sub_0207FC30
	add r6, r0, #0
	b _0207FB1E
_0207FADE:
	cmp r3, #1
	add r1, sp, #0
	bne _0207FB02
	ldr r4, _0207FBD4 ; =0x00000B2A
	ldr r3, _0207FBCC ; =0x020F1BD4
	ldrb r6, [r5, r4]
	mov r4, #1
	add r0, r5, #0
	and r6, r4
	mov r4, #6
	mul r4, r6
	add r1, #1
	add r2, sp, #0
	add r3, r3, r4
	bl sub_0207FC30
	add r6, r0, #0
	b _0207FB1E
_0207FB02:
	add r0, r5, #0
	add r1, #1
	add r2, sp, #0
	bl sub_0207FBE0
	add r6, r0, #0
	b _0207FB1E
_0207FB10:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #1
	add r2, sp, #0
	bl sub_0207FBE0
	add r6, r0, #0
_0207FB1E:
	ldr r0, _0207FBC8 ; =0x00000B29
	ldrb r0, [r5, r0]
	cmp r6, r0
	beq _0207FBBC
	cmp r6, #0xff
	beq _0207FBBC
	add r0, r6, #0
	add r0, #0xfa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0207FB42
	ldr r0, _0207FBD8 ; =0x000005C8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	b _0207FB72
_0207FB42:
	ldr r0, _0207FBD0 ; =0x000005A4
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r0, #0x21
	ldrb r0, [r0]
	bl sub_020805D0
	add r1, r0, #0
	ldr r0, _0207FBD8 ; =0x000005C8
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldr r0, _0207FBD8 ; =0x000005C8
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0207FBD8 ; =0x000005C8
	add r2, sp, #0
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	ldr r0, [r5, r0]
	bl sub_0200D494
_0207FB72:
	ldr r0, _0207FBC8 ; =0x00000B29
	mov r2, #0
	ldrb r4, [r5, r0]
	strb r6, [r5, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02080500
	ldr r1, _0207FBC8 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	mov r2, #1
	bl sub_02080500
	ldr r0, _0207FBDC ; =0x000005DC
	bl sub_02005748
	cmp r4, #6
	bhs _0207FBAA
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02080A50
	ldr r0, [r5, #0]
	mov r1, #4
	bl sub_0201C3C0
_0207FBAA:
	cmp r4, #6
	beq _0207FBB6
	cmp r4, #7
	beq _0207FBB6
	ldr r0, _0207FBD4 ; =0x00000B2A
	strb r4, [r5, r0]
_0207FBB6:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0207FBBC:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0207FBC4: .word 0x021BF67C
_0207FBC8: .word 0x00000B29
_0207FBCC: .word 0x020F1BD4
_0207FBD0: .word 0x000005A4
_0207FBD4: .word 0x00000B2A
_0207FBD8: .word 0x000005C8
_0207FBDC: .word 0x000005DC
	thumb_func_end sub_0207FA24

	thumb_func_start sub_0207FBE0
sub_0207FBE0: ; 0x0207FBE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _0207FC28 ; =0x00000B29
	add r7, r1, #0
	ldrb r4, [r5, r0]
	str r2, [sp, #0xc]
	add r6, r3, #0
_0207FBF0:
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, _0207FC2C ; =0x0000080C
	str r6, [sp, #8]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0xc]
	add r1, r7, #0
	mov r3, #0
	bl sub_0201E028
	add r4, r0, #0
	cmp r4, #6
	beq _0207FC20
	cmp r4, #7
	beq _0207FC20
	cmp r4, #0xff
	beq _0207FC20
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207EF04
	cmp r0, #0
	beq _0207FBF0
_0207FC20:
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207FC28: .word 0x00000B29
_0207FC2C: .word 0x0000080C
	thumb_func_end sub_0207FBE0

	thumb_func_start sub_0207FC30
sub_0207FC30: ; 0x0207FC30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp, #0xc]
	add r5, r3, #0
	mov r4, #0
_0207FC3E:
	cmp r4, #6
	beq _0207FC74
	ldrb r1, [r5, r4]
	add r0, r6, #0
	bl sub_0207EF04
	cmp r0, #0
	beq _0207FC6C
	mov r3, #0
	str r3, [sp]
	ldrb r0, [r5, r4]
	ldr r2, [sp, #0xc]
	add r1, r7, #0
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _0207FC90 ; =0x0000080C
	ldr r0, [r6, r0]
	bl sub_0201E028
	add sp, #0x10
	ldrb r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0207FC6C:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	b _0207FC3E
_0207FC74:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _0207FC90 ; =0x0000080C
	ldr r2, [sp, #0xc]
	ldr r0, [r6, r0]
	add r1, r7, #0
	bl sub_0201E028
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0207FC90: .word 0x0000080C
	thumb_func_end sub_0207FC30

	thumb_func_start sub_0207FC94
sub_0207FC94: ; 0x0207FC94
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_02080AD8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0207FD44
	ldr r1, _0207FD4C ; =0x00000B29
	mov r2, #0
	ldrb r4, [r5, r1]
	strb r0, [r5, r1]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02080500
	ldr r1, _0207FD4C ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	mov r2, #1
	bl sub_02080500
	cmp r4, #6
	bhs _0207FCD0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02080A50
_0207FCD0:
	mov r3, #0
	ldr r0, _0207FD4C ; =0x00000B29
	str r3, [sp]
	ldrb r0, [r5, r0]
	add r1, sp, #0xc
	add r1, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _0207FD50 ; =0x0000080C
	add r2, sp, #0xc
	ldr r0, [r5, r0]
	bl sub_0201E028
	ldr r0, _0207FD54 ; =0x000005A4
	ldr r1, _0207FD4C ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	add r0, #0x21
	ldrb r0, [r0]
	bl sub_020805D0
	add r1, r0, #0
	ldr r0, _0207FD58 ; =0x000005C8
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldr r0, _0207FD58 ; =0x000005C8
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0207FD58 ; =0x000005C8
	add r2, sp, #0xc
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	ldr r0, [r5, r0]
	bl sub_0200D494
	ldr r0, _0207FD5C ; =0x00000B24
	mov r1, #1
	strb r1, [r5, r0]
	add r1, r0, #5
	ldrb r1, [r5, r1]
	add r0, r0, #1
	strb r1, [r5, r0]
	ldr r0, _0207FD60 ; =0x000005E4
	bl sub_02005748
	cmp r4, #6
	beq _0207FD3E
	cmp r4, #7
	beq _0207FD3E
	ldr r0, _0207FD64 ; =0x00000B2A
	strb r4, [r5, r0]
_0207FD3E:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_0207FD44:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0207FD4C: .word 0x00000B29
_0207FD50: .word 0x0000080C
_0207FD54: .word 0x000005A4
_0207FD58: .word 0x000005C8
_0207FD5C: .word 0x00000B24
_0207FD60: .word 0x000005E4
_0207FD64: .word 0x00000B2A
	thumb_func_end sub_0207FC94

	thumb_func_start sub_0207FD68
sub_0207FD68: ; 0x0207FD68
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r0, #0xfa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0207FD88
	ldr r0, _0207FE0C ; =0x000005C8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	b _0207FDD4
_0207FD88:
	mov r3, #0
	ldr r0, _0207FE10 ; =0x00000B29
	str r3, [sp]
	ldrb r0, [r5, r0]
	add r1, sp, #0xc
	add r1, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _0207FE14 ; =0x0000080C
	add r2, sp, #0xc
	ldr r0, [r5, r0]
	bl sub_0201E028
	ldr r0, _0207FE18 ; =0x000005A4
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r0, #0x21
	ldrb r0, [r0]
	bl sub_020805D0
	add r1, r0, #0
	ldr r0, _0207FE0C ; =0x000005C8
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldr r0, _0207FE0C ; =0x000005C8
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0207FE0C ; =0x000005C8
	add r2, sp, #0xc
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	ldr r0, [r5, r0]
	bl sub_0200D494
_0207FDD4:
	ldr r0, _0207FE10 ; =0x00000B29
	mov r2, #0
	ldrb r4, [r5, r0]
	strb r6, [r5, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02080500
	ldr r1, _0207FE10 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	mov r2, #1
	bl sub_02080500
	cmp r4, #6
	bhs _0207FE06
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02080A50
	ldr r0, [r5, #0]
	mov r1, #4
	bl sub_0201C3C0
_0207FE06:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0207FE0C: .word 0x000005C8
_0207FE10: .word 0x00000B29
_0207FE14: .word 0x0000080C
_0207FE18: .word 0x000005A4
	thumb_func_end sub_0207FD68

	thumb_func_start sub_0207FE1C
sub_0207FE1C: ; 0x0207FE1C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0207FE90 ; =0x00000B24
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #0
	beq _0207FE8C
	cmp r2, #1
	beq _0207FE36
	cmp r2, #2
	beq _0207FE74
	add sp, #4
	pop {r3, r4, pc}
_0207FE36:
	add r0, r1, #1
	ldrb r0, [r4, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl sub_02080AB8
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, r4, #0
	bl sub_020832E4
	ldr r1, _0207FE94 ; =0x00000B25
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #2
	bl sub_02080A50
	ldr r0, [r4, #0]
	mov r1, #4
	bl sub_0201C3C0
	ldr r0, _0207FE90 ; =0x00000B24
	add sp, #4
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, pc}
_0207FE74:
	add r1, r1, #1
	ldrb r1, [r4, r1]
	mov r2, #1
	bl sub_02080A50
	ldr r0, [r4, #0]
	mov r1, #4
	bl sub_0201C3C0
	ldr r0, _0207FE90 ; =0x00000B24
	mov r1, #0
	strb r1, [r4, r0]
_0207FE8C:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0207FE90: .word 0x00000B24
_0207FE94: .word 0x00000B25
	thumb_func_end sub_0207FE1C

	thumb_func_start sub_0207FE98
sub_0207FE98: ; 0x0207FE98
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0207FFAC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0207FF4A
	ldr r0, _0207FFB0 ; =0x00000B29
	ldrb r1, [r4, r0]
	cmp r1, #6
	bne _0207FEB2
	mov r0, #4
	pop {r4, pc}
_0207FEB2:
	cmp r1, #7
	bne _0207FECA
	ldr r0, _0207FFB4 ; =0x000005DC
	bl sub_02005748
	ldr r0, _0207FFB8 ; =0x00000B27
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _0207FF4A
	mov r0, #3
	pop {r4, pc}
_0207FECA:
	ldr r0, _0207FFBC ; =0x000005A4
	ldr r2, [r4, r0]
	add r2, #0x20
	ldrb r2, [r2]
	cmp r2, #3
	beq _0207FEDA
	cmp r2, #0x13
	bne _0207FEE4
_0207FEDA:
	ldr r0, _0207FFB4 ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	pop {r4, pc}
_0207FEE4:
	cmp r2, #0x14
	beq _0207FEEC
	cmp r2, #0xe
	bne _0207FF0E
_0207FEEC:
	mov r0, #0x2c
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0207FFC0 ; =0x00000714
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0207FF04
	ldr r0, _0207FFB4 ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	pop {r4, pc}
_0207FF04:
	ldr r0, _0207FFC4 ; =0x000005F2
	bl sub_02005748
	mov r0, #5
	pop {r4, pc}
_0207FF0E:
	cmp r2, #0xf
	bne _0207FF3A
	mov r2, #0x2c
	mul r2, r1
	ldr r1, _0207FFC0 ; =0x00000714
	add r2, r4, r2
	ldrb r1, [r2, r1]
	cmp r1, #0
	bne _0207FF30
	add r0, #0x38
	bl sub_02005748
	add r0, r4, #0
	bl sub_0207FFC8
	mov r0, #0
	pop {r4, pc}
_0207FF30:
	add r0, #0x4e
	bl sub_02005748
	mov r0, #5
	pop {r4, pc}
_0207FF3A:
	add r0, #0x38
	bl sub_02005748
	add r0, r4, #0
	bl sub_0207FFC8
	mov r0, #0
	pop {r4, pc}
_0207FF4A:
	ldr r0, _0207FFAC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0207FF6E
	ldr r0, _0207FFB8 ; =0x00000B27
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _0207FF6E
	ldr r0, _0207FFB4 ; =0x000005DC
	bl sub_02005748
	ldr r0, _0207FFB0 ; =0x00000B29
	mov r1, #7
	strb r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
_0207FF6E:
	add r0, r4, #0
	bl sub_0207FA00
	cmp r0, #2
	bne _0207FFA8
	ldr r1, _0207FFBC ; =0x000005A4
	ldr r1, [r4, r1]
	add r1, #0x20
	ldrb r1, [r1]
	cmp r1, #0x14
	beq _0207FF8E
	add r1, #0xf2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #1
	bhi _0207FFA8
_0207FF8E:
	ldr r1, _0207FFB0 ; =0x00000B29
	ldrb r2, [r4, r1]
	mov r1, #0x2c
	mul r1, r2
	add r2, r4, r1
	ldr r1, _0207FFC0 ; =0x00000714
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _0207FFA8
	ldr r0, _0207FFC4 ; =0x000005F2
	bl sub_02005748
	mov r0, #5
_0207FFA8:
	pop {r4, pc}
	nop
_0207FFAC: .word 0x021BF67C
_0207FFB0: .word 0x00000B29
_0207FFB4: .word 0x000005DC
_0207FFB8: .word 0x00000B27
_0207FFBC: .word 0x000005A4
_0207FFC0: .word 0x00000714
_0207FFC4: .word 0x000005F2
	thumb_func_end sub_0207FE98

	thumb_func_start sub_0207FFC8
sub_0207FFC8: ; 0x0207FFC8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	mov r0, #0xc
	mov r1, #8
	bl sub_02018144
	add r5, r0, #0
	ldr r0, _020800AC ; =0x000005A4
	ldr r0, [r4, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0xf
	bgt _02080000
	bge _02080038
	cmp r0, #2
	bgt _02080074
	cmp r0, #0
	blt _02080074
	beq _02080020
	cmp r0, #2
	beq _0208002C
	b _02080074
_02080000:
	sub r0, #0x11
	cmp r0, #6
	bhi _02080074
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02080012: ; jump table
	.short _0208002C - _02080012 - 2 ; case 0
	.short _02080044 - _02080012 - 2 ; case 1
	.short _02080074 - _02080012 - 2 ; case 2
	.short _02080074 - _02080012 - 2 ; case 3
	.short _02080050 - _02080012 - 2 ; case 4
	.short _0208005C - _02080012 - 2 ; case 5
	.short _02080068 - _02080012 - 2 ; case 6
_02080020:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020800B4
	add r2, r0, #0
	b _0208007E
_0208002C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0208022C
	add r2, r0, #0
	b _0208007E
_02080038:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020801AC
	add r2, r0, #0
	b _0208007E
_02080044:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020801B8
	add r2, r0, #0
	b _0208007E
_02080050:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0208031C
	add r2, r0, #0
	b _0208007E
_0208005C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0208027C
	add r2, r0, #0
	b _0208007E
_02080068:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020802CC
	add r2, r0, #0
	b _0208007E
_02080074:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020801F0
	add r2, r0, #0
_0208007E:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02081CF4
	mov r0, #0xc
	add r1, r5, #0
	bl sub_02018238
	add r0, r4, #0
	bl sub_02081E08
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_020826F4
	ldr r0, _020800B0 ; =0x000005C8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D414
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020800AC: .word 0x000005A4
_020800B0: .word 0x000005C8
	thumb_func_end sub_0207FFC8

	thumb_func_start sub_020800B4
sub_020800B4: ; 0x020800B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	ldr r1, _020801A0 ; =0x000005A4
	str r0, [sp]
	ldr r0, [r0, r1]
	ldr r2, _020801A4 ; =0x00000B29
	ldr r1, [sp]
	ldr r0, [r0, #0]
	ldrb r1, [r1, r2]
	bl sub_0207A0FC
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	mov r1, #1
	strb r1, [r0]
	mov r4, #0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r1, _020801A0 ; =0x000005A4
	ldr r0, [sp]
	ldr r0, [r0, r1]
	ldr r0, [r0, #0x1c]
	bl sub_0206C0D0
	cmp r0, #0
	bne _02080190
	ldr r1, _020801A4 ; =0x00000B29
	ldr r0, [sp]
	ldrb r1, [r0, r1]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	add r1, r0, r2
	ldr r0, _020801A8 ; =0x00000714
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02080184
	add r6, r4, #0
_02080106:
	add r1, r6, #0
	ldr r0, [sp, #8]
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	beq _02080146
	add r0, r7, #0
	bl sub_02080BCC
	cmp r0, #0xff
	beq _0208013C
	ldr r1, [sp, #4]
	add r2, r4, #0
	strb r0, [r1, r5]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02081CAC
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0208013C:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _02080106
_02080146:
	ldr r0, [sp, #4]
	mov r1, #0
	strb r1, [r0, r5]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r1, _020801A4 ; =0x00000B29
	ldr r0, [sp]
	ldrb r1, [r0, r1]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	add r1, r0, r2
	mov r0, #0x71
	lsl r0, r0, #4
	ldrh r0, [r1, r0]
	bl sub_0207D2D0
	cmp r0, #1
	bne _02080176
	mov r1, #5
	ldr r0, [sp, #4]
	b _0208017A
_02080176:
	ldr r0, [sp, #4]
	mov r1, #2
_0208017A:
	strb r1, [r0, r5]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _02080190
_02080184:
	ldr r0, [sp, #4]
	add r1, r4, #0
	strb r1, [r0, r5]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_02080190:
	ldr r0, [sp, #4]
	mov r1, #9
	strb r1, [r0, r5]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020801A0: .word 0x000005A4
_020801A4: .word 0x00000B29
_020801A8: .word 0x00000714
	thumb_func_end sub_020800B4

	thumb_func_start sub_020801AC
sub_020801AC: ; 0x020801AC
	mov r0, #0xe
	strb r0, [r1]
	mov r0, #9
	strb r0, [r1, #1]
	mov r0, #2
	bx lr
	thumb_func_end sub_020801AC

	thumb_func_start sub_020801B8
sub_020801B8: ; 0x020801B8
	ldr r2, _020801E8 ; =0x00000B29
	ldrb r3, [r0, r2]
	mov r2, #0x2c
	mul r2, r3
	add r2, r0, r2
	ldr r0, _020801EC ; =0x00000714
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _020801DA
	mov r0, #8
	strb r0, [r1]
	mov r0, #1
	strb r0, [r1, #1]
	mov r0, #9
	strb r0, [r1, #2]
	mov r0, #3
	bx lr
_020801DA:
	mov r0, #1
	strb r0, [r1]
	mov r0, #9
	strb r0, [r1, #1]
	mov r0, #2
	bx lr
	nop
_020801E8: .word 0x00000B29
_020801EC: .word 0x00000714
	thumb_func_end sub_020801B8

	thumb_func_start sub_020801F0
sub_020801F0: ; 0x020801F0
	ldr r2, _02080224 ; =0x00000B29
	ldrb r3, [r0, r2]
	mov r2, #0x2c
	mul r2, r3
	add r2, r0, r2
	ldr r0, _02080228 ; =0x00000712
	ldrh r0, [r2, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02080216
	mov r0, #0xd
	strb r0, [r1]
	mov r0, #1
	strb r0, [r1, #1]
	mov r0, #9
	strb r0, [r1, #2]
	mov r0, #3
	bx lr
_02080216:
	mov r0, #1
	strb r0, [r1]
	mov r0, #9
	strb r0, [r1, #1]
	mov r0, #2
	bx lr
	nop
_02080224: .word 0x00000B29
_02080228: .word 0x00000712
	thumb_func_end sub_020801F0

	thumb_func_start sub_0208022C
sub_0208022C: ; 0x0208022C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _02080278 ; =0x00000B29
	ldrb r1, [r0, r1]
	bl sub_02080354
	cmp r0, #0
	beq _02080246
	cmp r0, #1
	beq _02080252
	cmp r0, #2
	beq _02080262
	b _02080272
_02080246:
	mov r0, #1
	strb r0, [r4]
	mov r0, #9
	strb r0, [r4, #1]
	mov r0, #2
	pop {r4, pc}
_02080252:
	mov r0, #0xb
	strb r0, [r4]
	mov r0, #1
	strb r0, [r4, #1]
	mov r0, #9
	strb r0, [r4, #2]
	mov r0, #3
	pop {r4, pc}
_02080262:
	mov r0, #0xc
	strb r0, [r4]
	mov r0, #1
	strb r0, [r4, #1]
	mov r0, #9
	strb r0, [r4, #2]
	mov r0, #3
	pop {r4, pc}
_02080272:
	mov r0, #0
	pop {r4, pc}
	nop
_02080278: .word 0x00000B29
	thumb_func_end sub_0208022C

	thumb_func_start sub_0208027C
sub_0208027C: ; 0x0208027C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _020802C8 ; =0x00000B29
	ldrb r1, [r0, r1]
	bl sub_02080404
	cmp r0, #0
	beq _02080296
	cmp r0, #1
	beq _020802A2
	cmp r0, #2
	beq _020802B2
	b _020802C2
_02080296:
	mov r0, #1
	strb r0, [r4]
	mov r0, #9
	strb r0, [r4, #1]
	mov r0, #2
	pop {r4, pc}
_020802A2:
	mov r0, #0xb
	strb r0, [r4]
	mov r0, #1
	strb r0, [r4, #1]
	mov r0, #9
	strb r0, [r4, #2]
	mov r0, #3
	pop {r4, pc}
_020802B2:
	mov r0, #0xc
	strb r0, [r4]
	mov r0, #1
	strb r0, [r4, #1]
	mov r0, #9
	strb r0, [r4, #2]
	mov r0, #3
	pop {r4, pc}
_020802C2:
	mov r0, #0
	pop {r4, pc}
	nop
_020802C8: .word 0x00000B29
	thumb_func_end sub_0208027C

	thumb_func_start sub_020802CC
sub_020802CC: ; 0x020802CC
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _02080318 ; =0x00000B29
	ldrb r1, [r0, r1]
	bl sub_02080488
	cmp r0, #0
	beq _020802E6
	cmp r0, #1
	beq _020802F2
	cmp r0, #2
	beq _02080302
	b _02080312
_020802E6:
	mov r0, #1
	strb r0, [r4]
	mov r0, #9
	strb r0, [r4, #1]
	mov r0, #2
	pop {r4, pc}
_020802F2:
	mov r0, #0xb
	strb r0, [r4]
	mov r0, #1
	strb r0, [r4, #1]
	mov r0, #9
	strb r0, [r4, #2]
	mov r0, #3
	pop {r4, pc}
_02080302:
	mov r0, #0xc
	strb r0, [r4]
	mov r0, #1
	strb r0, [r4, #1]
	mov r0, #9
	strb r0, [r4, #2]
	mov r0, #3
	pop {r4, pc}
_02080312:
	mov r0, #0
	pop {r4, pc}
	nop
_02080318: .word 0x00000B29
	thumb_func_end sub_020802CC

	thumb_func_start sub_0208031C
sub_0208031C: ; 0x0208031C
	ldr r2, _0208034C ; =0x00000B29
	ldrb r3, [r0, r2]
	mov r2, #0x2c
	mul r2, r3
	add r2, r0, r2
	ldr r0, _02080350 ; =0x00000714
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _0208033E
	mov r0, #1
	strb r0, [r1]
	mov r0, #0xf
	strb r0, [r1, #1]
	mov r0, #9
	strb r0, [r1, #2]
	mov r0, #3
	bx lr
_0208033E:
	mov r0, #1
	strb r0, [r1]
	mov r0, #9
	strb r0, [r1, #1]
	mov r0, #2
	bx lr
	nop
_0208034C: .word 0x00000B29
_02080350: .word 0x00000714
	thumb_func_end sub_0208031C

	thumb_func_start sub_02080354
sub_02080354: ; 0x02080354
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _020803F4 ; =0x000005A4
	add r4, r1, #0
	ldr r2, [r5, r0]
	ldr r0, [r2, #0x14]
	cmp r0, #0
	beq _02080382
	ldr r0, [r2, #0]
	bl sub_0207A0FC
	add r1, r0, #0
	ldr r0, _020803F4 ; =0x000005A4
	ldr r2, _020803F8 ; =0x00000B38
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r0, [r0, #0x14]
	bl sub_0207A2D0
	cmp r0, #0
	bne _02080382
	mov r0, #0
	pop {r4, r5, r6, pc}
_02080382:
	ldr r0, _020803F4 ; =0x000005A4
	ldr r0, [r5, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0x11
	bne _020803A4
	mov r0, #0x2c
	mul r0, r4
	add r1, r5, r0
	ldr r0, _020803FC ; =0x00000708
	ldrh r0, [r1, r0]
	bl sub_02078804
	cmp r0, #1
	bne _020803A4
	mov r0, #0
	pop {r4, r5, r6, pc}
_020803A4:
	ldr r1, _020803F4 ; =0x000005A4
	mov r0, #0
	ldr r2, [r5, r1]
	add r1, r2, #0
	add r1, #0x32
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r3, r1, #0x1c
	beq _020803D0
	add r1, r4, #1
_020803B8:
	add r6, r2, r0
	add r6, #0x2c
	ldrb r6, [r6]
	cmp r1, r6
	bne _020803C6
	mov r0, #2
	pop {r4, r5, r6, pc}
_020803C6:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r3
	blo _020803B8
_020803D0:
	mov r0, #0x2c
	mul r0, r4
	add r3, r5, r0
	ldr r0, _02080400 ; =0x00000714
	ldrb r1, [r3, r0]
	cmp r1, #1
	beq _020803EA
	sub r0, r0, #6
	add r2, #0x33
	ldrh r1, [r3, r0]
	ldrb r0, [r2]
	cmp r1, r0
	ble _020803EE
_020803EA:
	mov r0, #0
	pop {r4, r5, r6, pc}
_020803EE:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_020803F4: .word 0x000005A4
_020803F8: .word 0x00000B38
_020803FC: .word 0x00000708
_02080400: .word 0x00000714
	thumb_func_end sub_02080354

	thumb_func_start sub_02080404
sub_02080404: ; 0x02080404
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0208047C ; =0x000005A4
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _0208042C
	mov r0, #0x2c
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02080480 ; =0x00000708
	ldrh r0, [r1, r0]
	bl sub_02078804
	cmp r0, #1
	bne _0208042C
	mov r0, #0
	pop {r4, r5, r6, pc}
_0208042C:
	ldr r1, _0208047C ; =0x000005A4
	mov r0, #0
	ldr r2, [r5, r1]
	add r1, r2, #0
	add r1, #0x32
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r3, r1, #0x1c
	beq _02080458
	add r1, r4, #1
_02080440:
	add r6, r2, r0
	add r6, #0x2c
	ldrb r6, [r6]
	cmp r1, r6
	bne _0208044E
	mov r0, #2
	pop {r4, r5, r6, pc}
_0208044E:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r3
	blo _02080440
_02080458:
	mov r0, #0x2c
	mul r0, r4
	add r3, r5, r0
	ldr r0, _02080484 ; =0x00000714
	ldrb r1, [r3, r0]
	cmp r1, #1
	beq _02080472
	sub r0, r0, #6
	add r2, #0x33
	ldrh r1, [r3, r0]
	ldrb r0, [r2]
	cmp r1, r0
	bge _02080476
_02080472:
	mov r0, #0
	pop {r4, r5, r6, pc}
_02080476:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0208047C: .word 0x000005A4
_02080480: .word 0x00000708
_02080484: .word 0x00000714
	thumb_func_end sub_02080404

	thumb_func_start sub_02080488
sub_02080488: ; 0x02080488
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _020804F4 ; =0x000005A4
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0x17
	bne _020804B0
	mov r0, #0x2c
	mul r0, r4
	add r1, r5, r0
	ldr r0, _020804F8 ; =0x00000708
	ldrh r0, [r1, r0]
	bl sub_02078804
	cmp r0, #1
	bne _020804B0
	mov r0, #0
	pop {r4, r5, r6, pc}
_020804B0:
	ldr r1, _020804F4 ; =0x000005A4
	mov r0, #0
	ldr r2, [r5, r1]
	add r1, r2, #0
	add r1, #0x32
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r3, r1, #0x1c
	beq _020804DC
	add r1, r4, #1
_020804C4:
	add r6, r2, r0
	add r6, #0x2c
	ldrb r6, [r6]
	cmp r1, r6
	bne _020804D2
	mov r0, #2
	pop {r4, r5, r6, pc}
_020804D2:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r3
	blo _020804C4
_020804DC:
	mov r0, #0x2c
	mul r0, r4
	add r1, r5, r0
	ldr r0, _020804FC ; =0x00000714
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _020804EE
	mov r0, #0
	pop {r4, r5, r6, pc}
_020804EE:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_020804F4: .word 0x000005A4
_020804F8: .word 0x00000708
_020804FC: .word 0x00000714
	thumb_func_end sub_02080488

	thumb_func_start sub_02080500
sub_02080500: ; 0x02080500
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #6
	bne _0208053A
	mov r0, #0x5d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02021E24
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r6, #0
	bne _02080524
	mov r0, #2
	and r0, r1
	b _0208052A
_02080524:
	mov r0, #2
	and r0, r1
	add r0, r0, #1
_0208052A:
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x5d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02021D6C
	pop {r4, r5, r6, pc}
_0208053A:
	cmp r4, #7
	bne _02080568
	ldr r0, _020805C8 ; =0x000005D4
	ldr r0, [r5, r0]
	bl sub_02021E24
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r6, #0
	bne _02080554
	mov r0, #2
	and r0, r1
	b _0208055A
_02080554:
	mov r0, #2
	and r0, r1
	add r0, r0, #1
_0208055A:
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, _020805C8 ; =0x000005D4
	ldr r0, [r5, r0]
	bl sub_02021D6C
	pop {r4, r5, r6, pc}
_02080568:
	cmp r6, #0
	ldr r1, _020805CC ; =0x0000071A
	bne _02080596
	mov r0, #0x2c
	add r3, r5, r1
	mul r0, r4
	ldrsh r2, [r3, r0]
	add r1, r1, #2
	sub r2, r2, #2
	strh r2, [r3, r0]
	add r2, r5, r1
	ldrsh r1, [r2, r0]
	sub r1, r1, #2
	strh r1, [r2, r0]
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x5b
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021D6C
	b _020805BC
_02080596:
	mov r0, #0x2c
	add r3, r5, r1
	mul r0, r4
	ldrsh r2, [r3, r0]
	add r1, r1, #2
	add r2, r2, #2
	strh r2, [r3, r0]
	add r2, r5, r1
	ldrsh r1, [r2, r0]
	add r1, r1, #2
	strh r1, [r2, r0]
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x5b
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021D6C
_020805BC:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207F8F8
	pop {r4, r5, r6, pc}
	nop
_020805C8: .word 0x000005D4
_020805CC: .word 0x0000071A
	thumb_func_end sub_02080500

	thumb_func_start sub_020805D0
sub_020805D0: ; 0x020805D0
	cmp r1, #0
	beq _020805DC
	cmp r0, #0
	beq _020805E0
	cmp r1, #1
	bne _020805E0
_020805DC:
	mov r0, #1
	bx lr
_020805E0:
	mov r0, #0
	bx lr
	thumb_func_end sub_020805D0

	thumb_func_start sub_020805E4
sub_020805E4: ; 0x020805E4
	push {r4, lr}
	ldr r1, _02080664 ; =0x021BF67C
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #1
	tst r1, r2
	beq _02080620
	ldr r0, _02080668 ; =0x000005DC
	bl sub_02005748
	ldr r0, _0208066C ; =0x00000B29
	ldrb r1, [r4, r0]
	cmp r1, #6
	bhs _0208060C
	sub r0, r0, #2
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	cmp r1, r0
	bne _02080616
_0208060C:
	add r0, r4, #0
	bl sub_02083B88
	mov r0, #3
	pop {r4, pc}
_02080616:
	add r0, r4, #0
	bl sub_02083BD4
	mov r0, #0
	pop {r4, pc}
_02080620:
	mov r1, #2
	tst r1, r2
	beq _02080636
	ldr r0, _02080668 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_02083B88
	mov r0, #3
	pop {r4, pc}
_02080636:
	bl sub_0207FA00
	cmp r0, #2
	bne _02080660
	ldr r0, _0208066C ; =0x00000B29
	ldrb r1, [r4, r0]
	sub r0, r0, #2
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	cmp r1, r0
	bne _02080658
	add r0, r4, #0
	bl sub_02083B88
	mov r0, #3
	pop {r4, pc}
_02080658:
	add r0, r4, #0
	bl sub_02083BD4
	mov r0, #0
_02080660:
	pop {r4, pc}
	nop
_02080664: .word 0x021BF67C
_02080668: .word 0x000005DC
_0208066C: .word 0x00000B29
	thumb_func_end sub_020805E4

	thumb_func_start sub_02080670
sub_02080670: ; 0x02080670
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r1, _020808B8 ; =0x000005A4
	add r4, r0, #0
	ldr r3, [r4, r1]
	mov r0, #0
	add r1, r3, #0
	add r1, #0x32
	ldrb r1, [r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	beq _0208071A
_02080688:
	add r2, r3, r0
	add r2, #0x2c
	ldrb r2, [r2]
	cmp r2, #0
	bne _02080710
	add r3, #0x32
	ldrb r0, [r3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #6
	bhi _020806F4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020806AA: ; jump table
	.short _020806F4 - _020806AA - 2 ; case 0
	.short _020806F4 - _020806AA - 2 ; case 1
	.short _020806B8 - _020806AA - 2 ; case 2
	.short _020806C4 - _020806AA - 2 ; case 3
	.short _020806D0 - _020806AA - 2 ; case 4
	.short _020806DC - _020806AA - 2 ; case 5
	.short _020806E8 - _020806AA - 2 ; case 6
_020806B8:
	add r0, r4, #0
	mov r1, #0x6b
	mov r2, #1
	bl sub_02082708
	b _020806FE
_020806C4:
	add r0, r4, #0
	mov r1, #0x77
	mov r2, #1
	bl sub_02082708
	b _020806FE
_020806D0:
	add r0, r4, #0
	mov r1, #0x78
	mov r2, #1
	bl sub_02082708
	b _020806FE
_020806DC:
	add r0, r4, #0
	mov r1, #0x79
	mov r2, #1
	bl sub_02082708
	b _020806FE
_020806E8:
	add r0, r4, #0
	mov r1, #0x7a
	mov r2, #1
	bl sub_02082708
	b _020806FE
_020806F4:
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_02082708
_020806FE:
	ldr r0, _020808BC ; =0x00000B26
	mov r1, #0x17
	strb r1, [r4, r0]
	ldr r0, _020808C0 ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_02080710:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r1
	blo _02080688
_0208071A:
	ldr r0, [r3, #0x14]
	cmp r0, #0
	beq _020807DE
	ldr r2, _020808C4 ; =0x00000B38
	ldr r1, [r3, #0]
	ldr r2, [r4, r2]
	add r3, #0x2c
	bl sub_0207A3AC
	cmp r0, #3
	bhi _020807DE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0208073C: ; jump table
	.short _020807DE - _0208073C - 2 ; case 0
	.short _02080744 - _0208073C - 2 ; case 1
	.short _020807A6 - _0208073C - 2 ; case 2
	.short _020807C2 - _0208073C - 2 ; case 3
_02080744:
	ldr r0, _020808C8 ; =0x0000069C
	mov r1, #0xb8
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r0, _020808B8 ; =0x000005A4
	mov r1, #3
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x14]
	bl sub_02026074
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r3, #3
	bl sub_0200B60C
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _020808BC ; =0x00000B26
	mov r1, #0x17
	strb r1, [r4, r0]
	ldr r0, _020808C0 ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_020807A6:
	add r0, r4, #0
	mov r1, #0xb6
	mov r2, #1
	bl sub_02082708
	ldr r0, _020808BC ; =0x00000B26
	mov r1, #0x17
	strb r1, [r4, r0]
	ldr r0, _020808C0 ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_020807C2:
	add r0, r4, #0
	mov r1, #0xb7
	mov r2, #1
	bl sub_02082708
	ldr r0, _020808BC ; =0x00000B26
	mov r1, #0x17
	strb r1, [r4, r0]
	ldr r0, _020808C0 ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_020807DE:
	ldr r0, _020808B8 ; =0x000005A4
	ldr r0, [r4, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0x11
	bne _02080836
	add r0, r4, #0
	bl sub_020808CC
	cmp r0, #0
	beq _02080836
	cmp r0, #1
	beq _020807FE
	cmp r0, #2
	beq _0208081A
	b _02080836
_020807FE:
	add r0, r4, #0
	mov r1, #0xb6
	mov r2, #1
	bl sub_02082708
	ldr r0, _020808BC ; =0x00000B26
	mov r1, #0x17
	strb r1, [r4, r0]
	ldr r0, _020808C0 ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_0208081A:
	add r0, r4, #0
	mov r1, #0xb7
	mov r2, #1
	bl sub_02082708
	ldr r0, _020808BC ; =0x00000B26
	mov r1, #0x17
	strb r1, [r4, r0]
	ldr r0, _020808C0 ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_02080836:
	ldr r0, _020808B8 ; =0x000005A4
	ldr r0, [r4, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _0208086C
	add r0, r4, #0
	bl sub_02080968
	cmp r0, #0
	beq _0208086C
	cmp r0, #1
	bne _0208086C
	add r0, r4, #0
	mov r1, #0xc9
	mov r2, #1
	bl sub_02082708
	ldr r0, _020808BC ; =0x00000B26
	mov r1, #0x17
	strb r1, [r4, r0]
	ldr r0, _020808C0 ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_0208086C:
	ldr r0, _020808B8 ; =0x000005A4
	ldr r0, [r4, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0x17
	bne _020808A2
	add r0, r4, #0
	bl sub_020809DC
	cmp r0, #0
	beq _020808A2
	cmp r0, #1
	bne _020808A2
	add r0, r4, #0
	mov r1, #0xb6
	mov r2, #1
	bl sub_02082708
	ldr r0, _020808BC ; =0x00000B26
	mov r1, #0x17
	strb r1, [r4, r0]
	ldr r0, _020808C0 ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_020808A2:
	ldr r0, _020808B8 ; =0x000005A4
	mov r2, #0
	ldr r1, [r4, r0]
	add r0, #0x38
	add r1, #0x23
	strb r2, [r1]
	bl sub_02005748
	mov r0, #0x20
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020808B8: .word 0x000005A4
_020808BC: .word 0x00000B26
_020808C0: .word 0x000005F2
_020808C4: .word 0x00000B38
_020808C8: .word 0x0000069C
	thumb_func_end sub_02080670

	thumb_func_start sub_020808CC
sub_020808CC: ; 0x020808CC
	push {r4, r5, r6, r7}
	add r5, r0, #0
	mov r0, #0
	mov ip, r0
	ldr r0, _0208095C ; =0x000005A4
	ldr r4, [r5, r0]
_020808D8:
	mov r0, ip
	add r0, r4, r0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	beq _02080956
	mov r0, ip
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #6
	bhs _02080948
	mov r0, ip
	add r7, r4, r0
_020808F4:
	add r0, r4, r3
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	beq _02080948
	add r0, r4, r3
	add r0, #0x2c
	ldrb r1, [r0]
	mov r0, #0x2c
	ldr r6, _02080960 ; =0x000006DC
	mul r0, r1
	add r2, r5, r0
	add r0, r7, #0
	add r0, #0x2c
	ldrb r1, [r0]
	mov r0, #0x2c
	ldrh r6, [r2, r6]
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02080960 ; =0x000006DC
	ldrh r0, [r1, r0]
	cmp r0, r6
	bne _02080928
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_02080928:
	ldr r0, _02080964 ; =0x000006E4
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _0208093E
	ldr r1, _02080964 ; =0x000006E4
	ldrh r1, [r2, r1]
	cmp r0, r1
	bne _0208093E
	mov r0, #2
	pop {r4, r5, r6, r7}
	bx lr
_0208093E:
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #6
	blo _020808F4
_02080948:
	mov r0, ip
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov ip, r0
	cmp r0, #5
	blo _020808D8
_02080956:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0208095C: .word 0x000005A4
_02080960: .word 0x000006DC
_02080964: .word 0x000006E4
	thumb_func_end sub_020808CC

	thumb_func_start sub_02080968
sub_02080968: ; 0x02080968
	push {r4, r5, r6, r7}
	ldr r1, _020809D4 ; =0x000005A4
	mov r3, #0
	ldr r5, [r0, r1]
_02080970:
	add r1, r5, r3
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #0
	beq _020809CE
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #6
	bhs _020809C4
	add r2, r5, r3
_02080986:
	add r1, r5, r4
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #0
	beq _020809C4
	add r1, r2, #0
	add r1, #0x2c
	ldrb r6, [r1]
	mov r1, #0x2c
	mul r1, r6
	add r6, r0, r1
	ldr r1, _020809D8 ; =0x000006DC
	ldrh r1, [r6, r1]
	add r6, r5, r4
	add r6, #0x2c
	ldrb r7, [r6]
	mov r6, #0x2c
	mul r6, r7
	add r7, r0, r6
	ldr r6, _020809D8 ; =0x000006DC
	ldrh r6, [r7, r6]
	cmp r1, r6
	beq _020809BA
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_020809BA:
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #6
	blo _02080986
_020809C4:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #5
	blo _02080970
_020809CE:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_020809D4: .word 0x000005A4
_020809D8: .word 0x000006DC
	thumb_func_end sub_02080968

	thumb_func_start sub_020809DC
sub_020809DC: ; 0x020809DC
	push {r4, r5, r6, r7}
	ldr r1, _02080A48 ; =0x000005A4
	mov r3, #0
	ldr r5, [r0, r1]
_020809E4:
	add r1, r5, r3
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #0
	beq _02080A42
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #6
	bhs _02080A38
	add r2, r5, r3
_020809FA:
	add r1, r5, r4
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #0
	beq _02080A38
	add r1, r2, #0
	add r1, #0x2c
	ldrb r6, [r1]
	mov r1, #0x2c
	mul r1, r6
	add r6, r0, r1
	ldr r1, _02080A4C ; =0x000006DC
	ldrh r1, [r6, r1]
	add r6, r5, r4
	add r6, #0x2c
	ldrb r7, [r6]
	mov r6, #0x2c
	mul r6, r7
	add r7, r0, r6
	ldr r6, _02080A4C ; =0x000006DC
	ldrh r6, [r7, r6]
	cmp r1, r6
	bne _02080A2E
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_02080A2E:
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #6
	blo _020809FA
_02080A38:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #5
	blo _020809E4
_02080A42:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_02080A48: .word 0x000005A4
_02080A4C: .word 0x000006DC
	thumb_func_end sub_020809DC

	thumb_func_start sub_02080A50
sub_02080A50: ; 0x02080A50
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #0]
	add r5, r1, #0
	add r4, r2, #0
	mov r1, #4
	bl sub_02019FE4
	lsl r1, r5, #1
	mov r3, #0x19
	add r5, r4, #0
	mul r5, r3
	ldr r3, _02080AAC ; =0x00001005
	mov r2, #0
	add r3, r5, r3
	lsl r3, r3, #0x10
	lsr r4, r3, #0x10
	ldr r3, _02080AB0 ; =0x020F1BB8
	ldrb r3, [r3, r1]
	lsl r3, r3, #1
	add r0, r0, r3
	mov ip, r0
	ldr r0, _02080AB4 ; =0x020F1BB9
	ldrb r7, [r0, r1]
_02080A7E:
	lsl r0, r2, #2
	add r5, r2, r0
	add r0, r7, r2
	lsl r1, r0, #6
	mov r0, ip
	mov r3, #0
	add r6, r0, r1
_02080A8C:
	add r0, r3, r5
	add r1, r4, r0
	lsl r0, r3, #1
	strh r1, [r6, r0]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #5
	blo _02080A8C
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #5
	blo _02080A7E
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02080AAC: .word 0x00001005
_02080AB0: .word 0x020F1BB8
_02080AB4: .word 0x020F1BB9
	thumb_func_end sub_02080A50

	thumb_func_start sub_02080AB8
sub_02080AB8: ; 0x02080AB8
	lsl r3, r0, #1
	ldr r0, _02080AD0 ; =0x020F1BB8
	ldrb r0, [r0, r3]
	lsl r0, r0, #3
	add r0, #0x14
	strh r0, [r1]
	ldr r0, _02080AD4 ; =0x020F1BB9
	ldrb r0, [r0, r3]
	lsl r0, r0, #3
	add r0, #0x14
	strh r0, [r2]
	bx lr
	; .align 2, 0
_02080AD0: .word 0x020F1BB8
_02080AD4: .word 0x020F1BB9
	thumb_func_end sub_02080AB8

	thumb_func_start sub_02080AD8
sub_02080AD8: ; 0x02080AD8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_020818F8
	cmp r0, #0
	bne _02080AEE
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02080AEE:
	ldr r0, _02080B28 ; =0x020F1C94
	bl sub_02022664
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _02080B22
	ldr r1, _02080B2C ; =0x0000FFFE
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _02080B30 ; =0x021BF6BC
	ldr r0, [r5, #0]
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	mov r1, #4
	bl sub_0201C784
	cmp r0, #0
	bne _02080B22
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02080B22:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02080B28: .word 0x020F1C94
_02080B2C: .word 0x0000FFFE
_02080B30: .word 0x021BF6BC
	thumb_func_end sub_02080AD8

	thumb_func_start sub_02080B34
sub_02080B34: ; 0x02080B34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_02001BE0
	add r2, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r2, r0
	beq _02080B56
	add r0, r0, #1
	cmp r2, r0
	beq _02080BBE
	b _02080BB8
_02080B56:
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	bl sub_0208337C
	ldr r0, _02080BC4 ; =0x000005A4
	ldr r0, [r5, r0]
	add r0, #0x20
	ldrb r1, [r0]
	cmp r1, #2
	beq _02080B84
	cmp r1, #0x11
	beq _02080B84
	add r0, r1, #0
	add r0, #0xea
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _02080B90
_02080B84:
	add r0, r5, #0
	mov r1, #0x22
	mov r2, #1
	bl sub_020826E0
	b _02080BAA
_02080B90:
	cmp r1, #0x15
	bne _02080BA0
	add r0, r5, #0
	mov r1, #0xc5
	mov r2, #1
	bl sub_020826E0
	b _02080BAA
_02080BA0:
	add r0, r5, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
_02080BAA:
	ldr r0, _02080BC8 ; =0x000005C8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200D414
	mov r0, #1
	pop {r3, r4, r5, pc}
_02080BB8:
	add r0, r5, #0
	add r1, r4, #0
	blx r2
_02080BBE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02080BC4: .word 0x000005A4
_02080BC8: .word 0x000005C8
	thumb_func_end sub_02080B34

	thumb_func_start sub_02080BCC
sub_02080BCC: ; 0x02080BCC
	ldr r2, _02080BF0 ; =0x020F1CB0
	mov r3, #0
_02080BD0:
	lsl r1, r3, #1
	ldrh r1, [r2, r1]
	cmp r0, r1
	bne _02080BE0
	add r3, #0x10
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	bx lr
_02080BE0:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #0xf
	blo _02080BD0
	mov r0, #0xff
	bx lr
	nop
_02080BF0: .word 0x020F1CB0
	thumb_func_end sub_02080BCC

	thumb_func_start sub_02080BF4
sub_02080BF4: ; 0x02080BF4
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r1, _02080EA0 ; =0x00000B2E
	add r4, r0, #0
	ldrh r2, [r4, r1]
	cmp r2, #4
	bhi _02080CFE
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02080C0E: ; jump table
	.short _02080C18 - _02080C0E - 2 ; case 0
	.short _02080D56 - _02080C0E - 2 ; case 1
	.short _02080D90 - _02080C0E - 2 ; case 2
	.short _02080DB8 - _02080C0E - 2 ; case 3
	.short _02080E66 - _02080C0E - 2 ; case 4
_02080C18:
	ldr r2, _02080EA4 ; =0x021BF67C
	ldr r3, [r2, #0x48]
	mov r2, #1
	tst r2, r3
	beq _02080CAA
	sub r1, r1, #5
	ldrb r1, [r4, r1]
	cmp r1, #6
	blo _02080C3C
	ldr r0, _02080EA8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_02083B88
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02080C3C:
	bl sub_02080ECC
	cmp r0, #0
	beq _02080C4E
	cmp r0, #1
	beq _02080C8C
	cmp r0, #2
	beq _02080C9E
	b _02080CAA
_02080C4E:
	ldr r0, _02080EAC ; =0x000005EC
	bl sub_02005748
	ldr r0, _02080EB0 ; =0x000005C8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D414
	ldr r0, _02080EB4 ; =0x00000B29
	mov r1, #0x2c
	ldrb r2, [r4, r0]
	mul r1, r2
	add r3, r4, r1
	ldr r1, _02080EB8 ; =0x0000070C
	ldrh r2, [r3, r1]
	sub r1, r1, #2
	ldrh r1, [r3, r1]
	sub r2, r2, r1
	add r1, r0, #3
	ldrh r1, [r4, r1]
	cmp r2, r1
	bge _02080C7E
	add r0, r0, #3
	strh r2, [r4, r0]
_02080C7E:
	ldr r0, _02080EA0 ; =0x00000B2E
	mov r1, #2
	strh r1, [r4, r0]
	mov r1, #0
	add r0, r0, #2
	strh r1, [r4, r0]
	b _02080CAA
_02080C8C:
	ldr r0, _02080EA8 ; =0x000005DC
	bl sub_02005748
	ldr r0, _02080EA0 ; =0x00000B2E
	mov r1, #1
	strh r1, [r4, r0]
	add sp, #8
	mov r0, #0x18
	pop {r4, r5, r6, pc}
_02080C9E:
	ldr r0, _02080EBC ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x1e
	pop {r4, r5, r6, pc}
_02080CAA:
	ldr r0, _02080EA4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _02080CC6
	ldr r0, _02080EA8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_02083B88
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02080CC6:
	add r0, r4, #0
	bl sub_0207FA00
	cmp r0, #2
	bne _02080CFE
	ldr r0, _02080EB4 ; =0x00000B29
	ldrb r1, [r4, r0]
	sub r0, r0, #2
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	cmp r1, r0
	bne _02080CEC
	add r0, r4, #0
	bl sub_02083B88
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02080CEC:
	add r0, r4, #0
	bl sub_02080ECC
	cmp r0, #0
	beq _02080D00
	cmp r0, #1
	beq _02080D3E
	cmp r0, #2
	beq _02080D4A
_02080CFE:
	b _02080E98
_02080D00:
	ldr r0, _02080EAC ; =0x000005EC
	bl sub_02005748
	ldr r0, _02080EB0 ; =0x000005C8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D414
	ldr r0, _02080EB4 ; =0x00000B29
	mov r1, #0x2c
	ldrb r2, [r4, r0]
	mul r1, r2
	add r3, r4, r1
	ldr r1, _02080EB8 ; =0x0000070C
	ldrh r2, [r3, r1]
	sub r1, r1, #2
	ldrh r1, [r3, r1]
	sub r2, r2, r1
	add r1, r0, #3
	ldrh r1, [r4, r1]
	cmp r2, r1
	bge _02080D30
	add r0, r0, #3
	strh r2, [r4, r0]
_02080D30:
	ldr r0, _02080EA0 ; =0x00000B2E
	mov r1, #2
	strh r1, [r4, r0]
	mov r1, #0
	add r0, r0, #2
	strh r1, [r4, r0]
	b _02080E98
_02080D3E:
	ldr r0, _02080EA0 ; =0x00000B2E
	mov r1, #1
	strh r1, [r4, r0]
	add sp, #8
	mov r0, #0x18
	pop {r4, r5, r6, pc}
_02080D4A:
	ldr r0, _02080EBC ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x1e
	pop {r4, r5, r6, pc}
_02080D56:
	ldr r0, _02080EA4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _02080D62
	b _02080E98
_02080D62:
	ldr r0, _02080EA8 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	ldr r0, _02080EB0 ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	add r0, r4, #0
	mov r1, #0x24
	mov r2, #1
	bl sub_020826E0
	ldr r0, _02080EA0 ; =0x00000B2E
	mov r1, #0
	strh r1, [r4, r0]
	b _02080E98
_02080D90:
	sub r1, r1, #7
	ldrb r1, [r4, r1]
	mov r2, #0
	mvn r2, r2
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1a
	bl sub_02080F3C
	cmp r0, #1
	bne _02080E98
	ldr r0, _02080EAC ; =0x000005EC
	bl sub_02005748
	ldr r0, _02080EA0 ; =0x00000B2E
	mov r1, #3
	strh r1, [r4, r0]
	mov r1, #0
	add r0, r0, #2
	strh r1, [r4, r0]
	b _02080E98
_02080DB8:
	sub r1, r1, #5
	ldrb r1, [r4, r1]
	mov r2, #1
	bl sub_02080F3C
	cmp r0, #1
	bne _02080E98
	ldr r0, _02080EC0 ; =0x000005A4
	ldr r1, _02080EB4 ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r6, r0, #0
	ldr r0, _02080EC4 ; =0x0000069C
	mov r1, #0x40
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	mov r2, #0xb3
	mov r0, #0x6a
	str r1, [sp, #4]
	lsl r2, r2, #4
	lsl r0, r0, #4
	ldrh r2, [r4, r2]
	ldr r0, [r4, r0]
	mov r3, #3
	bl sub_0200B60C
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _02080EC8 ; =0x00000B32
	mov r1, #0
	ldrh r0, [r4, r0]
	mov r2, #0xc
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0202BE00
	add r1, r0, #0
	ldr r0, _02080EC0 ; =0x000005A4
	mov r2, #1
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x1c]
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl sub_0202B758
	ldr r0, _02080EA0 ; =0x00000B2E
	mov r1, #4
	strh r1, [r4, r0]
	mov r1, #0x1e
	sub r0, #8
	strb r1, [r4, r0]
	add sp, #8
	mov r0, #0x18
	pop {r4, r5, r6, pc}
_02080E66:
	ldr r0, _02080EA4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02080E98
	ldr r0, _02080EA8 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	ldr r0, _02080EB0 ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	add r0, r4, #0
	bl sub_02083B88
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02080E98:
	mov r0, #0x1e
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02080EA0: .word 0x00000B2E
_02080EA4: .word 0x021BF67C
_02080EA8: .word 0x000005DC
_02080EAC: .word 0x000005EC
_02080EB0: .word 0x000005C8
_02080EB4: .word 0x00000B29
_02080EB8: .word 0x0000070C
_02080EBC: .word 0x000005F2
_02080EC0: .word 0x000005A4
_02080EC4: .word 0x0000069C
_02080EC8: .word 0x00000B32
	thumb_func_end sub_02080BF4

	thumb_func_start sub_02080ECC
sub_02080ECC: ; 0x02080ECC
	push {r3, r4, r5, lr}
	ldr r2, _02080F2C ; =0x00000B29
	add r4, r0, #0
	ldrb r1, [r4, r2]
	mov r0, #0x2c
	ldr r3, _02080F30 ; =0x00000714
	mul r0, r1
	add r0, r4, r0
	ldrb r5, [r0, r3]
	cmp r5, #0
	beq _02080EE6
	mov r0, #2
	pop {r3, r4, r5, pc}
_02080EE6:
	sub r2, r2, #2
	ldrb r2, [r4, r2]
	lsl r2, r2, #0x1a
	lsr r2, r2, #0x1a
	cmp r1, r2
	beq _02080F04
	add r1, r3, #0
	sub r1, #0xa
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _02080F04
	sub r3, #8
	ldrh r0, [r0, r3]
	cmp r1, r0
	bne _02080F26
_02080F04:
	ldr r0, _02080F34 ; =0x000005C8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D414
	add r0, r4, #0
	mov r1, #0x83
	mov r2, #1
	bl sub_02082708
	ldr r1, _02080F38 ; =0x00000B2E
	mov r0, #1
	strh r0, [r4, r1]
	mov r2, #0x1e
	sub r1, #8
	strb r2, [r4, r1]
	pop {r3, r4, r5, pc}
_02080F26:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02080F2C: .word 0x00000B29
_02080F30: .word 0x00000714
_02080F34: .word 0x000005C8
_02080F38: .word 0x00000B2E
	thumb_func_end sub_02080ECC

	thumb_func_start sub_02080F3C
sub_02080F3C: ; 0x02080F3C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r3, #0x2c
	add r4, r6, #0
	mul r4, r3
	ldr r3, _02080FC0 ; =0x0000070A
	add r5, r0, #0
	add r7, r5, r3
	lsl r2, r2, #0x10
	ldrh r3, [r7, r4]
	lsr r2, r2, #0x10
	add r2, r3, r2
	mov r3, #0xb3
	lsl r3, r3, #4
	strh r2, [r7, r4]
	ldrh r2, [r5, r3]
	add r2, r2, #1
	strh r2, [r5, r3]
	bl sub_02082098
	lsl r1, r6, #2
	add r1, r6, r1
	add r1, r1, #3
	add r0, r5, #4
	lsl r1, r1, #4
	add r0, r0, r1
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02082058
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02082104
	ldr r1, _02080FC4 ; =0x00000B2C
	ldrh r0, [r5, r1]
	add r1, r1, #4
	ldrh r1, [r5, r1]
	cmp r0, r1
	beq _02080F9E
	ldr r1, _02080FC8 ; =0x0000070C
	add r2, r5, r4
	ldrh r0, [r7, r4]
	ldrh r1, [r2, r1]
	cmp r0, r1
	bne _02080FBA
_02080F9E:
	ldr r0, _02080FCC ; =0x000005A4
	add r1, r6, #0
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	ldrh r1, [r7, r4]
	add r2, sp, #0
	str r1, [sp]
	mov r1, #0xa3
	bl sub_02074B30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02080FBA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02080FC0: .word 0x0000070A
_02080FC4: .word 0x00000B2C
_02080FC8: .word 0x0000070C
_02080FCC: .word 0x000005A4
	thumb_func_end sub_02080F3C

	thumb_func_start sub_02080FD0
sub_02080FD0: ; 0x02080FD0
	push {r4, lr}
	ldr r1, _02081064 ; =0x021BF67C
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #1
	tst r1, r2
	beq _0208101C
	ldr r0, _02081068 ; =0x00000B29
	ldrb r1, [r4, r0]
	cmp r1, #7
	bne _02080FFA
	sub r0, r0, #2
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _02081018
	ldr r0, _0208106C ; =0x000005DC
	bl sub_02005748
	mov r0, #3
	pop {r4, pc}
_02080FFA:
	mov r0, #0x2c
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02081070 ; =0x00000714
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02081012
	ldr r0, _0208106C ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	pop {r4, pc}
_02081012:
	ldr r0, _02081074 ; =0x000005F2
	bl sub_02005748
_02081018:
	mov r0, #5
	pop {r4, pc}
_0208101C:
	mov r1, #2
	tst r1, r2
	beq _02081040
	ldr r0, _02081078 ; =0x00000B27
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _0208103C
	ldr r0, _0208106C ; =0x000005DC
	bl sub_02005748
	ldr r0, _02081068 ; =0x00000B29
	mov r1, #7
	strb r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
_0208103C:
	mov r0, #5
	pop {r4, pc}
_02081040:
	bl sub_0207FA00
	cmp r0, #2
	bne _02081062
	ldr r1, _02081068 ; =0x00000B29
	ldrb r2, [r4, r1]
	mov r1, #0x2c
	mul r1, r2
	add r2, r4, r1
	ldr r1, _02081070 ; =0x00000714
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02081062
	ldr r0, _02081074 ; =0x000005F2
	bl sub_02005748
	mov r0, #5
_02081062:
	pop {r4, pc}
	; .align 2, 0
_02081064: .word 0x021BF67C
_02081068: .word 0x00000B29
_0208106C: .word 0x000005DC
_02081070: .word 0x00000714
_02081074: .word 0x000005F2
_02081078: .word 0x00000B27
	thumb_func_end sub_02080FD0

	thumb_func_start sub_0208107C
sub_0208107C: ; 0x0208107C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020811E4 ; =0x000005A4
	mov r1, #0
	ldr r0, [r5, r0]
	mov r2, #0xc
	ldrh r0, [r0, #0x24]
	bl sub_0207CF48
	add r4, r0, #0
	ldr r0, _020811E4 ; =0x000005A4
	ldr r2, [r5, r0]
	ldr r0, _020811E8 ; =0x000001D2
	ldrh r1, [r2, #0x24]
	cmp r1, r0
	bne _020810C6
	ldr r1, _020811EC ; =0x00000B29
	ldr r0, [r2, #0]
	ldrb r1, [r5, r1]
	bl sub_0207A0FC
	bl sub_02077B14
	cmp r0, #1
	bne _020810C6
	ldr r0, _020811E4 ; =0x000005A4
	mov r1, #1
	ldr r0, [r5, r0]
	strh r1, [r0, #0x38]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020819B4
	mov r0, #0x1f
	pop {r3, r4, r5, pc}
_020810C6:
	add r0, r4, #0
	mov r1, #0x22
	bl sub_0207D014
	cmp r0, #0
	bne _020810DE
	add r0, r4, #0
	mov r1, #0x23
	bl sub_0207D014
	cmp r0, #0
	beq _020810F0
_020810DE:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #0
	bl sub_020866A0
	mov r0, #6
	pop {r3, r4, r5, pc}
_020810F0:
	add r0, r4, #0
	mov r1, #0x24
	bl sub_0207D014
	cmp r0, #0
	beq _0208111A
	add r0, r4, #0
	mov r1, #0x25
	bl sub_0207D014
	cmp r0, #0
	bne _0208111A
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #1
	bl sub_020866A0
	mov r0, #6
	pop {r3, r4, r5, pc}
_0208111A:
	ldr r0, _020811E4 ; =0x000005A4
	ldr r2, _020811EC ; =0x00000B29
	ldr r1, [r5, r0]
	mov r0, #0xc
	str r0, [sp]
	ldr r0, [r1, #0]
	ldrh r1, [r1, #0x24]
	ldrb r2, [r5, r2]
	mov r3, #0
	bl sub_0209693C
	cmp r0, #1
	bne _020811C2
	ldr r0, _020811E4 ; =0x000005A4
	mov r2, #1
	ldr r1, [r5, r0]
	mov r3, #0xc
	ldr r0, [r1, #4]
	ldrh r1, [r1, #0x24]
	bl sub_0207D60C
	add r0, r4, #0
	mov r1, #0x1a
	bl sub_0207D014
	cmp r0, #0
	ldr r0, _020811E4 ; =0x000005A4
	beq _0208118C
	ldr r1, _020811EC ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r1, r0, #0
	ldr r0, _020811E4 ; =0x000005A4
	mov r2, #3
	ldr r3, [r5, r0]
	add r0, r3, #0
	add r0, #0x3c
	str r0, [sp]
	ldrh r3, [r3, #0x24]
	mov r0, #0
	bl sub_02076B94
	ldr r1, _020811E4 ; =0x000005A4
	ldr r2, [r5, r1]
	strh r0, [r2, #0x38]
	ldr r0, [r5, r1]
	mov r2, #8
	add r0, #0x23
	strb r2, [r0]
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x20
	pop {r3, r4, r5, pc}
_0208118C:
	ldr r0, [r5, r0]
	ldrh r0, [r0, #0x24]
	bl sub_0207D36C
	cmp r0, #1
	bne _020811BA
	ldr r0, _020811E4 ; =0x000005A4
	ldr r1, [r5, r0]
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _020811BA
	ldr r0, [r1, #0]
	ldr r1, _020811EC ; =0x00000B29
	ldrb r1, [r5, r1]
	bl sub_0207A0FC
	add r1, r0, #0
	ldr r0, _020811E4 ; =0x000005A4
	ldr r2, [r5, r0]
	ldr r0, [r2, #0x10]
	ldrh r2, [r2, #0x24]
	bl sub_0206D90C
_020811BA:
	add r0, r5, #0
	bl sub_020852B8
	b _020811D8
_020811C2:
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #1
	bl sub_02082708
	ldr r0, _020811EC ; =0x00000B29
	mov r1, #7
	strb r1, [r5, r0]
	ldr r1, _020811F0 ; =sub_02085348
	sub r0, #0x11
	str r1, [r5, r0]
_020811D8:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #5
	pop {r3, r4, r5, pc}
	nop
_020811E4: .word 0x000005A4
_020811E8: .word 0x000001D2
_020811EC: .word 0x00000B29
_020811F0: .word sub_02085348
	thumb_func_end sub_0208107C

	thumb_func_start sub_020811F4
sub_020811F4: ; 0x020811F4
	push {r3, lr}
	ldr r1, _02081220 ; =0x00000B29
	ldrb r2, [r0, r1]
	mov r1, #0x2c
	mul r1, r2
	add r1, r0, r1
	mov r0, #0x71
	lsl r0, r0, #4
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _0208120E
	mov r0, #0
	pop {r3, pc}
_0208120E:
	bl sub_0207D2D0
	cmp r0, #1
	bne _0208121A
	mov r0, #2
	pop {r3, pc}
_0208121A:
	mov r0, #1
	pop {r3, pc}
	nop
_02081220: .word 0x00000B29
	thumb_func_end sub_020811F4

	thumb_func_start sub_02081224
sub_02081224: ; 0x02081224
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _020813F8 ; =0x000005A4
	ldr r1, _020813FC ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	mov r4, #0
	ldr r0, [r0, #0]
	mvn r4, r4
	bl sub_0207A0FC
	ldr r1, _020813F8 ; =0x000005A4
	add r7, r0, #0
	ldr r1, [r5, r1]
	ldr r6, [r1, #0x1c]
	ldrh r1, [r1, #0x24]
	cmp r1, #0x70
	bne _020812E2
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	ldr r1, _02081400 ; =0x000001E7
	cmp r0, r1
	beq _020812A0
	ldr r2, _02081404 ; =0x0000069C
	mov r1, #0xcb
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r2, #0x6a
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	sub r2, #0xfc
	ldr r2, [r5, r2]
	mov r1, #1
	ldrh r2, [r2, #0x24]
	bl sub_0200B744
	mov r2, #0x6a
	lsl r2, r2, #4
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r4, #0xb
	b _020812E2
_020812A0:
	cmp r6, #0
	beq _020812E2
	ldr r0, [r6, #0x1c]
	sub r1, #0x15
	ldr r0, [r0, #0]
	cmp r0, r1
	bne _020812E2
	ldr r2, _02081404 ; =0x0000069C
	mov r1, #0xcc
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r2, #0x6a
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	sub r2, #0xfc
	ldr r2, [r5, r2]
	mov r1, #0
	ldrh r2, [r2, #0x24]
	bl sub_0200B70C
	mov r2, #0x6a
	lsl r2, r2, #4
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r4, #0xb
_020812E2:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _020813D0
	add r0, r5, #0
	bl sub_020811F4
	cmp r0, #0
	beq _020812FE
	cmp r0, #1
	beq _0208136E
	cmp r0, #2
	beq _020813C0
	b _020813D0
_020812FE:
	ldr r0, _020813F8 ; =0x000005A4
	ldr r0, [r5, r0]
	ldrh r0, [r0, #0x24]
	bl sub_0207D2D0
	cmp r0, #1
	bne _0208131A
	ldr r0, _020813F8 ; =0x000005A4
	mov r1, #6
	ldr r0, [r5, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_0208131A:
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0
	bl sub_02081408
	ldr r2, _02081404 ; =0x0000069C
	add r4, r0, #0
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	mov r1, #0x76
	bl sub_0200B1B8
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r2, #0x6a
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	sub r2, #0xfc
	ldr r2, [r5, r2]
	mov r1, #1
	ldrh r2, [r2, #0x24]
	bl sub_0200B70C
	mov r2, #0x6a
	lsl r2, r2, #4
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	b _020813D0
_0208136E:
	ldr r2, _02081404 ; =0x0000069C
	mov r1, #0x4e
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	ldr r2, _020813FC ; =0x00000B29
	mov r3, #0x6a
	ldrb r4, [r5, r2]
	mov r2, #0x2c
	lsl r3, r3, #4
	mul r2, r4
	ldr r0, [r5, r3]
	add r2, r5, r2
	add r3, #0x70
	ldrh r2, [r2, r3]
	mov r1, #1
	bl sub_0200B744
	mov r2, #0x6a
	lsl r2, r2, #4
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r4, #9
	b _020813D0
_020813C0:
	ldr r2, _02081404 ; =0x0000069C
	mov r1, #0x4d
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r4, #0xb
_020813D0:
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	mov r2, #0xa
	mov r3, #0xf
	bl sub_0200E060
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0208274C
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020813F8: .word 0x000005A4
_020813FC: .word 0x00000B29
_02081400: .word 0x000001E7
_02081404: .word 0x0000069C
	thumb_func_end sub_02081224

	thumb_func_start sub_02081408
sub_02081408: ; 0x02081408
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0208149C ; =0x000005A4
	add r7, r1, #0
	ldr r1, [r5, r0]
	add r4, r2, #0
	ldrh r1, [r1, #0x24]
	mov r2, #1
	mov r3, #0xc
	str r1, [sp]
	ldr r1, [r5, r0]
	ldr r6, [r1, #0x1c]
	ldr r0, [r1, #4]
	ldrh r1, [r1, #0x24]
	bl sub_0207D60C
	add r0, r7, #0
	mov r1, #6
	add r2, sp, #0
	bl sub_02074B30
	add r0, r7, #0
	bl sub_02077928
	cmp r6, #0
	beq _0208144C
	ldr r0, [r6, #0x1c]
	ldr r1, [r0, #0]
	ldr r0, _020814A0 ; =0x0000023D
	cmp r1, r0
	blt _0208144C
	add r0, #0xa
	cmp r1, r0
	ble _02081456
_0208144C:
	add r0, r7, #0
	bl sub_02077A00
	str r0, [r4, #0]
	b _0208145C
_02081456:
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0]
_0208145C:
	ldr r1, _020814A4 ; =0x00000B29
	ldr r0, _0208149C ; =0x000005A4
	ldrb r3, [r5, r1]
	ldr r0, [r5, r0]
	mov r2, #0x2c
	add r6, r3, #0
	mul r6, r2
	mov r3, #0x71
	ldrh r0, [r0, #0x24]
	add r6, r5, r6
	lsl r3, r3, #4
	strh r0, [r6, r3]
	ldrb r1, [r5, r1]
	add r0, r5, #0
	mul r2, r1
	add r2, r5, r2
	ldrh r2, [r2, r3]
	bl sub_02083040
	ldr r0, [sp]
	cmp r0, #0x70
	bne _02081496
	mov r0, #0
	ldr r1, [r4, #0]
	mvn r0, r0
	cmp r1, r0
	beq _02081496
	mov r0, #0xc
	pop {r3, r4, r5, r6, r7, pc}
_02081496:
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208149C: .word 0x000005A4
_020814A0: .word 0x0000023D
_020814A4: .word 0x00000B29
	thumb_func_end sub_02081408

	thumb_func_start sub_020814A8
sub_020814A8: ; 0x020814A8
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02081504 ; =0x000005A4
	add r5, r1, #0
	ldr r0, [r4, r0]
	lsl r1, r2, #0x10
	ldr r0, [r0, #4]
	lsr r1, r1, #0x10
	mov r2, #1
	mov r3, #0xc
	bl sub_0207D570
	add r0, r5, #0
	mov r1, #6
	add r2, sp, #0x1c
	bl sub_02074B30
	add r0, r5, #0
	bl sub_02077928
	add r0, r5, #0
	bl sub_02077A00
	ldr r1, _02081508 ; =0x00000B29
	mov r2, #0x2c
	ldrb r3, [r4, r1]
	ldr r0, [sp, #0x1c]
	add r5, r3, #0
	mul r5, r2
	mov r3, #0x71
	add r5, r4, r5
	lsl r3, r3, #4
	strh r0, [r5, r3]
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mul r2, r1
	add r2, r4, r2
	ldrh r2, [r2, r3]
	bl sub_02083040
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_02081504: .word 0x000005A4
_02081508: .word 0x00000B29
	thumb_func_end sub_020814A8

	thumb_func_start sub_0208150C
sub_0208150C: ; 0x0208150C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02081534 ; =0x00000B28
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0208152E
	ldr r0, _02081538 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0208152E
	add r0, r4, #0
	bl sub_0208170C
	pop {r4, pc}
_0208152E:
	mov r0, #0xb
	pop {r4, pc}
	nop
_02081534: .word 0x00000B28
_02081538: .word 0x021BF67C
	thumb_func_end sub_0208150C

	thumb_func_start sub_0208153C
sub_0208153C: ; 0x0208153C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02081570 ; =0x00000B28
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0208156C
	ldr r0, _02081574 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0208156C
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	bl sub_020819B4
	mov r0, #0xd
	pop {r4, pc}
_0208156C:
	mov r0, #0xc
	pop {r4, pc}
	; .align 2, 0
_02081570: .word 0x00000B28
_02081574: .word 0x021BF67C
	thumb_func_end sub_0208153C

	thumb_func_start sub_02081578
sub_02081578: ; 0x02081578
	push {r4, lr}
	add r4, r0, #0
	bl ov118_021D0DBC
	cmp r0, #1
	bne _0208158E
	add r0, r4, #0
	bl sub_020819CC
	mov r0, #0xb
	pop {r4, pc}
_0208158E:
	mov r0, #0xd
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02081578

	thumb_func_start sub_02081594
sub_02081594: ; 0x02081594
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020815B4 ; =0x00000B28
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _020815AE
	add r0, r4, #0
	bl sub_020827EC
	mov r0, #0xa
	pop {r4, pc}
_020815AE:
	mov r0, #9
	pop {r4, pc}
	nop
_020815B4: .word 0x00000B28
	thumb_func_end sub_02081594

	thumb_func_start sub_020815B8
sub_020815B8: ; 0x020815B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #0xc
	bl sub_02002114
	cmp r0, #0
	beq _020815DA
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _020815D8
	b _020816EE
_020815D8:
	b _020816F8
_020815DA:
	ldr r0, _02081700 ; =0x000005A4
	ldr r1, _02081704 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	str r0, [sp]
	ldr r0, _02081700 ; =0x000005A4
	add r2, sp, #4
	ldr r0, [r5, r0]
	ldrh r6, [r0, #0x24]
	ldr r0, _02081704 ; =0x00000B29
	ldrb r1, [r5, r0]
	mov r0, #0x2c
	mul r0, r1
	add r1, r5, r0
	mov r0, #0x71
	lsl r0, r0, #4
	ldrh r4, [r1, r0]
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02081408
	add r7, r0, #0
	ldr r0, _02081700 ; =0x000005A4
	add r1, r4, #0
	ldr r0, [r5, r0]
	mov r2, #1
	ldr r0, [r0, #4]
	mov r3, #0xc
	bl sub_0207D570
	cmp r0, #0
	bne _0208163E
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_020814A8
	ldr r2, _02081708 ; =0x0000069C
	mov r1, #0x53
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r7, #0xb
	b _020816D6
_0208163E:
	ldr r0, _02081700 ; =0x000005A4
	ldr r0, [r5, r0]
	ldrh r0, [r0, #0x24]
	bl sub_0207D2D0
	cmp r0, #1
	bne _0208167A
	ldr r0, _02081700 ; =0x000005A4
	lsl r1, r4, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	ldr r0, [r0, #4]
	mov r2, #1
	mov r3, #0xc
	bl sub_0207D60C
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_020814A8
	ldr r0, _02081700 ; =0x000005A4
	mov r1, #6
	ldr r0, [r5, r0]
	add sp, #8
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_0208167A:
	ldr r2, _02081708 ; =0x0000069C
	mov r1, #0x54
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	add r2, r4, #0
	bl sub_0200B70C
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #2
	add r2, r6, #0
	bl sub_0200B70C
	mov r2, #0x6a
	lsl r2, r2, #4
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	cmp r6, #0x70
	beq _020816CC
	cmp r4, #0x70
	bne _020816CC
	mov r0, #0
	ldr r1, [sp, #4]
	mvn r0, r0
	cmp r1, r0
	beq _020816CC
	mov r7, #0xc
	b _020816D6
_020816CC:
	cmp r6, #0x70
	bne _020816D6
	cmp r4, #0x70
	bne _020816D6
	mov r7, #0xb
_020816D6:
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0208274C
	add sp, #8
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_020816EE:
	add r0, r5, #0
	bl sub_0208170C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020816F8:
	mov r0, #0xa
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02081700: .word 0x000005A4
_02081704: .word 0x00000B29
_02081708: .word 0x0000069C
	thumb_func_end sub_020815B8

	thumb_func_start sub_0208170C
sub_0208170C: ; 0x0208170C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02081758 ; =0x000005A4
	ldr r1, [r4, r0]
	add r0, r1, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0208174C
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	ldr r0, _0208175C ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	ldr r0, _02081758 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x20
	strb r1, [r0]
	mov r0, #1
	pop {r4, pc}
_0208174C:
	mov r0, #0xa
	add r1, #0x23
	strb r0, [r1]
	mov r0, #0x20
	pop {r4, pc}
	nop
_02081758: .word 0x000005A4
_0208175C: .word 0x000005C8
	thumb_func_end sub_0208170C

	thumb_func_start sub_02081760
sub_02081760: ; 0x02081760
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02081880 ; =0x000005A4
	ldr r1, _02081884 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r7, r0, #0
	ldr r0, _02081880 ; =0x000005A4
	add r2, sp, #4
	ldr r0, [r5, r0]
	ldrh r0, [r0, #0x24]
	str r0, [sp]
	ldr r0, _02081884 ; =0x00000B29
	ldrb r1, [r5, r0]
	mov r0, #0x2c
	mul r0, r1
	add r1, r5, r0
	mov r0, #0x71
	lsl r0, r0, #4
	ldrh r4, [r1, r0]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02081408
	add r6, r0, #0
	cmp r4, #0x70
	bne _020817AA
	cmp r6, #0xb
	bne _020817AA
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020817AA
	mov r6, #0xc
_020817AA:
	cmp r4, #0
	bne _020817F6
	ldr r2, _02081888 ; =0x0000069C
	mov r1, #0x76
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r2, #0x6a
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	sub r2, #0xfc
	ldr r2, [r5, r2]
	mov r1, #1
	ldrh r2, [r2, #0x24]
	bl sub_0200B70C
	mov r2, #0x6a
	lsl r2, r2, #4
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	b _02081844
_020817F6:
	ldr r0, _02081880 ; =0x000005A4
	lsl r1, r4, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	ldr r0, [r0, #4]
	mov r2, #1
	mov r3, #0xc
	bl sub_0207D570
	ldr r2, _02081888 ; =0x0000069C
	mov r1, #0x54
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	add r2, r4, #0
	bl sub_0200B70C
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [sp]
	mov r1, #2
	bl sub_0200B70C
	mov r2, #0x6a
	lsl r2, r2, #4
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
_02081844:
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	mov r2, #0xa
	mov r3, #0xf
	bl sub_0200E060
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0208274C
	ldr r0, _02081880 ; =0x000005A4
	ldr r1, [r5, r0]
	add r0, r1, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0208187A
	mov r0, #0xa
	add r1, #0x20
	strb r0, [r1]
_0208187A:
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02081880: .word 0x000005A4
_02081884: .word 0x00000B29
_02081888: .word 0x0000069C
	thumb_func_end sub_02081760

	thumb_func_start sub_0208188C
sub_0208188C: ; 0x0208188C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020818DC ; =0x00000B29
	ldrb r1, [r4, r0]
	mov r0, #0x2c
	mul r0, r1
	add r1, r4, r0
	ldr r0, _020818E0 ; =0x00000716
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _020818B0
	ldr r0, _020818E4 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	pop {r4, pc}
_020818B0:
	ldr r0, _020818E8 ; =0x000005C8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D414
	add r0, r4, #0
	mov r1, #0xc3
	mov r2, #1
	bl sub_02082708
	ldr r0, _020818EC ; =sub_02083A78
	ldr r1, _020818F0 ; =0x00000B1C
	ldr r2, _020818F4 ; =sub_02083AA4
	str r0, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r4, r1]
	mov r0, #0x18
	pop {r4, pc}
	nop
_020818DC: .word 0x00000B29
_020818E0: .word 0x00000716
_020818E4: .word 0x000005A4
_020818E8: .word 0x000005C8
_020818EC: .word sub_02083A78
_020818F0: .word 0x00000B1C
_020818F4: .word sub_02083AA4
	thumb_func_end sub_0208188C

	thumb_func_start sub_020818F8
sub_020818F8: ; 0x020818F8
	ldr r1, _0208192C ; =0x000005A4
	ldr r0, [r0, r1]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #5
	beq _02081924
	cmp r0, #6
	beq _02081924
	cmp r0, #7
	beq _02081924
	cmp r0, #8
	beq _02081924
	cmp r0, #9
	beq _02081924
	cmp r0, #0xb
	beq _02081924
	cmp r0, #0xe
	beq _02081924
	cmp r0, #0x10
	beq _02081924
	cmp r0, #0x14
	bne _02081928
_02081924:
	mov r0, #0
	bx lr
_02081928:
	mov r0, #1
	bx lr
	; .align 2, 0
_0208192C: .word 0x000005A4
	thumb_func_end sub_020818F8

	thumb_func_start sub_02081930
sub_02081930: ; 0x02081930
	mov r0, #0x14
	bx lr
	thumb_func_end sub_02081930

	thumb_func_start sub_02081934
sub_02081934: ; 0x02081934
	mov r0, #0x15
	bx lr
	thumb_func_end sub_02081934

	thumb_func_start sub_02081938
sub_02081938: ; 0x02081938
	mov r0, #0x13
	bx lr
	thumb_func_end sub_02081938

	thumb_func_start sub_0208193C
sub_0208193C: ; 0x0208193C
	mov r0, #0x12
	bx lr
	thumb_func_end sub_0208193C

	thumb_func_start sub_02081940
sub_02081940: ; 0x02081940
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	mov r0, #0x14
	mov r1, #0x16
	add r2, r4, #0
	add r7, r3, #0
	bl sub_02006AC0
	add r1, sp, #0xc
	str r0, [sp, #8]
	bl sub_020A7248
	ldr r0, [sp, #0xc]
	mov r4, #0
	str r0, [sp, #4]
	add r0, #0xc
	str r0, [sp, #4]
	str r0, [sp]
_0208196A:
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #0x20
	bl sub_020D50B8
	add r1, r4, #6
	lsl r2, r1, #6
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r1, r1, r2
	mov r2, #0x20
	bl sub_020D50B8
	add r1, r4, #0
	add r1, #0xc
	lsl r2, r1, #6
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r1, r1, r2
	mov r2, #0x20
	bl sub_020D50B8
	ldr r0, [sp]
	add r4, r4, #1
	add r0, #0x40
	str r0, [sp]
	add r5, #0x20
	add r6, #0x20
	add r7, #0x20
	cmp r4, #6
	blo _0208196A
	ldr r0, [sp, #8]
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02081940

	thumb_func_start sub_020819B4
sub_020819B4: ; 0x020819B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020819C8 ; =0x00000076
	mov r1, #2
	bl sub_02006590
	add r0, r4, #0
	bl ov118_021D0D80
	pop {r4, pc}
	; .align 2, 0
_020819C8: .word 0x00000076
	thumb_func_end sub_020819B4

	thumb_func_start sub_020819CC
sub_020819CC: ; 0x020819CC
	ldr r3, _020819D4 ; =sub_02006514
	ldr r0, _020819D8 ; =0x00000076
	bx r3
	nop
_020819D4: .word sub_02006514
_020819D8: .word 0x00000076
	thumb_func_end sub_020819CC

	thumb_func_start sub_020819DC
sub_020819DC: ; 0x020819DC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	bl sub_0201A8D4
	add r1, r5, #0
	add r2, r4, #0
	add r0, r6, #0
	add r1, #0x10
	add r2, #8
	bl sub_0201A8D4
	add r1, r5, #0
	add r2, r4, #0
	add r0, r6, #0
	add r1, #0x20
	add r2, #0x10
	bl sub_0201A8D4
	add r1, r5, #0
	add r2, r4, #0
	add r0, r6, #0
	add r1, #0x30
	add r2, #0x18
	bl sub_0201A8D4
	add r5, #0x40
	add r4, #0x20
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201A8D4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020819DC

	thumb_func_start sub_02081A24
sub_02081A24: ; 0x02081A24
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r4, _02081B60 ; =0x020F1F08
	ldr r0, [r5, #0]
	add r1, r5, #4
	add r2, r4, #0
	bl sub_020819DC
	add r1, r5, #0
	ldr r0, [r5, #0]
	ldr r2, _02081B64 ; =0x020F1F58
	add r1, #0xa4
	bl sub_020819DC
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	ldr r2, _02081B68 ; =0x020F1FA8
	add r1, r5, r1
	bl sub_020819DC
	ldr r0, _02081B6C ; =0x000005A4
	ldr r0, [r5, r0]
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #2
	ldr r0, [r5, #0]
	bne _02081A8C
	add r1, r5, #0
	add r2, r4, #0
	add r1, #0x54
	add r2, #0xf0
	bl sub_020819DC
	mov r2, #0x46
	add r1, r5, #0
	lsl r2, r2, #2
	ldr r0, [r5, #0]
	add r1, #0xf4
	add r2, r4, r2
	bl sub_020819DC
	mov r2, #0x65
	lsl r2, r2, #2
	add r1, r5, r2
	sub r2, #0x54
	ldr r0, [r5, #0]
	add r2, r4, r2
	bl sub_020819DC
	b _02081AB6
_02081A8C:
	add r1, r5, #0
	add r2, r4, #0
	add r1, #0x54
	add r2, #0x28
	bl sub_020819DC
	add r1, r5, #0
	add r2, r4, #0
	ldr r0, [r5, #0]
	add r1, #0xf4
	add r2, #0x78
	bl sub_020819DC
	mov r1, #0x65
	lsl r1, r1, #2
	add r4, #0xc8
	ldr r0, [r5, #0]
	add r1, r5, r1
	add r2, r4, #0
	bl sub_020819DC
_02081AB6:
	ldr r0, _02081B6C ; =0x000005A4
	ldr r0, [r5, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #2
	beq _02081AD0
	cmp r0, #0x11
	beq _02081AD0
	add r0, #0xea
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _02081AF8
_02081AD0:
	ldr r1, _02081B70 ; =0x020F1E98
	add r0, sp, #0
	ldrh r3, [r1, #0x38]
	add r2, sp, #0
	strh r3, [r0]
	ldrh r3, [r1, #0x3a]
	strh r3, [r0, #2]
	ldrh r3, [r1, #0x3c]
	ldrh r1, [r1, #0x3e]
	strh r3, [r0, #4]
	strh r1, [r0, #6]
	mov r1, #0x16
	strb r1, [r0, #2]
	mov r1, #0x7d
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	add r1, r5, r1
	bl sub_0201A8D4
	b _02081B06
_02081AF8:
	mov r1, #0x7d
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	ldr r2, _02081B74 ; =0x020F1ED0
	add r1, r5, r1
	bl sub_0201A8D4
_02081B06:
	mov r1, #0x79
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	ldr r2, _02081B78 ; =0x020F1ED8
	add r1, r5, r1
	bl sub_0201A8D4
	mov r1, #0x81
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	ldr r2, _02081B7C ; =0x020F1EE0
	add r1, r5, r1
	bl sub_0201A8D4
	mov r1, #0x85
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	ldr r2, _02081B80 ; =0x020F1EE8
	add r1, r5, r1
	bl sub_0201A8D4
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	ldr r2, _02081B84 ; =0x020F1EF0
	add r1, r5, r1
	bl sub_0201A8D4
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	ldr r2, _02081B88 ; =0x020F1EF8
	add r1, r5, r1
	bl sub_0201A8D4
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	ldr r2, _02081B8C ; =0x020F1F00
	add r1, r5, r1
	bl sub_0201A8D4
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02081B60: .word 0x020F1F08
_02081B64: .word 0x020F1F58
_02081B68: .word 0x020F1FA8
_02081B6C: .word 0x000005A4
_02081B70: .word 0x020F1E98
_02081B74: .word 0x020F1ED0
_02081B78: .word 0x020F1ED8
_02081B7C: .word 0x020F1EE0
_02081B80: .word 0x020F1EE8
_02081B84: .word 0x020F1EF0
_02081B88: .word 0x020F1EF8
_02081B8C: .word 0x020F1F00
	thumb_func_end sub_02081A24

	thumb_func_start sub_02081B90
sub_02081B90: ; 0x02081B90
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r5, #0
	add r4, r6, #4
_02081B98:
	lsl r0, r5, #4
	add r0, r4, r0
	bl sub_0201A8FC
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x25
	blo _02081B98
	mov r4, #0x95
	lsl r4, r4, #2
	add r0, r6, r4
	bl sub_0201A7CC
	cmp r0, #1
	bne _02081BBE
	add r0, r6, r4
	bl sub_0201A8FC
_02081BBE:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02081B90

	thumb_func_start sub_02081BC0
sub_02081BC0: ; 0x02081BC0
	push {r4, lr}
	ldr r2, _02081CA8 ; =0x0000069C
	add r4, r0, #0
	ldr r0, [r4, r2]
	add r2, #0x10
	ldr r2, [r4, r2]
	mov r1, #0x91
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x92
	ldr r0, [r4, r2]
	add r2, #0x14
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x93
	ldr r0, [r4, r2]
	add r2, #0x18
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0xa0
	ldr r0, [r4, r2]
	add r2, #0x1c
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0xa1
	ldr r0, [r4, r2]
	add r2, #0x20
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x94
	ldr r0, [r4, r2]
	add r2, #0x24
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x95
	ldr r0, [r4, r2]
	add r2, #0x28
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x96
	ldr r0, [r4, r2]
	add r2, #0x2c
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x97
	ldr r0, [r4, r2]
	add r2, #0x30
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x98
	ldr r0, [r4, r2]
	add r2, #0x34
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x99
	ldr r0, [r4, r2]
	add r2, #0x38
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x9a
	ldr r0, [r4, r2]
	add r2, #0x3c
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x9b
	ldr r0, [r4, r2]
	add r2, #0x40
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x9a
	ldr r0, [r4, r2]
	add r2, #0x44
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0xa6
	ldr r0, [r4, r2]
	add r2, #0x48
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0xc8
	ldr r0, [r4, r2]
	add r2, #0x4c
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	pop {r4, pc}
	nop
_02081CA8: .word 0x0000069C
	thumb_func_end sub_02081BC0

	thumb_func_start sub_02081CAC
sub_02081CAC: ; 0x02081CAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02081CF0 ; =0x0000069C
	add r4, r2, #0
	add r7, r1, #0
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0x9c
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r7, #0
	bl sub_0200B630
	mov r1, #0x6a
	add r4, #0x10
	lsl r1, r1, #4
	lsl r2, r4, #2
	ldr r0, [r5, r1]
	add r2, r5, r2
	add r1, #0xc
	ldr r1, [r2, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02081CF0: .word 0x0000069C
	thumb_func_end sub_02081CAC

	thumb_func_start sub_02081CF4
sub_02081CF4: ; 0x02081CF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r7, r1, #0
	lsl r0, r2, #1
	mov r1, #0x17
	sub r1, r1, r0
	lsl r1, r1, #0x18
	str r2, [sp, #0x14]
	lsr r1, r1, #0x18
	str r1, [sp]
	mov r1, #0xc
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	mov r1, #9
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	lsl r1, r1, #6
	str r1, [sp, #0x10]
	add r1, #0x14
	ldr r0, [r5, #0]
	add r1, r5, r1
	mov r3, #0x13
	bl sub_0201A7E8
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	bl sub_02013A04
	ldr r1, _02081DFC ; =0x000006FC
	mov r6, #0
	str r0, [r5, r1]
	ldr r0, [sp, #0x14]
	add r4, r6, #0
	cmp r0, #0
	ble _02081D88
_02081D40:
	ldrb r0, [r7, r4]
	cmp r0, #0x10
	blo _02081D64
	bl sub_02083370
	lsl r1, r6, #2
	add r2, r0, #0
	ldr r0, _02081DFC ; =0x000006FC
	add r3, r5, r1
	ldr r1, _02081E00 ; =0x000006EC
	ldr r0, [r5, r0]
	ldr r1, [r3, r1]
	bl sub_02013A6C
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	b _02081D7C
_02081D64:
	bl sub_02083370
	ldrb r1, [r7, r4]
	add r2, r0, #0
	ldr r0, _02081DFC ; =0x000006FC
	lsl r1, r1, #2
	add r3, r5, r1
	ldr r1, _02081E04 ; =0x000006AC
	ldr r0, [r5, r0]
	ldr r1, [r3, r1]
	bl sub_02013A6C
_02081D7C:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #0x14]
	cmp r4, r0
	blt _02081D40
_02081D88:
	ldr r0, _02081DFC ; =0x000006FC
	mov r1, #0
	ldr r0, [r5, r0]
	str r0, [sp, #0x18]
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x1c]
	add r0, sp, #0x18
	strb r1, [r0, #8]
	mov r1, #1
	strb r1, [r0, #9]
	ldr r1, [sp, #0x14]
	strb r1, [r0, #0xa]
	ldrb r2, [r0, #0xb]
	mov r1, #0xf
	bic r2, r1
	strb r2, [r0, #0xb]
	ldrb r2, [r0, #0xb]
	mov r1, #0x30
	bic r2, r1
	strb r2, [r0, #0xb]
	ldr r1, [sp, #0x14]
	ldrb r2, [r0, #0xb]
	cmp r1, #4
	blo _02081DC8
	mov r1, #0xc0
	bic r2, r1
	mov r1, #0x40
	orr r1, r2
	strb r1, [r0, #0xb]
	b _02081DCE
_02081DC8:
	mov r1, #0xc0
	bic r2, r1
	strb r2, [r0, #0xb]
_02081DCE:
	mov r0, #0x95
	lsl r0, r0, #2
	mov r1, #1
	add r0, r5, r0
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200DC48
	mov r0, #0xc
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x18
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	mov r1, #7
	lsl r1, r1, #8
	str r0, [r5, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02081DFC: .word 0x000006FC
_02081E00: .word 0x000006EC
_02081E04: .word 0x000006AC
	thumb_func_end sub_02081CF4

	thumb_func_start sub_02081E08
sub_02081E08: ; 0x02081E08
	push {r4, r5, r6, lr}
	ldr r1, _02081E98 ; =0x000005A4
	add r5, r0, #0
	ldr r0, [r5, r1]
	add r2, r0, #0
	add r2, #0x20
	ldrb r2, [r2]
	cmp r2, #0xf
	bne _02081E2A
	ldr r2, _02081E9C ; =0x000006A4
	add r1, #0xf8
	ldr r0, [r5, r1]
	ldr r2, [r5, r2]
	mov r1, #0x2a
	bl sub_0200B1B8
	pop {r4, r5, r6, pc}
_02081E2A:
	cmp r2, #0x15
	bne _02081E52
	ldr r1, _02081EA0 ; =0x00000B29
	ldrb r2, [r5, r1]
	mov r1, #0x2c
	mul r1, r2
	ldr r2, _02081EA4 ; =0x00000714
	add r1, r5, r1
	ldrb r1, [r1, r2]
	cmp r1, #1
	bne _02081E52
	add r0, r2, #0
	sub r0, #0x78
	sub r2, #0x70
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0xc6
	bl sub_0200B1B8
	pop {r4, r5, r6, pc}
_02081E52:
	ldr r1, _02081EA0 ; =0x00000B29
	ldr r0, [r0, #0]
	ldrb r1, [r5, r1]
	bl sub_0207A0FC
	add r6, r0, #0
	ldr r0, _02081EA8 ; =0x0000069C
	mov r1, #0x25
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
	nop
_02081E98: .word 0x000005A4
_02081E9C: .word 0x000006A4
_02081EA0: .word 0x00000B29
_02081EA4: .word 0x00000714
_02081EA8: .word 0x0000069C
	thumb_func_end sub_02081E08

	thumb_func_start sub_02081EAC
sub_02081EAC: ; 0x02081EAC
	push {r3, r4, lr}
	sub sp, #4
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	ldr r0, _02081ED4 ; =0x00000698
	add r4, r1, #0
	ldr r0, [r2, r0]
	add r3, r2, #4
	lsl r2, r4, #2
	add r2, r4, r2
	add r2, r2, #2
	lsl r2, r2, #4
	add r2, r3, r2
	mov r1, #0
	mov r3, #0x1c
	bl sub_0200C578
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02081ED4: .word 0x00000698
	thumb_func_end sub_02081EAC

	thumb_func_start sub_02081ED8
sub_02081ED8: ; 0x02081ED8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r2, #0
	add r5, r0, #0
	ldr r0, _02081F24 ; =0x0000069C
	ldr r1, _02081F28 ; =0x020F1EA0
	lsl r2, r4, #3
	ldrh r1, [r1, r2]
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r2, #0x6a
	mov r1, #0x2c
	lsl r2, r2, #4
	mul r1, r4
	ldr r0, [r5, r2]
	add r1, r5, r1
	add r2, #0x64
	ldr r1, [r1, r2]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02081F24: .word 0x0000069C
_02081F28: .word 0x020F1EA0
	thumb_func_end sub_02081ED8

	thumb_func_start sub_02081F2C
sub_02081F2C: ; 0x02081F2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r1, r0
	lsl r6, r0, #4
	add r7, r1, #0
	mov r0, #0x2c
	mul r7, r0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02081FE8 ; =0x000F0E00
	ldr r2, _02081FEC ; =0x00000704
	str r0, [sp, #8]
	add r4, r5, #4
	str r1, [sp, #0xc]
	add r3, r5, r7
	ldr r2, [r3, r2]
	add r0, r4, r6
	add r3, r1, #0
	bl sub_0201D78C
	ldr r2, _02081FF0 ; =0x00000714
	add r0, r5, r7
	ldrb r0, [r0, r2]
	cmp r0, #1
	bne _02081F70
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02081F70:
	sub r0, r2, #2
	add r0, r5, r0
	ldrh r0, [r0, r7]
	lsl r1, r0, #0x13
	lsr r1, r1, #0x1f
	bne _02081FDE
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1e
	bne _02081FB0
	add r0, r2, #0
	sub r0, #0x78
	sub r2, #0x6c
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x1b
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	ldr r2, _02081FF4 ; =0x000006A8
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r4, r6
	mov r3, #0x40
	bl sub_0201D78C
	b _02081FDE
_02081FB0:
	cmp r0, #1
	bne _02081FDE
	add r0, r2, #0
	sub r0, #0x78
	sub r2, #0x6c
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x1c
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02081FF8 ; =0x00050600
	ldr r2, _02081FF4 ; =0x000006A8
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r4, r6
	mov r3, #0x40
	bl sub_0201D78C
_02081FDE:
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02081FE8: .word 0x000F0E00
_02081FEC: .word 0x00000704
_02081FF0: .word 0x00000714
_02081FF4: .word 0x000006A8
_02081FF8: .word 0x00050600
	thumb_func_end sub_02081F2C

	thumb_func_start sub_02081FFC
sub_02081FFC: ; 0x02081FFC
	push {r4, lr}
	sub sp, #0x10
	lsl r2, r1, #2
	add r2, r1, r2
	add r2, r2, #1
	add r3, r0, #4
	lsl r2, r2, #4
	add r4, r3, r2
	mov r2, #0x2c
	mul r2, r1
	ldr r3, _02082054 ; =0x00000712
	add r2, r0, r2
	ldrh r1, [r2, r3]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x14
	cmp r1, #7
	beq _02082028
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, pc}
_02082028:
	mov r1, #0
	str r1, [sp]
	str r4, [sp, #4]
	mov r1, #5
	str r1, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	add r1, r3, #0
	sub r3, r3, #4
	sub r1, #0x7a
	ldrh r2, [r2, r3]
	ldr r0, [r0, r1]
	mov r1, #1
	mov r3, #3
	bl sub_0200C648
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, pc}
	nop
_02082054: .word 0x00000712
	thumb_func_end sub_02081FFC

	thumb_func_start sub_02082058
sub_02082058: ; 0x02082058
	push {r4, r5, lr}
	sub sp, #0xc
	add r2, r0, #0
	lsl r0, r1, #2
	add r0, r1, r0
	add r0, r0, #2
	add r3, r2, #4
	lsl r0, r0, #4
	add r4, r3, r0
	mov r3, #0x2c
	mul r3, r1
	add r1, r2, r3
	str r4, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	ldr r5, _02082094 ; =0x00000698
	str r0, [sp, #8]
	ldr r0, [r2, r5]
	add r5, #0x72
	ldrh r1, [r1, r5]
	mov r2, #3
	mov r3, #1
	bl sub_0200C5BC
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02082094: .word 0x00000698
	thumb_func_end sub_02082058

	thumb_func_start sub_02082098
sub_02082098: ; 0x02082098
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #4
	lsl r0, r1, #2
	add r0, r1, r0
	add r0, r0, #2
	lsl r4, r0, #4
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0x10
	mov r1, #0
	str r0, [sp, #4]
	add r0, r5, r4
	mov r2, #4
	add r3, r1, #0
	bl sub_0201AE78
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02082098

	thumb_func_start sub_020820C4
sub_020820C4: ; 0x020820C4
	push {r4, r5, lr}
	sub sp, #0xc
	add r2, r0, #0
	lsl r0, r1, #2
	add r0, r1, r0
	add r0, r0, #2
	add r3, r2, #4
	lsl r0, r0, #4
	add r4, r3, r0
	mov r3, #0x2c
	mul r3, r1
	add r1, r2, r3
	str r4, [sp]
	mov r0, #0x24
	str r0, [sp, #4]
	mov r0, #2
	ldr r5, _02082100 ; =0x00000698
	str r0, [sp, #8]
	ldr r0, [r2, r5]
	add r5, #0x74
	ldrh r1, [r1, r5]
	mov r2, #3
	mov r3, #0
	bl sub_0200C5BC
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02082100: .word 0x00000698
	thumb_func_end sub_020820C4

	thumb_func_start sub_02082104
sub_02082104: ; 0x02082104
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	lsl r2, r1, #2
	add r2, r1, r2
	add r5, r0, #0
	add r2, r2, #3
	add r0, r5, #4
	lsl r2, r2, #4
	add r4, r0, r2
	mov r0, #0x2c
	add r6, r1, #0
	mul r6, r0
	ldr r0, _020821E8 ; =0x0000070C
	mov r2, #0x30
	add r7, r5, r0
	sub r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #8]
	ldrh r0, [r0, r6]
	ldrh r1, [r7, r6]
	bl sub_0208C104
	cmp r0, #4
	bhi _0208219A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02082140: ; jump table
	.short _0208214A - _02082140 - 2 ; case 0
	.short _02082184 - _02082140 - 2 ; case 1
	.short _0208216C - _02082140 - 2 ; case 2
	.short _02082154 - _02082140 - 2 ; case 3
	.short _02082154 - _02082140 - 2 ; case 4
_0208214A:
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02082154:
	ldrb r3, [r4, #9]
	ldr r1, _020821EC ; =0x000004B6
	mov r0, #1
	lsl r3, r3, #4
	add r3, #9
	lsl r3, r3, #0x11
	add r1, r5, r1
	mov r2, #4
	lsr r3, r3, #0x10
	bl sub_0201972C
	b _0208219A
_0208216C:
	ldrb r3, [r4, #9]
	ldr r1, _020821F0 ; =0x000004D6
	mov r0, #1
	lsl r3, r3, #4
	add r3, #9
	lsl r3, r3, #0x11
	add r1, r5, r1
	mov r2, #4
	lsr r3, r3, #0x10
	bl sub_0201972C
	b _0208219A
_02082184:
	ldrb r3, [r4, #9]
	ldr r1, _020821F4 ; =0x000004F6
	mov r0, #1
	lsl r3, r3, #4
	add r3, #9
	lsl r3, r3, #0x11
	add r1, r5, r1
	mov r2, #4
	lsr r3, r3, #0x10
	bl sub_0201972C
_0208219A:
	ldr r0, [sp, #8]
	ldrh r1, [r7, r6]
	ldrh r0, [r0, r6]
	mov r2, #0x30
	bl sub_0208C0BC
	add r5, r0, #0
	str r5, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	mov r3, #2
	bl sub_0201AE78
	str r5, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	mov r3, #3
	bl sub_0201AE78
	str r5, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	mov r3, #5
	bl sub_0201AE78
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020821E8: .word 0x0000070C
_020821EC: .word 0x000004B6
_020821F0: .word 0x000004D6
_020821F4: .word 0x000004F6
	thumb_func_end sub_02082104

	thumb_func_start sub_020821F8
sub_020821F8: ; 0x020821F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	add r5, r0, #0
	lsl r0, r6, #2
	add r4, r6, r0
	add r0, r5, #4
	str r0, [sp]
	lsl r0, r4, #4
	ldr r1, [sp]
	str r0, [sp, #4]
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #1
	lsl r0, r0, #4
	add r7, r5, #4
	str r0, [sp, #8]
	add r0, r7, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r7, #0
	str r0, [sp, #0xc]
	add r0, r4, #2
	lsl r0, r0, #4
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r7, #0
	str r0, [sp, #0x14]
	add r0, r4, #3
	lsl r4, r0, #4
	ldr r0, [sp, #0x14]
	mov r1, #0
	add r0, r0, r4
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02081F2C
	mov r0, #0x2c
	mul r0, r6
	add r1, r5, r0
	ldr r0, _020822B8 ; =0x00000714
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0208228A
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, [sp, #8]
	add r0, r7, r0
	bl sub_0201A9A4
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, [sp, #0x14]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0208228A:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02081EAC
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02081FFC
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02082058
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020820C4
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02082104
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020822B8: .word 0x00000714
	thumb_func_end sub_020821F8

	thumb_func_start sub_020822BC
sub_020822BC: ; 0x020822BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r4, r1, r0
	add r1, r5, #4
	lsl r0, r4, #4
	add r0, r1, r0
	bl sub_0201ACCC
	add r0, r4, #1
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201ACCC
	add r0, r4, #2
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201ACCC
	add r0, r4, #3
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201ACCC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020822BC

	thumb_func_start sub_020822F4
sub_020822F4: ; 0x020822F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r4, r1, r0
	add r1, r5, #4
	lsl r0, r4, #4
	add r0, r1, r0
	bl sub_0201AD10
	add r0, r4, #1
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201AD10
	add r0, r4, #2
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201AD10
	add r0, r4, #3
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201AD10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020822F4

	thumb_func_start sub_0208232C
sub_0208232C: ; 0x0208232C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #2
	add r6, r4, r0
	add r1, r5, #4
	lsl r0, r6, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #1
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02081F2C
	mov r0, #0x2c
	mul r0, r4
	add r1, r5, r0
	ldr r0, _020823BC ; =0x00000714
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02082376
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_02082810
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02082376:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02081FFC
	ldr r0, _020823C0 ; =0x000005A4
	add r1, r4, #0
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r1, r0, #0
	mov r0, #0
	ldr r3, _020823C0 ; =0x000005A4
	str r0, [sp]
	ldr r3, [r5, r3]
	mov r2, #3
	ldrh r3, [r3, #0x24]
	bl sub_02076B94
	cmp r0, #0
	bne _020823AE
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_02082810
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_020823AE:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02082810
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_020823BC: .word 0x00000714
_020823C0: .word 0x000005A4
	thumb_func_end sub_0208232C

	thumb_func_start sub_020823C4
sub_020823C4: ; 0x020823C4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #2
	add r6, r4, r0
	add r1, r5, #4
	lsl r0, r6, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #1
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02081F2C
	mov r0, #0x2c
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02082454 ; =0x00000714
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0208240A
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_02082880
	pop {r4, r5, r6, pc}
_0208240A:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02081FFC
	ldr r0, _02082458 ; =0x000005A4
	add r1, r4, #0
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02086104
	cmp r0, #0xff
	bne _02082436
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_02082880
	pop {r4, r5, r6, pc}
_02082436:
	cmp r0, #0xfd
	bne _02082446
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl sub_02082880
	pop {r4, r5, r6, pc}
_02082446:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02082880
	pop {r4, r5, r6, pc}
	nop
_02082454: .word 0x00000714
_02082458: .word 0x000005A4
	thumb_func_end sub_020823C4

	thumb_func_start sub_0208245C
sub_0208245C: ; 0x0208245C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #2
	add r6, r4, r0
	add r1, r5, #4
	lsl r0, r6, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #1
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02081F2C
	mov r0, #0x2c
	add r6, r4, #0
	mul r6, r0
	ldr r0, _020824B8 ; =0x00000714
	add r1, r5, r6
	ldrb r0, [r1, r0]
	cmp r0, #1
	beq _020824A0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02081FFC
_020824A0:
	ldr r2, _020824BC ; =0x00000712
	add r3, r5, r6
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1f
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02082900
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020824B8: .word 0x00000714
_020824BC: .word 0x00000712
	thumb_func_end sub_0208245C

	thumb_func_start sub_020824C0
sub_020824C0: ; 0x020824C0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #2
	add r6, r4, r0
	add r1, r5, #4
	lsl r0, r6, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #1
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02081F2C
	mov r0, #0x2c
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02082504 ; =0x00000714
	ldrb r0, [r1, r0]
	cmp r0, #1
	beq _02082502
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02081FFC
_02082502:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02082504: .word 0x00000714
	thumb_func_end sub_020824C0

	thumb_func_start sub_02082508
sub_02082508: ; 0x02082508
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _020825A0 ; =0x000005A4
	add r4, r1, #0
	ldr r1, [r5, r0]
	mov r2, #0
	add r0, r1, #0
	add r0, #0x32
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r3, r0, #0x1c
	beq _02082540
	add r0, r4, #1
_02082522:
	add r6, r1, r2
	add r6, #0x2c
	ldrb r6, [r6]
	cmp r0, r6
	bne _02082536
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02082964
	pop {r4, r5, r6, pc}
_02082536:
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, r3
	blo _02082522
_02082540:
	add r1, #0x20
	ldrb r0, [r1]
	cmp r0, #0x16
	bne _02082560
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02080404
	cmp r0, #0
	bne _02082594
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	bl sub_02082964
	pop {r4, r5, r6, pc}
_02082560:
	cmp r0, #0x17
	bne _0208257C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02080488
	cmp r0, #0
	bne _02082594
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	bl sub_02082964
	pop {r4, r5, r6, pc}
_0208257C:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02080354
	cmp r0, #0
	bne _02082594
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	bl sub_02082964
	pop {r4, r5, r6, pc}
_02082594:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #7
	bl sub_02082964
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020825A0: .word 0x000005A4
	thumb_func_end sub_02082508

	thumb_func_start sub_020825A4
sub_020825A4: ; 0x020825A4
	push {r4, lr}
	add r4, r2, #0
	mov r2, #0
	bl sub_02002D7C
	sub r0, r4, r0
	lsr r0, r0, #1
	pop {r4, pc}
	thumb_func_end sub_020825A4

	thumb_func_start sub_020825B4
sub_020825B4: ; 0x020825B4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x79
	lsl r0, r0, #2
	add r4, r1, #0
	add r0, r5, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x7d
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #1
	tst r0, r4
	beq _0208261E
	ldr r2, _0208266C ; =0x0000069C
	mov r1, #0
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	ldr r2, _02082670 ; =0x000001EB
	ldr r1, _02082674 ; =0x000006A8
	ldrb r2, [r5, r2]
	ldr r1, [r5, r1]
	mov r0, #0
	lsl r2, r2, #3
	bl sub_020825A4
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02082678 ; =0x000F0E00
	add r2, #0xe5
	str r0, [sp, #8]
	add r0, r5, r2
	ldr r2, _02082674 ; =0x000006A8
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	bl sub_0201D78C
	mov r0, #0x79
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
_0208261E:
	mov r0, #2
	tst r0, r4
	beq _02082668
	ldr r2, _0208266C ; =0x0000069C
	mov r1, #1
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	ldr r2, _0208267C ; =0x000001FB
	ldr r1, _02082674 ; =0x000006A8
	ldrb r2, [r5, r2]
	ldr r1, [r5, r1]
	mov r0, #0
	lsl r2, r2, #3
	bl sub_020825A4
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02082678 ; =0x000F0E00
	add r2, #0xf5
	str r0, [sp, #8]
	add r0, r5, r2
	ldr r2, _02082674 ; =0x000006A8
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	bl sub_0201D78C
	mov r0, #0x7d
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
_02082668:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0208266C: .word 0x0000069C
_02082670: .word 0x000001EB
_02082674: .word 0x000006A8
_02082678: .word 0x000F0E00
_0208267C: .word 0x000001FB
	thumb_func_end sub_020825B4

	thumb_func_start sub_02082680
sub_02082680: ; 0x02082680
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r3, #1
	bne _0208269A
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xa
	mov r3, #0xf
	bl sub_0200E060
_0208269A:
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _020826B8
	ldr r2, _020826D8 ; =0x0000069C
	add r1, r6, #0
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
_020826B8:
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r2, _020826DC ; =0x000006A4
	str r3, [sp, #8]
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r1, #1
	bl sub_0201D738
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_020826D8: .word 0x0000069C
_020826DC: .word 0x000006A4
	thumb_func_end sub_02082680

	thumb_func_start sub_020826E0
sub_020826E0: ; 0x020826E0
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x81
	lsl r1, r1, #2
	add r3, r2, #0
	add r1, r0, r1
	add r2, r4, #0
	bl sub_02082680
	pop {r4, pc}
	thumb_func_end sub_020826E0

	thumb_func_start sub_020826F4
sub_020826F4: ; 0x020826F4
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x85
	lsl r1, r1, #2
	add r3, r2, #0
	add r1, r0, r1
	add r2, r4, #0
	bl sub_02082680
	pop {r4, pc}
	thumb_func_end sub_020826F4

	thumb_func_start sub_02082708
sub_02082708: ; 0x02082708
	push {r4, r5, r6, lr}
	mov r6, #0x89
	add r5, r0, #0
	add r4, r1, #0
	lsl r6, r6, #2
	cmp r2, #1
	bne _02082722
	add r0, r5, r6
	mov r1, #1
	mov r2, #0xa
	mov r3, #0xf
	bl sub_0200E060
_02082722:
	add r0, r5, r6
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _02082740
	ldr r2, _02082748 ; =0x0000069C
	add r1, r4, #0
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
_02082740:
	add r0, r5, #0
	bl sub_0208274C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02082748: .word 0x0000069C
	thumb_func_end sub_02082708

	thumb_func_start sub_0208274C
sub_0208274C: ; 0x0208274C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	ldr r0, _0208278C ; =0x000005A4
	ldr r0, [r4, r0]
	ldr r0, [r0, #0xc]
	bl sub_02027AC0
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _02082790 ; =sub_0208279C
	ldr r2, _02082794 ; =0x000006A4
	str r0, [sp, #8]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r2, [r4, r2]
	add r0, r4, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _02082798 ; =0x00000B28
	strb r0, [r4, r1]
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0208278C: .word 0x000005A4
_02082790: .word sub_0208279C
_02082794: .word 0x000006A4
_02082798: .word 0x00000B28
	thumb_func_end sub_0208274C

	thumb_func_start sub_0208279C
sub_0208279C: ; 0x0208279C
	push {r3, lr}
	cmp r1, #5
	bhi _020827DE
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020827AE: ; jump table
	.short _020827DE - _020827AE - 2 ; case 0
	.short _020827BA - _020827AE - 2 ; case 1
	.short _020827C0 - _020827AE - 2 ; case 2
	.short _020827C6 - _020827AE - 2 ; case 3
	.short _020827CE - _020827AE - 2 ; case 4
	.short _020827D6 - _020827AE - 2 ; case 5
_020827BA:
	bl sub_020057E0
	pop {r3, pc}
_020827C0:
	bl sub_020061E4
	pop {r3, pc}
_020827C6:
	ldr r0, _020827E4 ; =0x000005E6
	bl sub_02005748
	b _020827DE
_020827CE:
	ldr r0, _020827E8 ; =0x00000483
	bl sub_02006150
	b _020827DE
_020827D6:
	ldr r0, _020827E4 ; =0x000005E6
	bl sub_020057D4
	pop {r3, pc}
_020827DE:
	mov r0, #0
	pop {r3, pc}
	nop
_020827E4: .word 0x000005E6
_020827E8: .word 0x00000483
	thumb_func_end sub_0208279C

	thumb_func_start sub_020827EC
sub_020827EC: ; 0x020827EC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0xc
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r1, _0208280C ; =0x020F1E98
	mov r2, #1
	mov r3, #0xe
	bl sub_02002100
	mov r1, #7
	lsl r1, r1, #8
	str r0, [r4, r1]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0208280C: .word 0x020F1E98
	thumb_func_end sub_020827EC

	thumb_func_start sub_02082810
sub_02082810: ; 0x02082810
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r1, r0
	add r0, r0, #4
	add r4, r5, #4
	lsl r6, r0, #4
	add r0, r4, r6
	mov r1, #0
	add r7, r2, #0
	bl sub_0201ADA4
	cmp r7, #0
	beq _02082834
	cmp r7, #1
	beq _02082842
	b _0208284E
_02082834:
	ldr r0, _02082878 ; =0x0000069C
	mov r1, #0xb2
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	b _0208284E
_02082842:
	ldr r0, _02082878 ; =0x0000069C
	mov r1, #0xb3
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x10]
_0208284E:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0208287C ; =0x000F0E00
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	add r0, r4, r6
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02082878: .word 0x0000069C
_0208287C: .word 0x000F0E00
	thumb_func_end sub_02082810

	thumb_func_start sub_02082880
sub_02082880: ; 0x02082880
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r1, r0
	add r0, r0, #4
	add r4, r5, #4
	lsl r7, r0, #4
	add r0, r4, r7
	mov r1, #0
	add r6, r2, #0
	bl sub_0201ADA4
	cmp r6, #0
	beq _020828A8
	cmp r6, #1
	beq _020828B6
	cmp r6, #2
	beq _020828C4
	b _020828D0
_020828A8:
	ldr r0, _020828F8 ; =0x0000069C
	mov r1, #0xaf
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	b _020828D0
_020828B6:
	ldr r0, _020828F8 ; =0x0000069C
	mov r1, #0xb0
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	b _020828D0
_020828C4:
	ldr r0, _020828F8 ; =0x0000069C
	mov r1, #0xb1
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x10]
_020828D0:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020828FC ; =0x000F0E00
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	add r0, r4, r7
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r4, r7
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020828F8: .word 0x0000069C
_020828FC: .word 0x000F0E00
	thumb_func_end sub_02082880

	thumb_func_start sub_02082900
sub_02082900: ; 0x02082900
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r1, r0
	add r0, r0, #4
	add r4, r5, #4
	lsl r6, r0, #4
	add r0, r4, r6
	mov r1, #0
	add r7, r2, #0
	bl sub_0201ADA4
	cmp r7, #0
	ldr r0, _0208295C ; =0x0000069C
	bne _0208292A
	ldr r0, [r5, r0]
	mov r1, #0xb5
	bl sub_0200B1EC
	b _02082932
_0208292A:
	ldr r0, [r5, r0]
	mov r1, #0xb4
	bl sub_0200B1EC
_02082932:
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02082960 ; =0x000F0E00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, r6
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208295C: .word 0x0000069C
_02082960: .word 0x000F0E00
	thumb_func_end sub_02082900

	thumb_func_start sub_02082964
sub_02082964: ; 0x02082964
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r1, r0
	add r0, r0, #4
	add r4, r5, #4
	lsl r7, r0, #4
	add r0, r4, r7
	mov r1, #0
	add r6, r2, #0
	bl sub_0201ADA4
	cmp r6, #6
	ldr r0, _020829D4 ; =0x0000069C
	bhs _02082992
	add r6, #0xa9
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0200B1EC
	add r5, r0, #0
	b _020829AC
_02082992:
	cmp r6, #7
	bne _020829A2
	ldr r0, [r5, r0]
	mov r1, #0xa7
	bl sub_0200B1EC
	add r5, r0, #0
	b _020829AC
_020829A2:
	ldr r0, [r5, r0]
	mov r1, #0xa8
	bl sub_0200B1EC
	add r5, r0, #0
_020829AC:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020829D8 ; =0x000F0E00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, r7
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, r7
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020829D4: .word 0x0000069C
_020829D8: .word 0x000F0E00
	thumb_func_end sub_02082964

	thumb_func_start sub_020829DC
sub_020829DC: ; 0x020829DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, _02082B44 ; =0x000005A4
	ldr r1, _02082B48 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #0xa4
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	add r1, sp, #0x20
	strh r0, [r1]
	add r0, r4, #0
	mov r1, #0xa5
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x20
	strh r0, [r1, #2]
	add r0, r4, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x20
	strh r0, [r1, #4]
	add r0, r4, #0
	mov r1, #0xa8
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x20
	strh r0, [r1, #6]
	add r0, r4, #0
	mov r1, #0xa9
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x20
	strh r0, [r1, #8]
	add r0, r4, #0
	mov r1, #0xa7
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x20
	strh r0, [r1, #0xa]
	mov r3, #1
	mov r1, #9
	str r3, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	lsl r1, r1, #6
	str r1, [sp, #0x10]
	add r1, #0x14
	ldr r0, [r5, #0]
	add r1, r5, r1
	bl sub_0201A7E8
	mov r0, #0x95
	lsl r0, r0, #2
	mov r1, #1
	add r0, r5, r0
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200DC48
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r4, #0
	str r4, [sp, #0x14]
	add r7, r5, #0
	add r6, sp, #0x20
_02082A88:
	ldr r0, _02082B4C ; =0x0000069C
	ldr r1, [sp, #0x14]
	ldr r0, [r5, r0]
	add r1, #0xb9
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	mov r1, #0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r2, [sp, #0x18]
	add r0, r5, r0
	add r3, r1, #0
	bl sub_0201D738
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, _02082B4C ; =0x0000069C
	mov r1, #0xbf
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, _02082B50 ; =0x00000B2C
	mov r0, #0x6a
	lsl r0, r0, #4
	ldrh r3, [r6]
	ldrh r2, [r7, r2]
	ldr r0, [r5, r0]
	mov r1, #0
	sub r2, r3, r2
	mov r3, #2
	bl sub_0200B60C
	mov r0, #0x6a
	ldr r1, _02082B54 ; =0x000006A4
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x1c]
	bl sub_0200C388
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r1, _02082B54 ; =0x000006A4
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x68
	sub r3, r1, r0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, _02082B54 ; =0x000006A4
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #0
	bl sub_0201D738
	ldrh r1, [r6]
	ldr r0, _02082B50 ; =0x00000B2C
	add r4, #0x10
	strh r1, [r7, r0]
	ldr r0, [sp, #0x14]
	add r7, r7, #2
	add r0, r0, #1
	add r6, r6, #2
	str r0, [sp, #0x14]
	cmp r0, #6
	blo _02082A88
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02082B44: .word 0x000005A4
_02082B48: .word 0x00000B29
_02082B4C: .word 0x0000069C
_02082B50: .word 0x00000B2C
_02082B54: .word 0x000006A4
	thumb_func_end sub_020829DC

	thumb_func_start sub_02082B58
sub_02082B58: ; 0x02082B58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	mov r2, #0x50
	mov r3, #0
	bl sub_0201AE78
	ldr r0, _02082C04 ; =0x0000069C
	mov r1, #0xc0
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	add r6, r5, #0
	add r4, r0, #0
_02082B8A:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, _02082C08 ; =0x00000B2C
	mov r0, #0x6a
	lsl r0, r0, #4
	ldrh r2, [r6, r2]
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	mov r0, #0x6a
	ldr r1, _02082C0C ; =0x000006A4
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0xc]
	bl sub_0200C388
	ldr r1, _02082C0C ; =0x000006A4
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	add r7, r0, #0
	mov r3, #0x68
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, _02082C0C ; =0x000006A4
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #0
	sub r3, r3, r7
	bl sub_0201D738
	ldr r0, [sp, #0x10]
	add r6, r6, #2
	add r0, r0, #1
	add r4, #0x10
	str r0, [sp, #0x10]
	cmp r0, #6
	blo _02082B8A
	ldr r0, [sp, #0xc]
	bl sub_020237BC
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02082C04: .word 0x0000069C
_02082C08: .word 0x00000B2C
_02082C0C: .word 0x000006A4
	thumb_func_end sub_02082B58

	thumb_func_start sub_02082C10
sub_02082C10: ; 0x02082C10
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r4, pc}
	thumb_func_end sub_02082C10

	thumb_func_start sub_02082C2C
sub_02082C2C: ; 0x02082C2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r4, r0, #0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x20
	mov r1, #0xc
	bl sub_0201DBEC
	mov r0, #0xc
	bl sub_0200C6E4
	ldr r1, _02082CD8 ; =0x000005A8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl sub_0200C704
	ldr r7, _02082CDC ; =0x000005AC
	add r2, sp, #0x30
	ldr r3, _02082CE0 ; =0x020F20A0
	str r0, [r4, r7]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r5, _02082CE4 ; =0x020F2070
	stmia r2!, {r0, r1}
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r6, #0
	str r0, [r3, #0]
	sub r0, r7, #4
	ldr r0, [r4, r0]
	mov r3, #0x20
	bl sub_0200C73C
	sub r1, r7, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x23
	bl sub_0200C7C0
	sub r0, r7, #4
	ldr r0, [r4, r0]
	bl sub_0200C738
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	ldr r5, _02082CE8 ; =0x020F2084
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	sub r1, r7, #4
	str r0, [r3, #0]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200C8F0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02082CD8: .word 0x000005A8
_02082CDC: .word 0x000005AC
_02082CE0: .word 0x020F20A0
_02082CE4: .word 0x020F2070
_02082CE8: .word 0x020F2084
	thumb_func_end sub_02082C2C

	thumb_func_start sub_02082CEC
sub_02082CEC: ; 0x02082CEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	ldr r0, _02082D94 ; =0x000005A4
	str r3, [sp, #8]
	ldr r0, [r5, r0]
	add r4, r2, #0
	ldr r0, [r0, #0]
	add r7, r1, #0
	bl sub_0207A0FC
	lsl r1, r4, #0x10
	asr r6, r1, #0x10
	mov r1, #0x2c
	mul r1, r7
	str r1, [sp, #0xc]
	add r2, r5, r1
	ldr r1, _02082D98 ; =0x0000071A
	str r0, [sp, #0x10]
	strh r6, [r2, r1]
	ldr r3, [sp, #8]
	add r1, r1, #2
	lsl r3, r3, #0x10
	asr r4, r3, #0x10
	strh r4, [r2, r1]
	add r7, r7, #4
	bl sub_02079D80
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r1, _02082D9C ; =0x000005A8
	str r7, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x50]
	bl sub_0200D9B4
	ldr r0, [sp, #0x10]
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	str r7, [sp, #0x14]
	add r0, sp, #0x14
	strh r6, [r0, #4]
	strh r4, [r0, #6]
	mov r1, #0
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x20]
	ldr r1, _02082DA0 ; =0x00000708
	add r3, r5, r0
	ldrh r0, [r3, r1]
	add r1, #0xd
	ldrb r1, [r3, r1]
	bl sub_02079EDC
	add r0, r0, #3
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp, #0x28]
	mov r0, #0
	ldr r1, _02082D9C ; =0x000005A8
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, sp, #0x14
	bl sub_0200CA08
	ldr r1, [sp, #0xc]
	add r2, r5, r1
	ldr r1, _02082DA4 ; =0x00000728
	str r0, [r2, r1]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_02082D94: .word 0x000005A4
_02082D98: .word 0x0000071A
_02082D9C: .word 0x000005A8
_02082DA0: .word 0x00000708
_02082DA4: .word 0x00000728
	thumb_func_end sub_02082CEC

	thumb_func_start sub_02082DA8
sub_02082DA8: ; 0x02082DA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, _02082E50 ; =0x000005A4
	add r6, r1, #0
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	str r0, [sp, #0xc]
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #4]
	mov r0, #0x13
	mov r1, #0xc
	bl sub_02006C24
	add r7, r0, #0
	ldr r0, _02082E54 ; =0x00000728
	add r5, r4, r0
	mov r0, #0x2c
	add r4, r6, #0
	mul r4, r0
	ldr r0, [r5, r4]
	bl sub_02021F98
	mov r1, #1
	bl sub_020A81B0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	bl sub_02079D80
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r7, #0
	mov r2, #0
	mov r3, #0xc
	bl sub_0200723C
	add r1, sp, #0x14
	add r6, r0, #0
	bl sub_020A7118
	cmp r0, #0
	beq _02082E2C
	ldr r1, [sp, #0x14]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	bl sub_020C2C54
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x10]
	ldr r0, [r2, #0x14]
	ldr r2, [r2, #0x10]
	bl sub_020C02BC
_02082E2C:
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	mov r2, #0
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, [r5, r4]
	add r1, r1, #3
	bl sub_0200D414
	add r0, r7, #0
	bl sub_02006CA8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02082E50: .word 0x000005A4
_02082E54: .word 0x00000728
	thumb_func_end sub_02082DA8

	thumb_func_start sub_02082E58
sub_02082E58: ; 0x02082E58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r1, _02082F78 ; =0x000005A8
	add r5, r0, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, _02082F7C ; =0x020F20C0
	bl sub_0200CA08
	ldr r1, _02082F80 ; =0x000005C8
	ldr r2, _02082F84 ; =0x020F20E8
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x20
	sub r1, #0x1c
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_0200CA08
	ldr r1, _02082F88 ; =0x000005CC
	ldr r2, _02082F8C ; =0x020F2110
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x24
	sub r1, #0x20
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_0200CA08
	mov r1, #0x5d
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x28
	sub r1, #0x24
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _02082F90 ; =0x020F2138
	bl sub_0200CA08
	ldr r1, _02082F94 ; =0x000005D4
	ldr r2, _02082F98 ; =0x020F2430
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x2c
	sub r1, #0x28
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_0200CA08
	mov r1, #0x62
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, _02082F7C ; =0x020F20C0
	mov r4, #0
	str r4, [sp, #4]
	add r6, r5, #0
	str r0, [sp]
	add r7, r5, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
_02082ED6:
	ldr r0, _02082F78 ; =0x000005A8
	ldr r1, _02082F9C ; =0x000005AC
	add r3, r4, #0
	ldr r2, [sp, #8]
	add r3, #0xa0
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r2, r3
	bl sub_0200CA08
	ldr r1, _02082FA0 ; =0x000005D8
	str r0, [r6, r1]
	ldr r1, [sp]
	mov r0, #0xa4
	ldrsh r1, [r1, r0]
	ldr r0, _02082FA4 ; =0x0000071E
	strh r1, [r7, r0]
	ldr r1, [sp]
	mov r0, #0xa6
	ldrsh r1, [r1, r0]
	mov r0, #0x72
	lsl r0, r0, #4
	strh r1, [r7, r0]
	ldr r0, _02082FA0 ; =0x000005D8
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_02021CAC
	mov r2, #0x19
	ldr r0, _02082F78 ; =0x000005A8
	ldr r1, _02082F9C ; =0x000005AC
	lsl r2, r2, #4
	add r3, r4, r2
	ldr r2, [sp, #0xc]
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r2, r3
	bl sub_0200CA08
	mov r1, #0x5f
	lsl r1, r1, #4
	mov r2, #0xa
	str r0, [r6, r1]
	add r0, r1, #0
	lsl r2, r2, #6
	sub r0, #0x48
	sub r1, #0x44
	add r3, r4, r2
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r2, r3
	bl sub_0200CA08
	ldr r1, _02082FA8 ; =0x00000608
	add r4, #0x28
	str r0, [r6, r1]
	ldr r0, [sp]
	add r6, r6, #4
	add r0, #0x28
	str r0, [sp]
	ldr r0, [sp, #4]
	add r7, #0x2c
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #6
	blo _02082ED6
	add r0, r1, #0
	sub r0, #0x3c
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x62
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02082F78: .word 0x000005A8
_02082F7C: .word 0x020F20C0
_02082F80: .word 0x000005C8
_02082F84: .word 0x020F20E8
_02082F88: .word 0x000005CC
_02082F8C: .word 0x020F2110
_02082F90: .word 0x020F2138
_02082F94: .word 0x000005D4
_02082F98: .word 0x020F2430
_02082F9C: .word 0x000005AC
_02082FA0: .word 0x000005D8
_02082FA4: .word 0x0000071E
_02082FA8: .word 0x00000608
	thumb_func_end sub_02082E58

	thumb_func_start sub_02082FAC
sub_02082FAC: ; 0x02082FAC
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	add r0, sp, #0
	strh r2, [r0, #4]
	strh r3, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	mov r0, #1
	str r1, [sp, #0x10]
	str r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	ldr r1, _02082FF0 ; =0x000005A8
	str r0, [sp, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, sp, #0
	bl sub_0200CA08
	lsl r1, r4, #2
	add r2, r5, r1
	mov r1, #0x5b
	lsl r1, r1, #4
	str r0, [r2, r1]
	add sp, #0x28
	pop {r3, r4, r5, pc}
	nop
_02082FF0: .word 0x000005A8
	thumb_func_end sub_02082FAC

	thumb_func_start sub_02082FF4
sub_02082FF4: ; 0x02082FF4
	push {r4, lr}
	ldr r1, _02083010 ; =0x000005A8
	add r4, r0, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200C8B0
	ldr r0, _02083010 ; =0x000005A8
	ldr r0, [r4, r0]
	bl sub_0200C8D4
	pop {r4, pc}
	nop
_02083010: .word 0x000005A8
	thumb_func_end sub_02082FF4

	thumb_func_start sub_02083014
sub_02083014: ; 0x02083014
	push {r3, r4, r5, lr}
	mov r3, #0x5b
	lsl r3, r3, #4
	add r1, #0xa
	add r5, r0, r3
	lsl r4, r1, #2
	cmp r2, #7
	ldr r0, [r5, r4]
	bne _0208302E
	mov r1, #0
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
_0208302E:
	add r1, r2, #0
	bl sub_02021D6C
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02083014

	thumb_func_start sub_02083040
sub_02083040: ; 0x02083040
	push {r3, r4, r5, lr}
	mov r3, #0x5b
	lsl r3, r3, #4
	add r1, #0x10
	add r5, r0, r3
	lsl r4, r1, #2
	cmp r2, #0
	bne _0208305A
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
_0208305A:
	add r0, r2, #0
	bl sub_0207D2D0
	cmp r0, #1
	ldr r0, [r5, r4]
	bne _0208306E
	mov r1, #1
	bl sub_02021D6C
	b _02083074
_0208306E:
	mov r1, #0
	bl sub_02021D6C
_02083074:
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02083040

	thumb_func_start sub_02083080
sub_02083080: ; 0x02083080
	push {r3, r4, r5, lr}
	mov r2, #0x5b
	lsl r2, r2, #4
	add r1, #0x10
	lsl r4, r1, #2
	add r5, r0, r2
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02083080

	thumb_func_start sub_020830A0
sub_020830A0: ; 0x020830A0
	push {r4, r5, r6, lr}
	ldr r6, _020830D0 ; =0x00000722
	add r5, r1, #0
	mov r4, #0x2c
	mul r5, r4
	add r1, #0x10
	lsl r1, r1, #2
	add r4, r0, r6
	add r2, #8
	strh r2, [r4, r5]
	add r2, r6, #2
	add r2, r0, r2
	add r3, #8
	add r1, r0, r1
	mov r0, #0x5b
	strh r3, [r2, r5]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldrsh r1, [r4, r5]
	ldrsh r2, [r2, r5]
	bl sub_0200D494
	pop {r4, r5, r6, pc}
	nop
_020830D0: .word 0x00000722
	thumb_func_end sub_020830A0

	thumb_func_start sub_020830D4
sub_020830D4: ; 0x020830D4
	add r2, r0, #0
	add r3, r1, #0
	mov r0, #0x2c
	mul r3, r0
	add r1, #0x16
	lsl r0, r1, #2
	add r1, r2, r0
	mov r0, #0x5b
	add r3, r2, r3
	lsl r0, r0, #4
	ldr r2, _020830FC ; =0x00000722
	ldr r0, [r1, r0]
	ldrsh r1, [r3, r2]
	add r2, r2, #2
	ldrsh r2, [r3, r2]
	add r1, #8
	lsl r1, r1, #0x10
	ldr r3, _02083100 ; =sub_0200D494
	asr r1, r1, #0x10
	bx r3
	; .align 2, 0
_020830FC: .word 0x00000722
_02083100: .word sub_0200D494
	thumb_func_end sub_020830D4

	thumb_func_start sub_02083104
sub_02083104: ; 0x02083104
	push {r4, lr}
	mov r2, #0x5b
	mov r4, #0x2c
	lsl r2, r2, #4
	add r3, r0, r2
	add r2, r1, #0
	mul r4, r1
	add r1, r0, r4
	ldr r0, _02083134 ; =0x00000716
	add r2, #0x16
	ldrh r0, [r1, r0]
	lsl r2, r2, #2
	cmp r0, #0
	ldr r0, [r3, r2]
	bne _0208312A
	mov r1, #0
	bl sub_02021CAC
	pop {r4, pc}
_0208312A:
	mov r1, #1
	bl sub_02021CAC
	pop {r4, pc}
	nop
_02083134: .word 0x00000716
	thumb_func_end sub_02083104

	thumb_func_start sub_02083138
sub_02083138: ; 0x02083138
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02021E24
	cmp r4, r0
	beq _02083156
	add r0, r5, #0
	mov r1, #0
	bl sub_02021E50
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021D6C
_02083156:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02083138

	thumb_func_start sub_02083158
sub_02083158: ; 0x02083158
	push {r3, lr}
	add r2, r0, #0
	ldrh r0, [r2, #6]
	cmp r0, #0
	bne _02083166
	mov r0, #0
	pop {r3, pc}
_02083166:
	ldrh r1, [r2, #0xe]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x14
	cmp r1, #7
	beq _0208317C
	cmp r1, #0
	beq _0208317C
	cmp r1, #6
	beq _0208317C
	mov r0, #5
	pop {r3, pc}
_0208317C:
	ldrh r1, [r2, #8]
	mov r2, #0x30
	bl sub_0208C104
	cmp r0, #4
	bhi _020831AE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02083194: ; jump table
	.short _020831AE - _02083194 - 2 ; case 0
	.short _020831AA - _02083194 - 2 ; case 1
	.short _020831A6 - _02083194 - 2 ; case 2
	.short _020831A2 - _02083194 - 2 ; case 3
	.short _0208319E - _02083194 - 2 ; case 4
_0208319E:
	mov r0, #1
	pop {r3, pc}
_020831A2:
	mov r0, #2
	pop {r3, pc}
_020831A6:
	mov r0, #3
	pop {r3, pc}
_020831AA:
	mov r0, #4
	pop {r3, pc}
_020831AE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02083158

	thumb_func_start sub_020831B4
sub_020831B4: ; 0x020831B4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0208326C ; =0x00000704
	mov r5, #0
	add r0, r6, r0
	str r0, [sp]
_020831C0:
	mov r0, #0x2c
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp]
	add r4, r0, r1
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	beq _02083260
	ldr r0, _02083270 ; =0x00000B14
	ldrb r0, [r6, r0]
	cmp r0, #1
	bne _020831F2
	mov r0, #0xb1
	lsl r0, r0, #4
	ldrb r0, [r6, r0]
	cmp r0, r5
	beq _020831EE
	ldr r0, _02083274 ; =0x00000B11
	ldrb r0, [r6, r0]
	cmp r0, r5
	bne _020831F2
_020831EE:
	mov r7, #0
	b _020831FA
_020831F2:
	add r0, r4, #0
	bl sub_02083158
	add r7, r0, #0
_020831FA:
	lsl r1, r7, #0x18
	ldr r0, [r4, #0x24]
	lsr r1, r1, #0x18
	bl sub_02083138
	mov r1, #1
	ldr r0, [r4, #0x24]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, _02083278 ; =0x00000B29
	ldrb r0, [r6, r0]
	cmp r0, r5
	bne _02083252
	cmp r7, #0
	beq _02083252
	cmp r7, #5
	beq _02083252
	ldr r0, [r4, #0x24]
	bl sub_02021E74
	cmp r0, #0
	ldr r0, [r4, #0x24]
	bne _0208323E
	mov r2, #0x18
	ldrsh r2, [r4, r2]
	mov r1, #0x16
	ldrsh r1, [r4, r1]
	sub r2, r2, #3
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	b _02083260
_0208323E:
	mov r2, #0x18
	ldrsh r2, [r4, r2]
	mov r1, #0x16
	ldrsh r1, [r4, r1]
	add r2, r2, #1
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	b _02083260
_02083252:
	mov r1, #0x16
	mov r2, #0x18
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x24]
	bl sub_0200D494
_02083260:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #6
	blo _020831C0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208326C: .word 0x00000704
_02083270: .word 0x00000B14
_02083274: .word 0x00000B11
_02083278: .word 0x00000B29
	thumb_func_end sub_020831B4

	thumb_func_start sub_0208327C
sub_0208327C: ; 0x0208327C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _020832D8 ; =0x0000080C
	add r4, r1, #0
	ldr r1, [r5, r0]
	lsl r0, r4, #3
	add r0, r1, r0
	add r1, sp, #0
	add r6, r2, #0
	add r1, #1
	add r2, sp, #0
	bl sub_0201E010
	ldr r0, _020832DC ; =0x000005A4
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r0, #0x21
	ldrb r0, [r0]
	bl sub_020805D0
	add r1, r0, #0
	ldr r0, _020832E0 ; =0x000005C8
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldr r0, _020832E0 ; =0x000005C8
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _020832E0 ; =0x000005C8
	add r2, sp, #0
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	ldr r0, [r5, r0]
	bl sub_0200D494
	ldr r0, _020832E0 ; =0x000005C8
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl sub_0200D414
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_020832D8: .word 0x0000080C
_020832DC: .word 0x000005A4
_020832E0: .word 0x000005C8
	thumb_func_end sub_0208327C

	thumb_func_start sub_020832E4
sub_020832E4: ; 0x020832E4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	lsl r0, r1, #0xc
	str r0, [sp]
	mov r0, #1
	lsl r1, r2, #0xc
	lsl r0, r0, #0x14
	str r1, [sp, #4]
	add r0, r1, r0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x62
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl sub_02021C50
	mov r0, #0x62
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x62
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021E50
	mov r0, #0x62
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021D6C
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_020832E4

	thumb_func_start sub_02083334
sub_02083334: ; 0x02083334
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x62
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02021D34
	cmp r0, #1
	bne _0208336E
	mov r0, #0x62
	lsl r0, r0, #4
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	mov r0, #0x62
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02021E74
	cmp r0, #2
	bne _0208336E
	mov r0, #0x62
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
_0208336E:
	pop {r4, pc}
	thumb_func_end sub_02083334

	thumb_func_start sub_02083370
sub_02083370: ; 0x02083370
	lsl r1, r0, #2
	ldr r0, _02083378 ; =0x020F2458
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_02083378: .word 0x020F2458
	thumb_func_end sub_02083370

	thumb_func_start sub_0208337C
sub_0208337C: ; 0x0208337C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200DC9C
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _020833B8 ; =0x000006FC
	ldr r0, [r4, r0]
	bl sub_02013A3C
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r4, pc}
	nop
_020833B8: .word 0x000006FC
	thumb_func_end sub_0208337C

	thumb_func_start sub_020833BC
sub_020833BC: ; 0x020833BC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0208337C
	add r0, r5, #0
	mov r1, #0x26
	mov r2, #0
	bl sub_020826F4
	mov r0, #3
	mov r1, #0xc
	bl sub_02013A04
	ldr r1, _02083478 ; =0x000006FC
	str r0, [r5, r1]
	mov r0, #3
	bl sub_02083370
	ldr r1, _02083478 ; =0x000006FC
	add r2, r0, #0
	ldr r0, [r5, r1]
	sub r1, #0x44
	ldr r1, [r5, r1]
	bl sub_02013A6C
	mov r0, #4
	bl sub_02083370
	ldr r1, _02083478 ; =0x000006FC
	add r2, r0, #0
	ldr r0, [r5, r1]
	sub r1, #0x40
	ldr r1, [r5, r1]
	bl sub_02013A6C
	mov r0, #9
	bl sub_02083370
	ldr r1, _02083478 ; =0x000006FC
	add r2, r0, #0
	ldr r0, [r5, r1]
	sub r1, #0x2c
	ldr r1, [r5, r1]
	bl sub_02013A6C
	ldr r0, _02083478 ; =0x000006FC
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, sp, #8
	str r0, [sp, #8]
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0xc]
	strb r1, [r2, #8]
	mov r1, #1
	strb r1, [r2, #9]
	mov r3, #3
	strb r3, [r2, #0xa]
	ldrb r6, [r2, #0xb]
	mov r3, #0xf
	bic r6, r3
	strb r6, [r2, #0xb]
	ldrb r6, [r2, #0xb]
	mov r3, #0x30
	bic r6, r3
	strb r6, [r2, #0xb]
	ldrb r6, [r2, #0xb]
	mov r3, #0xc0
	bic r6, r3
	strb r6, [r2, #0xb]
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200DC48
	mov r0, #0xc
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #8
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	mov r1, #7
	lsl r1, r1, #8
	str r0, [r5, r1]
	mov r0, #0xf
	str r0, [r4, #0]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02083478: .word 0x000006FC
	thumb_func_end sub_020833BC

	thumb_func_start sub_0208347C
sub_0208347C: ; 0x0208347C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #7
	lsl r0, r0, #8
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _020834A8 ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _020834AC ; =0x000005A4
	mov r1, #3
	ldr r0, [r5, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	nop
_020834A8: .word 0x000006FC
_020834AC: .word 0x000005A4
	thumb_func_end sub_0208347C

	thumb_func_start sub_020834B0
sub_020834B0: ; 0x020834B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x8d
	lsl r0, r0, #2
	str r1, [sp]
	add r0, r5, r0
	mov r1, #1
	mov r6, #0x11
	bl sub_0200DC9C
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _02083644 ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r1, _02083648 ; =0x00000B29
	ldr r0, _0208364C ; =0x000005A4
	ldrb r1, [r5, r1]
	mov r2, #0x2c
	ldr r0, [r5, r0]
	mul r2, r1
	add r3, r5, r2
	mov r2, #0x71
	lsl r2, r2, #4
	ldrh r2, [r3, r2]
	ldr r4, [r0, #0x1c]
	cmp r2, #0
	bne _02083532
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	ldr r2, _02083650 ; =0x0000069C
	add r4, r0, #0
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	mov r1, #0x51
	bl sub_0200B1B8
	add r0, r4, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r2, #0x6a
	lsl r2, r2, #4
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	b _02083618
_02083532:
	ldr r0, [r0, #4]
	add r1, r2, #0
	mov r2, #1
	mov r3, #0xc
	bl sub_0207D570
	cmp r0, #1
	bne _0208360A
	ldr r0, _0208364C ; =0x000005A4
	ldr r1, _02083648 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #0
	str r1, [sp, #4]
	add r7, r0, #0
	mov r1, #6
	add r2, sp, #4
	bl sub_02074B30
	add r0, r7, #0
	bl sub_02077928
	cmp r4, #0
	beq _02083578
	ldr r0, [r4, #0x1c]
	ldr r1, [r0, #0]
	ldr r0, _02083654 ; =0x0000023D
	cmp r1, r0
	blt _02083578
	add r0, #0xa
	cmp r1, r0
	ble _02083598
_02083578:
	add r0, r7, #0
	bl sub_02077A00
	ldr r1, _02083648 ; =0x00000B29
	ldrb r2, [r5, r1]
	mov r1, #0x2c
	mul r1, r2
	add r2, r5, r1
	mov r1, #0x71
	lsl r1, r1, #4
	ldrh r1, [r2, r1]
	cmp r1, #0x70
	bne _02083598
	cmp r0, #0
	bne _02083598
	mov r6, #0x12
_02083598:
	ldr r2, _02083650 ; =0x0000069C
	mov r1, #0x52
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	ldr r2, _02083648 ; =0x00000B29
	mov r3, #0x6a
	ldrb r4, [r5, r2]
	mov r2, #0x2c
	lsl r3, r3, #4
	mul r2, r4
	ldr r0, [r5, r3]
	add r2, r5, r2
	add r3, #0x70
	ldrh r2, [r2, r3]
	mov r1, #1
	bl sub_0200B70C
	mov r2, #0x6a
	lsl r2, r2, #4
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	ldr r1, _02083648 ; =0x00000B29
	mov r2, #0x2c
	ldrb r3, [r5, r1]
	mov r0, #0
	add r4, r3, #0
	mul r4, r2
	mov r3, #0x71
	add r4, r5, r4
	lsl r3, r3, #4
	strh r0, [r4, r3]
	ldrb r1, [r5, r1]
	add r0, r5, #0
	mul r2, r1
	add r2, r5, r2
	ldrh r2, [r2, r3]
	bl sub_02083040
	b _02083618
_0208360A:
	ldr r2, _02083650 ; =0x0000069C
	mov r1, #0x53
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
_02083618:
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	mov r2, #0xa
	mov r3, #0xf
	bl sub_0200E060
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0208274C
	ldr r0, [sp]
	str r6, [r0, #0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02083644: .word 0x000006FC
_02083648: .word 0x00000B29
_0208364C: .word 0x000005A4
_02083650: .word 0x0000069C
_02083654: .word 0x0000023D
	thumb_func_end sub_020834B0

	thumb_func_start sub_02083658
sub_02083658: ; 0x02083658
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0208369C ; =0x00000B28
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _02083696
	ldr r0, _020836A0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02083696
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	ldr r0, _020836A4 ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	mov r0, #1
	pop {r4, pc}
_02083696:
	mov r0, #0x11
	pop {r4, pc}
	nop
_0208369C: .word 0x00000B28
_020836A0: .word 0x021BF67C
_020836A4: .word 0x000005C8
	thumb_func_end sub_02083658

	thumb_func_start sub_020836A8
sub_020836A8: ; 0x020836A8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020836DC ; =0x00000B28
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _020836D8
	ldr r0, _020836E0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _020836D8
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	bl sub_020819B4
	mov r0, #0x13
	pop {r4, pc}
_020836D8:
	mov r0, #0x12
	pop {r4, pc}
	; .align 2, 0
_020836DC: .word 0x00000B28
_020836E0: .word 0x021BF67C
	thumb_func_end sub_020836A8

	thumb_func_start sub_020836E4
sub_020836E4: ; 0x020836E4
	push {r4, lr}
	add r4, r0, #0
	bl ov118_021D0DBC
	cmp r0, #1
	bne _020836FA
	add r0, r4, #0
	bl sub_020819CC
	mov r0, #0x11
	pop {r4, pc}
_020836FA:
	mov r0, #0x13
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020836E4

	thumb_func_start sub_02083700
sub_02083700: ; 0x02083700
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0208337C
	add r0, r5, #0
	mov r1, #0x27
	mov r2, #0
	bl sub_020826F4
	mov r0, #3
	mov r1, #0xc
	bl sub_02013A04
	ldr r1, _020837BC ; =0x000006FC
	str r0, [r5, r1]
	mov r0, #6
	bl sub_02083370
	ldr r1, _020837BC ; =0x000006FC
	add r2, r0, #0
	ldr r0, [r5, r1]
	sub r1, #0x38
	ldr r1, [r5, r1]
	bl sub_02013A6C
	mov r0, #7
	bl sub_02083370
	ldr r1, _020837BC ; =0x000006FC
	add r2, r0, #0
	ldr r0, [r5, r1]
	sub r1, #0x34
	ldr r1, [r5, r1]
	bl sub_02013A6C
	mov r0, #9
	bl sub_02083370
	ldr r1, _020837BC ; =0x000006FC
	add r2, r0, #0
	ldr r0, [r5, r1]
	sub r1, #0x2c
	ldr r1, [r5, r1]
	bl sub_02013A6C
	ldr r0, _020837BC ; =0x000006FC
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, sp, #8
	str r0, [sp, #8]
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0xc]
	strb r1, [r2, #8]
	mov r1, #1
	strb r1, [r2, #9]
	mov r3, #3
	strb r3, [r2, #0xa]
	ldrb r6, [r2, #0xb]
	mov r3, #0xf
	bic r6, r3
	strb r6, [r2, #0xb]
	ldrb r6, [r2, #0xb]
	mov r3, #0x30
	bic r6, r3
	strb r6, [r2, #0xb]
	ldrb r6, [r2, #0xb]
	mov r3, #0xc0
	bic r6, r3
	strb r6, [r2, #0xb]
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200DC48
	mov r0, #0xc
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #8
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	mov r1, #7
	lsl r1, r1, #8
	str r0, [r5, r1]
	mov r0, #0xf
	str r0, [r4, #0]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_020837BC: .word 0x000006FC
	thumb_func_end sub_02083700

	thumb_func_start sub_020837C0
sub_020837C0: ; 0x020837C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #7
	lsl r0, r0, #8
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _020837EC ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _020837F0 ; =0x000005A4
	mov r1, #7
	ldr r0, [r5, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	nop
_020837EC: .word 0x000006FC
_020837F0: .word 0x000005A4
	thumb_func_end sub_020837C0

	thumb_func_start sub_020837F4
sub_020837F4: ; 0x020837F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x8d
	lsl r0, r0, #2
	add r4, r1, #0
	add r0, r5, r0
	mov r1, #1
	bl sub_0200DC9C
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _0208383C ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	add r0, r5, #0
	mov r1, #0x2b
	mov r2, #1
	bl sub_02082708
	ldr r0, _02083840 ; =sub_0208384C
	ldr r1, _02083844 ; =0x00000B1C
	ldr r2, _02083848 ; =sub_020838C4
	str r0, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r5, r1]
	mov r0, #0x18
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0208383C: .word 0x000006FC
_02083840: .word sub_0208384C
_02083844: .word 0x00000B1C
_02083848: .word sub_020838C4
	thumb_func_end sub_020837F4

	thumb_func_start sub_0208384C
sub_0208384C: ; 0x0208384C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _020838B8 ; =0x000005A4
	ldr r1, _020838BC ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r1, r0, #0
	ldr r0, _020838B8 ; =0x000005A4
	mov r2, #0xc
	ldr r0, [r4, r0]
	ldr r0, [r0, #8]
	bl sub_02097788
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _020838A2
	ldr r1, _020838BC ; =0x00000B29
	mov r2, #0x2c
	ldrb r3, [r4, r1]
	mov r0, #0
	add r5, r3, #0
	mul r5, r2
	mov r3, #0x71
	add r5, r4, r5
	lsl r3, r3, #4
	strh r0, [r5, r3]
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mul r2, r1
	add r2, r4, r2
	ldrh r2, [r2, r3]
	bl sub_02083040
	add r0, r4, #0
	mov r1, #0x2e
	mov r2, #0
	bl sub_02082708
	b _020838AC
_020838A2:
	add r0, r4, #0
	mov r1, #0x32
	mov r2, #0
	bl sub_02082708
_020838AC:
	ldr r0, _020838C0 ; =0x00000B26
	mov r1, #0x14
	strb r1, [r4, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_020838B8: .word 0x000005A4
_020838BC: .word 0x00000B29
_020838C0: .word 0x00000B26
	thumb_func_end sub_0208384C

	thumb_func_start sub_020838C4
sub_020838C4: ; 0x020838C4
	push {r4, lr}
	mov r1, #0x2f
	mov r2, #0
	add r4, r0, #0
	bl sub_02082708
	ldr r0, _020838E8 ; =sub_020838F4
	ldr r1, _020838EC ; =0x00000B1C
	ldr r2, _020838F0 ; =sub_02083990
	str r0, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r4, r1]
	mov r0, #0x18
	pop {r4, pc}
	nop
_020838E8: .word sub_020838F4
_020838EC: .word 0x00000B1C
_020838F0: .word sub_02083990
	thumb_func_end sub_020838C4

	thumb_func_start sub_020838F4
sub_020838F4: ; 0x020838F4
	push {r3, r4, r5, lr}
	ldr r1, _02083984 ; =0x00000B29
	add r4, r0, #0
	ldrb r2, [r4, r1]
	mov r1, #0x2c
	ldr r0, _02083988 ; =0x000005A4
	mul r1, r2
	add r2, r4, r1
	mov r1, #0x71
	ldr r0, [r4, r0]
	lsl r1, r1, #4
	ldrh r1, [r2, r1]
	ldr r0, [r0, #4]
	mov r2, #1
	mov r3, #0xc
	bl sub_0207D570
	cmp r0, #1
	bne _02083970
	ldr r0, _02083988 ; =0x000005A4
	ldr r1, _02083984 ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #0
	str r1, [sp]
	add r5, r0, #0
	mov r1, #6
	add r2, sp, #0
	bl sub_02074B30
	add r0, r5, #0
	bl sub_02077928
	add r0, r5, #0
	bl sub_02077A00
	ldr r1, _02083984 ; =0x00000B29
	mov r2, #0x2c
	ldrb r3, [r4, r1]
	mov r0, #0
	add r5, r3, #0
	mul r5, r2
	mov r3, #0x71
	add r5, r4, r5
	lsl r3, r3, #4
	strh r0, [r5, r3]
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mul r2, r1
	add r2, r4, r2
	ldrh r2, [r2, r3]
	bl sub_02083040
	add r0, r4, #0
	mov r1, #0x33
	mov r2, #0
	bl sub_02082708
	b _0208397A
_02083970:
	add r0, r4, #0
	mov r1, #0x53
	mov r2, #0
	bl sub_02082708
_0208397A:
	ldr r0, _0208398C ; =0x00000B26
	mov r1, #0x14
	strb r1, [r4, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02083984: .word 0x00000B29
_02083988: .word 0x000005A4
_0208398C: .word 0x00000B26
	thumb_func_end sub_020838F4

	thumb_func_start sub_02083990
sub_02083990: ; 0x02083990
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	ldr r0, _020839B8 ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_020839B8: .word 0x000005C8
	thumb_func_end sub_02083990

	thumb_func_start sub_020839BC
sub_020839BC: ; 0x020839BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020839F4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _020839EE
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	ldr r0, _020839F8 ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	mov r0, #1
	pop {r4, pc}
_020839EE:
	mov r0, #0x14
	pop {r4, pc}
	nop
_020839F4: .word 0x021BF67C
_020839F8: .word 0x000005C8
	thumb_func_end sub_020839BC

	thumb_func_start sub_020839FC
sub_020839FC: ; 0x020839FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _02083A5C ; =0x00000B29
	add r5, r0, #0
	ldrb r2, [r5, r1]
	mov r1, #0x2c
	mul r1, r2
	add r2, r5, r1
	ldr r1, _02083A60 ; =0x00000716
	ldrh r2, [r2, r1]
	cmp r2, #0
	bne _02083A36
	sub r1, #0x16
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _02083A64 ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02083A68 ; =0x000005A4
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02083A36:
	bl sub_0208337C
	add r0, r5, #0
	mov r1, #0xc3
	mov r2, #1
	bl sub_02082708
	ldr r0, _02083A6C ; =sub_02083A78
	ldr r1, _02083A70 ; =0x00000B1C
	ldr r2, _02083A74 ; =sub_02083AA4
	str r0, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r5, r1]
	mov r0, #0x18
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02083A5C: .word 0x00000B29
_02083A60: .word 0x00000716
_02083A64: .word 0x000006FC
_02083A68: .word 0x000005A4
_02083A6C: .word sub_02083A78
_02083A70: .word 0x00000B1C
_02083A74: .word sub_02083AA4
	thumb_func_end sub_020839FC

	thumb_func_start sub_02083A78
sub_02083A78: ; 0x02083A78
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02083A9C ; =0x000005A4
	ldr r1, _02083AA0 ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	bl sub_0207893C
	ldr r0, _02083A9C ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	pop {r4, pc}
	; .align 2, 0
_02083A9C: .word 0x000005A4
_02083AA0: .word 0x00000B29
	thumb_func_end sub_02083A78

	thumb_func_start sub_02083AA4
sub_02083AA4: ; 0x02083AA4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	ldr r0, _02083ACC ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02083ACC: .word 0x000005C8
	thumb_func_end sub_02083AA4

	thumb_func_start sub_02083AD0
sub_02083AD0: ; 0x02083AD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02083B78 ; =0x00000B27
	add r4, r1, #0
	ldrb r2, [r5, r0]
	mov r1, #0x40
	orr r1, r2
	strb r1, [r5, r0]
	ldrb r1, [r5, r0]
	mov r2, #0x3f
	bic r1, r2
	add r2, r0, #2
	ldrb r3, [r5, r2]
	mov r2, #0x3f
	and r2, r3
	orr r1, r2
	strb r1, [r5, r0]
	ldr r0, _02083B7C ; =0x000005C8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200D414
	ldr r0, _02083B7C ; =0x000005C8
	add r1, sp, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D50C
	ldr r0, _02083B80 ; =0x000005CC
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r5, r0]
	bl sub_0200D494
	ldr r0, _02083B84 ; =0x000005A4
	ldr r1, _02083B78 ; =0x00000B27
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	add r0, #0x21
	ldrb r0, [r0]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1a
	bl sub_020805D0
	add r1, r0, #0
	ldr r0, _02083B80 ; =0x000005CC
	add r1, r1, #2
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldr r0, _02083B80 ; =0x000005CC
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r1, _02083B78 ; =0x00000B27
	add r0, r5, #0
	ldrb r1, [r5, r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1a
	bl sub_0207F8F8
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	bl sub_0208337C
	add r0, r5, #0
	mov r1, #0x1e
	mov r2, #1
	bl sub_020826E0
	mov r0, #0x1c
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	nop
_02083B78: .word 0x00000B27
_02083B7C: .word 0x000005C8
_02083B80: .word 0x000005CC
_02083B84: .word 0x000005A4
	thumb_func_end sub_02083AD0

	thumb_func_start sub_02083B88
sub_02083B88: ; 0x02083B88
	push {r4, lr}
	ldr r1, _02083BC8 ; =0x00000B27
	add r4, r0, #0
	ldrb r2, [r4, r1]
	mov r0, #0x40
	bic r2, r0
	strb r2, [r4, r1]
	ldr r0, _02083BCC ; =0x000005CC
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _02083BD0 ; =0x00000B29
	ldrb r1, [r4, r0]
	cmp r1, #6
	bhs _02083BAE
	add r0, r4, #0
	bl sub_0207F8F8
_02083BAE:
	ldr r1, _02083BC8 ; =0x00000B27
	add r0, r4, #0
	ldrb r1, [r4, r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1a
	bl sub_0207F8F8
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	pop {r4, pc}
	; .align 2, 0
_02083BC8: .word 0x00000B27
_02083BCC: .word 0x000005CC
_02083BD0: .word 0x00000B29
	thumb_func_end sub_02083B88

	thumb_func_start sub_02083BD4
sub_02083BD4: ; 0x02083BD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _02083D08 ; =0x00000B29
	add r6, r0, #0
	ldrb r1, [r6, r2]
	add r0, r2, #0
	sub r0, #0x19
	strb r1, [r6, r0]
	sub r0, r2, #2
	ldrb r0, [r6, r0]
	add r3, r2, #0
	sub r3, #0x13
	lsl r0, r0, #0x1a
	lsr r1, r0, #0x1a
	add r0, r2, #0
	sub r0, #0x18
	strb r1, [r6, r0]
	add r0, r2, #0
	mov r1, #1
	sub r0, #0x15
	strb r1, [r6, r0]
	mov r0, #0
	strb r0, [r6, r3]
	add r3, r2, #0
	sub r3, #0x14
	strb r0, [r6, r3]
	add r3, r2, #0
	sub r3, #0x19
	ldrb r3, [r6, r3]
	tst r3, r1
	beq _02083C18
	sub r2, #0x17
	strb r1, [r6, r2]
	b _02083C1C
_02083C18:
	sub r2, #0x17
	strb r0, [r6, r2]
_02083C1C:
	ldr r0, _02083D0C ; =0x00000B11
	mov r1, #1
	ldrb r2, [r6, r0]
	tst r2, r1
	beq _02083C28
	b _02083C2A
_02083C28:
	mov r1, #0
_02083C2A:
	add r0, r0, #2
	strb r1, [r6, r0]
	ldr r0, [r6, #0]
	mov r1, #2
	bl sub_02019FE4
	str r0, [sp, #0x14]
	ldr r0, [r6, #0]
	mov r1, #1
	bl sub_02019FE4
	mov r1, #0xb1
	lsl r1, r1, #4
	ldrb r3, [r6, r1]
	str r0, [sp, #0x10]
	add r1, r1, #1
	add r0, r3, #0
	ldrb r3, [r6, r1]
	mov r2, #0x2c
	mul r0, r2
	add r1, r3, #0
	add r3, r6, r0
	ldr r0, _02083D10 ; =0x00000719
	mul r1, r2
	ldrsb r2, [r3, r0]
	mov r4, #0
	str r2, [sp, #0xc]
	sub r2, r0, #1
	ldrsb r2, [r3, r2]
	str r2, [sp, #8]
	add r2, r6, r1
	ldrsb r1, [r2, r0]
	sub r0, r0, #1
	ldrsb r0, [r2, r0]
	str r1, [sp, #4]
	str r0, [sp]
	mov r0, #0x81
	lsl r0, r0, #4
	add r0, r6, r0
	str r0, [sp, #0x18]
	mov r0, #0x99
	lsl r0, r0, #4
	add r0, r6, r0
	str r0, [sp, #0x1c]
	mov r0, #0x8d
	lsl r0, r0, #4
	add r0, r6, r0
	str r0, [sp, #0x20]
	mov r0, #0xa5
	lsl r0, r0, #4
	add r0, r6, r0
	str r0, [sp, #0x24]
_02083C92:
	ldr r0, [sp, #0xc]
	lsl r5, r4, #5
	add r0, r0, r4
	lsl r1, r0, #5
	ldr r0, [sp, #8]
	mov r2, #0x20
	add r0, r0, r1
	lsl r7, r0, #1
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r0, r0, r5
	add r1, r1, r7
	bl sub_020D50B8
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	add r0, r0, r5
	add r1, r1, r7
	mov r2, #0x20
	bl sub_020D50B8
	ldr r0, [sp, #4]
	mov r2, #0x20
	add r0, r0, r4
	lsl r1, r0, #5
	ldr r0, [sp]
	add r0, r0, r1
	lsl r7, r0, #1
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x14]
	add r0, r0, r5
	add r1, r1, r7
	bl sub_020D50B8
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x10]
	add r0, r0, r5
	add r1, r1, r7
	mov r2, #0x20
	bl sub_020D50B8
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _02083C92
	ldr r0, _02083D14 ; =0x000005C8
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_02021CAC
	ldr r0, _02083D18 ; =0x000005CC
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_02021CAC
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02083D08: .word 0x00000B29
_02083D0C: .word 0x00000B11
_02083D10: .word 0x00000719
_02083D14: .word 0x000005C8
_02083D18: .word 0x000005CC
	thumb_func_end sub_02083BD4

	thumb_func_start sub_02083D1C
sub_02083D1C: ; 0x02083D1C
	push {r3, r4, r5, lr}
	mov r1, #0x81
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r2, _02083E70 ; =0x00000305
	add r4, r5, r1
	ldrb r1, [r4, r2]
	cmp r1, #4
	bls _02083D30
	b _02083E6C
_02083D30:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02083D3C: ; jump table
	.short _02083D46 - _02083D3C - 2 ; case 0
	.short _02083D56 - _02083D3C - 2 ; case 1
	.short _02083DA6 - _02083D3C - 2 ; case 2
	.short _02083DBA - _02083D3C - 2 ; case 3
	.short _02083E18 - _02083D3C - 2 ; case 4
_02083D46:
	mov r0, #0x6a
	lsl r0, r0, #4
	bl sub_02005748
	ldr r0, _02083E70 ; =0x00000305
	mov r1, #1
	strb r1, [r4, r0]
	b _02083E6C
_02083D56:
	add r1, r2, #1
	ldrb r1, [r4, r1]
	add r3, r1, #1
	add r1, r2, #1
	strb r3, [r4, r1]
	mov r1, #0
	bl sub_02083E8C
	add r0, r5, #0
	mov r1, #1
	bl sub_02083E8C
	ldr r2, _02083E74 ; =0x00000302
	add r0, r5, #0
	ldrb r2, [r4, r2]
	mov r1, #0
	bl sub_02083FDC
	ldr r2, _02083E78 ; =0x00000303
	add r0, r5, #0
	ldrb r2, [r4, r2]
	mov r1, #1
	bl sub_02083FDC
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_0201C3C0
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0201C3C0
	ldr r0, _02083E7C ; =0x00000306
	ldrb r1, [r4, r0]
	cmp r1, #0x10
	bne _02083E6C
	mov r1, #2
	sub r0, r0, #1
	strb r1, [r4, r0]
	b _02083E6C
_02083DA6:
	bl sub_02084134
	mov r0, #0x6a
	lsl r0, r0, #4
	bl sub_02005748
	ldr r0, _02083E70 ; =0x00000305
	mov r1, #3
	strb r1, [r4, r0]
	b _02083E6C
_02083DBA:
	add r1, r2, #1
	ldrb r1, [r4, r1]
	sub r3, r1, #1
	add r1, r2, #1
	strb r3, [r4, r1]
	mov r1, #0
	bl sub_02083E8C
	add r0, r5, #0
	mov r1, #1
	bl sub_02083E8C
	ldr r2, _02083E74 ; =0x00000302
	add r0, r5, #0
	ldrb r3, [r4, r2]
	mov r2, #1
	mov r1, #0
	eor r2, r3
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083FDC
	ldr r2, _02083E78 ; =0x00000303
	mov r1, #1
	ldrb r2, [r4, r2]
	add r0, r5, #0
	eor r2, r1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083FDC
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_0201C3C0
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0201C3C0
	ldr r0, _02083E7C ; =0x00000306
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _02083E6C
	mov r1, #4
	sub r0, r0, #1
	strb r1, [r4, r0]
	b _02083E6C
_02083E18:
	ldr r0, _02083E80 ; =0x000005A4
	sub r1, r2, #5
	ldr r0, [r5, r0]
	sub r2, r2, #4
	ldrb r1, [r4, r1]
	ldrb r2, [r4, r2]
	ldr r0, [r0, #0]
	bl sub_0207A184
	ldr r0, _02083E84 ; =0x000005C8
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	mov r0, #0xc1
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
	ldr r1, _02083E88 ; =0x00000B27
	mov r0, #0x40
	ldrb r2, [r5, r1]
	bic r2, r0
	strb r2, [r5, r1]
	add r1, r1, #2
	ldrb r1, [r5, r1]
	add r0, r5, #0
	bl sub_0207F8F8
	ldr r1, _02083E88 ; =0x00000B27
	add r0, r5, #0
	ldrb r1, [r5, r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1a
	bl sub_0207F8F8
	add r0, r5, #0
	mov r1, #0x1d
	mov r2, #0
	bl sub_020826E0
	mov r0, #1
	pop {r3, r4, r5, pc}
_02083E6C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02083E70: .word 0x00000305
_02083E74: .word 0x00000302
_02083E78: .word 0x00000303
_02083E7C: .word 0x00000306
_02083E80: .word 0x000005A4
_02083E84: .word 0x000005C8
_02083E88: .word 0x00000B27
	thumb_func_end sub_02083D1C

	thumb_func_start sub_02083E8C
sub_02083E8C: ; 0x02083E8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	mov r0, #0x81
	str r1, [sp, #0x1c]
	lsl r0, r0, #4
	ldr r1, [sp, #0x1c]
	add r4, r5, r0
	add r2, r4, r1
	mov r1, #3
	lsl r1, r1, #8
	ldrb r2, [r2, r1]
	mov r1, #0x2c
	mul r1, r2
	add r2, r5, r1
	add r1, r0, #0
	sub r1, #0xf8
	ldrsb r7, [r2, r1]
	sub r0, #0xf7
	ldrb r6, [r2, r0]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	str r6, [sp]
	mov r1, #0x10
	str r1, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r3, [sp, #0x20]
	mov r1, #2
	mov r2, #0
	bl sub_02019CB8
	str r6, [sp]
	mov r1, #0x10
	str r1, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r3, [sp, #0x20]
	mov r1, #1
	mov r2, #0
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	add r1, r4, r0
	ldr r0, _02083FD4 ; =0x00000302
	ldrb r1, [r1, r0]
	cmp r1, #0
	bne _02083F5E
	add r0, r0, #4
	ldrb r2, [r4, r0]
	ldr r0, [sp, #0x1c]
	mov r3, #0x10
	add r7, r0, #0
	sub r0, r3, r2
	lsl r0, r0, #0x18
	mov r1, #0xc0
	lsr r0, r0, #0x18
	mul r7, r1
	str r0, [sp]
	mov r1, #6
	str r1, [sp, #4]
	add r0, r4, r7
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x20]
	mov r1, #2
	add r3, r6, #0
	bl sub_020198E8
	ldr r0, _02083FD8 ; =0x00000306
	mov r3, #0x10
	ldrb r2, [r4, r0]
	mov r1, #6
	sub r0, r3, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	lsl r0, r1, #6
	add r0, r4, r0
	str r1, [sp, #4]
	add r0, r0, r7
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x20]
	mov r1, #1
	add r3, r6, #0
	bl sub_020198E8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_02083F5E:
	ldr r1, [sp, #0x1c]
	mov r2, #0xc0
	mul r2, r1
	str r2, [sp, #0x24]
	add r0, r0, #4
	ldrb r2, [r4, r0]
	mov r3, #0x10
	ldr r1, [sp, #0x24]
	sub r0, r3, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r1, r4, r1
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r3, [sp, #0x14]
	add r2, r7, r2
	str r0, [sp, #0x18]
	lsl r2, r2, #0x18
	ldr r0, [r5, #0]
	mov r1, #2
	lsr r2, r2, #0x18
	add r3, r6, #0
	bl sub_020198E8
	ldr r0, _02083FD8 ; =0x00000306
	ldrb r2, [r4, r0]
	mov r0, #0x10
	sub r0, r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #6
	lsl r1, r0, #6
	add r3, r4, r1
	ldr r1, [sp, #0x24]
	add r2, r7, r2
	add r1, r3, r1
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0x10
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	lsl r2, r2, #0x18
	ldr r0, [r5, #0]
	mov r1, #1
	lsr r2, r2, #0x18
	add r3, r6, #0
	bl sub_020198E8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02083FD4: .word 0x00000302
_02083FD8: .word 0x00000306
	thumb_func_end sub_02083E8C

	thumb_func_start sub_02083FDC
sub_02083FDC: ; 0x02083FDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x81
	lsl r0, r0, #4
	add r4, r1, #0
	add r1, r5, r0
	mov r0, #3
	lsl r0, r0, #8
	add r6, r1, r0
	ldrb r0, [r6, r4]
	add r7, r2, #0
	add r2, sp, #0
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x5b
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	bl sub_0200D50C
	cmp r7, #0
	ldr r0, _02084124 ; =0x0000071A
	bne _02084046
	ldrb r3, [r6, r4]
	mov r7, #0x2c
	add r2, r5, r0
	add r1, r3, #0
	mul r1, r7
	ldrsh r3, [r2, r1]
	sub r3, #8
	strh r3, [r2, r1]
	ldrb r3, [r6, r4]
	add r1, r0, #4
	add r2, r5, r1
	add r1, r3, #0
	mul r1, r7
	ldrsh r3, [r2, r1]
	add r0, #8
	add r0, r5, r0
	sub r3, #8
	strh r3, [r2, r1]
	ldrb r1, [r6, r4]
	add r2, r1, #0
	mul r2, r7
	ldrsh r1, [r0, r2]
	sub r1, #8
	strh r1, [r0, r2]
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	sub r0, #8
	b _0208407E
_02084046:
	ldrb r3, [r6, r4]
	mov r7, #0x2c
	add r2, r5, r0
	add r1, r3, #0
	mul r1, r7
	ldrsh r3, [r2, r1]
	add r3, #8
	strh r3, [r2, r1]
	ldrb r3, [r6, r4]
	add r1, r0, #4
	add r2, r5, r1
	add r1, r3, #0
	mul r1, r7
	ldrsh r3, [r2, r1]
	add r0, #8
	add r0, r5, r0
	add r3, #8
	strh r3, [r2, r1]
	ldrb r1, [r6, r4]
	add r2, r1, #0
	mul r2, r7
	ldrsh r1, [r0, r2]
	add r1, #8
	strh r1, [r0, r2]
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r0, #8
_0208407E:
	strh r0, [r1, #2]
	ldrb r1, [r6, r4]
	mov r0, #0x2c
	ldr r2, _02084128 ; =0x00000728
	mul r0, r1
	add r3, r5, r0
	add r1, r2, #0
	ldr r0, [r3, r2]
	sub r1, #0xe
	sub r2, #0xc
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	bl sub_0200D494
	ldrb r2, [r6, r4]
	mov r0, #0x2c
	ldr r3, _0208412C ; =0x0000071E
	add r1, r2, #0
	add r2, #0xa
	mul r1, r0
	lsl r0, r2, #2
	add r2, r5, r0
	mov r0, #0x5b
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, r5, r1
	ldrsh r1, [r2, r3]
	add r3, r3, #2
	ldrsh r2, [r2, r3]
	bl sub_0200D494
	ldrb r2, [r6, r4]
	mov r0, #0x2c
	ldr r3, _02084130 ; =0x00000722
	add r1, r2, #0
	add r2, #0x10
	mul r1, r0
	lsl r0, r2, #2
	add r2, r5, r0
	mov r0, #0x5b
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, r5, r1
	ldrsh r1, [r2, r3]
	add r3, r3, #2
	ldrsh r2, [r2, r3]
	bl sub_0200D494
	ldrb r2, [r6, r4]
	mov r0, #0x2c
	ldr r3, _02084130 ; =0x00000722
	add r1, r2, #0
	add r2, #0x16
	mul r1, r0
	lsl r0, r2, #2
	add r2, r5, r0
	mov r0, #0x5b
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, r5, r1
	ldrsh r1, [r2, r3]
	add r3, r3, #2
	ldrsh r2, [r2, r3]
	add r1, #8
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl sub_0200D494
	ldrb r0, [r6, r4]
	add r3, sp, #0
	mov r2, #0
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x5b
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	bl sub_0200D494
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02084124: .word 0x0000071A
_02084128: .word 0x00000728
_0208412C: .word 0x0000071E
_02084130: .word 0x00000722
	thumb_func_end sub_02083FDC

	thumb_func_start sub_02084134
sub_02084134: ; 0x02084134
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x81
	lsl r0, r0, #4
	add r4, r5, r0
	mov r0, #0xc
	mov r1, #0x2c
	bl sub_02018144
	add r7, r0, #0
	mov r0, #3
	lsl r0, r0, #8
	ldrb r1, [r4, r0]
	mov r0, #0x2c
	add r3, r7, #0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02084410 ; =0x00000704
	mov r2, #5
	add r6, r1, r0
_0208415E:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0208415E
	ldr r0, [r6, #0]
	mov r1, #3
	lsl r1, r1, #8
	str r0, [r3, #0]
	ldrb r0, [r4, r1]
	add r1, r1, #1
	ldrb r1, [r4, r1]
	mov r2, #0x2c
	add r3, r0, #0
	mul r3, r2
	mul r2, r1
	ldr r1, _02084410 ; =0x00000704
	add r0, r5, r3
	add r2, r5, r2
	add r6, r2, r1
	add r3, r0, r1
	mov r2, #5
_02084188:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02084188
	ldr r0, [r6, #0]
	add r6, r7, #0
	str r0, [r3, #0]
	ldr r0, _02084414 ; =0x00000301
	mov r2, #5
	ldrb r1, [r4, r0]
	mov r0, #0x2c
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02084410 ; =0x00000704
	add r3, r1, r0
_020841A6:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020841A6
	ldr r0, [r6, #0]
	add r1, r7, #0
	str r0, [r3, #0]
	mov r0, #0xc
	bl sub_02018238
	mov r1, #3
	lsl r1, r1, #8
	ldrb r3, [r4, r1]
	ldr r0, _02084418 ; =0x0000071A
	add r2, r5, r0
	mov r0, #0x2c
	add r7, r3, #0
	mul r7, r0
	ldrsh r3, [r2, r7]
	str r3, [sp]
	add r3, r1, #1
	ldrb r3, [r4, r3]
	add r6, r3, #0
	mul r6, r0
	ldr r3, _02084418 ; =0x0000071A
	add r6, r5, r6
	ldrsh r3, [r6, r3]
	strh r3, [r2, r7]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r3, r2, #0
	mul r3, r0
	add r6, r5, r3
	ldr r3, [sp]
	ldr r2, _02084418 ; =0x0000071A
	strh r3, [r6, r2]
	add r2, r2, #2
	add r3, r5, r2
	ldrb r2, [r4, r1]
	add r7, r2, #0
	mul r7, r0
	ldrsh r2, [r3, r7]
	str r2, [sp, #4]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r6, r2, #0
	mul r6, r0
	add r2, r5, r6
	ldr r6, _02084418 ; =0x0000071A
	add r6, r6, #2
	ldrsh r2, [r2, r6]
	strh r2, [r3, r7]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r3, r2, #0
	mul r3, r0
	add r2, r5, r3
	ldr r3, _02084418 ; =0x0000071A
	add r6, r3, #2
	ldr r3, [sp, #4]
	strh r3, [r2, r6]
	ldr r2, _02084418 ; =0x0000071A
	add r2, r2, #4
	add r3, r5, r2
	ldrb r2, [r4, r1]
	add r7, r2, #0
	mul r7, r0
	ldrsh r2, [r3, r7]
	str r2, [sp, #8]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r6, r2, #0
	mul r6, r0
	add r2, r5, r6
	ldr r6, _02084418 ; =0x0000071A
	add r6, r6, #4
	ldrsh r2, [r2, r6]
	strh r2, [r3, r7]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r3, r2, #0
	mul r3, r0
	add r2, r5, r3
	ldr r3, _02084418 ; =0x0000071A
	add r6, r3, #4
	ldr r3, [sp, #8]
	strh r3, [r2, r6]
	ldr r2, _02084418 ; =0x0000071A
	add r2, r2, #6
	add r3, r5, r2
	ldrb r2, [r4, r1]
	add r7, r2, #0
	mul r7, r0
	ldrsh r2, [r3, r7]
	str r2, [sp, #0xc]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r6, r2, #0
	mul r6, r0
	add r2, r5, r6
	ldr r6, _02084418 ; =0x0000071A
	add r6, r6, #6
	ldrsh r2, [r2, r6]
	strh r2, [r3, r7]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r3, r2, #0
	mul r3, r0
	add r2, r5, r3
	ldr r3, _02084418 ; =0x0000071A
	add r6, r3, #6
	ldr r3, [sp, #0xc]
	strh r3, [r2, r6]
	ldrb r3, [r4, r1]
	ldr r2, _02084418 ; =0x0000071A
	add r2, #8
	add r7, r3, #0
	add r2, r5, r2
	mul r7, r0
	ldrsh r3, [r2, r7]
	str r3, [sp, #0x10]
	add r3, r1, #1
	ldrb r3, [r4, r3]
	add r6, r3, #0
	ldr r3, _02084418 ; =0x0000071A
	mul r6, r0
	add r6, r5, r6
	add r3, #8
	ldrsh r3, [r6, r3]
	strh r3, [r2, r7]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r3, r2, #0
	mul r3, r0
	add r6, r5, r3
	ldr r3, _02084418 ; =0x0000071A
	ldr r2, [sp, #0x10]
	add r3, #8
	strh r2, [r6, r3]
	ldrb r3, [r4, r1]
	ldr r2, _02084418 ; =0x0000071A
	add r2, #0xa
	add r7, r3, #0
	add r2, r5, r2
	mul r7, r0
	ldrsh r3, [r2, r7]
	str r3, [sp, #0x14]
	add r3, r1, #1
	ldrb r3, [r4, r3]
	add r6, r3, #0
	ldr r3, _02084418 ; =0x0000071A
	mul r6, r0
	add r6, r5, r6
	add r3, #0xa
	ldrsh r3, [r6, r3]
	strh r3, [r2, r7]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r3, r2, #0
	mul r3, r0
	add r6, r5, r3
	ldr r3, _02084418 ; =0x0000071A
	ldr r2, [sp, #0x14]
	add r3, #0xa
	strh r2, [r6, r3]
	ldr r2, _02084418 ; =0x0000071A
	sub r2, r2, #2
	add r3, r5, r2
	ldrb r2, [r4, r1]
	add r7, r2, #0
	mul r7, r0
	ldrsb r2, [r3, r7]
	str r2, [sp, #0x18]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r6, r2, #0
	mul r6, r0
	add r2, r5, r6
	ldr r6, _02084418 ; =0x0000071A
	sub r6, r6, #2
	ldrsb r2, [r2, r6]
	strb r2, [r3, r7]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r3, r2, #0
	mul r3, r0
	add r2, r5, r3
	ldr r3, _02084418 ; =0x0000071A
	sub r6, r3, #2
	ldr r3, [sp, #0x18]
	strb r3, [r2, r6]
	ldr r2, _02084418 ; =0x0000071A
	sub r2, r2, #1
	add r6, r5, r2
	ldrb r2, [r4, r1]
	add r7, r2, #0
	mul r7, r0
	ldrsb r2, [r6, r7]
	mov ip, r2
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r3, r2, #0
	ldr r2, _02084418 ; =0x0000071A
	mul r3, r0
	add r3, r5, r3
	sub r2, r2, #1
	ldrsb r2, [r3, r2]
	strb r2, [r6, r7]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	mul r0, r2
	ldr r2, _02084418 ; =0x0000071A
	add r0, r5, r0
	sub r3, r2, #1
	mov r2, ip
	strb r2, [r0, r3]
	ldrb r1, [r4, r1]
	add r0, r5, #0
	bl sub_020821F8
	ldr r1, _02084414 ; =0x00000301
	add r0, r5, #0
	ldrb r1, [r4, r1]
	bl sub_020821F8
	mov r1, #3
	lsl r1, r1, #8
	ldrb r1, [r4, r1]
	add r0, r5, #0
	bl sub_020822F4
	ldr r1, _02084414 ; =0x00000301
	add r0, r5, #0
	ldrb r1, [r4, r1]
	bl sub_020822F4
	add r0, r5, #0
	mov r1, #0
	bl sub_02084420
	add r0, r5, #0
	mov r1, #1
	bl sub_02084420
	mov r0, #3
	lsl r0, r0, #8
	ldrb r1, [r4, r0]
	mov r2, #0x2c
	add r0, r5, #0
	mul r2, r1
	add r3, r5, r2
	ldr r2, _0208441C ; =0x00000712
	ldrh r2, [r3, r2]
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	ldr r0, _02084414 ; =0x00000301
	mov r2, #0x2c
	ldrb r1, [r4, r0]
	add r0, r5, #0
	mul r2, r1
	add r3, r5, r2
	ldr r2, _0208441C ; =0x00000712
	ldrh r2, [r3, r2]
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	mov r0, #3
	lsl r0, r0, #8
	ldrb r1, [r4, r0]
	mov r2, #0x2c
	add r0, r5, #0
	mul r2, r1
	add r3, r5, r2
	mov r2, #0x71
	lsl r2, r2, #4
	ldrh r2, [r3, r2]
	bl sub_02083040
	ldr r0, _02084414 ; =0x00000301
	mov r2, #0x2c
	ldrb r1, [r4, r0]
	add r0, r5, #0
	mul r2, r1
	add r3, r5, r2
	mov r2, #0x71
	lsl r2, r2, #4
	ldrh r2, [r3, r2]
	bl sub_02083040
	mov r1, #3
	lsl r1, r1, #8
	ldrb r1, [r4, r1]
	add r0, r5, #0
	bl sub_02083104
	ldr r1, _02084414 ; =0x00000301
	add r0, r5, #0
	ldrb r1, [r4, r1]
	bl sub_02083104
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02084410: .word 0x00000704
_02084414: .word 0x00000301
_02084418: .word 0x0000071A
_0208441C: .word 0x00000712
	thumb_func_end sub_02084134

	thumb_func_start sub_02084420
sub_02084420: ; 0x02084420
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x81
	add r6, r0, #0
	lsl r1, r1, #4
	add r4, r6, r1
	mov r1, #0xc0
	mul r1, r7
	add r5, r4, r1
	bl sub_0207F248
	add r3, r0, #0
	mov r0, #3
	add r1, r4, r7
	lsl r0, r0, #8
	ldrb r1, [r1, r0]
	mov r0, #0x2c
	mul r0, r1
	add r1, r6, r0
	ldr r0, _020844A8 ; =0x00000714
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02084478
	mov r3, #0xf
	mov r1, #0
	lsl r3, r3, #0xc
	mov r4, #0x17
_02084456:
	lsl r0, r1, #1
	add r2, r5, r0
	add r2, #0x6c
	ldrh r2, [r2]
	add r0, r5, r0
	add r0, #0x6c
	and r2, r3
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	orr r2, r4
	strh r2, [r0]
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #9
	blo _02084456
	pop {r3, r4, r5, r6, r7, pc}
_02084478:
	mov r6, #0xf
	ldr r0, _020844AC ; =0x00000FFF
	mov r4, #0
	lsl r6, r6, #0xc
_02084480:
	lsl r2, r4, #1
	add r1, r5, r2
	add r1, #0x6c
	ldrh r1, [r1]
	ldrh r7, [r3, r2]
	and r1, r6
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	and r7, r0
	orr r7, r1
	add r1, r5, r2
	add r1, #0x6c
	strh r7, [r1]
	add r1, r4, #1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r4, #9
	blo _02084480
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020844A8: .word 0x00000714
_020844AC: .word 0x00000FFF
	thumb_func_end sub_02084420

	thumb_func_start sub_020844B0
sub_020844B0: ; 0x020844B0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x85
	lsl r0, r0, #2
	add r6, r1, #0
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	bl sub_0208337C
	ldr r0, _02084598 ; =0x000005A4
	mov r4, #0
	ldr r0, [r5, r0]
	add r1, r0, #0
	add r1, #0x32
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	beq _02084536
_020844DA:
	add r2, r0, r4
	add r2, #0x2c
	ldrb r2, [r2]
	cmp r2, #0
	bne _0208452C
	ldr r1, _0208459C ; =0x00000B29
	add r0, r0, r4
	ldrb r2, [r5, r1]
	add r0, #0x2c
	add r2, r2, #1
	strb r2, [r0]
	ldrb r1, [r5, r1]
	add r0, r5, #0
	bl sub_02082508
	add r0, r5, #0
	mov r1, #0x22
	mov r2, #1
	bl sub_020826E0
	ldr r0, _020845A0 ; =0x000005C8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200D414
	ldr r0, _02084598 ; =0x000005A4
	ldr r0, [r5, r0]
	add r0, #0x32
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	sub r0, r0, #1
	cmp r4, r0
	bne _02084526
	add r0, r5, #0
	mov r1, #6
	bl sub_0207FD68
_02084526:
	mov r0, #1
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
_0208452C:
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, r1
	blo _020844DA
_02084536:
	cmp r1, #5
	bhi _0208458C
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02084546: ; jump table
	.short _0208458C - _02084546 - 2 ; case 0
	.short _02084552 - _02084546 - 2 ; case 1
	.short _0208455E - _02084546 - 2 ; case 2
	.short _0208456A - _02084546 - 2 ; case 3
	.short _02084576 - _02084546 - 2 ; case 4
	.short _02084582 - _02084546 - 2 ; case 5
_02084552:
	add r0, r5, #0
	mov r1, #0x7b
	mov r2, #1
	bl sub_02082708
	b _0208458C
_0208455E:
	add r0, r5, #0
	mov r1, #0x64
	mov r2, #1
	bl sub_02082708
	b _0208458C
_0208456A:
	add r0, r5, #0
	mov r1, #0x7c
	mov r2, #1
	bl sub_02082708
	b _0208458C
_02084576:
	add r0, r5, #0
	mov r1, #0x7d
	mov r2, #1
	bl sub_02082708
	b _0208458C
_02084582:
	add r0, r5, #0
	mov r1, #0x7e
	mov r2, #1
	bl sub_02082708
_0208458C:
	ldr r0, _020845A4 ; =0x00000B26
	mov r1, #0x17
	strb r1, [r5, r0]
	mov r0, #0x18
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02084598: .word 0x000005A4
_0208459C: .word 0x00000B29
_020845A0: .word 0x000005C8
_020845A4: .word 0x00000B26
	thumb_func_end sub_020844B0

	thumb_func_start sub_020845A8
sub_020845A8: ; 0x020845A8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020845E0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _020845DA
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0x22
	mov r2, #1
	bl sub_020826E0
	ldr r0, _020845E4 ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	mov r0, #1
	pop {r4, pc}
_020845DA:
	mov r0, #0x17
	pop {r4, pc}
	nop
_020845E0: .word 0x021BF67C
_020845E4: .word 0x000005C8
	thumb_func_end sub_020845A8

	thumb_func_start sub_020845E8
sub_020845E8: ; 0x020845E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _020846BC ; =0x000005A4
	str r1, [sp]
	ldr r1, [r5, r0]
	mov r4, #0
	add r0, r1, #0
	add r0, #0x32
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x1c
	beq _02084668
	ldr r0, _020846C0 ; =0x00000B29
	ldrb r0, [r5, r0]
	add r0, r0, #1
_02084606:
	add r3, r1, r4
	add r3, #0x2c
	ldrb r3, [r3]
	cmp r0, r3
	bne _0208465E
	add r0, r1, r4
	mov r2, #0
	add r0, #0x2c
	strb r2, [r0]
	ldr r0, _020846BC ; =0x000005A4
	ldr r6, [r5, r0]
	add r0, r6, #0
	add r0, #0x32
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	sub r0, r0, #1
	cmp r4, r0
	bge _02084668
	ldr r0, _020846BC ; =0x000005A4
	add r1, r0, #0
_02084630:
	add r3, r6, r4
	add r3, #0x2d
	ldrb r3, [r3]
	add r6, r6, r4
	add r6, #0x2c
	strb r3, [r6]
	ldr r3, [r5, r0]
	add r3, r3, r4
	add r3, #0x2d
	strb r2, [r3]
	add r3, r4, #1
	lsl r3, r3, #0x18
	ldr r6, [r5, r1]
	lsr r4, r3, #0x18
	add r3, r6, #0
	add r3, #0x32
	ldrb r3, [r3]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x1c
	sub r3, r3, #1
	cmp r4, r3
	blt _02084630
	b _02084668
_0208465E:
	add r3, r4, #1
	lsl r3, r3, #0x18
	lsr r4, r3, #0x18
	cmp r4, r2
	blo _02084606
_02084668:
	ldr r6, _020846C4 ; =0x0000072D
	mov r4, #0
	mov r7, #0x2c
_0208466E:
	add r0, r4, #0
	mul r0, r7
	add r0, r5, r0
	ldrb r0, [r0, r6]
	cmp r0, #0
	beq _02084682
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02082508
_02084682:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _0208466E
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	bl sub_0208337C
	add r0, r5, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	ldr r0, _020846C8 ; =0x000005C8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200D414
	ldr r0, [sp]
	mov r1, #1
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020846BC: .word 0x000005A4
_020846C0: .word 0x00000B29
_020846C4: .word 0x0000072D
_020846C8: .word 0x000005C8
	thumb_func_end sub_020845E8

	thumb_func_start sub_020846CC
sub_020846CC: ; 0x020846CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020846F4 ; =0x000005A4
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, #0x23
	strb r1, [r0]
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _020846F8 ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	mov r0, #0x20
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020846F4: .word 0x000005A4
_020846F8: .word 0x000006FC
	thumb_func_end sub_020846CC

	thumb_func_start sub_020846FC
sub_020846FC: ; 0x020846FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02084724 ; =0x000005A4
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, #0x23
	strb r1, [r0]
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _02084728 ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	mov r0, #0x20
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02084724: .word 0x000005A4
_02084728: .word 0x000006FC
	thumb_func_end sub_020846FC

	thumb_func_start sub_0208472C
sub_0208472C: ; 0x0208472C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02084758 ; =0x000005A4
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	add r0, #0x23
	strb r1, [r0]
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _0208475C ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	mov r0, #0x20
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	nop
_02084758: .word 0x000005A4
_0208475C: .word 0x000006FC
	thumb_func_end sub_0208472C

	thumb_func_start sub_02084760
sub_02084760: ; 0x02084760
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0208337C
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	bl sub_02084780
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02084760

	thumb_func_start sub_02084780
sub_02084780: ; 0x02084780
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020847F8 ; =0x000005A4
	ldr r1, _020847FC ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #0xa2
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	ldr r2, _02084800 ; =0x0000069C
	bne _020847C4
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	mov r1, #0x81
	bl sub_0200B1B8
	ldr r0, _020847FC ; =0x00000B29
	ldrb r0, [r4, r0]
	add r0, #0x16
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x5b
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	b _020847D6
_020847C4:
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	mov r1, #0x82
	bl sub_0200B1B8
	ldr r0, _020847FC ; =0x00000B29
	mov r1, #7
	strb r1, [r4, r0]
_020847D6:
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _020847F8 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _02084804 ; =0x00000B26
	mov r1, #0x19
	strb r1, [r4, r0]
	mov r0, #0x18
	pop {r4, pc}
	nop
_020847F8: .word 0x000005A4
_020847FC: .word 0x00000B29
_02084800: .word 0x0000069C
_02084804: .word 0x00000B26
	thumb_func_end sub_02084780

	thumb_func_start sub_02084808
sub_02084808: ; 0x02084808
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r0, #0
	ldr r1, _0208489C ; =0x000005A4
	mov r0, #1
	ldr r1, [r4, r1]
	add r1, #0x23
	ldrb r1, [r1]
	sub r1, #0xb
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0207070C
	add r1, r0, #0
	beq _02084830
	ldr r0, _0208489C ; =0x000005A4
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x18]
	blx r1
	b _02084832
_02084830:
	mov r0, #1
_02084832:
	cmp r0, #4
	bhi _02084874
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02084842: ; jump table
	.short _0208484C - _02084842 - 2 ; case 0
	.short _02084866 - _02084842 - 2 ; case 1
	.short _0208486A - _02084842 - 2 ; case 2
	.short _0208486E - _02084842 - 2 ; case 3
	.short _02084872 - _02084842 - 2 ; case 4
_0208484C:
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _020848A0 ; =0x000006FC
	ldr r0, [r4, r0]
	bl sub_02013A3C
	mov r0, #0x20
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
_02084866:
	mov r5, #0x68
	b _02084874
_0208486A:
	mov r5, #0x4c
	b _02084874
_0208486E:
	mov r5, #0xc4
	b _02084874
_02084872:
	mov r5, #0x66
_02084874:
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	bl sub_0208337C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl sub_02082708
	ldr r0, _020848A4 ; =0x00000B26
	mov r1, #3
	strb r1, [r4, r0]
	mov r0, #0x18
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0208489C: .word 0x000005A4
_020848A0: .word 0x000006FC
_020848A4: .word 0x00000B26
	thumb_func_end sub_02084808

	thumb_func_start sub_020848A8
sub_020848A8: ; 0x020848A8
	ldr r2, _020848B8 ; =0x000005A4
	mov r3, #0xb
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _020848BC ; =sub_02084808
	bx r3
	nop
_020848B8: .word 0x000005A4
_020848BC: .word sub_02084808
	thumb_func_end sub_020848A8

	thumb_func_start sub_020848C0
sub_020848C0: ; 0x020848C0
	ldr r2, _020848D0 ; =0x000005A4
	mov r3, #0x10
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _020848D4 ; =sub_02084808
	bx r3
	nop
_020848D0: .word 0x000005A4
_020848D4: .word sub_02084808
	thumb_func_end sub_020848C0

	thumb_func_start sub_020848D8
sub_020848D8: ; 0x020848D8
	ldr r2, _020848E8 ; =0x000005A4
	mov r3, #0xe
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _020848EC ; =sub_02084808
	bx r3
	nop
_020848E8: .word 0x000005A4
_020848EC: .word sub_02084808
	thumb_func_end sub_020848D8

	thumb_func_start sub_020848F0
sub_020848F0: ; 0x020848F0
	ldr r2, _02084900 ; =0x000005A4
	mov r3, #0xd
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _02084904 ; =sub_02084808
	bx r3
	nop
_02084900: .word 0x000005A4
_02084904: .word sub_02084808
	thumb_func_end sub_020848F0

	thumb_func_start sub_02084908
sub_02084908: ; 0x02084908
	ldr r2, _02084918 ; =0x000005A4
	mov r3, #0xf
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _0208491C ; =sub_02084808
	bx r3
	nop
_02084918: .word 0x000005A4
_0208491C: .word sub_02084808
	thumb_func_end sub_02084908

	thumb_func_start sub_02084920
sub_02084920: ; 0x02084920
	ldr r2, _02084930 ; =0x000005A4
	mov r3, #0x12
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _02084934 ; =sub_02084808
	bx r3
	nop
_02084930: .word 0x000005A4
_02084934: .word sub_02084808
	thumb_func_end sub_02084920

	thumb_func_start sub_02084938
sub_02084938: ; 0x02084938
	ldr r2, _02084948 ; =0x000005A4
	mov r3, #0xc
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _0208494C ; =sub_02084808
	bx r3
	nop
_02084948: .word 0x000005A4
_0208494C: .word sub_02084808
	thumb_func_end sub_02084938

	thumb_func_start sub_02084950
sub_02084950: ; 0x02084950
	ldr r2, _02084960 ; =0x000005A4
	mov r3, #0x11
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _02084964 ; =sub_02084808
	bx r3
	nop
_02084960: .word 0x000005A4
_02084964: .word sub_02084808
	thumb_func_end sub_02084950

	thumb_func_start sub_02084968
sub_02084968: ; 0x02084968
	ldr r2, _02084978 ; =0x000005A4
	mov r3, #0x13
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _0208497C ; =sub_02084808
	bx r3
	nop
_02084978: .word 0x000005A4
_0208497C: .word sub_02084808
	thumb_func_end sub_02084968

	thumb_func_start sub_02084980
sub_02084980: ; 0x02084980
	ldr r2, _02084990 ; =0x000005A4
	mov r3, #0x14
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _02084994 ; =sub_02084808
	bx r3
	nop
_02084990: .word 0x000005A4
_02084994: .word sub_02084808
	thumb_func_end sub_02084980

	thumb_func_start sub_02084998
sub_02084998: ; 0x02084998
	ldr r2, _020849A8 ; =0x000005A4
	mov r3, #0x15
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _020849AC ; =sub_02084808
	bx r3
	nop
_020849A8: .word 0x000005A4
_020849AC: .word sub_02084808
	thumb_func_end sub_02084998

	thumb_func_start sub_020849B0
sub_020849B0: ; 0x020849B0
	ldr r2, _020849C0 ; =0x000005A4
	mov r3, #0x16
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _020849C4 ; =sub_02084808
	bx r3
	nop
_020849C0: .word 0x000005A4
_020849C4: .word sub_02084808
	thumb_func_end sub_020849B0

	thumb_func_start sub_020849C8
sub_020849C8: ; 0x020849C8
	ldr r2, _020849D8 ; =0x000005A4
	mov r3, #0x17
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _020849DC ; =sub_02084808
	bx r3
	nop
_020849D8: .word 0x000005A4
_020849DC: .word sub_02084808
	thumb_func_end sub_020849C8

	thumb_func_start sub_020849E0
sub_020849E0: ; 0x020849E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02084A18
	str r0, [r5, #0]
	cmp r0, #0x1e
	bne _020849F6
	ldr r0, _020849F8 ; =0x00000B32
	mov r1, #0xd
	strh r1, [r4, r0]
_020849F6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020849F8: .word 0x00000B32
	thumb_func_end sub_020849E0

	thumb_func_start sub_020849FC
sub_020849FC: ; 0x020849FC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02084A18
	str r0, [r5, #0]
	cmp r0, #0x1e
	bne _02084A12
	ldr r0, _02084A14 ; =0x00000B32
	mov r1, #0xe
	strh r1, [r4, r0]
_02084A12:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02084A14: .word 0x00000B32
	thumb_func_end sub_020849FC

	thumb_func_start sub_02084A18
sub_02084A18: ; 0x02084A18
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	bl sub_0208337C
	ldr r0, _02084B0C ; =0x00000B29
	ldrb r1, [r4, r0]
	mov r0, #0x2c
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02084B10 ; =0x0000070C
	ldrh r0, [r1, r0]
	mov r1, #5
	bl sub_020E1F6C
	ldr r1, _02084B14 ; =0x00000B2C
	strh r0, [r4, r1]
	sub r0, r1, #3
	ldrb r2, [r4, r0]
	mov r0, #0x2c
	mul r0, r2
	add r2, r4, r0
	ldr r0, _02084B18 ; =0x0000070A
	ldrh r2, [r2, r0]
	ldrh r0, [r4, r1]
	cmp r2, r0
	bhi _02084A72
	add r0, r4, #0
	mov r1, #0x8a
	mov r2, #1
	bl sub_02082708
	ldr r0, _02084B1C ; =0x00000B26
	mov r1, #3
	strb r1, [r4, r0]
	add sp, #4
	mov r0, #0x18
	pop {r3, r4, pc}
_02084A72:
	sub r0, r1, #5
	ldrb r2, [r4, r0]
	mov r0, #0x40
	orr r2, r0
	sub r0, r1, #5
	strb r2, [r4, r0]
	ldrb r0, [r4, r0]
	mov r2, #0x3f
	bic r0, r2
	sub r2, r1, #3
	ldrb r3, [r4, r2]
	mov r2, #0x3f
	and r2, r3
	orr r2, r0
	sub r0, r1, #5
	strb r2, [r4, r0]
	ldr r0, _02084B20 ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	ldr r0, _02084B20 ; =0x000005C8
	add r1, sp, #0
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D50C
	ldr r0, _02084B24 ; =0x000005CC
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, r0]
	bl sub_0200D494
	ldr r0, _02084B28 ; =0x000005A4
	ldr r1, _02084B2C ; =0x00000B27
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	add r0, #0x21
	ldrb r0, [r0]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1a
	bl sub_020805D0
	add r1, r0, #0
	ldr r0, _02084B24 ; =0x000005CC
	add r1, r1, #2
	ldr r0, [r4, r0]
	bl sub_02021D6C
	ldr r0, _02084B24 ; =0x000005CC
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r1, _02084B2C ; =0x00000B27
	add r0, r4, #0
	ldrb r1, [r4, r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1a
	bl sub_0207F8F8
	add r0, r4, #0
	mov r1, #0x24
	mov r2, #1
	bl sub_020826E0
	ldr r0, _02084B30 ; =0x00000B2E
	mov r1, #0
	strh r1, [r4, r0]
	mov r0, #0x1e
	add sp, #4
	pop {r3, r4, pc}
	nop
_02084B0C: .word 0x00000B29
_02084B10: .word 0x0000070C
_02084B14: .word 0x00000B2C
_02084B18: .word 0x0000070A
_02084B1C: .word 0x00000B26
_02084B20: .word 0x000005C8
_02084B24: .word 0x000005CC
_02084B28: .word 0x000005A4
_02084B2C: .word 0x00000B27
_02084B30: .word 0x00000B2E
	thumb_func_end sub_02084A18

	thumb_func_start sub_02084B34
sub_02084B34: ; 0x02084B34
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02084B68 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r1, r0
	beq _02084B64
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	ldr r0, _02084B6C ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	mov r0, #1
_02084B64:
	pop {r4, pc}
	nop
_02084B68: .word 0x021BF67C
_02084B6C: .word 0x000005C8
	thumb_func_end sub_02084B34

	thumb_func_start sub_02084B70
sub_02084B70: ; 0x02084B70
	push {r3, r4, r5, lr}
	mov r1, #0
	mov r2, #0xc
	bl sub_0207CF48
	mov r1, #0xe
	add r4, r0, #0
	bl sub_0207D014
	cmp r0, #1
	beq _02084B90
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x1c
	pop {r3, r4, r5, pc}
_02084B90:
	add r0, r4, #0
	mov r1, #0x1b
	bl sub_0207D014
	cmp r0, #0
	bne _02084BE4
	add r0, r4, #0
	mov r1, #0x1c
	bl sub_0207D014
	cmp r0, #0
	bne _02084BE4
	add r0, r4, #0
	mov r1, #0x1d
	bl sub_0207D014
	cmp r0, #0
	bne _02084BE4
	add r0, r4, #0
	mov r1, #0x1e
	bl sub_0207D014
	cmp r0, #0
	bne _02084BE4
	add r0, r4, #0
	mov r1, #0x1f
	bl sub_0207D014
	cmp r0, #0
	bne _02084BE4
	add r0, r4, #0
	mov r1, #0x20
	bl sub_0207D014
	cmp r0, #0
	bne _02084BE4
	add r0, r4, #0
	mov r1, #0x21
	bl sub_0207D014
	cmp r0, #0
	beq _02084BEE
_02084BE4:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, pc}
_02084BEE:
	add r0, r4, #0
	mov r1, #0x18
	bl sub_0207D014
	cmp r0, #0
	beq _02084C04
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02084C04:
	add r0, r4, #0
	mov r1, #0x19
	bl sub_0207D014
	cmp r0, #0
	beq _02084C1A
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #2
	pop {r3, r4, r5, pc}
_02084C1A:
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0207D014
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	bl sub_0207D014
	lsl r0, r0, #1
	add r5, r5, r0
	add r0, r4, #0
	mov r1, #0x11
	bl sub_0207D014
	lsl r0, r0, #2
	add r5, r5, r0
	add r0, r4, #0
	mov r1, #0x12
	bl sub_0207D014
	lsl r0, r0, #3
	add r5, r5, r0
	add r0, r4, #0
	mov r1, #0x13
	bl sub_0207D014
	lsl r0, r0, #4
	add r5, r5, r0
	add r0, r4, #0
	mov r1, #0x14
	bl sub_0207D014
	lsl r0, r0, #5
	add r5, r5, r0
	cmp r5, #0x10
	bgt _02084C88
	bge _02084CBE
	cmp r5, #8
	bhi _02084CF2
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02084C76: ; jump table
	.short _02084CF2 - _02084C76 - 2 ; case 0
	.short _02084C96 - _02084C76 - 2 ; case 1
	.short _02084CA0 - _02084C76 - 2 ; case 2
	.short _02084CF2 - _02084C76 - 2 ; case 3
	.short _02084CAA - _02084C76 - 2 ; case 4
	.short _02084CF2 - _02084C76 - 2 ; case 5
	.short _02084CF2 - _02084C76 - 2 ; case 6
	.short _02084CF2 - _02084C76 - 2 ; case 7
	.short _02084CB4 - _02084C76 - 2 ; case 8
_02084C88:
	cmp r5, #0x20
	bgt _02084C90
	beq _02084CC8
	b _02084CF2
_02084C90:
	cmp r5, #0x3f
	beq _02084CD2
	b _02084CF2
_02084C96:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #3
	pop {r3, r4, r5, pc}
_02084CA0:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #4
	pop {r3, r4, r5, pc}
_02084CAA:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #5
	pop {r3, r4, r5, pc}
_02084CB4:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #6
	pop {r3, r4, r5, pc}
_02084CBE:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #7
	pop {r3, r4, r5, pc}
_02084CC8:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #8
	pop {r3, r4, r5, pc}
_02084CD2:
	add r0, r4, #0
	mov r1, #0x26
	bl sub_0207D014
	cmp r0, #0
	beq _02084CE8
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_02084CE8:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #9
	pop {r3, r4, r5, pc}
_02084CF2:
	add r0, r4, #0
	mov r1, #0x15
	bl sub_0207D014
	cmp r0, #0
	beq _02084D08
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_02084D08:
	add r0, r4, #0
	mov r1, #0x26
	bl sub_0207D014
	cmp r0, #0
	beq _02084D1E
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_02084D1E:
	add r0, r4, #0
	mov r1, #0x30
	bl sub_0207D014
	cmp r0, #0
	ble _02084D34
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_02084D34:
	bge _02084D40
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x12
	pop {r3, r4, r5, pc}
_02084D40:
	add r0, r4, #0
	mov r1, #0x31
	bl sub_0207D014
	cmp r0, #0
	ble _02084D56
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0xd
	pop {r3, r4, r5, pc}
_02084D56:
	bge _02084D62
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x13
	pop {r3, r4, r5, pc}
_02084D62:
	add r0, r4, #0
	mov r1, #0x32
	bl sub_0207D014
	cmp r0, #0
	ble _02084D78
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0xe
	pop {r3, r4, r5, pc}
_02084D78:
	bge _02084D84
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x14
	pop {r3, r4, r5, pc}
_02084D84:
	add r0, r4, #0
	mov r1, #0x33
	bl sub_0207D014
	cmp r0, #0
	ble _02084D9A
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0xf
	pop {r3, r4, r5, pc}
_02084D9A:
	bge _02084DA6
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x15
	pop {r3, r4, r5, pc}
_02084DA6:
	add r0, r4, #0
	mov r1, #0x34
	bl sub_0207D014
	cmp r0, #0
	ble _02084DBC
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x10
	pop {r3, r4, r5, pc}
_02084DBC:
	bge _02084DC8
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_02084DC8:
	add r0, r4, #0
	mov r1, #0x35
	bl sub_0207D014
	cmp r0, #0
	ble _02084DDE
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x11
	pop {r3, r4, r5, pc}
_02084DDE:
	bge _02084DEA
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x17
	pop {r3, r4, r5, pc}
_02084DEA:
	add r0, r4, #0
	mov r1, #0x1a
	bl sub_0207D014
	cmp r0, #0
	beq _02084E00
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_02084E00:
	add r0, r4, #0
	mov r1, #0x22
	bl sub_0207D014
	cmp r0, #0
	beq _02084E16
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x19
	pop {r3, r4, r5, pc}
_02084E16:
	add r0, r4, #0
	mov r1, #0x23
	bl sub_0207D014
	cmp r0, #0
	beq _02084E2C
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x1a
	pop {r3, r4, r5, pc}
_02084E2C:
	add r0, r4, #0
	mov r1, #0x24
	bl sub_0207D014
	cmp r0, #0
	bne _02084E44
	add r0, r4, #0
	mov r1, #0x25
	bl sub_0207D014
	cmp r0, #0
	beq _02084E4E
_02084E44:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x1b
	pop {r3, r4, r5, pc}
_02084E4E:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x1c
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02084B70

	thumb_func_start sub_02084E58
sub_02084E58: ; 0x02084E58
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, _020851F0 ; =0x000005A4
	add r6, r1, #0
	ldr r1, _020851F4 ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	add r5, r2, #0
	bl sub_0207A0FC
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	add r0, r6, #0
	bl sub_02084B70
	cmp r0, #0x1b
	bls _02084E8C
	b _020852A4
_02084E8C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02084E98: ; jump table
	.short _020852A4 - _02084E98 - 2 ; case 0
	.short _020852A4 - _02084E98 - 2 ; case 1
	.short _020852A4 - _02084E98 - 2 ; case 2
	.short _02084EF4 - _02084E98 - 2 ; case 3
	.short _02084ED0 - _02084E98 - 2 ; case 4
	.short _02084F18 - _02084E98 - 2 ; case 5
	.short _02084F3C - _02084E98 - 2 ; case 6
	.short _02084F60 - _02084E98 - 2 ; case 7
	.short _02084F84 - _02084E98 - 2 ; case 8
	.short _02084FCC - _02084E98 - 2 ; case 9
	.short _02084FA8 - _02084E98 - 2 ; case 10
	.short _020852A4 - _02084E98 - 2 ; case 11
	.short _02084FF0 - _02084E98 - 2 ; case 12
	.short _02085022 - _02084E98 - 2 ; case 13
	.short _02085054 - _02084E98 - 2 ; case 14
	.short _02085086 - _02084E98 - 2 ; case 15
	.short _020850B8 - _02084E98 - 2 ; case 16
	.short _020850EA - _02084E98 - 2 ; case 17
	.short _0208511C - _02084E98 - 2 ; case 18
	.short _02085150 - _02084E98 - 2 ; case 19
	.short _02085184 - _02084E98 - 2 ; case 20
	.short _020851B8 - _02084E98 - 2 ; case 21
	.short _020851EC - _02084E98 - 2 ; case 22
	.short _0208522E - _02084E98 - 2 ; case 23
	.short _020852A4 - _02084E98 - 2 ; case 24
	.short _02085262 - _02084E98 - 2 ; case 25
	.short _02085262 - _02084E98 - 2 ; case 26
	.short _02085294 - _02084E98 - 2 ; case 27
_02084ED0:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x41
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02084EF4:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x5b
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02084F18:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x43
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02084F3C:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x44
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02084F60:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x42
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02084F84:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x49
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02084FA8:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x4a
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02084FCC:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x47
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02084FF0:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x4b
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #0
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02085022:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x4b
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	mov r1, #1
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02085054:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x4b
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #2
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02085086:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x4b
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #3
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_020850B8:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x4b
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #4
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_020850EA:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x4b
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #5
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_0208511C:
	ldr r0, _020851F8 ; =0x0000069C
	add r5, #0x6e
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #0
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02085150:
	ldr r0, _020851F8 ; =0x0000069C
	add r5, #0x6e
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	mov r1, #1
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02085184:
	ldr r0, _020851F8 ; =0x0000069C
	add r5, #0x6e
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #2
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_020851B8:
	ldr r0, _020851F8 ; =0x0000069C
	add r5, #0x6e
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #3
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_020851EC:
	ldr r0, _020851F8 ; =0x0000069C
	b _020851FC
	; .align 2, 0
_020851F0: .word 0x000005A4
_020851F4: .word 0x00000B29
_020851F8: .word 0x0000069C
_020851FC:
	add r5, #0x6e
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #4
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_0208522E:
	ldr r0, _020852B4 ; =0x0000069C
	add r5, #0x6e
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #5
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02085262:
	ldr r0, _020852B4 ; =0x0000069C
	mov r1, #0x48
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	add r2, r5, #0
	bl sub_0200B630
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02085294:
	ldr r2, _020852B4 ; =0x0000069C
	mov r1, #0x45
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	pop {r4, r5, r6, pc}
_020852A4:
	ldr r2, _020852B4 ; =0x0000069C
	mov r1, #0x69
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020852B4: .word 0x0000069C
	thumb_func_end sub_02084E58

	thumb_func_start sub_020852B8
sub_020852B8: ; 0x020852B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02085330 ; =0x000005A4
	ldr r0, [r4, r0]
	ldrh r0, [r0, #0x24]
	bl sub_02084B70
	cmp r0, #0x1c
	bhi _0208532E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020852D6: ; jump table
	.short _0208532E - _020852D6 - 2 ; case 0
	.short _0208532E - _020852D6 - 2 ; case 1
	.short _02085310 - _020852D6 - 2 ; case 2
	.short _02085318 - _020852D6 - 2 ; case 3
	.short _02085318 - _020852D6 - 2 ; case 4
	.short _02085318 - _020852D6 - 2 ; case 5
	.short _02085318 - _020852D6 - 2 ; case 6
	.short _02085318 - _020852D6 - 2 ; case 7
	.short _02085318 - _020852D6 - 2 ; case 8
	.short _02085318 - _020852D6 - 2 ; case 9
	.short _02085318 - _020852D6 - 2 ; case 10
	.short _02085328 - _020852D6 - 2 ; case 11
	.short _02085318 - _020852D6 - 2 ; case 12
	.short _02085318 - _020852D6 - 2 ; case 13
	.short _02085318 - _020852D6 - 2 ; case 14
	.short _02085318 - _020852D6 - 2 ; case 15
	.short _02085318 - _020852D6 - 2 ; case 16
	.short _02085318 - _020852D6 - 2 ; case 17
	.short _02085320 - _020852D6 - 2 ; case 18
	.short _02085320 - _020852D6 - 2 ; case 19
	.short _02085320 - _020852D6 - 2 ; case 20
	.short _02085320 - _020852D6 - 2 ; case 21
	.short _02085320 - _020852D6 - 2 ; case 22
	.short _02085320 - _020852D6 - 2 ; case 23
	.short _0208532E - _020852D6 - 2 ; case 24
	.short _02085318 - _020852D6 - 2 ; case 25
	.short _02085318 - _020852D6 - 2 ; case 26
	.short _02085318 - _020852D6 - 2 ; case 27
	.short _0208532E - _020852D6 - 2 ; case 28
_02085310:
	ldr r1, _02085334 ; =sub_02085A70
	ldr r0, _02085338 ; =0x00000B18
	str r1, [r4, r0]
	pop {r4, pc}
_02085318:
	ldr r1, _0208533C ; =sub_02085384
	ldr r0, _02085338 ; =0x00000B18
	str r1, [r4, r0]
	pop {r4, pc}
_02085320:
	ldr r1, _02085340 ; =sub_02085424
	ldr r0, _02085338 ; =0x00000B18
	str r1, [r4, r0]
	pop {r4, pc}
_02085328:
	ldr r1, _02085344 ; =sub_020855C4
	ldr r0, _02085338 ; =0x00000B18
	str r1, [r4, r0]
_0208532E:
	pop {r4, pc}
	; .align 2, 0
_02085330: .word 0x000005A4
_02085334: .word sub_02085A70
_02085338: .word 0x00000B18
_0208533C: .word sub_02085384
_02085340: .word sub_02085424
_02085344: .word sub_020855C4
	thumb_func_end sub_020852B8

	thumb_func_start sub_02085348
sub_02085348: ; 0x02085348
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02085378 ; =0x00000B28
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	beq _0208535C
	mov r0, #5
	pop {r4, pc}
_0208535C:
	ldr r0, _0208537C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02085374
	ldr r0, _02085380 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	pop {r4, pc}
_02085374:
	mov r0, #5
	pop {r4, pc}
	; .align 2, 0
_02085378: .word 0x00000B28
_0208537C: .word 0x021BF67C
_02085380: .word 0x000005A4
	thumb_func_end sub_02085348

	thumb_func_start sub_02085384
sub_02085384: ; 0x02085384
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r1, _0208540C ; =0x000005A4
	add r5, r0, #0
	ldr r4, [r5, r1]
	bl sub_02086930
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r2, _02085410 ; =0x00000B29
	ldrh r1, [r4, #0x24]
	ldrb r2, [r5, r2]
	ldr r0, [r4, #0]
	mov r3, #0
	bl sub_02096F14
	ldr r1, _02085410 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_0207EF14
	ldr r1, _02085410 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_020821F8
	ldr r1, _02085410 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_020822BC
	ldr r0, _02085410 ; =0x00000B29
	mov r2, #0x2c
	ldrb r1, [r5, r0]
	add r0, r5, #0
	mul r2, r1
	add r3, r5, r2
	ldr r2, _02085414 ; =0x00000712
	ldrh r2, [r3, r2]
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	ldr r1, _0208540C ; =0x000005A4
	add r0, r5, #0
	ldr r1, [r5, r1]
	mov r2, #0
	ldrh r1, [r1, #0x24]
	bl sub_02084E58
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _02085418 ; =0x000005EC
	bl sub_02005748
	ldr r1, _0208541C ; =sub_02085348
	ldr r0, _02085420 ; =0x00000B18
	str r1, [r5, r0]
	mov r0, #5
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0208540C: .word 0x000005A4
_02085410: .word 0x00000B29
_02085414: .word 0x00000712
_02085418: .word 0x000005EC
_0208541C: .word sub_02085348
_02085420: .word 0x00000B18
	thumb_func_end sub_02085384

	thumb_func_start sub_02085424
sub_02085424: ; 0x02085424
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, _020855B0 ; =0x000005A4
	ldr r1, _020855B4 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #0xd
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, _020855B0 ; =0x000005A4
	ldr r6, [r5, r0]
	add r0, r5, #0
	bl sub_02086930
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r2, _020855B4 ; =0x00000B29
	ldrh r1, [r6, #0x24]
	ldrb r2, [r5, r2]
	ldr r0, [r6, #0]
	mov r3, #0
	bl sub_02096F14
	ldr r1, _020855B4 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_0207EF14
	ldr r1, _020855B4 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_020821F8
	ldr r1, _020855B4 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_020822BC
	ldr r0, _020855B4 ; =0x00000B29
	mov r2, #0x2c
	ldrb r1, [r5, r0]
	add r0, r5, #0
	mul r2, r1
	add r3, r5, r2
	ldr r2, _020855B8 ; =0x00000712
	ldrh r2, [r3, r2]
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bne _0208555E
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x18]
	cmp r1, r0
	bne _0208555E
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x14]
	cmp r1, r0
	bne _0208555E
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _0208555E
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0xc]
	cmp r1, r0
	bne _0208555E
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _0208558A
_0208555E:
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	cmp r7, r0
	ldr r1, _020855B0 ; =0x000005A4
	beq _0208557C
	ldr r1, [r5, r1]
	add r0, r5, #0
	ldrh r1, [r1, #0x24]
	mov r2, #0
	bl sub_02084E58
	b _02085598
_0208557C:
	ldr r1, [r5, r1]
	add r0, r5, #0
	ldrh r1, [r1, #0x24]
	mov r2, #1
	bl sub_02084E58
	b _02085598
_0208558A:
	ldr r1, _020855B0 ; =0x000005A4
	add r0, r5, #0
	ldr r1, [r5, r1]
	mov r2, #2
	ldrh r1, [r1, #0x24]
	bl sub_02084E58
_02085598:
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r1, _020855BC ; =sub_02085348
	ldr r0, _020855C0 ; =0x00000B18
	str r1, [r5, r0]
	mov r0, #5
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020855B0: .word 0x000005A4
_020855B4: .word 0x00000B29
_020855B8: .word 0x00000712
_020855BC: .word sub_02085348
_020855C0: .word 0x00000B18
	thumb_func_end sub_02085424

	thumb_func_start sub_020855C4
sub_020855C4: ; 0x020855C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _020856E4 ; =0x000005A4
	add r5, r0, #0
	ldr r4, [r5, r1]
	bl sub_02086930
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r2, _020856E8 ; =0x00000B29
	ldrh r1, [r4, #0x24]
	ldrb r2, [r5, r2]
	ldr r0, [r4, #0]
	mov r3, #0
	bl sub_02096F14
	ldr r0, _020856E4 ; =0x000005A4
	ldr r1, _020856E8 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #0xa3
	mov r2, #0
	str r0, [sp, #8]
	bl sub_02074470
	add r4, r0, #0
	ldr r0, _020856E8 ; =0x00000B29
	ldrb r1, [r5, r0]
	mov r0, #0x2c
	mul r0, r1
	add r1, r5, r0
	ldr r0, _020856EC ; =0x0000070A
	ldrh r1, [r1, r0]
	cmp r1, #0
	bne _02085620
	sub r0, #0x6e
	ldr r0, [r5, r0]
	mov r1, #0x46
	bl sub_0200B1EC
	add r7, r0, #0
	b _0208563E
_02085620:
	cmp r4, r1
	bne _02085632
	sub r0, #0x6e
	ldr r0, [r5, r0]
	mov r1, #0x47
	bl sub_0200B1EC
	add r7, r0, #0
	b _0208563E
_02085632:
	sub r0, #0x6e
	ldr r0, [r5, r0]
	mov r1, #0x40
	bl sub_0200B1EC
	add r7, r0, #0
_0208563E:
	ldr r0, [sp, #8]
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r0, #0
	mov r3, #0x6a
	str r0, [sp]
	mov r1, #1
	ldr r2, _020856E8 ; =0x00000B29
	str r1, [sp, #4]
	ldrb r6, [r5, r2]
	mov r2, #0x2c
	lsl r3, r3, #4
	mul r2, r6
	ldr r0, [r5, r3]
	add r2, r5, r2
	add r3, #0x6a
	ldrh r2, [r2, r3]
	mov r3, #3
	sub r2, r4, r2
	bl sub_0200B60C
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl sub_0200C388
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #8]
	bl sub_0208E9F0
	add r4, r0, #0
	ldr r1, _020856E8 ; =0x00000B29
	lsl r2, r4, #0x18
	ldrb r1, [r5, r1]
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_02083014
	cmp r4, #7
	bne _020856C6
	ldr r1, _020856E8 ; =0x00000B29
	ldr r0, _020856F0 ; =0x00000712
	ldrb r3, [r5, r1]
	add r2, r5, r0
	mov r0, #0x2c
	mul r0, r3
	ldrh r4, [r2, r0]
	ldr r3, _020856F4 ; =0xFFFFF000
	and r4, r3
	mov r3, #7
	orr r3, r4
	strh r3, [r2, r0]
	ldrb r1, [r5, r1]
	add r0, r5, #0
	bl sub_02081FFC
_020856C6:
	ldr r1, _020856E8 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_0207F8F8
	ldr r1, _020856F8 ; =sub_02085704
	ldr r0, _020856FC ; =0x00000B18
	str r1, [r5, r0]
	ldr r0, _02085700 ; =0x000005EC
	bl sub_02005748
	mov r0, #5
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_020856E4: .word 0x000005A4
_020856E8: .word 0x00000B29
_020856EC: .word 0x0000070A
_020856F0: .word 0x00000712
_020856F4: .word 0xFFFFF000
_020856F8: .word sub_02085704
_020856FC: .word 0x00000B18
_02085700: .word 0x000005EC
	thumb_func_end sub_020855C4

	thumb_func_start sub_02085704
sub_02085704: ; 0x02085704
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02085794 ; =0x000005A4
	ldr r1, _02085798 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	ldr r1, _02085798 ; =0x00000B29
	add r4, r0, #0
	ldrb r2, [r5, r1]
	ldr r0, _0208579C ; =0x0000070A
	mov r1, #0x2c
	add r3, r2, #0
	add r0, r5, r0
	mul r3, r1
	ldrh r1, [r0, r3]
	cmp r4, r1
	beq _02085738
	add r1, r1, #1
	strh r1, [r0, r3]
_02085738:
	ldr r1, _02085798 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_02082098
	ldr r1, _02085798 ; =0x00000B29
	add r0, r5, #4
	ldrb r2, [r5, r1]
	lsl r1, r2, #2
	add r1, r2, r1
	add r1, r1, #3
	lsl r1, r1, #4
	add r0, r0, r1
	mov r1, #0
	bl sub_0201ADA4
	ldr r1, _02085798 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_02082058
	ldr r1, _02085798 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_02082104
	ldr r0, _02085798 ; =0x00000B29
	mov r1, #0x2c
	ldrb r0, [r5, r0]
	add r2, r0, #0
	mul r2, r1
	ldr r0, _0208579C ; =0x0000070A
	add r2, r5, r2
	ldrh r0, [r2, r0]
	cmp r4, r0
	bne _02085790
	add r0, r5, #0
	sub r1, #0x2d
	mov r2, #1
	bl sub_02082708
	ldr r1, _020857A0 ; =sub_02085348
	ldr r0, _020857A4 ; =0x00000B18
	str r1, [r5, r0]
_02085790:
	mov r0, #5
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02085794: .word 0x000005A4
_02085798: .word 0x00000B29
_0208579C: .word 0x0000070A
_020857A0: .word sub_02085348
_020857A4: .word 0x00000B18
	thumb_func_end sub_02085704

	thumb_func_start sub_020857A8
sub_020857A8: ; 0x020857A8
	push {r3, lr}
	mov r1, #0x18
	mov r2, #0xc
	bl sub_0207CFF0
	cmp r0, #0
	beq _020857BA
	mov r0, #1
	pop {r3, pc}
_020857BA:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020857A8

	thumb_func_start sub_020857C0
sub_020857C0: ; 0x020857C0
	push {r3, r4, r5, r6}
	cmp r1, #6
	blo _020857CC
	mov r0, #0xff
	pop {r3, r4, r5, r6}
	bx lr
_020857CC:
	bhs _020857F8
	ldr r2, _02085800 ; =0x0000070A
	mov r3, #0x2c
	add r4, r2, #0
	add r4, #0x23
_020857D6:
	add r5, r1, #0
	mul r5, r3
	add r6, r0, r5
	ldrb r5, [r6, r4]
	cmp r5, #0
	beq _020857EE
	ldrh r5, [r6, r2]
	cmp r5, #0
	bne _020857EE
	add r0, r1, #0
	pop {r3, r4, r5, r6}
	bx lr
_020857EE:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #6
	blo _020857D6
_020857F8:
	mov r0, #0xff
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02085800: .word 0x0000070A
	thumb_func_end sub_020857C0

	thumb_func_start sub_02085804
sub_02085804: ; 0x02085804
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _02085A40 ; =0x00000B26
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #3
	bls _02085812
	b _02085A3A
_02085812:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0208581E: ; jump table
	.short _02085826 - _0208581E - 2 ; case 0
	.short _02085876 - _0208581E - 2 ; case 1
	.short _02085940 - _0208581E - 2 ; case 2
	.short _020859C4 - _0208581E - 2 ; case 3
_02085826:
	mov r1, #0
	bl sub_020857C0
	ldr r1, _02085A44 ; =0x00000B29
	strb r0, [r4, r1]
	ldrb r0, [r4, r1]
	cmp r0, #0xff
	bne _0208586A
	ldr r2, _02085A48 ; =0x0000069C
	mov r1, #0x69
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r1, _02085A4C ; =sub_02085348
	ldr r0, _02085A50 ; =0x00000B18
	mov r2, #1
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0
	bl sub_0208327C
	ldr r0, _02085A44 ; =0x00000B29
	mov r1, #7
	strb r1, [r4, r0]
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_0208586A:
	cmp r0, #0
	beq _02085876
	add r0, r4, #0
	mov r1, #0
	bl sub_0207F8F8
_02085876:
	ldr r0, _02085A54 ; =0x000005A4
	ldr r1, _02085A44 ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02086930
	add r3, r0, #0
	mov r0, #0xc
	str r0, [sp]
	ldr r1, _02085A54 ; =0x000005A4
	add r0, r5, #0
	ldr r1, [r4, r1]
	mov r2, #0
	ldrh r1, [r1, #0x24]
	bl sub_02096954
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	ldr r0, _02085A48 ; =0x0000069C
	mov r1, #0x46
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	ldr r7, _02085A44 ; =0x00000B29
	ldr r3, _02085A58 ; =0x00000712
	ldrb r5, [r4, r7]
	mov r2, #0x2c
	add r1, r4, r3
	add r0, r5, #0
	mul r0, r2
	ldrh r6, [r1, r0]
	ldr r5, _02085A5C ; =0xFFFFF000
	and r6, r5
	mov r5, #7
	orr r5, r6
	strh r5, [r1, r0]
	ldrb r1, [r4, r7]
	add r0, r4, #0
	mul r2, r1
	add r2, r4, r2
	ldrh r2, [r2, r3]
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	add r1, r7, #0
	ldrb r1, [r4, r1]
	add r0, r4, #0
	bl sub_02081FFC
	add r1, r7, #0
	ldrb r1, [r4, r1]
	add r0, r4, #0
	bl sub_0207F8F8
	add r1, r7, #0
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	bl sub_0208327C
	ldr r0, _02085A60 ; =0x000005EC
	bl sub_02005748
	sub r0, r7, #3
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02085A3A
_02085940:
	ldr r0, _02085A54 ; =0x000005A4
	add r1, r1, #3
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	ldr r2, _02085A44 ; =0x00000B29
	add r5, r0, #0
	ldr r0, _02085A64 ; =0x0000070A
	ldrb r3, [r4, r2]
	add r1, r4, r0
	mov r0, #0x2c
	mul r0, r3
	ldrh r3, [r1, r0]
	add r3, r3, #1
	strh r3, [r1, r0]
	ldrb r1, [r4, r2]
	add r0, r4, #0
	bl sub_02082098
	ldr r1, _02085A44 ; =0x00000B29
	add r0, r4, #4
	ldrb r2, [r4, r1]
	lsl r1, r2, #2
	add r1, r2, r1
	add r1, r1, #3
	lsl r1, r1, #4
	add r0, r0, r1
	mov r1, #0
	bl sub_0201ADA4
	ldr r1, _02085A44 ; =0x00000B29
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl sub_02082058
	ldr r1, _02085A44 ; =0x00000B29
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl sub_02082104
	ldr r0, _02085A44 ; =0x00000B29
	mov r1, #0x2c
	ldrb r0, [r4, r0]
	add r2, r0, #0
	mul r2, r1
	ldr r0, _02085A64 ; =0x0000070A
	add r2, r4, r2
	ldrh r0, [r2, r0]
	cmp r5, r0
	bne _02085A3A
	add r0, r4, #0
	sub r1, #0x2d
	mov r2, #1
	bl sub_02082708
	ldr r0, _02085A40 ; =0x00000B26
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02085A3A
_020859C4:
	add r0, r1, #2
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _02085A3A
	ldr r0, _02085A68 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02085A3A
	ldr r0, _02085A6C ; =0x000005DC
	bl sub_02005748
	ldr r0, _02085A44 ; =0x00000B29
	ldrb r5, [r4, r0]
	add r0, r4, #0
	add r1, r5, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_020857C0
	ldr r1, _02085A44 ; =0x00000B29
	strb r0, [r4, r1]
	ldrb r0, [r4, r1]
	cmp r0, #0xff
	beq _02085A16
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0207F8F8
	ldr r0, _02085A40 ; =0x00000B26
	mov r1, #1
	strb r1, [r4, r0]
	b _02085A3A
_02085A16:
	ldr r0, _02085A54 ; =0x000005A4
	mov r2, #1
	ldr r1, [r4, r0]
	mov r3, #0xc
	ldr r0, [r1, #4]
	ldrh r1, [r1, #0x24]
	bl sub_0207D60C
	ldr r0, _02085A54 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _02085A44 ; =0x00000B29
	mov r1, #7
	strb r1, [r4, r0]
	mov r0, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02085A3A:
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02085A40: .word 0x00000B26
_02085A44: .word 0x00000B29
_02085A48: .word 0x0000069C
_02085A4C: .word sub_02085348
_02085A50: .word 0x00000B18
_02085A54: .word 0x000005A4
_02085A58: .word 0x00000712
_02085A5C: .word 0xFFFFF000
_02085A60: .word 0x000005EC
_02085A64: .word 0x0000070A
_02085A68: .word 0x021BF67C
_02085A6C: .word 0x000005DC
	thumb_func_end sub_02085804

	thumb_func_start sub_02085A70
sub_02085A70: ; 0x02085A70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02085C14 ; =0x000005A4
	ldr r1, _02085C18 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #0xa4
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	ldr r1, _02085C1C ; =0x00000B2C
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0xa5
	bl sub_02074470
	ldr r1, _02085C20 ; =0x00000B2E
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0xa6
	bl sub_02074470
	mov r1, #0xb3
	lsl r1, r1, #4
	strh r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0xa8
	mov r2, #0
	bl sub_02074470
	ldr r1, _02085C24 ; =0x00000B32
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0xa9
	bl sub_02074470
	ldr r1, _02085C28 ; =0x00000B34
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0xa7
	bl sub_02074470
	ldr r1, _02085C2C ; =0x00000B36
	strh r0, [r5, r1]
	ldr r0, _02085C14 ; =0x000005A4
	ldr r6, [r5, r0]
	add r0, r5, #0
	bl sub_02086930
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r2, _02085C18 ; =0x00000B29
	ldrh r1, [r6, #0x24]
	ldrb r2, [r5, r2]
	ldr r0, [r6, #0]
	mov r3, #0
	bl sub_02096F14
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	ldr r1, _02085C18 ; =0x00000B29
	ldrb r2, [r5, r1]
	mov r1, #0x2c
	mul r1, r2
	add r2, r5, r1
	ldr r1, _02085C30 ; =0x0000070E
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	ldr r1, _02085C18 ; =0x00000B29
	ldrb r2, [r5, r1]
	mov r1, #0x2c
	mul r1, r2
	add r2, r5, r1
	ldr r1, _02085C34 ; =0x0000070A
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	ldr r1, _02085C18 ; =0x00000B29
	ldrb r2, [r5, r1]
	mov r1, #0x2c
	mul r1, r2
	add r2, r5, r1
	ldr r1, _02085C38 ; =0x0000070C
	strh r0, [r2, r1]
	sub r1, #0x70
	ldr r0, [r5, r1]
	mov r1, #0xc1
	bl sub_0200B1EC
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r0, #0
	mov r3, #0x6a
	str r0, [sp]
	mov r1, #1
	ldr r2, _02085C18 ; =0x00000B29
	str r1, [sp, #4]
	ldrb r6, [r5, r2]
	mov r2, #0x2c
	lsl r3, r3, #4
	mul r2, r6
	ldr r0, [r5, r3]
	add r2, r5, r2
	add r3, #0x6e
	ldrh r2, [r2, r3]
	mov r3, #3
	bl sub_0200B60C
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl sub_0200C388
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0208E9F0
	add r4, r0, #0
	ldr r1, _02085C18 ; =0x00000B29
	lsl r2, r4, #0x18
	ldrb r1, [r5, r1]
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_02083014
	cmp r4, #7
	bne _02085BD2
	ldr r1, _02085C18 ; =0x00000B29
	ldr r0, _02085C3C ; =0x00000712
	ldrb r3, [r5, r1]
	add r2, r5, r0
	mov r0, #0x2c
	mul r0, r3
	ldrh r4, [r2, r0]
	ldr r3, _02085C40 ; =0xFFFFF000
	and r4, r3
	mov r3, #7
	orr r3, r4
	strh r3, [r2, r0]
	ldrb r1, [r5, r1]
	add r0, r5, #0
	bl sub_02081FFC
_02085BD2:
	ldr r1, _02085C18 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_0207F8F8
	ldr r0, _02085C44 ; =sub_02085704
	ldr r1, _02085C48 ; =0x00000B18
	str r0, [r5, r1]
	add r1, #0x11
	ldrb r1, [r5, r1]
	add r0, r5, #0
	bl sub_020821F8
	ldr r1, _02085C18 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_020822BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r1, _02085C4C ; =sub_02085C50
	ldr r0, _02085C48 ; =0x00000B18
	str r1, [r5, r0]
	mov r1, #0
	add r0, #0x13
	strb r1, [r5, r0]
	mov r0, #5
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02085C14: .word 0x000005A4
_02085C18: .word 0x00000B29
_02085C1C: .word 0x00000B2C
_02085C20: .word 0x00000B2E
_02085C24: .word 0x00000B32
_02085C28: .word 0x00000B34
_02085C2C: .word 0x00000B36
_02085C30: .word 0x0000070E
_02085C34: .word 0x0000070A
_02085C38: .word 0x0000070C
_02085C3C: .word 0x00000712
_02085C40: .word 0xFFFFF000
_02085C44: .word sub_02085704
_02085C48: .word 0x00000B18
_02085C4C: .word sub_02085C50
	thumb_func_end sub_02085A70

	thumb_func_start sub_02085C50
sub_02085C50: ; 0x02085C50
	push {r3, r4, r5, lr}
	ldr r1, _02085ED0 ; =0x00000B2B
	add r4, r0, #0
	ldrb r0, [r4, r1]
	cmp r0, #6
	bhi _02085D0C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02085C68: ; jump table
	.short _02085C76 - _02085C68 - 2 ; case 0
	.short _02085CA0 - _02085C68 - 2 ; case 1
	.short _02085CBE - _02085C68 - 2 ; case 2
	.short _02085CE4 - _02085C68 - 2 ; case 3
	.short _02085DE4 - _02085C68 - 2 ; case 4
	.short _02085E08 - _02085C68 - 2 ; case 5
	.short _02085E78 - _02085C68 - 2 ; case 6
_02085C76:
	sub r0, r1, #3
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _02085D0C
	ldr r0, _02085ED4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02085D0C
	ldr r0, _02085ED8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_020829DC
	ldr r0, _02085ED0 ; =0x00000B2B
	mov r1, #1
	strb r1, [r4, r0]
	b _02085ECC
_02085CA0:
	ldr r0, _02085ED4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02085D0C
	ldr r0, _02085ED8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_02082B58
	ldr r0, _02085ED0 ; =0x00000B2B
	mov r1, #2
	strb r1, [r4, r0]
	b _02085ECC
_02085CBE:
	ldr r0, _02085ED4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02085D0C
	ldr r0, _02085ED8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_02082C10
	ldr r0, _02085ED0 ; =0x00000B2B
	mov r1, #3
	strb r1, [r4, r0]
	ldr r0, _02085EDC ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	str r1, [r0, #0x34]
	b _02085ECC
_02085CE4:
	ldr r0, _02085EDC ; =0x000005A4
	sub r1, r1, #2
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	ldr r1, _02085EDC ; =0x000005A4
	add r5, r0, #0
	ldr r2, [r4, r1]
	add r1, r2, #0
	add r1, #0x34
	add r2, #0x26
	bl sub_0207727C
	cmp r0, #0
	beq _02085D16
	ldr r1, _02085EE0 ; =0x0000FFFE
	cmp r0, r1
	bne _02085D0E
_02085D0C:
	b _02085ECC
_02085D0E:
	add r1, r1, #1
	cmp r0, r1
	beq _02085D1E
	b _02085D88
_02085D16:
	ldr r0, _02085ED0 ; =0x00000B2B
	mov r1, #6
	strb r1, [r4, r0]
	b _02085ECC
_02085D1E:
	add r0, r5, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r2, #0x6a
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	sub r2, #0xfc
	ldr r2, [r4, r2]
	mov r1, #1
	ldrh r2, [r2, #0x26]
	bl sub_0200B630
	ldr r0, _02085EE4 ; =0x0000069C
	mov r1, #0x34
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _02085EE8 ; =sub_02085FB4
	ldr r1, _02085EEC ; =0x00000B1C
	ldr r2, _02085EF0 ; =sub_02086008
	str r0, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r4, r1]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_02085D88:
	add r0, r5, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r2, #0x6a
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	sub r2, #0xfc
	ldr r2, [r4, r2]
	mov r1, #1
	ldrh r2, [r2, #0x26]
	bl sub_0200B630
	ldr r0, _02085EE4 ; =0x0000069C
	mov r1, #0xc2
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _02085ED0 ; =0x00000B2B
	mov r1, #4
	strb r1, [r4, r0]
	b _02085ECC
_02085DE4:
	sub r0, r1, #3
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _02085ECC
	ldr r0, _02085ED4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02085ECC
	ldr r0, _02085ED8 ; =0x000005DC
	bl sub_02005748
	ldr r0, _02085ED0 ; =0x00000B2B
	mov r1, #3
	strb r1, [r4, r0]
	b _02085ECC
_02085E08:
	ldr r0, _02085ED4 ; =0x021BF67C
	ldr r2, [r0, #0x48]
	mov r0, #3
	tst r0, r2
	beq _02085ECC
	ldr r0, _02085EDC ; =0x000005A4
	sub r1, r1, #2
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	ldr r2, _02085EDC ; =0x000005A4
	add r1, r0, #0
	ldr r2, [r4, r2]
	add r0, r4, #0
	add r2, #0x28
	ldrb r2, [r2]
	bl sub_02086590
	ldr r0, _02085EE4 ; =0x0000069C
	mov r1, #0x3d
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r2, #0x6a
	lsl r2, r2, #4
	add r5, r0, #0
	ldr r0, [r4, r2]
	sub r2, #0xfc
	ldr r2, [r4, r2]
	mov r1, #1
	ldrh r2, [r2, #0x26]
	bl sub_0200B630
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _02085ED0 ; =0x00000B2B
	mov r1, #4
	strb r1, [r4, r0]
	b _02085ECC
_02085E78:
	ldr r0, _02085EDC ; =0x000005A4
	sub r1, r1, #2
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r5, r0, #0
	ldr r0, _02085EDC ; =0x000005A4
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A354
	add r3, r0, #0
	ldr r0, _02085EDC ; =0x000005A4
	lsl r3, r3, #0x10
	ldr r1, [r4, r0]
	mov r2, #0
	add r0, r1, #0
	add r0, #0x3c
	str r0, [sp]
	ldr r0, [r1, #0]
	add r1, r5, #0
	lsr r3, r3, #0x10
	bl sub_02076B94
	ldr r1, _02085EDC ; =0x000005A4
	ldr r2, [r4, r1]
	strh r0, [r2, #0x38]
	ldr r1, [r4, r1]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	beq _02085EC2
	mov r0, #9
	b _02085EC4
_02085EC2:
	mov r0, #0
_02085EC4:
	add r1, #0x23
	strb r0, [r1]
	mov r0, #0x20
	pop {r3, r4, r5, pc}
_02085ECC:
	mov r0, #5
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02085ED0: .word 0x00000B2B
_02085ED4: .word 0x021BF67C
_02085ED8: .word 0x000005DC
_02085EDC: .word 0x000005A4
_02085EE0: .word 0x0000FFFE
_02085EE4: .word 0x0000069C
_02085EE8: .word sub_02085FB4
_02085EEC: .word 0x00000B1C
_02085EF0: .word sub_02086008
	thumb_func_end sub_02085C50

	thumb_func_start sub_02085EF4
sub_02085EF4: ; 0x02085EF4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02085FA0 ; =sub_02085C50
	ldr r1, _02085FA4 ; =0x00000B18
	mov r2, #3
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x13
	strb r2, [r4, r0]
	ldr r0, _02085FA8 ; =0x000005A4
	add r1, #0x11
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r5, r0, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	ldr r0, _02085FA8 ; =0x000005A4
	ldr r2, [r4, r0]
	add r1, r2, #0
	add r1, #0x28
	ldrb r1, [r1]
	cmp r1, #4
	bne _02085F4A
	add r0, #0xfc
	ldrh r2, [r2, #0x26]
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200B630
	add r0, r4, #0
	bl sub_02086008
	pop {r3, r4, r5, pc}
_02085F4A:
	add r0, r5, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200B630
	ldr r0, _02085FAC ; =0x0000069C
	mov r1, #0x3c
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _02085FB0 ; =0x00000B26
	mov r1, #5
	strb r1, [r4, r0]
	add r0, r0, #5
	strb r1, [r4, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_02085FA0: .word sub_02085C50
_02085FA4: .word 0x00000B18
_02085FA8: .word 0x000005A4
_02085FAC: .word 0x0000069C
_02085FB0: .word 0x00000B26
	thumb_func_end sub_02085EF4

	thumb_func_start sub_02085FB4
sub_02085FB4: ; 0x02085FB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02085FFC ; =0x0000069C
	mov r1, #0x3b
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _02086000 ; =0x000005A4
	mov r1, #5
	ldr r0, [r5, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _02086004 ; =0x00000B26
	mov r1, #0x19
	strb r1, [r5, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_02085FFC: .word 0x0000069C
_02086000: .word 0x000005A4
_02086004: .word 0x00000B26
	thumb_func_end sub_02085FB4

	thumb_func_start sub_02086008
sub_02086008: ; 0x02086008
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02086050 ; =0x0000069C
	mov r1, #0x37
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _02086054 ; =sub_02086060
	ldr r1, _02086058 ; =0x00000B1C
	ldr r2, _0208605C ; =sub_020860AC
	str r0, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r5, r1]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02086050: .word 0x0000069C
_02086054: .word sub_02086060
_02086058: .word 0x00000B1C
_0208605C: .word sub_020860AC
	thumb_func_end sub_02086008

	thumb_func_start sub_02086060
sub_02086060: ; 0x02086060
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020860A4 ; =0x0000069C
	mov r1, #0x3a
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _020860A8 ; =0x00000B26
	mov r1, #5
	strb r1, [r5, r0]
	mov r1, #4
	add r0, r0, #5
	strb r1, [r5, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_020860A4: .word 0x0000069C
_020860A8: .word 0x00000B26
	thumb_func_end sub_02086060

	thumb_func_start sub_020860AC
sub_020860AC: ; 0x020860AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020860F4 ; =0x0000069C
	mov r1, #0x34
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _020860F8 ; =sub_02085FB4
	ldr r1, _020860FC ; =0x00000B1C
	ldr r2, _02086100 ; =sub_02086008
	str r0, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r5, r1]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020860F4: .word 0x0000069C
_020860F8: .word sub_02085FB4
_020860FC: .word 0x00000B1C
_02086100: .word sub_02086008
	thumb_func_end sub_020860AC

	thumb_func_start sub_02086104
sub_02086104: ; 0x02086104
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02086158 ; =0x000005A4
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_0208610E:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [r5, r7]
	ldrh r1, [r0, #0x26]
	cmp r2, r1
	bne _0208612A
	mov r0, #0xfd
	pop {r3, r4, r5, r6, r7, pc}
_0208612A:
	cmp r2, #0
	beq _02086138
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #4
	blo _0208610E
_02086138:
	ldrh r0, [r0, #0x24]
	bl sub_0207D2B4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02077FB4
	cmp r0, #0
	bne _0208614E
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_0208614E:
	cmp r4, #4
	bne _02086154
	mov r4, #0xfe
_02086154:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02086158: .word 0x000005A4
	thumb_func_end sub_02086104

	thumb_func_start sub_0208615C
sub_0208615C: ; 0x0208615C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, _020862DC ; =0x000005A4
	ldr r1, _020862E0 ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r6, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02086104
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r2, #0x6a
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	sub r2, #0xfc
	ldr r2, [r4, r2]
	mov r1, #1
	ldrh r2, [r2, #0x26]
	bl sub_0200B630
	cmp r5, #0xfd
	bhi _020861BE
	bhs _02086216
	cmp r5, #3
	bhi _020861C4
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020861B6: ; jump table
	.short _020861CC - _020861B6 - 2 ; case 0
	.short _020861CC - _020861B6 - 2 ; case 1
	.short _020861CC - _020861B6 - 2 ; case 2
	.short _020861CC - _020861B6 - 2 ; case 3
_020861BE:
	cmp r5, #0xfe
	bhi _020861C6
	beq _02086256
_020861C4:
	b _020862D6
_020861C6:
	cmp r5, #0xff
	beq _02086298
	b _020862D6
_020861CC:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_02086590
	ldr r0, _020862E4 ; =0x0000069C
	mov r1, #0x3d
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _020862DC ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _020862E8 ; =0x00000B26
	mov r1, #0x19
	strb r1, [r4, r0]
	b _020862D6
_02086216:
	ldr r0, _020862E4 ; =0x0000069C
	mov r1, #0x3f
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _020862DC ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _020862E8 ; =0x00000B26
	mov r1, #0x19
	strb r1, [r4, r0]
	b _020862D6
_02086256:
	ldr r0, _020862E4 ; =0x0000069C
	mov r1, #0x34
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _020862EC ; =sub_02086438
	ldr r1, _020862F0 ; =0x00000B1C
	ldr r2, _020862F4 ; =sub_0208648C
	str r0, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r4, r1]
	b _020862D6
_02086298:
	ldr r0, _020862E4 ; =0x0000069C
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _020862DC ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _020862E8 ; =0x00000B26
	mov r1, #0x19
	strb r1, [r4, r0]
_020862D6:
	mov r0, #0x18
	pop {r4, r5, r6, pc}
	nop
_020862DC: .word 0x000005A4
_020862E0: .word 0x00000B29
_020862E4: .word 0x0000069C
_020862E8: .word 0x00000B26
_020862EC: .word sub_02086438
_020862F0: .word 0x00000B1C
_020862F4: .word sub_0208648C
	thumb_func_end sub_0208615C

	thumb_func_start sub_020862F8
sub_020862F8: ; 0x020862F8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02086390 ; =0x000005A4
	ldr r1, _02086394 ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r5, r0, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	ldr r0, _02086390 ; =0x000005A4
	ldr r2, [r4, r0]
	add r1, r2, #0
	add r1, #0x28
	ldrb r1, [r1]
	cmp r1, #4
	bne _02086340
	add r0, #0xfc
	ldrh r2, [r2, #0x26]
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200B630
	add r0, r4, #0
	bl sub_0208648C
	pop {r3, r4, r5, pc}
_02086340:
	add r0, r5, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200B630
	ldr r0, _02086398 ; =0x0000069C
	mov r1, #0x3c
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _0208639C ; =0x00000B26
	mov r1, #0x16
	strb r1, [r4, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02086390: .word 0x000005A4
_02086394: .word 0x00000B29
_02086398: .word 0x0000069C
_0208639C: .word 0x00000B26
	thumb_func_end sub_020862F8

	thumb_func_start sub_020863A0
sub_020863A0: ; 0x020863A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02086424 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02086420
	ldr r0, _02086428 ; =0x000005A4
	ldr r1, _0208642C ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	ldr r2, _02086428 ; =0x000005A4
	add r1, r0, #0
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r2, #0x28
	ldrb r2, [r2]
	bl sub_02086590
	ldr r0, _02086430 ; =0x0000069C
	mov r1, #0x3d
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r2, #0x6a
	lsl r2, r2, #4
	add r4, r0, #0
	ldr r0, [r5, r2]
	sub r2, #0xfc
	ldr r2, [r5, r2]
	mov r1, #1
	ldrh r2, [r2, #0x26]
	bl sub_0200B630
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _02086428 ; =0x000005A4
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _02086434 ; =0x00000B26
	mov r1, #0x19
	strb r1, [r5, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_02086420:
	mov r0, #0x16
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02086424: .word 0x021BF67C
_02086428: .word 0x000005A4
_0208642C: .word 0x00000B29
_02086430: .word 0x0000069C
_02086434: .word 0x00000B26
	thumb_func_end sub_020863A0

	thumb_func_start sub_02086438
sub_02086438: ; 0x02086438
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02086480 ; =0x0000069C
	mov r1, #0x3b
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _02086484 ; =0x000005A4
	mov r1, #4
	ldr r0, [r5, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _02086488 ; =0x00000B26
	mov r1, #0x19
	strb r1, [r5, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_02086480: .word 0x0000069C
_02086484: .word 0x000005A4
_02086488: .word 0x00000B26
	thumb_func_end sub_02086438

	thumb_func_start sub_0208648C
sub_0208648C: ; 0x0208648C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020864D4 ; =0x0000069C
	mov r1, #0x37
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _020864D8 ; =sub_020864E4
	ldr r1, _020864DC ; =0x00000B1C
	ldr r2, _020864E0 ; =sub_02086538
	str r0, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r5, r1]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020864D4: .word 0x0000069C
_020864D8: .word sub_020864E4
_020864DC: .word 0x00000B1C
_020864E0: .word sub_02086538
	thumb_func_end sub_0208648C

	thumb_func_start sub_020864E4
sub_020864E4: ; 0x020864E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0208652C ; =0x0000069C
	mov r1, #0x3a
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _02086530 ; =0x000005A4
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _02086534 ; =0x00000B26
	mov r1, #0x19
	strb r1, [r5, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_0208652C: .word 0x0000069C
_02086530: .word 0x000005A4
_02086534: .word 0x00000B26
	thumb_func_end sub_020864E4

	thumb_func_start sub_02086538
sub_02086538: ; 0x02086538
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02086580 ; =0x0000069C
	mov r1, #0x34
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _02086584 ; =sub_02086438
	ldr r1, _02086588 ; =0x00000B1C
	ldr r2, _0208658C ; =sub_0208648C
	str r0, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r5, r1]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02086580: .word 0x0000069C
_02086584: .word sub_02086438
_02086588: .word 0x00000B1C
_0208658C: .word sub_0208648C
	thumb_func_end sub_02086538

	thumb_func_start sub_02086590
sub_02086590: ; 0x02086590
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _02086610 ; =0x000005A4
	add r6, r2, #0
	ldr r0, [r5, r0]
	add r4, r1, #0
	ldrh r0, [r0, #0x26]
	add r1, r6, #0
	add r1, #0x36
	str r0, [sp]
	add r0, r4, #0
	add r2, sp, #0
	bl sub_02074B30
	mov r0, #0
	add r1, r6, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, #0x3e
	add r2, sp, #0
	bl sub_02074B30
	ldr r0, _02086610 ; =0x000005A4
	mov r1, #0
	ldr r0, [r5, r0]
	ldrh r0, [r0, #0x26]
	bl sub_020790DC
	add r6, #0x3a
	str r0, [sp]
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0
	bl sub_02074B30
	ldr r0, _02086610 ; =0x000005A4
	ldr r1, [r5, r0]
	ldrh r0, [r1, #0x24]
	cmp r0, #0
	beq _0208660C
	ldrh r0, [r1, #0x26]
	bl sub_0207D28C
	cmp r0, #0
	bne _020865FC
	ldr r0, _02086610 ; =0x000005A4
	mov r2, #1
	ldr r1, [r5, r0]
	mov r3, #0xc
	ldr r0, [r1, #4]
	ldrh r1, [r1, #0x24]
	bl sub_0207D60C
_020865FC:
	add r0, r5, #0
	bl sub_02086930
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #4
	bl sub_02075C74
_0208660C:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02086610: .word 0x000005A4
	thumb_func_end sub_02086590

	thumb_func_start sub_02086614
sub_02086614: ; 0x02086614
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02086690 ; =0x000005A4
	add r6, r1, #0
	ldr r1, _02086694 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r1, r6, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, _02086698 ; =0x0000069C
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r1, #0xa2
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B630
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, #8
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl sub_0200C388
	add r0, r7, #0
	bl sub_020237BC
	cmp r4, #0
	ldr r1, _0208669C ; =0x000006FC
	bne _02086680
	ldr r0, [r5, r1]
	sub r1, #0x54
	mov r2, #2
	ldr r1, [r5, r1]
	mvn r2, r2
	bl sub_02013A6C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02086680:
	ldr r0, [r5, r1]
	sub r1, #0x54
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_02013A6C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02086690: .word 0x000005A4
_02086694: .word 0x00000B29
_02086698: .word 0x0000069C
_0208669C: .word 0x000006FC
	thumb_func_end sub_02086614

	thumb_func_start sub_020866A0
sub_020866A0: ; 0x020866A0
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	cmp r1, #0
	bne _020866B4
	mov r1, #0x29
	mov r2, #1
	bl sub_020826F4
	b _020866BC
_020866B4:
	mov r1, #0x28
	mov r2, #1
	bl sub_020826F4
_020866BC:
	mov r0, #4
	mov r1, #0xc
	bl sub_02013A04
	ldr r1, _02086770 ; =0x000006FC
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #0
	bl sub_02086614
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_02086614
	add r0, r5, r0
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	mov r1, #2
	bl sub_02086614
	add r0, r5, r0
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	mov r1, #3
	bl sub_02086614
	add r0, r5, r0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, _02086770 ; =0x000006FC
	mov r2, #0
	ldr r0, [r4, r0]
	str r0, [sp, #8]
	mov r0, #0x91
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0xc]
	add r0, sp, #8
	strb r2, [r0, #8]
	mov r2, #1
	strb r2, [r0, #9]
	mov r2, #4
	strb r2, [r0, #0xa]
	ldrb r3, [r0, #0xb]
	mov r2, #0xf
	bic r3, r2
	strb r3, [r0, #0xb]
	ldrb r3, [r0, #0xb]
	mov r2, #0x30
	bic r3, r2
	strb r3, [r0, #0xb]
	cmp r1, #4
	ldrb r2, [r0, #0xb]
	bne _0208673A
	mov r1, #0xc0
	bic r2, r1
	mov r1, #0x40
	orr r1, r2
	strb r1, [r0, #0xb]
	b _02086740
_0208673A:
	mov r1, #0xc0
	bic r2, r1
	strb r2, [r0, #0xb]
_02086740:
	mov r0, #0x91
	lsl r0, r0, #2
	mov r1, #1
	add r0, r4, r0
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200DC48
	mov r0, #0xc
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #8
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	mov r1, #7
	lsl r1, r1, #8
	str r0, [r4, r1]
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02086770: .word 0x000006FC
	thumb_func_end sub_020866A0

	thumb_func_start sub_02086774
sub_02086774: ; 0x02086774
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_02001BE0
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02086796
	add r0, r0, #1
	cmp r4, r0
	beq _02086890
	b _020867D2
_02086796:
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
	mov r0, #0x91
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200DC9C
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _02086898 ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	add r0, r5, #0
	mov r1, #0x20
	mov r2, #1
	bl sub_020826E0
	add sp, #8
	mov r0, #4
	pop {r4, r5, r6, pc}
_020867D2:
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
	mov r0, #0x91
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200DC9C
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _02086898 ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _0208689C ; =0x000005A4
	ldr r6, [r5, r0]
	add r0, r5, #0
	bl sub_02086930
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r2, _020868A0 ; =0x00000B29
	lsl r3, r4, #0x18
	ldrh r1, [r6, #0x24]
	ldrb r2, [r5, r2]
	ldr r0, [r6, #0]
	lsr r3, r3, #0x18
	bl sub_02096F14
	cmp r0, #1
	bne _02086860
	ldr r0, _0208689C ; =0x000005A4
	ldr r1, _020868A0 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r4, #0x36
	add r1, r4, #0
	mov r2, #0
	bl sub_02074470
	ldr r1, _0208689C ; =0x000005A4
	add r2, r0, #0
	ldr r1, [r5, r1]
	add r0, r5, #0
	ldrh r1, [r1, #0x24]
	bl sub_02084E58
	ldr r0, _0208689C ; =0x000005A4
	mov r2, #1
	ldr r1, [r5, r0]
	mov r3, #0xc
	ldr r0, [r1, #4]
	ldrh r1, [r1, #0x24]
	bl sub_0207D60C
	ldr r0, _020868A4 ; =0x000005EC
	bl sub_02005748
	b _0208686E
_02086860:
	ldr r2, _020868A8 ; =0x0000069C
	mov r1, #0x69
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
_0208686E:
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _0208689C ; =0x000005A4
	mov r1, #0
	ldr r0, [r5, r0]
	add sp, #8
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _020868AC ; =0x00000B26
	mov r1, #0x19
	strb r1, [r5, r0]
	mov r0, #0x18
	pop {r4, r5, r6, pc}
_02086890:
	mov r0, #6
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02086898: .word 0x000006FC
_0208689C: .word 0x000005A4
_020868A0: .word 0x00000B29
_020868A4: .word 0x000005EC
_020868A8: .word 0x0000069C
_020868AC: .word 0x00000B26
	thumb_func_end sub_02086774

	thumb_func_start sub_020868B0
sub_020868B0: ; 0x020868B0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	ldr r0, _02086924 ; =0x00000B29
	mov r2, #0x71
	ldrb r1, [r4, r0]
	mov r0, #0x2c
	lsl r2, r2, #4
	mul r0, r1
	add r0, r4, r0
	ldrh r0, [r0, r2]
	cmp r0, #0
	bne _020868F0
	add r0, r2, #0
	sub r0, #0x74
	sub r2, #0x6c
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	mov r1, #0x7f
	bl sub_0200B1B8
	ldr r1, _02086924 ; =0x00000B29
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl sub_02083080
	b _02086906
_020868F0:
	add r0, r2, #0
	sub r0, #0x74
	sub r2, #0x6c
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	mov r1, #0x80
	bl sub_0200B1B8
	ldr r0, _02086924 ; =0x00000B29
	mov r1, #7
	strb r1, [r4, r0]
_02086906:
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _02086928 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _0208692C ; =0x00000B26
	mov r1, #0x19
	strb r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_02086924: .word 0x00000B29
_02086928: .word 0x000005A4
_0208692C: .word 0x00000B26
	thumb_func_end sub_020868B0

	thumb_func_start sub_02086930
sub_02086930: ; 0x02086930
	push {r3, lr}
	ldr r1, _02086948 ; =0x000005A4
	ldr r0, [r0, r1]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	nop
_02086948: .word 0x000005A4
	thumb_func_end sub_02086930

	thumb_func_start sub_0208694C
sub_0208694C: ; 0x0208694C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r6, r0, #0
	cmp r1, #0
	beq _02086962
	cmp r1, #1
	bne _02086960
	b _02086ACE
_02086960:
	b _02086B08
_02086962:
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02086B10 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _02086B14 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r2, #0xa
	mov r0, #3
	mov r1, #0x12
	lsl r2, r2, #0xe
	bl sub_02017FC8
	mov r1, #0x5d
	add r0, r6, #0
	lsl r1, r1, #4
	mov r2, #0x12
	bl sub_0200681C
	mov r2, #0x5d
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x12
	bl sub_02018340
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0x1f
	mov r1, #0x12
	bl sub_02006C24
	add r7, r0, #0
	mov r0, #0x12
	bl sub_0200B358
	mov r2, #0x5a
	lsl r2, r2, #2
	str r0, [r4, r2]
	mov r0, #0
	mov r1, #0x1a
	add r2, #0x3e
	mov r3, #0x12
	bl sub_0200B144
	mov r2, #0x5b
	lsl r2, r2, #2
	str r0, [r4, r2]
	mov r0, #1
	mov r1, #0x1a
	add r2, #0x3f
	mov r3, #0x12
	bl sub_0200B144
	mov r2, #0x17
	lsl r2, r2, #4
	str r0, [r4, r2]
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x12
	bl sub_0200B144
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	bl sub_020871CC
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020871EC
	add r0, r6, #0
	bl sub_02006840
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020871B0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0208769C
	mov r0, #2
	mov r1, #0x12
	bl sub_02002BB8
	ldr r0, _02086B18 ; =sub_02087190
	mov r1, #0
	bl sub_02017798
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0208737C
	mov r0, #0
	mov r1, #0x12
	bl sub_02002BEC
	bl sub_020877C4
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020877F4
	add r0, r4, #0
	bl sub_02087A10
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02087FC0
	ldr r0, _02086B1C ; =0x000004C4
	mov r3, #0x5f
	add r1, r4, r0
	lsl r3, r3, #2
	str r1, [sp]
	ldr r1, [r4, r3]
	add r2, r3, #0
	str r1, [sp, #4]
	sub r2, #0x24
	sub r0, #0xcc
	add r1, r4, #0
	sub r3, #0x22
	ldrh r2, [r4, r2]
	add r0, r4, r0
	add r1, #0xd8
	add r3, r4, r3
	bl sub_02088754
	mov r1, #0
	mov r0, #0x34
	add r2, r1, #0
	bl sub_02004550
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	bl sub_0208732C
	ldr r0, _02086B20 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	add r0, r7, #0
	bl sub_02006CA8
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02086B08
_02086ACE:
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _02086AEA
	ldr r1, _02086B24 ; =0x000004B8
	ldr r2, [r4, #4]
	ldr r0, [r4, r1]
	add r1, #8
	ldr r1, [r4, r1]
	ldr r3, [r4, #8]
	bl sub_02086B30
_02086AEA:
	ldr r0, _02086B28 ; =0x021C0A30
	mov r1, #1
	str r4, [r0, #0]
	mov r0, #0
	mov r2, #0xc
	mov r3, #0x12
	bl sub_0201567C
	ldr r1, _02086B2C ; =0x000005C4
	add sp, #0xc
	str r0, [r4, r1]
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02086B08:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02086B10: .word 0xFFFFE0FF
_02086B14: .word 0x04001000
_02086B18: .word sub_02087190
_02086B1C: .word 0x000004C4
_02086B20: .word 0x021BF6DC
_02086B24: .word 0x000004B8
_02086B28: .word 0x021C0A30
_02086B2C: .word 0x000005C4
	thumb_func_end sub_0208694C

	thumb_func_start sub_02086B30
sub_02086B30: ; 0x02086B30
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r2, #0
	mov r2, #2
	ldr r0, [r0, #0x14]
	ldr r1, _02086B60 ; =0x000057E0
	add r6, r3, #0
	lsl r2, r2, #8
	bl sub_020C02BC
	ldr r4, [r4, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_02079EDC
	lsl r0, r0, #5
	add r0, r4, r0
	mov r1, #0xc0
	mov r2, #0x20
	bl sub_020C0160
	pop {r4, r5, r6, pc}
	nop
_02086B60: .word 0x000057E0
	thumb_func_end sub_02086B30

	thumb_func_start sub_02086B64
sub_02086B64: ; 0x02086B64
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r0, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #3
	bhi _02086BC8
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02086B84: ; jump table
	.short _02086B8C - _02086B84 - 2 ; case 0
	.short _02086BA0 - _02086B84 - 2 ; case 1
	.short _02086BD4 - _02086B84 - 2 ; case 2
	.short _02086CFC - _02086B84 - 2 ; case 3
_02086B8C:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02086BC8
	mov r0, #1
	str r0, [r5, #0]
	ldr r0, _02086D1C ; =0x000005CC
	mov r1, #0
	str r1, [r4, r0]
	b _02086D0A
_02086BA0:
	ldr r1, _02086D1C ; =0x000005CC
	ldr r2, [r4, r1]
	add r2, r2, #1
	str r2, [r4, r1]
	bl sub_02088FD0
	mov r2, #0x49
	lsl r2, r2, #4
	add r0, r4, r2
	mov r1, #0xcb
	sub r2, #0x30
	lsl r1, r1, #2
	ldr r2, [r4, r2]
	add r1, r4, r1
	bl sub_02088F40
	ldr r0, _02086D1C ; =0x000005CC
	ldr r1, [r4, r0]
	cmp r1, #5
	bgt _02086BCA
_02086BC8:
	b _02086D0A
_02086BCA:
	mov r1, #2
	str r1, [r5, #0]
	mov r1, #0
	str r1, [r4, r0]
	b _02086D0A
_02086BD4:
	ldr r3, _02086D20 ; =0x0000045C
	ldr r2, [r4, r3]
	cmp r2, #7
	bhi _02086CA8
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02086BE8: ; jump table
	.short _02086CA8 - _02086BE8 - 2 ; case 0
	.short _02086CA8 - _02086BE8 - 2 ; case 1
	.short _02086CA8 - _02086BE8 - 2 ; case 2
	.short _02086CA8 - _02086BE8 - 2 ; case 3
	.short _02086BF8 - _02086BE8 - 2 ; case 4
	.short _02086C06 - _02086BE8 - 2 ; case 5
	.short _02086C52 - _02086BE8 - 2 ; case 6
	.short _02086C7E - _02086BE8 - 2 ; case 7
_02086BF8:
	bl sub_02086D38
	str r0, [r5, #0]
	add r0, r4, #0
	bl sub_02088FD0
	b _02086CA8
_02086C06:
	add r1, r6, #0
	bl sub_02087544
	ldr r0, _02086D24 ; =0x00000448
	mov r1, #0xf
	add r0, r4, r0
	bl sub_0201ADA4
	ldr r0, _02086D24 ; =0x00000448
	mov r2, #1
	add r0, r4, r0
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	mov r2, #6
	ldr r0, _02086D24 ; =0x00000448
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r3, [sp, #8]
	lsl r2, r2, #6
	ldr r2, [r4, r2]
	add r0, r4, r0
	bl sub_0201D738
	ldr r1, _02086D28 ; =0x00000458
	str r0, [r4, r1]
	sub r1, #0x10
	add r0, r4, r1
	bl sub_0201A954
	ldr r0, _02086D20 ; =0x0000045C
	mov r1, #6
	str r1, [r4, r0]
	b _02086CA8
_02086C52:
	sub r0, r3, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02086CA8
	ldr r0, _02086D2C ; =0x000005E2
	bl sub_02005748
	ldr r1, _02086D30 ; =0x000004A8
	mov r2, #0
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	ldr r0, _02086D1C ; =0x000005CC
	sub r1, #0x4c
	str r2, [r4, r0]
	mov r0, #7
	str r0, [r4, r1]
	b _02086CA8
_02086C7E:
	ldr r0, _02086D1C ; =0x000005CC
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x1e
	ble _02086CA8
	mov r0, #0x10
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	mov r0, #3
	str r0, [r5, #0]
_02086CA8:
	ldr r3, _02086D34 ; =0x00000464
	mov r1, #0xcb
	add r0, r4, r3
	str r0, [sp]
	add r0, r3, #4
	add r0, r4, r0
	lsl r1, r1, #2
	str r0, [sp, #4]
	add r0, r4, r1
	str r0, [sp, #8]
	add r0, r3, #0
	add r0, #0x4c
	ldr r0, [r4, r0]
	add r2, r3, #0
	ldr r0, [r0, #0x14]
	add r1, #0x8c
	str r0, [sp, #0xc]
	mov r0, #0x16
	lsl r0, r0, #4
	sub r3, r3, #4
	sub r2, #8
	ldr r0, [r4, r0]
	ldr r3, [r4, r3]
	add r1, r4, r1
	add r2, r4, r2
	bl sub_02087D64
	mov r2, #0x49
	lsl r2, r2, #4
	add r0, r4, r2
	mov r1, #0xcb
	sub r2, #0x30
	lsl r1, r1, #2
	ldr r2, [r4, r2]
	add r1, r4, r1
	bl sub_02088F40
	add r0, r4, #0
	add r0, #0x38
	bl sub_02088514
	b _02086D0A
_02086CFC:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02086D0A
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_02086D0A:
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020219F8
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02086D1C: .word 0x000005CC
_02086D20: .word 0x0000045C
_02086D24: .word 0x00000448
_02086D28: .word 0x00000458
_02086D2C: .word 0x000005E2
_02086D30: .word 0x000004A8
_02086D34: .word 0x00000464
	thumb_func_end sub_02086B64

	thumb_func_start sub_02086D38
sub_02086D38: ; 0x02086D38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02088350
	ldr r0, _02086E54 ; =0x021BF67C
	mov r1, #4
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _02086DDC
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021D34
	cmp r0, #0
	bne _02086D6A
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02086D6A:
	ldr r0, [r5, #0]
	cmp r0, #4
	beq _02086DB4
	ldr r1, _02086E58 ; =0x0000045C
	mov r0, #0
	str r0, [r5, r1]
	add r2, r1, #4
	ldr r2, [r5, r2]
	add r3, r2, #1
	add r2, r1, #4
	str r3, [r5, r2]
	ldr r2, [r5, r2]
	cmp r2, #3
	blt _02086D8A
	add r1, r1, #4
	str r0, [r5, r1]
_02086D8A:
	mov r2, #0x49
	lsl r2, r2, #4
	add r1, r2, #0
	sub r1, #0x30
	ldr r1, [r5, r1]
	add r0, r5, r2
	lsl r3, r1, #2
	ldr r1, [r0, r3]
	sub r2, #0x30
	add r1, r1, #1
	str r1, [r0, r3]
	add r0, r5, #0
	ldr r1, [r5, r2]
	add r0, #0x3a
	bl sub_02088844
	ldr r0, _02086E5C ; =0x0000069E
	bl sub_02005748
	mov r0, #1
	str r0, [r5, #0x30]
_02086DB4:
	mov r2, #0x49
	lsl r2, r2, #4
	add r1, r2, #0
	sub r1, #0x30
	ldr r1, [r5, r1]
	add r0, r5, r2
	lsl r3, r1, #2
	ldr r1, [r0, r3]
	sub r2, #0x30
	add r1, r1, #1
	str r1, [r0, r3]
	add r0, r5, #0
	ldr r1, [r5, r2]
	add r0, #0x3a
	bl sub_02088844
	ldr r0, _02086E5C ; =0x0000069E
	bl sub_02005748
	b _02086E4E
_02086DDC:
	mov r2, #1
	add r1, r0, #0
	tst r1, r2
	beq _02086E02
	ldr r3, [r5, #0x20]
	mov r1, #0x1a
	mul r1, r3
	add r3, r5, r1
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	lsl r1, r1, #1
	add r1, r3, r1
	ldrh r1, [r1, #0x3a]
	bl sub_02088898
	add r4, r0, #0
	mov r0, #1
	str r0, [r5, #0x30]
	b _02086E4E
_02086E02:
	ldr r1, _02086E60 ; =0x000005C8
	ldr r1, [r5, r1]
	cmp r1, #1
	bne _02086E2A
	ldr r2, [r5, #0x20]
	mov r1, #0x1a
	mul r1, r2
	add r2, r5, r1
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	lsl r1, r1, #1
	add r1, r2, r1
	ldrh r1, [r1, #0x3a]
	mov r2, #0
	bl sub_02088898
	add r4, r0, #0
	mov r0, #0
	str r0, [r5, #0x30]
	b _02086E4E
_02086E2A:
	mov r1, #2
	add r3, r0, #0
	tst r3, r1
	beq _02086E3E
	ldr r1, _02086E64 ; =0x0000E007
	add r0, r5, #0
	bl sub_02088898
	add r4, r0, #0
	b _02086E4E
_02086E3E:
	add r1, #0xfe
	tst r0, r1
	beq _02086E4E
	ldr r1, _02086E68 ; =0x0000E006
	add r0, r5, #0
	bl sub_02088898
	add r4, r0, #0
_02086E4E:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02086E54: .word 0x021BF67C
_02086E58: .word 0x0000045C
_02086E5C: .word 0x0000069E
_02086E60: .word 0x000005C8
_02086E64: .word 0x0000E007
_02086E68: .word 0x0000E006
	thumb_func_end sub_02086D38

	thumb_func_start sub_02086E6C
sub_02086E6C: ; 0x02086E6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	cmp r0, #0
	bne _02086ECE
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _02086E96
	bl sub_0201D2E8
	mov r1, #0x12
	bl sub_020E1F6C
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	b _02086EB2
_02086E96:
	cmp r0, #1
	bne _02086EB2
	bl sub_0201D2E8
	mov r1, #0x12
	bl sub_020E1F6C
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, #0x12
	bl sub_0200B1EC
	add r6, r0, #0
_02086EB2:
	ldr r0, [r4, #0x18]
	add r1, r6, #0
	bl sub_02023810
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [r4, #0x18]
	add r4, #0x1c
	add r1, r4, #0
	mov r2, #0xa
	bl sub_02023DF0
	pop {r4, r5, r6, pc}
_02086ECE:
	cmp r0, #3
	bne _02086F0E
	bl sub_0201D2E8
	add r1, r0, #0
	mov r0, #0x17
	lsl r0, r0, #4
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r1, r3, r2
	ldr r0, [r5, r0]
	add r1, #0x58
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	bl sub_02023810
	add r0, r5, #0
	bl sub_020237BC
	ldr r0, [r4, #0x18]
	add r4, #0x1c
	add r1, r4, #0
	mov r2, #0xa
	bl sub_02023DF0
	pop {r4, r5, r6, pc}
_02086F0E:
	mov r0, #1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02086E6C

	thumb_func_start sub_02086F14
sub_02086F14: ; 0x02086F14
	push {r4, r5}
	ldr r1, _02086F34 ; =0x000001DE
	ldr r2, _02086F38 ; =0x0000FFFF
	mov r5, #1
	mov r3, #0
_02086F1E:
	ldrh r4, [r0]
	cmp r4, r2
	beq _02086F2E
	cmp r4, r1
	beq _02086F2A
	add r5, r3, #0
_02086F2A:
	add r0, r0, #2
	b _02086F1E
_02086F2E:
	add r0, r5, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02086F34: .word 0x000001DE
_02086F38: .word 0x0000FFFF
	thumb_func_end sub_02086F14

	thumb_func_start sub_02086F3C
sub_02086F3C: ; 0x02086F3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	bl sub_02006840
	add r5, r0, #0
	mov r0, #0x56
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	ldr r1, _02087114 ; =0x0000FFFF
	lsl r0, r0, #1
	add r0, r4, r0
	add r0, #0xd8
	strh r1, [r0]
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _02086F86
	mov r0, #0x12
	bl sub_02073C74
	mov r3, #0xa
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	ldr r1, [r4, #4]
	add r6, r0, #0
	mov r2, #5
	bl sub_02073D80
	add r0, r6, #0
	bl sub_020181C4
_02086F86:
	mov r1, #0x56
	lsl r1, r1, #2
	ldrh r0, [r4, r1]
	cmp r0, #0
	beq _02086FAC
	add r0, r4, #0
	sub r1, #0x40
	add r0, #0xd8
	add r1, r4, r1
	bl sub_0200220C
	cmp r0, #0
	beq _02086FAC
	add r0, r4, #0
	add r0, #0xd8
	bl sub_02086F14
	cmp r0, #0
	beq _02086FB6
_02086FAC:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02086E6C
	b _02086FDA
_02086FB6:
	mov r0, #0x46
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0xd8
	bl sub_020021B0
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x1c
	add r1, #0xd8
	bl sub_020021B0
	add r1, r4, #0
	ldr r0, [r5, #0x18]
	add r1, #0xd8
	bl sub_02023D28
_02086FDA:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r7, #0xe7
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_02086FEC:
	ldr r0, [r5, r7]
	bl sub_020067D0
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #7
	blt _02086FEC
	mov r0, #0xb1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200A4E4
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200A4E4
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200A6DC
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200A6DC
	mov r7, #0xad
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_0208702A:
	ldr r0, [r5, r7]
	bl sub_02009754
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _0208702A
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021964
	bl sub_0200A878
	ldr r1, _02087118 ; =0x000004AC
	mov r0, #0x12
	ldr r1, [r4, r1]
	bl sub_02018238
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _0208706A
	ldr r1, _0208711C ; =0x000004B4
	mov r0, #0x12
	ldr r1, [r4, r1]
	bl sub_02018238
	ldr r1, _02087120 ; =0x000004BC
	mov r0, #0x12
	ldr r1, [r4, r1]
	bl sub_02018238
_0208706A:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #7
	bl sub_02019044
	bl sub_0201E958
	bl sub_0201F8B4
	mov r0, #0x16
	lsl r0, r0, #4
	mov r1, #0xee
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl sub_0208765C
	mov r0, #0
	bl sub_02002C28
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02087124 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	mov r0, #2
	bl sub_02002C60
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _020870B4
	bl sub_020237BC
_020870B4:
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B3F0
	ldr r0, [sp, #0x10]
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x12
	bl sub_0201807C
	ldr r0, _02087128 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02087114: .word 0x0000FFFF
_02087118: .word 0x000004AC
_0208711C: .word 0x000004B4
_02087120: .word 0x000004BC
_02087124: .word 0xFFFF1FFF
_02087128: .word 0x021BF6DC
	thumb_func_end sub_02086F3C

	thumb_func_start sub_0208712C
sub_0208712C: ; 0x0208712C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x50
	str r0, [sp]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	str r6, [r4, #4]
	str r7, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r0, _02087168 ; =0x0000FFFF
	ldr r1, [sp]
	strh r0, [r4, #0x1c]
	mov r0, #0x20
	bl sub_02023790
	str r0, [r4, #0x18]
	mov r1, #0
	str r1, [r4, #0x44]
	str r1, [r4, #0x48]
	ldr r0, [sp, #0x18]
	str r1, [r4, #0x10]
	str r0, [r4, #0x4c]
	str r1, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02087168: .word 0x0000FFFF
	thumb_func_end sub_0208712C

	thumb_func_start sub_0208716C
sub_0208716C: ; 0x0208716C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0208717A
	bl sub_02022974
_0208717A:
	cmp r4, #0
	bne _02087182
	bl sub_02022974
_02087182:
	ldr r0, [r4, #0x18]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0208716C

	thumb_func_start sub_02087190
sub_02087190: ; 0x02087190
	push {r3, lr}
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r3, _020871A8 ; =0x027E0000
	ldr r1, _020871AC ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	; .align 2, 0
_020871A8: .word 0x027E0000
_020871AC: .word 0x00003FF8
	thumb_func_end sub_02087190

	thumb_func_start sub_020871B0
sub_020871B0: ; 0x020871B0
	ldr r2, [r1, #0]
	str r2, [r0, #0]
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	ldr r2, [r1, #0xc]
	str r2, [r0, #0xc]
	ldr r2, [r1, #0x10]
	str r2, [r0, #0x10]
	ldr r1, [r1, #0x4c]
	str r1, [r0, #0x18]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020871B0

	thumb_func_start sub_020871CC
sub_020871CC: ; 0x020871CC
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _020871E8 ; =0x020F28DC
	add r3, sp, #0
	mov r2, #5
_020871D6:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020871D6
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_020871E8: .word 0x020F28DC
	thumb_func_end sub_020871CC

	thumb_func_start sub_020871EC
sub_020871EC: ; 0x020871EC
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _02087310 ; =0x020F24FC
	add r3, sp, #0x70
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _02087314 ; =0x020F2670
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _02087318 ; =0x020F2750
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _0208731C ; =0x020F2814
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _02087320 ; =0x020F25AC
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	mov r0, #0
	bl sub_0208732C
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x12
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x12
	bl sub_02019690
	mov r0, #1
	lsl r0, r0, #0x1a
	add r4, r0, #0
	ldr r2, [r0, #0]
	ldr r1, _02087324 ; =0xFFFF1FFF
	add r4, #0x48
	and r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	str r1, [r0, #0]
	ldrh r3, [r4]
	mov r2, #0x3f
	mov r1, #0x14
	bic r3, r2
	orr r1, r3
	mov r3, #0x20
	orr r1, r3
	strh r1, [r4]
	add r4, r0, #0
	add r4, #0x4a
	ldrh r5, [r4]
	mov r1, #0x1f
	bic r5, r2
	orr r1, r5
	orr r1, r3
	strh r1, [r4]
	add r1, r0, #0
	mov r2, #0xff
	add r1, #0x40
	strh r2, [r1]
	mov r1, #0x40
	add r0, #0x44
	strh r1, [r0]
	ldr r0, _02087328 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	add sp, #0x80
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02087310: .word 0x020F24FC
_02087314: .word 0x020F2670
_02087318: .word 0x020F2750
_0208731C: .word 0x020F2814
_02087320: .word 0x020F25AC
_02087324: .word 0xFFFF1FFF
_02087328: .word 0x04001050
	thumb_func_end sub_020871EC

	thumb_func_start sub_0208732C
sub_0208732C: ; 0x0208732C
	push {r4, lr}
	add r4, r0, #0
	lsl r1, r4, #0x18
	mov r0, #1
	lsr r1, r1, #0x18
	bl sub_0201FF0C
	lsl r1, r4, #0x18
	mov r0, #2
	lsr r1, r1, #0x18
	bl sub_0201FF0C
	lsl r1, r4, #0x18
	mov r0, #4
	lsr r1, r1, #0x18
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	lsl r1, r4, #0x18
	mov r0, #0x10
	lsr r1, r1, #0x18
	bl sub_0201FF0C
	lsl r1, r4, #0x18
	mov r0, #1
	lsr r1, r1, #0x18
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF74
	pop {r4, pc}
	thumb_func_end sub_0208732C

	thumb_func_start sub_0208737C
sub_0208737C: ; 0x0208737C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02006840
	add r7, r0, #0
	ldr r0, _0208752C ; =0x0000045C
	mov r1, #4
	str r1, [r4, r0]
	add r0, #0xc
	add r0, r4, r0
	mov r1, #0
	bl sub_02088260
	ldr r6, _02087530 ; =0x00000464
	mov r0, #0x16
	ldr r3, [r4, r6]
	mov r5, #0xc
	lsl r0, r0, #4
	lsl r1, r3, #0x18
	mul r5, r3
	add r3, r4, r5
	add r5, r6, #4
	ldr r0, [r4, r0]
	ldr r3, [r3, r5]
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02019184
	ldr r3, [r4, r6]
	mov r5, #0xc
	mov r0, #0x16
	lsl r0, r0, #4
	lsl r1, r3, #0x18
	mul r5, r3
	add r3, r4, r5
	add r6, #8
	ldr r0, [r4, r0]
	ldr r3, [r3, r6]
	lsr r1, r1, #0x18
	mov r2, #3
	bl sub_02019184
	ldr r6, _02087530 ; =0x00000464
	mov r0, #1
	ldr r1, [r4, r6]
	mov r5, #0xc
	add r3, r1, #0
	eor r3, r0
	mov r0, #0x16
	lsl r0, r0, #4
	lsl r1, r3, #0x18
	mul r5, r3
	add r3, r4, r5
	add r5, r6, #4
	ldr r0, [r4, r0]
	ldr r3, [r3, r5]
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02019184
	ldr r1, [r4, r6]
	mov r0, #1
	add r3, r1, #0
	eor r3, r0
	mov r5, #0xc
	mov r0, #0x16
	lsl r0, r0, #4
	lsl r1, r3, #0x18
	mul r5, r3
	add r3, r4, r5
	add r6, #8
	ldr r0, [r4, r0]
	ldr r3, [r3, r6]
	lsr r1, r1, #0x18
	mov r2, #3
	bl sub_02019184
	mov r1, #0x46
	ldr r0, _02087534 ; =0x0000FFFF
	lsl r1, r1, #2
	strh r0, [r4, r1]
	ldr r0, [r7, #0x18]
	cmp r0, #0
	beq _02087430
	add r1, r4, r1
	mov r2, #0x20
	bl sub_02023DF0
_02087430:
	add r1, r4, #0
	mov r0, #1
	add r1, #0xd8
	mov r2, #0x40
	bl sub_020C4AF0
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _02087476
	mov r0, #0x12
	bl sub_02073C74
	mov r3, #0xa
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	ldr r1, [r4, #4]
	add r5, r0, #0
	mov r2, #5
	bl sub_02073D80
	add r0, r5, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B538
	add r0, r5, #0
	bl sub_020181C4
_02087476:
	ldr r0, [r7, #0x44]
	cmp r0, #0
	beq _02087480
	mov r0, #1
	str r0, [r4, #0x14]
_02087480:
	ldr r2, [r4, #0]
	mov r1, #0x5a
	lsl r1, r1, #2
	lsl r3, r2, #2
	ldr r2, _02087538 ; =0x020F2850
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r2, [r2, r3]
	ldr r1, [r4, r1]
	mov r3, #0x12
	bl sub_0200B29C
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x10
	sub r1, #0xc
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #8
	mov r3, #0x12
	bl sub_0200B29C
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x10
	ldr r0, [r4, r1]
	mov r1, #7
	bl sub_0200B1EC
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x6c
	add r0, r4, r1
	bl sub_020021F0
	mov r1, #0x56
	lsl r1, r1, #2
	strh r0, [r4, r1]
	mov r0, #0
	str r0, [r4, #0x1c]
	mov r1, #1
	str r1, [r4, #0x20]
	sub r1, r1, #2
	str r1, [r4, #0x24]
	str r1, [r4, #0x28]
	str r0, [r4, #0x30]
	ldr r2, _0208753C ; =0x00000484
	str r0, [r4, #0x34]
	str r1, [r4, r2]
	add r1, r2, #4
	str r0, [r4, r1]
	add r2, #8
	str r0, [r4, r2]
	ldr r1, [r4, #0xc]
	ldr r2, _02087534 ; =0x0000FFFF
	lsl r1, r1, #1
	add r1, r4, r1
	add r1, #0xd8
	strh r2, [r1]
	mov r1, #0x49
	add r3, r4, #0
	add r2, r0, #0
	lsl r1, r1, #4
_02087506:
	add r0, r0, #1
	str r2, [r3, r1]
	add r3, r3, #4
	cmp r0, #7
	blt _02087506
	ldr r0, [r4, #0]
	cmp r0, #4
	bne _02087520
	ldr r0, _02087540 ; =0x0000049C
	mov r1, #1
	add sp, #0x10
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02087520:
	mov r0, #0x49
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208752C: .word 0x0000045C
_02087530: .word 0x00000464
_02087534: .word 0x0000FFFF
_02087538: .word 0x020F2850
_0208753C: .word 0x00000484
_02087540: .word 0x0000049C
	thumb_func_end sub_0208737C

	thumb_func_start sub_02087544
sub_02087544: ; 0x02087544
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, r1, #0
	bl sub_02006840
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _02087654
	mov r0, #0xc8
	mov r1, #0x12
	bl sub_02023790
	add r7, r0, #0
	mov r0, #6
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r5, r0]
	ldr r0, [r4, #0x48]
	bl sub_0207999C
	add r6, r0, #0
	ldr r0, [r4, #0x48]
	bl sub_020799A0
	str r0, [sp, #0x10]
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x48]
	mov r1, #1
	add r3, r6, #0
	bl sub_0200BD40
	ldr r0, [sp, #0x10]
	cmp r6, r0
	beq _020875A8
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x48]
	ldr r3, [sp, #0x10]
	mov r1, #2
	bl sub_0200BD40
	ldr r0, [r4, #0x44]
	add r0, r0, #2
	str r0, [r4, #0x44]
	b _020875B8
_020875A8:
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x48]
	mov r1, #2
	add r3, r6, #0
	bl sub_0200BD40
_020875B8:
	mov r0, #0x56
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _020875CE
	add r0, r5, #0
	add r0, #0xd8
	bl sub_02086F14
	cmp r0, #0
	beq _02087604
_020875CE:
	mov r0, #0x12
	bl sub_02073C74
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	ldr r1, [r5, #4]
	add r6, r0, #0
	mov r2, #1
	bl sub_02073D80
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B538
	add r0, r6, #0
	bl sub_020181C4
	b _02087632
_02087604:
	mov r1, #0x56
	lsl r1, r1, #2
	ldrh r1, [r5, r1]
	ldr r0, _02087658 ; =0x0000FFFF
	lsl r1, r1, #1
	add r1, r5, r1
	add r1, #0xd8
	strh r0, [r1]
	add r1, r5, #0
	add r0, r7, #0
	add r1, #0xd8
	bl sub_02023D28
	mov r1, #0
	str r1, [sp]
	mov r0, #0x5a
	str r1, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r7, #0
	add r3, r1, #0
	bl sub_0200B48C
_02087632:
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, #0xc
	ldr r1, [r5, r1]
	ldr r2, [r4, #0x44]
	mov r3, #0x12
	bl sub_0200B29C
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #1
	str r0, [r5, #0x14]
	add r0, r7, #0
	bl sub_020237BC
_02087654:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02087658: .word 0x0000FFFF
	thumb_func_end sub_02087544

	thumb_func_start sub_0208765C
sub_0208765C: ; 0x0208765C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
_02087664:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xa
	blt _02087664
	add r0, r6, #0
	mov r1, #4
	bl sub_02019044
	add r0, r6, #0
	mov r1, #2
	bl sub_02019044
	add r0, r6, #0
	mov r1, #1
	bl sub_02019044
	add r0, r6, #0
	mov r1, #0
	bl sub_02019044
	mov r0, #0x12
	add r1, r6, #0
	bl sub_02018238
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0208765C

	thumb_func_start sub_0208769C
sub_0208769C: ; 0x0208769C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r6, [r5, r0]
	mov r0, #0x60
	add r4, r1, #0
	mov r1, #0
	str r0, [sp]
	mov r0, #0x12
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02007130
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x12
	str r0, [sp, #4]
	mov r0, #0xc
	add r1, r0, #0
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x12
	mov r1, #2
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #4
	add r2, r6, #0
	mov r3, #2
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #0xe
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #6
	add r2, r6, #0
	bl sub_0200710C
	mov r3, #0
	mov r0, #0xe
	str r3, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #7
	add r2, r6, #0
	bl sub_0200710C
	mov r1, #6
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x12
	bl sub_02002E98
	ldr r0, [r5, #0x18]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x12
	str r0, [sp, #4]
	mov r0, #0x16
	lsl r0, r0, #4
	mov r1, #4
	add r2, r1, #0
	ldr r0, [r5, r0]
	add r2, #0xfc
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #6
	mov r0, #4
	lsl r1, r1, #6
	mov r2, #0x12
	bl sub_02002E98
	mov r3, #0x4b
	mov r0, #0x12
	lsl r3, r3, #4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #1
	add r3, r5, r3
	bl sub_020071B4
	ldr r1, _020877C0 ; =0x000004AC
	str r0, [r5, r1]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020877C0: .word 0x000004AC
	thumb_func_end sub_0208769C

	thumb_func_start sub_020877C4
sub_020877C4: ; 0x020877C4
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _020877F0 ; =0x020F250C
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201E86C
	mov r0, #0x14
	mov r1, #0x12
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_020877F0: .word 0x020F250C
	thumb_func_end sub_020877C4

	thumb_func_start sub_020877F4
sub_020877F4: ; 0x020877F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x12
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	mov r1, #0x63
	lsl r1, r1, #2
	mov r0, #0x2c
	add r1, r5, r1
	mov r2, #0x12
	bl sub_020095C4
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #4
	mov r2, #1
	add r0, r5, r0
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r6, #0
	add r4, r5, #0
_0208783E:
	mov r0, #2
	add r1, r6, #0
	mov r2, #0x12
	bl sub_02009714
	mov r1, #0xad
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0208783E
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x12
	str r0, [sp, #8]
	add r0, r1, #0
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r2, #0xa
	bl sub_02009A4C
	mov r1, #0xb1
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #0x12
	sub r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r7, #0
	bl sub_02009B04
	mov r1, #0xb2
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x12
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #0xc
	mov r3, #1
	bl sub_02009BC4
	mov r1, #0xb3
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x12
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #0xe
	mov r3, #1
	bl sub_02009BC4
	mov r1, #0x2d
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, #0]
	cmp r0, #1
	bne _02087926
	ldr r0, [r5, #4]
	ldr r2, [r5, #8]
	mov r1, #0
	bl sub_02079D8C
	ldr r3, _020879D0 ; =0x000004B8
	add r1, r0, #0
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x13
	mov r2, #0
	add r3, r5, r3
	bl sub_02006F50
	ldr r1, _020879D4 ; =0x000004B4
	str r0, [r5, r1]
	add r0, r1, #4
	mov r1, #2
	ldr r0, [r5, r0]
	lsl r1, r1, #8
	bl sub_020C2C54
	bl sub_02079FD0
	add r1, r0, #0
	mov r0, #0x13
	lsl r2, r0, #6
	add r2, r5, r2
	mov r3, #0x12
	bl sub_02006F88
	ldr r1, _020879D8 ; =0x000004BC
	str r0, [r5, r1]
	add r0, r1, #4
	ldr r0, [r5, r0]
	mov r1, #0x80
	bl sub_020C2C54
_02087926:
	mov r3, #1
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r2, #0xb
	bl sub_02009A4C
	mov r1, #0xb5
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r2, #1
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x12
	sub r1, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r3, #0
	bl sub_02009B04
	mov r1, #0xb6
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x12
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #0xd
	bl sub_02009BC4
	mov r1, #0xb7
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x12
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #0xf
	bl sub_02009BC4
	mov r1, #0x2e
	lsl r1, r1, #4
	str r0, [r5, r1]
	sub r1, #0x1c
	ldr r0, [r5, r1]
	bl sub_0200A328
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A328
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A5C8
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A5C8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_020879D0: .word 0x000004B8
_020879D4: .word 0x000004B4
_020879D8: .word 0x000004BC
	thumb_func_end sub_020877F4

	thumb_func_start sub_020879DC
sub_020879DC: ; 0x020879DC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r0, [r4, #0]
	bl sub_02021D28
	ldr r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0xc]
	lsl r1, r0, #4
	ldr r0, _02087A0C ; =0x020F2988
	ldr r0, [r0, r1]
	add r1, sp, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02087A0C: .word 0x020F2988
	thumb_func_end sub_020879DC

	thumb_func_start sub_02087A10
sub_02087A10: ; 0x02087A10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	sub r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0xad
	str r1, [sp, #0xc]
	mov r0, #1
	lsl r2, r2, #2
	str r0, [sp, #0x10]
	ldr r0, [r6, r2]
	add r3, r1, #0
	str r0, [sp, #0x14]
	add r0, r2, #4
	ldr r0, [r6, r0]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r6, r0]
	str r0, [sp, #0x1c]
	add r0, r2, #0
	add r0, #0xc
	ldr r0, [r6, r0]
	add r2, #0x30
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r6, r2
	add r2, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	mov r1, #1
	mov r3, #0xad
	str r1, [sp]
	sub r0, r1, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r3, r3, #2
	ldr r2, [r6, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r6, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r6, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r6, r2]
	add r3, #0x54
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r6, r3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020093B4
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #2
	str r0, [sp, #0x2c]
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r6, r0
	str r0, [sp, #0x30]
	mov r0, #6
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	lsr r0, r1, #5
	mov r7, #0
	str r1, [sp, #0x34]
	str r7, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r7, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	mov r0, #0x12
	ldr r4, _02087BDC ; =0x020F2984
	str r0, [sp, #0x58]
	add r5, r6, #0
_02087ACC:
	ldr r0, [r4, #0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [r4, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #0xcb
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #8]
	bl sub_02021D6C
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0xc]
	bl sub_02021F58
	add r7, r7, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r7, #9
	blt _02087ACC
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r7, _02087BDC ; =0x020F2984
	mov r5, #0
	add r4, r6, #0
_02087B2E:
	ldr r0, _02087BE0 ; =sub_020879DC
	mov r1, #0x10
	mov r2, #5
	mov r3, #0x12
	bl sub_0200679C
	mov r1, #0xe7
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	bl sub_0201CED0
	mov r1, #0xd2
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	str r1, [r0, #0]
	mov r1, #0xcb
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r4, r4, #4
	str r1, [r0, #4]
	ldr r1, [r7, #0]
	add r7, #0x10
	lsl r1, r1, #0xc
	str r1, [r0, #8]
	str r5, [r0, #0xc]
	add r5, r5, #1
	cmp r5, #7
	blt _02087B2E
	ldr r2, [r6, #0xc]
	mov r7, #0
	cmp r2, #0
	ble _02087BAE
	mov r5, #0x50
	add r4, r6, #0
_02087B76:
	lsl r0, r5, #0xc
	str r0, [sp, #0x34]
	mov r0, #0x27
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #0xd9
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x2b
	bl sub_02021D6C
	ldr r2, [r6, #0xc]
	add r7, r7, #1
	add r5, #0xc
	add r4, r4, #4
	cmp r7, r2
	blt _02087B76
_02087BAE:
	mov r1, #0x56
	lsl r1, r1, #2
	mov r0, #0xd9
	lsl r0, r0, #2
	ldrh r1, [r6, r1]
	add r0, r6, r0
	bl sub_02088E1C
	add r0, r6, #0
	add r1, sp, #0x2c
	bl sub_02087BE4
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02087BDC: .word 0x020F2984
_02087BE0: .word sub_020879DC
	thumb_func_end sub_02087A10

	thumb_func_start sub_02087BE4
sub_02087BE4: ; 0x02087BE4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #6
	add r5, r1, #0
	lsl r0, r0, #0xe
	str r0, [r5, #8]
	mov r0, #2
	lsl r0, r0, #0xe
	str r0, [r5, #0xc]
	add r0, r5, #0
	bl sub_02021AA0
	mov r1, #0xe5
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r4, #0]
	cmp r0, #7
	bhi _02087CDA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02087C1C: ; jump table
	.short _02087C2C - _02087C1C - 2 ; case 0
	.short _02087C94 - _02087C1C - 2 ; case 1
	.short _02087C86 - _02087C1C - 2 ; case 2
	.short _02087C4E - _02087C1C - 2 ; case 3
	.short _02087C78 - _02087C1C - 2 ; case 4
	.short _02087C6A - _02087C1C - 2 ; case 5
	.short _02087C5C - _02087C1C - 2 ; case 6
	.short _02087C78 - _02087C1C - 2 ; case 7
_02087C2C:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02087C40
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x30
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_02087C40:
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x31
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_02087C4E:
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x33
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_02087C5C:
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x37
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_02087C6A:
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x36
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_02087C78:
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x35
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_02087C86:
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x2f
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_02087C94:
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x32
	bl sub_02021D6C
	ldr r0, [r4, #0x10]
	cmp r0, #2
	beq _02087CDA
	ldr r1, [r4, #0xc]
	mov r0, #0xd
	mul r0, r1
	add r0, #0x50
	lsl r0, r0, #0xc
	str r0, [r5, #8]
	mov r0, #0x1b
	lsl r0, r0, #0xc
	str r0, [r5, #0xc]
	add r0, r5, #0
	bl sub_02021AA0
	mov r1, #0xe6
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldr r0, [r4, r1]
	bne _02087CD4
	mov r1, #0x2d
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_02087CD4:
	mov r1, #0x2e
	bl sub_02021D6C
_02087CDA:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02087BE4

	thumb_func_start sub_02087CDC
sub_02087CDC: ; 0x02087CDC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	cmp r0, #6
	bhi _02087D5A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02087CFE: ; jump table
	.short _02087D0C - _02087CFE - 2 ; case 0
	.short _02087D5A - _02087CFE - 2 ; case 1
	.short _02087D20 - _02087CFE - 2 ; case 2
	.short _02087D5A - _02087CFE - 2 ; case 3
	.short _02087D34 - _02087CFE - 2 ; case 4
	.short _02087D5A - _02087CFE - 2 ; case 5
	.short _02087D48 - _02087CFE - 2 ; case 6
_02087D0C:
	mov r0, #1
	ldr r1, [r4, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0]
	add r1, sp, #0
	bl sub_02021C50
	b _02087D5A
_02087D20:
	mov r0, #3
	ldr r1, [r4, #8]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0]
	add r1, sp, #0
	bl sub_02021C50
	b _02087D5A
_02087D34:
	mov r0, #2
	ldr r1, [r4, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0]
	add r1, sp, #0
	bl sub_02021C50
	b _02087D5A
_02087D48:
	ldr r0, [r4, #8]
	add r1, sp, #0
	str r0, [sp]
	ldr r0, [r4, #0]
	bl sub_02021C50
	add r0, r5, #0
	bl sub_020067D0
_02087D5A:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end sub_02087CDC

	thumb_func_start sub_02087D64
sub_02087D64: ; 0x02087D64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x40]
	add r5, r2, #0
	str r1, [sp, #0x40]
	ldr r1, [sp, #0x48]
	mov r2, #1
	str r1, [sp, #0x48]
	ldr r1, [sp, #0x40]
	str r0, [sp, #0x10]
	ldr r6, [r1, #0]
	add r7, r3, #0
	add r1, r6, #0
	eor r1, r2
	str r1, [sp, #0x18]
	ldr r1, [r5, #0]
	ldr r4, [sp, #0x44]
	cmp r1, #4
	bls _02087D8E
	b _02087F32
_02087D8E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02087D9A: ; jump table
	.short _02087DA4 - _02087D9A - 2 ; case 0
	.short _02087DF0 - _02087D9A - 2 ; case 1
	.short _02087E16 - _02087D9A - 2 ; case 2
	.short _02087EB0 - _02087D9A - 2 ; case 3
	.short _02087F32 - _02087D9A - 2 ; case 4
_02087DA4:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xe
	lsl r0, r0, #6
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r0, #0x1f
	add r1, r7, #6
	add r3, r6, #0
	bl sub_02006E60
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02088260
	ldr r0, _02087F38 ; =0x020F24DC
	lsl r2, r6, #4
	ldrb r1, [r0, r7]
	ldr r0, [sp, #0x4c]
	ldr r3, _02087F3C ; =0x000E0F00
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r0, r0, r2
	lsl r2, r1, #4
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_02088E58
	ldr r0, [r5, #0]
	add sp, #0x28
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02087DF0:
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	mov r3, #0xee
	bl sub_02019184
	mov r2, #3
	lsl r1, r6, #0x18
	add r3, r2, #0
	ldr r0, [sp, #0x10]
	lsr r1, r1, #0x18
	sub r3, #0x53
	bl sub_02019184
	ldr r0, [r5, #0]
	add sp, #0x28
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02087E16:
	mov r1, #0xc
	add r0, r6, #0
	mul r0, r1
	ldr r2, [r4, r0]
	str r0, [sp, #0x1c]
	sub r2, #0x18
	str r2, [r4, r0]
	ldr r0, [r4, r0]
	sub r1, #0xd
	cmp r0, r1
	bge _02087E6E
	ldr r0, _02087F40 ; =sub_02087CDC
	mov r1, #0x10
	mov r2, #0
	mov r3, #0x12
	bl sub_0200679C
	bl sub_0201CED0
	add r7, r0, #0
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #0x1c]
	str r0, [r7, #0]
	mov r0, #0
	str r0, [r7, #4]
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #0x1c]
	bl sub_02021D28
	ldr r0, [r0, #0]
	str r0, [r7, #8]
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #0x1c]
	bl sub_02021D28
	ldr r0, [r0, #4]
	mov r1, #0xa
	str r0, [r7, #0xc]
	ldr r0, [sp, #0x1c]
	mvn r1, r1
	str r1, [r4, r0]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
_02087E6E:
	ldr r0, [sp, #0x18]
	mov r1, #0xc
	add r7, r0, #0
	add r5, r4, #4
	mul r7, r1
	ldr r0, [r5, r7]
	sub r0, #0xa
	str r0, [r5, r7]
	add r0, r1, #0
	ldr r2, [r5, r7]
	sub r0, #0xd0
	cmp r2, r0
	bge _02087E8C
	sub r1, #0xd0
	str r1, [r5, r7]
_02087E8C:
	ldr r3, [sp, #0x1c]
	lsl r1, r6, #0x18
	ldr r0, [sp, #0x10]
	ldr r3, [r4, r3]
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02019184
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x10]
	lsl r1, r1, #0x18
	ldr r3, [r5, r7]
	lsr r1, r1, #0x18
	mov r2, #3
	bl sub_02019184
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_02087EB0:
	ldr r1, [sp, #0x18]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	str r2, [sp, #0x20]
	add r7, r4, #4
	ldr r2, [r7, r2]
	ldr r1, [sp, #0x20]
	sub r2, #0xa
	str r2, [r7, r1]
	ldr r2, [r7, r1]
	add r1, r0, #0
	sub r1, #0xd0
	cmp r2, r1
	bge _02087ED4
	ldr r1, [sp, #0x20]
	sub r0, #0xd0
	str r0, [r7, r1]
_02087ED4:
	mov r0, #0xc
	mul r0, r6
	str r0, [sp, #0x24]
	ldr r3, [sp, #0x24]
	lsl r1, r6, #0x18
	ldr r0, [sp, #0x10]
	ldr r3, [r4, r3]
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02019184
	ldr r1, [sp, #0x18]
	ldr r3, [sp, #0x20]
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x10]
	ldr r3, [r7, r3]
	lsr r1, r1, #0x18
	mov r2, #3
	bl sub_02019184
	ldr r0, [sp, #0x24]
	mov r1, #0xa
	ldr r0, [r4, r0]
	mvn r1, r1
	cmp r0, r1
	bne _02087F32
	ldr r0, [sp, #0x20]
	sub r1, #0xb9
	ldr r0, [r7, r0]
	cmp r0, r1
	bne _02087F32
	ldr r0, [r5, #0]
	add r2, r4, #0
	add r0, r0, #1
	str r0, [r5, #0]
	ldr r0, [sp, #0x40]
	ldr r1, [r0, #0]
	mov r0, #1
	eor r1, r0
	ldr r0, [sp, #0x40]
	str r1, [r0, #0]
	ldr r0, [sp, #0x10]
	bl sub_02088240
	ldr r0, _02087F44 ; =0x0000069B
	bl sub_02005748
_02087F32:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02087F38: .word 0x020F24DC
_02087F3C: .word 0x000E0F00
_02087F40: .word sub_02087CDC
_02087F44: .word 0x0000069B
	thumb_func_end sub_02087D64

	thumb_func_start sub_02087F48
sub_02087F48: ; 0x02087F48
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0xa
	add r5, r0, #0
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	str r3, [sp, #8]
	bl sub_0201D738
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end sub_02087F48

	thumb_func_start sub_02087F78
sub_02087F78: ; 0x02087F78
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r2, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	mov r4, #0x10
	bl sub_02002D7C
	cmp r0, #0x82
	ble _02087F92
	mov r4, #0
_02087F92:
	add r0, r5, #0
	mov r1, #1
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	ldr r0, _02087FBC ; =0x000E0F01
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02087FBC: .word 0x000E0F01
	thumb_func_end sub_02087F78

	thumb_func_start sub_02087FC0
sub_02087FC0: ; 0x02087FC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	mov r1, #1
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, #0xf4
	str r0, [sp, #0x10]
	mov r0, #0x16
	lsl r0, r0, #4
	mov r1, #0xee
	lsl r1, r1, #2
	add r4, r2, #0
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	mov r2, #1
	mov r1, #0xf2
	lsl r1, r1, #2
	str r2, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #0x8e
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	sub r0, #0xd8
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, [r5, #0]
	cmp r0, #4
	bne _02088064
	mov r0, #0
	str r0, [sp]
	mov r0, #0xe
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r3, #1
	mov r2, #0x16
	str r3, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r1, #9
	bl sub_0200710C
	mov r0, #0x46
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x3a
	bl sub_02088844
	mov r0, #0x4b
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	sub r0, #0xe8
	ldr r1, [r1, #0x14]
	ldr r3, _02088224 ; =0x000E0F00
	str r1, [sp]
	ldr r1, _02088228 ; =0x00000A0A
	add r0, r5, r0
	mov r2, #4
	bl sub_02088E58
	b _0208808E
_02088064:
	mov r0, #0x46
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x3a
	bl sub_02088844
	mov r1, #0x4b
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	ldr r3, _02088224 ; =0x000E0F00
	ldr r0, [r0, #0x14]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	sub r0, #0xe8
	add r0, r5, r0
	sub r1, #0xac
	bl sub_02088E58
_0208808E:
	mov r2, #2
	str r2, [sp]
	mov r3, #0x16
	str r3, [sp, #4]
	mov r1, #0x37
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r1, r1, #4
	str r1, [sp, #0x10]
	lsl r0, r3, #4
	add r1, #0x68
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r3, #7
	bl sub_0201A7E8
	ldr r1, [r5, #0xc]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	asr r0, r0, #3
	add r4, r0, #1
	mov r0, #3
	str r0, [sp]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r2, #2
	mov r1, #0xe7
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	mov r0, #0x16
	str r1, [sp, #0x10]
	lsl r0, r0, #4
	add r1, #0x4c
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r3, #0xa
	bl sub_0201A7E8
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0201ADA4
	mov r0, #3
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r2, #2
	mov r1, #0xf
	add r4, #9
	lsl r3, r4, #0x18
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r1, r1, #6
	mov r0, #0x16
	str r1, [sp, #0x10]
	lsl r0, r0, #4
	add r1, #0x78
	ldr r0, [r5, r0]
	add r1, r5, r1
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	ldr r0, _0208822C ; =0x00000438
	mov r1, #1
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r1, [r5, #0]
	cmp r1, #5
	bne _02088146
	mov r2, #0x61
	ldr r0, _0208822C ; =0x00000438
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl sub_02087F78
	ldr r0, _0208822C ; =0x00000438
	add r0, r5, r0
	bl sub_0201A954
_02088146:
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r2, #4
	ldr r1, _02088230 ; =0x00000448
	str r2, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0x84
	str r0, [sp, #0x10]
	add r0, #0xdc
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, _02088230 ; =0x00000448
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	mov r2, #0x5e
	ldr r0, _02088230 ; =0x00000448
	lsl r2, r2, #2
	ldr r1, [r5, #0]
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl sub_02087F48
	add r0, r6, #0
	bl sub_02006840
	mov r1, #0x46
	lsl r1, r1, #2
	ldrh r2, [r5, r1]
	ldr r0, _02088234 ; =0x0000FFFF
	cmp r2, r0
	beq _020881BC
	add r0, r5, #0
	add r0, #0xd8
	add r1, r5, r1
	bl sub_020021B0
	mov r0, #0xc
	str r0, [sp]
	mov r2, #0
	add r1, r5, #0
	ldr r0, _02088238 ; =0x000E0F01
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xfa
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, #0xd8
	add r3, r2, #0
	str r2, [sp, #0xc]
	bl sub_02088554
_020881BC:
	mov r0, #0xee
	lsl r0, r0, #2
	mov r4, #0
	add r7, r5, r0
_020881C4:
	add r0, r4, #4
	lsl r6, r0, #4
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x78
	str r0, [sp, #0x10]
	add r0, #0xe8
	ldr r0, [r5, r0]
	add r1, r7, r6
	mov r2, #2
	mov r3, #0
	bl sub_0201A7E8
	add r0, r7, r6
	mov r1, #0
	bl sub_0201ADA4
	add r4, r4, #1
	cmp r4, #3
	blt _020881C4
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	ldr r1, _0208823C ; =0x00000428
	str r3, [sp, #0xc]
	mov r0, #0x84
	str r0, [sp, #0x10]
	add r0, #0xdc
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl sub_0201A7E8
	ldr r0, _0208823C ; =0x00000428
	mov r1, #0
	add r0, r5, r0
	bl sub_0201ADA4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02088224: .word 0x000E0F00
_02088228: .word 0x00000A0A
_0208822C: .word 0x00000438
_02088230: .word 0x00000448
_02088234: .word 0x0000FFFF
_02088238: .word 0x000E0F01
_0208823C: .word 0x00000428
	thumb_func_end sub_02087FC0

	thumb_func_start sub_02088240
sub_02088240: ; 0x02088240
	push {r4, lr}
	add r4, r1, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02019060
	mov r0, #1
	eor r0, r4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #2
	bl sub_02019060
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02088240

	thumb_func_start sub_02088260
sub_02088260: ; 0x02088260
	push {r3, r4}
	mov r3, #0xc
	add r4, r1, #0
	mul r4, r3
	mov r2, #0xee
	str r2, [r0, r4]
	add r2, r3, #0
	sub r2, #0x5c
	add r4, r0, r4
	str r2, [r4, #4]
	mov r4, #1
	eor r1, r4
	mul r3, r1
	sub r4, #0xc
	str r4, [r0, r3]
	add r0, r0, r3
	str r2, [r0, #4]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02088260

	thumb_func_start sub_02088288
sub_02088288: ; 0x02088288
	cmp r0, r2
	blt _0208828E
	add r0, r1, #0
_0208828E:
	cmp r0, r1
	bge _02088294
	sub r0, r2, #1
_02088294:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02088288

	thumb_func_start sub_02088298
sub_02088298: ; 0x02088298
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	cmp r1, #0
	beq _0208833C
	ldr r3, [r5, #0x20]
	mov r2, #0x1a
	mul r2, r3
	ldr r0, [r5, #0x1c]
	add r3, r5, r2
	lsl r2, r0, #1
	add r2, r3, r2
	ldrh r2, [r2, #0x3a]
	lsl r6, r1, #3
	ldr r1, _02088340 ; =0x020F2904
	str r2, [sp]
	ldr r1, [r1, r6]
	mov r2, #0xd
	add r0, r0, r1
	mov r1, #0
	bl sub_02088288
	add r4, r0, #0
	ldr r0, _02088344 ; =0x020F2908
	ldr r1, [r5, #0x20]
	ldr r0, [r0, r6]
	mov r2, #6
	add r0, r1, r0
	mov r1, #0
	bl sub_02088288
	add r7, r0, #0
	ldr r0, _02088340 ; =0x020F2904
	add r6, r0, r6
	b _0208831A
_020882DC:
	ldr r1, [r5, #0x28]
	cmp r1, #0
	bne _020882FE
	ldr r1, _02088348 ; =0x0000D004
	cmp r0, r1
	bne _020882FE
	ldr r0, [r6, #4]
	cmp r0, #0
	beq _020882FE
	ldr r0, [r5, #0x2c]
	mov r1, #0
	add r0, r4, r0
	mov r2, #0xd
	bl sub_02088288
	add r4, r0, #0
	b _0208831A
_020882FE:
	ldr r0, [r6, #0]
	mov r1, #0
	add r0, r4, r0
	mov r2, #0xd
	bl sub_02088288
	add r4, r0, #0
	ldr r0, [r6, #4]
	mov r1, #0
	add r0, r7, r0
	mov r2, #6
	bl sub_02088288
	add r7, r0, #0
_0208831A:
	mov r0, #0x1a
	mul r0, r7
	lsl r1, r4, #1
	add r0, r5, r0
	add r0, r1, r0
	ldrh r0, [r0, #0x3a]
	ldr r1, _02088348 ; =0x0000D004
	cmp r0, r1
	beq _020882DC
	ldr r1, [sp]
	cmp r1, r0
	bne _02088338
	ldr r1, _0208834C ; =0x0000E001
	cmp r0, r1
	bhi _020882DC
_02088338:
	str r4, [r5, #0x1c]
	str r7, [r5, #0x20]
_0208833C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02088340: .word 0x020F2904
_02088344: .word 0x020F2908
_02088348: .word 0x0000D004
_0208834C: .word 0x0000E001
	thumb_func_end sub_02088298

	thumb_func_start sub_02088350
sub_02088350: ; 0x02088350
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xd3
	lsl r0, r0, #2
	mov r4, #0
	ldr r0, [r5, r0]
	add r6, r4, #0
	add r7, r4, #0
	bl sub_02021D34
	cmp r0, #0
	bne _0208836A
	mov r7, #1
_0208836A:
	ldr r0, _02088448 ; =0x021BF67C
	ldr r1, [r0, #0x4c]
	mov r0, #0x40
	tst r0, r1
	beq _0208838A
	ldr r0, _0208844C ; =0x000005DC
	bl sub_02005748
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r6, #1
	add r4, r4, #1
_0208838A:
	ldr r0, _02088448 ; =0x021BF67C
	ldr r1, [r0, #0x4c]
	mov r0, #0x80
	tst r0, r1
	beq _020883AA
	ldr r0, _0208844C ; =0x000005DC
	bl sub_02005748
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r6, #2
	add r4, r4, #1
_020883AA:
	ldr r0, _02088448 ; =0x021BF67C
	ldr r1, [r0, #0x4c]
	mov r0, #0x20
	tst r0, r1
	beq _020883CA
	ldr r0, _0208844C ; =0x000005DC
	bl sub_02005748
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r6, #3
	add r4, r4, #1
_020883CA:
	ldr r0, _02088448 ; =0x021BF67C
	ldr r1, [r0, #0x4c]
	mov r0, #0x10
	tst r0, r1
	beq _020883EA
	ldr r0, _0208844C ; =0x000005DC
	bl sub_02005748
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r6, #4
	add r4, r4, #1
_020883EA:
	ldr r0, _02088448 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #8
	tst r0, r1
	beq _02088410
	ldr r0, _0208844C ; =0x000005DC
	bl sub_02005748
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0xc
	str r0, [r5, #0x1c]
	mov r0, #0
	str r0, [r5, #0x20]
	add r4, r4, #1
_02088410:
	add r0, r5, #0
	bl sub_0208903C
	ldr r1, _02088450 ; =0x000005C8
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #1
	bne _02088424
	mov r6, #0
	add r4, r4, #1
_02088424:
	cmp r7, #1
	bne _02088432
	add r0, r5, #0
	add r1, r6, #0
	mov r4, #0
	bl sub_02088454
_02088432:
	cmp r4, #0
	beq _02088446
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02088298
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02088454
_02088446:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02088448: .word 0x021BF67C
_0208844C: .word 0x000005DC
_02088450: .word 0x000005C8
	thumb_func_end sub_02088350

	thumb_func_start sub_02088454
sub_02088454: ; 0x02088454
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x20]
	cmp r1, #0
	beq _0208849E
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne _02088478
	cmp r0, r1
	beq _02088478
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x27
	bl sub_02021D6C
_02088478:
	ldr r0, [r5, #0x1c]
	lsl r0, r0, #4
	add r0, #0x1a
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x20]
	sub r1, r0, #1
	mov r0, #0x13
	mul r0, r1
	add r0, #0x5b
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0xc
	bl sub_02021C50
	b _020884DA
_0208849E:
	mov r0, #0x1a
	mul r0, r1
	add r1, r5, r0
	ldr r0, [r5, #0x1c]
	lsl r0, r0, #1
	add r0, r1, r0
	ldrh r1, [r0, #0x3a]
	ldr r0, _02088504 ; =0x0000E002
	sub r1, r1, r0
	ldr r0, _02088508 ; =0x020F251C
	lsl r2, r1, #1
	ldrh r0, [r0, r2]
	ldr r2, _0208850C ; =0x020F24E8
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	mov r0, #0xd3
	lsl r0, r0, #2
	ldrb r1, [r2, r1]
	ldr r0, [r5, r0]
	bl sub_02021D6C
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0
	bl sub_02021C50
_020884DA:
	mov r0, #0xb4
	strh r0, [r5, #0x38]
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021E50
	ldr r0, [r5, #0x1c]
	lsl r1, r4, #3
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x20]
	str r0, [r5, #0x28]
	ldr r0, _02088510 ; =0x020F2904
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _020884FE
	str r0, [r5, #0x2c]
_020884FE:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_02088504: .word 0x0000E002
_02088508: .word 0x020F251C
_0208850C: .word 0x020F24E8
_02088510: .word 0x020F2904
	thumb_func_end sub_02088454

	thumb_func_start sub_02088514
sub_02088514: ; 0x02088514
	push {r3, lr}
	ldrh r1, [r0]
	add r1, #0x14
	strh r1, [r0]
	ldrh r2, [r0]
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r2, r1
	bls _0208852A
	mov r1, #0
	strh r1, [r0]
_0208852A:
	ldrh r0, [r0]
	bl sub_0201D250
	mov r1, #0xa
	mul r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	add r0, #0xf
	lsl r1, r0, #5
	mov r0, #0x1d
	orr r1, r0
	add r0, sp, #0
	strh r1, [r0]
	add r0, sp, #0
	mov r1, #0x3a
	mov r2, #2
	bl sub_020C0160
	pop {r3, pc}
	thumb_func_end sub_02088514
