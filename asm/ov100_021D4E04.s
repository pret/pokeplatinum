	.include "macros/function.inc"
	.include "include/ov100_021D4E04.inc"

	

	.text


	thumb_func_start ov100_021D4E04
ov100_021D4E04: ; 0x021D4E04
	ldr r3, _021D4E10 ; =sub_0200DA04
	mov r2, #1
	add r1, r0, #0
	ldr r0, _021D4E14 ; =ov100_021D4E18
	lsl r2, r2, #0xa
	bx r3
	; .align 2, 0
_021D4E10: .word sub_0200DA04
_021D4E14: .word ov100_021D4E18
	thumb_func_end ov100_021D4E04

	thumb_func_start ov100_021D4E18
ov100_021D4E18: ; 0x021D4E18
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #8]
	cmp r0, #2
	blo _021D4E2C
	ldr r0, [r4, #0]
	bl sub_02013DA4
	mov r0, #0
	str r0, [r4, #8]
_021D4E2C:
	ldr r0, [r4, #0]
	bl sub_02013DDC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov100_021D4E18

	thumb_func_start ov100_021D4E3C
ov100_021D4E3C: ; 0x021D4E3C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02013BE0
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #8]
	add r0, r4, #0
	bl ov100_021D4E04
	str r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov100_021D4E3C

	thumb_func_start ov100_021D4E58
ov100_021D4E58: ; 0x021D4E58
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0200DA58
	ldr r0, [r4, #0]
	bl sub_02013D38
	ldr r0, [r4, #0]
	bl sub_02013D74
	pop {r4, pc}
	thumb_func_end ov100_021D4E58

	thumb_func_start ov100_021D4E70
ov100_021D4E70: ; 0x021D4E70
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x34]
	add r5, sp, #0x10
	cmp r4, #0
	bne _021D4E9C
	ldr r4, [sp, #0x20]
	str r4, [sp]
	mov r4, #0x14
	ldrsh r4, [r5, r4]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x10]
	ldr r0, [r0, #0]
	bl sub_02013C10
	add sp, #0x14
	pop {r4, r5, pc}
_021D4E9C:
	ldr r4, [sp, #0x20]
	str r4, [sp]
	mov r4, #0x14
	ldrsh r4, [r5, r4]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x10]
	ldr r0, [r0, #0]
	bl sub_02013CA4
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov100_021D4E70

	thumb_func_start ov100_021D4EBC
ov100_021D4EBC: ; 0x021D4EBC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021D4F04 ; =ov100_021D4F9C
	ldr r3, [r5, #0x28]
	mov r1, #0x38
	mov r2, #5
	bl sub_0200679C
	add r6, r0, #0
	bl sub_0201CED0
	add r4, r0, #0
	add r2, r4, #4
	mov r3, #5
_021D4ED8:
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r3, r3, #1
	bne _021D4ED8
	ldr r0, [r5, #0]
	str r0, [r2, #0]
	str r6, [r4, #0x34]
	mov r0, #0
	str r0, [r4, #0x30]
	bl sub_020BF00C
	str r0, [r4, #0]
	add r0, r4, #4
	bl ov100_021D503C
	ldr r0, _021D4F08 ; =ov100_021D4FDC
	add r1, r4, #0
	mov r2, #0
	bl sub_0200DA3C
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D4F04: .word ov100_021D4F9C
_021D4F08: .word ov100_021D4FDC
	thumb_func_end ov100_021D4EBC

	thumb_func_start ov100_021D4F0C
ov100_021D4F0C: ; 0x021D4F0C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	bl sub_020BDE40
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_020BEA30
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	cmp r0, #0xa
	bgt _021D4F3C
	bge _021D4F60
	cmp r0, #6
	bgt _021D4F7C
	cmp r0, #2
	blt _021D4F7C
	beq _021D4F42
	cmp r0, #6
	beq _021D4F52
	b _021D4F7C
_021D4F3C:
	cmp r0, #0xe
	beq _021D4F6E
	b _021D4F7C
_021D4F42:
	mov r1, #0x1a
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x10
	bl sub_020C4BB8
	b _021D4F82
_021D4F52:
	mov r2, #2
	ldr r1, _021D4F90 ; =0x06820000
	mov r0, #0
	lsl r2, r2, #0x10
	bl sub_020C4BB8
	b _021D4F82
_021D4F60:
	mov r2, #2
	ldr r1, _021D4F94 ; =0x06840000
	mov r0, #0
	lsl r2, r2, #0x10
	bl sub_020C4BB8
	b _021D4F82
_021D4F6E:
	mov r2, #2
	ldr r1, _021D4F98 ; =0x06860000
	mov r0, #0
	lsl r2, r2, #0x10
	bl sub_020C4BB8
	b _021D4F82
_021D4F7C:
	mov r0, #0
	bl sub_020BEA30
_021D4F82:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x34]
	bl sub_020067D0
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
_021D4F90: .word 0x06820000
_021D4F94: .word 0x06840000
_021D4F98: .word 0x06860000
	thumb_func_end ov100_021D4F0C

	thumb_func_start ov100_021D4F9C
ov100_021D4F9C: ; 0x021D4F9C
	push {r4, r5, r6, r7}
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _021D4FD4
	ldr r6, [r1, #0x20]
	ldr r5, [r1, #0x10]
	ldr r4, [r1, #0x1c]
	ldr r3, [r1, #0x18]
	ldr r2, [r1, #0x14]
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	lsl r5, r5, #0x14
	lsl r7, r1, #8
	lsl r1, r3, #0x18
	lsl r3, r2, #0x1d
	mov r2, #2
	lsl r2, r2, #0x1e
	orr r3, r2
	lsl r2, r4, #0x19
	orr r2, r3
	orr r1, r2
	lsl r6, r6, #0x10
	orr r1, r5
	orr r1, r6
	orr r1, r7
	orr r1, r0
	ldr r0, _021D4FD8 ; =0x04000064
	str r1, [r0, #0]
_021D4FD4:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_021D4FD8: .word 0x04000064
	thumb_func_end ov100_021D4F9C

	thumb_func_start ov100_021D4FDC
ov100_021D4FDC: ; 0x021D4FDC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0xa
	bgt _021D4FFA
	bge _021D5010
	cmp r0, #6
	bgt _021D5020
	cmp r0, #2
	blt _021D5020
	beq _021D5000
	cmp r0, #6
	beq _021D5008
	b _021D5020
_021D4FFA:
	cmp r0, #0xe
	beq _021D5018
	b _021D5020
_021D5000:
	mov r0, #1
	bl sub_020BEA30
	b _021D5026
_021D5008:
	mov r0, #2
	bl sub_020BEA30
	b _021D5026
_021D5010:
	mov r0, #4
	bl sub_020BEA30
	b _021D5026
_021D5018:
	mov r0, #8
	bl sub_020BEA30
	b _021D5026
_021D5020:
	mov r0, #0
	bl sub_020BEA30
_021D5026:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	bl sub_020BDE40
	mov r0, #1
	str r0, [r4, #0x30]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov100_021D4FDC

	thumb_func_start ov100_021D503C
ov100_021D503C: ; 0x021D503C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0xa
	bgt _021D5058
	bge _021D507C
	cmp r0, #6
	bgt _021D5096
	cmp r0, #2
	blt _021D5096
	beq _021D505E
	cmp r0, #6
	beq _021D506E
	b _021D5096
_021D5058:
	cmp r0, #0xe
	beq _021D508A
	b _021D5096
_021D505E:
	mov r1, #0x1a
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x10
	bl sub_020C4BB8
	b _021D5096
_021D506E:
	mov r2, #2
	ldr r1, _021D50C4 ; =0x06820000
	mov r0, #0
	lsl r2, r2, #0x10
	bl sub_020C4BB8
	b _021D5096
_021D507C:
	mov r2, #2
	ldr r1, _021D50C8 ; =0x06840000
	mov r0, #0
	lsl r2, r2, #0x10
	bl sub_020C4BB8
	b _021D5096
_021D508A:
	mov r2, #2
	ldr r1, _021D50CC ; =0x06860000
	mov r0, #0
	lsl r2, r2, #0x10
	bl sub_020C4BB8
_021D5096:
	ldr r5, [r4, #0x10]
	ldr r1, [r4, #0x1c]
	ldr r3, [r4, #0x18]
	ldr r6, [r4, #0x14]
	ldr r0, [r4, #0xc]
	mov r4, #2
	lsl r2, r1, #0x10
	lsl r1, r0, #0x14
	lsl r5, r5, #0x1d
	lsl r4, r4, #0x1e
	orr r4, r5
	lsl r3, r3, #0x19
	lsl r0, r6, #0x18
	orr r3, r4
	orr r0, r3
	orr r0, r1
	add r1, r2, #0
	orr r1, r0
	mov r0, #0x10
	orr r1, r0
	ldr r0, _021D50D0 ; =0x04000064
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D50C4: .word 0x06820000
_021D50C8: .word 0x06840000
_021D50CC: .word 0x06860000
_021D50D0: .word 0x04000064
	thumb_func_end ov100_021D503C