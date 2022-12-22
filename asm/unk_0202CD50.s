	.include "macros/function.inc"
	.include "include/unk_0202CD50.inc"

	

	.text


	thumb_func_start sub_0202CD50
sub_0202CD50: ; 0x0202CD50
	mov r0, #0x6f
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202CD50

	thumb_func_start sub_0202CD58
sub_0202CD58: ; 0x0202CD58
	push {r4, lr}
	add r4, r0, #0
	mov r2, #0x6f
	mov r0, #0
	add r1, r4, #0
	lsl r2, r2, #2
	bl MIi_CpuClear32
	ldr r1, _0202CD80 ; =0x027FFC3C
	ldr r0, [r1, #0]
	ldr r1, [r1, #0]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0202CD84 ; =0x000001BA
	strh r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl sub_0202CD94
	pop {r4, pc}
	; .align 2, 0
_0202CD80: .word 0x027FFC3C
_0202CD84: .word 0x000001BA
	thumb_func_end sub_0202CD58

	thumb_func_start sub_0202CD88
sub_0202CD88: ; 0x0202CD88
	ldr r3, _0202CD90 ; =sub_020245BC
	mov r1, #0x14
	bx r3
	nop
_0202CD90: .word sub_020245BC
	thumb_func_end sub_0202CD88

	thumb_func_start sub_0202CD94
sub_0202CD94: ; 0x0202CD94
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _0202CDBE
	mov r1, #0x6d
	add r0, r4, #4
	lsl r1, r1, #2
	bl sub_0201D5B8
	mov r3, #0x6e
	lsl r3, r3, #2
	strh r0, [r4, r3]
	sub r1, r3, #4
	ldrh r2, [r4, r3]
	add r3, r3, #2
	ldrh r3, [r4, r3]
	add r0, r4, #4
	lsl r3, r3, #0x10
	add r2, r2, r3
	bl sub_0201D5D4
_0202CDBE:
	pop {r4, pc}
	thumb_func_end sub_0202CD94

	thumb_func_start sub_0202CDC0
sub_0202CDC0: ; 0x0202CDC0
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _0202CDDE
	mov r1, #0x6d
	lsl r1, r1, #2
	add r2, r1, #4
	ldrh r3, [r4, r2]
	add r2, r1, #6
	ldrh r2, [r4, r2]
	add r0, r4, #4
	lsl r2, r2, #0x10
	add r2, r3, r2
	bl sub_0201D600
_0202CDDE:
	pop {r4, pc}
	thumb_func_end sub_0202CDC0

	thumb_func_start sub_0202CDE0
sub_0202CDE0: ; 0x0202CDE0
	push {r3, lr}
	cmp r1, #0x47
	bge _0202CDEC
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r3, pc}
_0202CDEC:
	cmp r1, #0x94
	bge _0202CDFE
	sub r1, #0x47
	lsl r1, r1, #1
	add r1, r0, r1
	mov r0, #0x47
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	pop {r3, pc}
_0202CDFE:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202CDE0

	thumb_func_start sub_0202CE08
sub_0202CE08: ; 0x0202CE08
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x47
	bge _0202CE18
	lsl r0, r4, #2
	str r2, [r5, r0]
	b _0202CE30
_0202CE18:
	cmp r4, #0x94
	bge _0202CE2C
	add r0, r4, #0
	sub r0, #0x47
	lsl r0, r0, #1
	add r1, r5, r0
	mov r0, #0x47
	lsl r0, r0, #2
	strh r2, [r1, r0]
	b _0202CE30
_0202CE2C:
	bl sub_02022974
_0202CE30:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CDE0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202CE08

	thumb_func_start sub_0202CE3C
sub_0202CE3C: ; 0x0202CE3C
	push {r3, lr}
	cmp r0, #0x47
	bge _0202CE52
	ldr r1, _0202CE70 ; =0x02100984
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0202CE4E
	ldr r0, _0202CE74 ; =0x3B9AC9FF
	pop {r3, pc}
_0202CE4E:
	ldr r0, _0202CE78 ; =0x000F423F
	pop {r3, pc}
_0202CE52:
	cmp r0, #0x94
	bge _0202CE66
	ldr r1, _0202CE70 ; =0x02100984
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0202CE62
	ldr r0, _0202CE7C ; =0x0000FFFF
	pop {r3, pc}
_0202CE62:
	ldr r0, _0202CE80 ; =0x0000270F
	pop {r3, pc}
_0202CE66:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	nop
_0202CE70: .word 0x02100984
_0202CE74: .word 0x3B9AC9FF
_0202CE78: .word 0x000F423F
_0202CE7C: .word 0x0000FFFF
_0202CE80: .word 0x0000270F
	thumb_func_end sub_0202CE3C

	thumb_func_start sub_0202CE84
sub_0202CE84: ; 0x0202CE84
	lsl r1, r0, #1
	ldr r0, _0202CE8C ; =0x020E5C68
	ldrh r0, [r0, r1]
	bx lr
	; .align 2, 0
_0202CE8C: .word 0x020E5C68
	thumb_func_end sub_0202CE84

	thumb_func_start sub_0202CE90
sub_0202CE90: ; 0x0202CE90
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl sub_0202CE3C
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CDC0
	cmp r6, r7
	bhs _0202CEB8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202CE08
	b _0202CEC2
_0202CEB8:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0202CE08
_0202CEC2:
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CD94
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202CE90

	thumb_func_start sub_0202CED0
sub_0202CED0: ; 0x0202CED0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r7, r2, #0
	bl sub_0202CE3C
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202CDC0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202CDE0
	str r0, [sp]
	cmp r7, r4
	bls _0202CEF8
	add r7, r4, #0
_0202CEF8:
	ldr r0, [sp]
	cmp r0, r7
	bhs _0202CF0C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_0202CE08
	str r0, [sp]
	b _0202CF1C
_0202CF0C:
	cmp r0, r4
	bls _0202CF1C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0202CE08
	str r0, [sp]
_0202CF1C:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202CD94
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202CED0

	thumb_func_start sub_0202CF28
sub_0202CF28: ; 0x0202CF28
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0202CE3C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CDC0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CDE0
	add r2, r0, #1
	cmp r2, r6
	bhs _0202CF56
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CE08
	b _0202CF60
_0202CF56:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202CE08
_0202CF60:
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CD94
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202CF28

	thumb_func_start sub_0202CF70
sub_0202CF70: ; 0x0202CF70
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r7, r2, #0
	bl sub_0202CE3C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CDC0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CDE0
	add r2, r0, r7
	cmp r2, r6
	bhs _0202CFA0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CE08
	b _0202CFAA
_0202CFA0:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202CE08
_0202CFAA:
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CD94
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202CF70

	thumb_func_start sub_0202CFB8
sub_0202CFB8: ; 0x0202CFB8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0202CE3C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0202CDC0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0202CDE0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0202CD94
	cmp r6, r4
	bhi _0202CFE6
	add r4, r6, #0
_0202CFE6:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202CFB8

	thumb_func_start sub_0202CFEC
sub_0202CFEC: ; 0x0202CFEC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #0x33
	blt _0202CFFA
	bl sub_02022974
_0202CFFA:
	add r0, r5, #0
	mov r1, #1
	bl sub_0202CFB8
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0202CE84
	ldr r2, _0202D030 ; =0x05F5E0FF
	add r0, r4, r0
	cmp r0, r2
	bls _0202D01C
	add r0, r5, #0
	mov r1, #1
	bl sub_0202CE90
	pop {r4, r5, r6, pc}
_0202D01C:
	add r0, r6, #0
	bl sub_0202CE84
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_0202CF70
	pop {r4, r5, r6, pc}
	nop
_0202D030: .word 0x05F5E0FF
	thumb_func_end sub_0202CFEC

	thumb_func_start sub_0202D034
sub_0202D034: ; 0x0202D034
	ldr r3, _0202D03C ; =sub_0202CFB8
	mov r1, #1
	bx r3
	nop
_0202D03C: .word sub_0202CFB8
	thumb_func_end sub_0202D034

	thumb_func_start sub_0202D040
sub_0202D040: ; 0x0202D040
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	bl sub_02026F9C
	cmp r0, #0
	bne _0202D058
	add r0, r4, #0
	mov r1, #0x16
	bl sub_0202CFEC
_0202D058:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202D040

	.rodata


	.global Unk_020E5C68
Unk_020E5C68: ; 0x020E5C68
	.incbin "incbin/arm9_rodata.bin", 0x1028, 0x66



	.data


	.global Unk_02100984
Unk_02100984: ; 0x02100984
	.incbin "incbin/arm9_data.bin", 0x1CA4, 0x94

