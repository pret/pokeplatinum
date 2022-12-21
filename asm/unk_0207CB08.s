	.include "macros/function.inc"
	.include "include/unk_0207CB08.inc"

	

	.text


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