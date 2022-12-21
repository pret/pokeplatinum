	.include "macros/function.inc"
	.include "include/unk_02071B10.inc"

	

	.text


	thumb_func_start sub_02071B10
sub_02071B10: ; 0x02071B10
	push {r4, lr}
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	mov r1, #1
	bl sub_02027F5C
	add r0, r4, #0
	mov r1, #1
	bl sub_02027F6C
	mov r1, #1
	strb r1, [r0]
	pop {r4, pc}
	thumb_func_end sub_02071B10

	thumb_func_start sub_02071B30
sub_02071B30: ; 0x02071B30
	push {r4, r5, r6, lr}
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	mov r1, #3
	bl sub_02027F5C
	add r0, r4, #0
	mov r1, #3
	bl sub_02027F6C
	ldr r5, _02071B68 ; =0x020F04CC
	add r6, r0, #0
	mov r4, #0
_02071B50:
	ldrb r1, [r5]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r2, r6, #0
	bl sub_02071C80
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x18
	blt _02071B50
	pop {r4, r5, r6, pc}
	nop
_02071B68: .word 0x020F04CC
	thumb_func_end sub_02071B30

	thumb_func_start sub_02071B6C
sub_02071B6C: ; 0x02071B6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	cmp r5, #3
	blo _02071B7A
	bl sub_02022974
_02071B7A:
	add r0, r7, #0
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	mov r1, #5
	bl sub_02027F5C
	add r0, r4, #0
	mov r1, #5
	bl sub_02027F6C
	add r4, r0, #0
	str r5, [r4, #4]
	cmp r5, #0
	beq _02071BA6
	cmp r5, #1
	beq _02071BAE
	cmp r5, #2
	beq _02071BB6
	b _02071BBE
_02071BA6:
	mov r0, #2
	str r0, [r4, #0]
	mov r6, #0xe
	b _02071BC2
_02071BAE:
	mov r0, #1
	str r0, [r4, #0]
	mov r6, #0x15
	b _02071BC2
_02071BB6:
	mov r0, #0
	str r0, [r4, #0]
	mov r6, #0x19
	b _02071BC2
_02071BBE:
	bl sub_02022974
_02071BC2:
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0xc]
	cmp r0, r6
	bne _02071BCE
	mov r0, #0
	str r0, [r4, #0]
_02071BCE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02071B6C

	thumb_func_start sub_02071BD0
sub_02071BD0: ; 0x02071BD0
	push {r4, lr}
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	mov r1, #8
	bl sub_02027F5C
	add r0, r4, #0
	mov r1, #8
	bl sub_02027F6C
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02071BD0

	thumb_func_start sub_02071BF8
sub_02071BF8: ; 0x02071BF8
	push {r4, lr}
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	mov r1, #4
	bl sub_02027F5C
	add r0, r4, #0
	mov r1, #4
	bl sub_02027F6C
	mov r1, #0
	str r1, [r0, #0]
	pop {r4, pc}
	thumb_func_end sub_02071BF8

	thumb_func_start sub_02071C18
sub_02071C18: ; 0x02071C18
	push {r4, lr}
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	mov r1, #2
	bl sub_02027F5C
	add r0, r4, #0
	mov r1, #2
	bl sub_02027F6C
	pop {r4, pc}
	thumb_func_end sub_02071C18

	thumb_func_start sub_02071C34
sub_02071C34: ; 0x02071C34
	push {r4, lr}
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	mov r1, #0xa
	bl sub_02027F5C
	add r0, r4, #0
	mov r1, #0xa
	bl sub_02027F6C
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02071C34

	thumb_func_start sub_02071C5C
sub_02071C5C: ; 0x02071C5C
	push {r4, lr}
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	mov r1, #9
	bl sub_02027F5C
	add r0, r4, #0
	mov r1, #9
	bl sub_02027F6C
	mov r1, #0
	mov r2, #0x20
	bl sub_020D5124
	pop {r4, pc}
	thumb_func_end sub_02071C5C

	thumb_func_start sub_02071C80
sub_02071C80: ; 0x02071C80
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #1
	bls _02071C90
	bl sub_02022974
_02071C90:
	mov r0, #0
	mvn r0, r0
	mov r1, #0x20
	ldr r2, [r6, #0]
	sub r1, r1, r5
	add r3, r0, #0
	lsr r3, r1
	add r1, r2, #0
	and r1, r3
	add r3, r5, #1
	lsl r0, r3
	and r2, r0
	add r0, r4, #0
	lsl r0, r5
	orr r0, r2
	orr r0, r1
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02071C80

	thumb_func_start sub_02071CB4
sub_02071CB4: ; 0x02071CB4
	push {r4, lr}
	add r4, r1, #0
	bl sub_0203D174
	bl sub_02027860
	bl sub_02027F80
	cmp r4, r0
	bne _02071CCC
	mov r0, #1
	pop {r4, pc}
_02071CCC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02071CB4

	.rodata


	.global Unk_020F04CC
Unk_020F04CC: ; 0x020F04CC
	.incbin "incbin/arm9_rodata.bin", 0xB88C, 0x18

