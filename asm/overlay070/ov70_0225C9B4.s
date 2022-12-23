	.include "macros/function.inc"
	.include "overlay070/ov70_0225C9B4.inc"

	

	.text


	thumb_func_start ov70_0225C9B4
ov70_0225C9B4: ; 0x0225C9B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r0, r3, #0
	mov r1, #0x28
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_02018144
	mov r1, #0
	mov r2, #0x28
	add r4, r0, #0
	bl memset
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov63_0222BE18
	str r0, [r4, #0]
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_022343A8
	str r0, [r4, #4]
	ldr r1, [sp, #4]
	mov r0, #0x20
	bl ov63_0222D848
	str r0, [r4, #0x10]
	mov r0, #0x28
	add r7, r5, #0
	mul r7, r0
	ldr r0, [sp, #4]
	add r1, r7, #0
	strh r5, [r4, #0xc]
	bl sub_02018144
	mov r1, #0
	add r2, r7, #0
	str r0, [r4, #8]
	bl memset
	ldr r0, [sp]
	str r0, [r4, #0x14]
	add r0, r4, #0
	strh r6, [r4, #0xe]
	bl ov70_0225D0D8
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225C9B4

	thumb_func_start ov70_0225CA20
ov70_0225CA20: ; 0x0225CA20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_020181C4
	ldr r0, [r4, #0x10]
	bl ov63_0222D880
	ldr r0, [r4, #4]
	bl ov66_02234548
	ldr r0, [r4, #0]
	bl ov63_0222BE58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov70_0225CA20

	thumb_func_start ov70_0225CA44
ov70_0225CA44: ; 0x0225CA44
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov63_0222BE84
	add r0, r4, #0
	ldr r1, [r4, #4]
	add r0, #0x18
	bl ov70_0225D954
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225CA44

	thumb_func_start ov70_0225CA5C
ov70_0225CA5C: ; 0x0225CA5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r0, [r5, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _0225CA8C
	add r4, r6, #0
_0225CA6C:
	ldr r0, [r5, #8]
	add r0, r0, r4
	bl ov70_0225D2FC
	cmp r0, #0
	bne _0225CA82
	ldr r0, [r5, #8]
	add r1, r5, #0
	add r0, r0, r4
	ldr r2, [r0, #0x24]
	blx r2
_0225CA82:
	ldrh r0, [r5, #0xc]
	add r6, r6, #1
	add r4, #0x28
	cmp r6, r0
	blt _0225CA6C
_0225CA8C:
	ldr r0, [r5, #0x14]
	bl ov70_0225C9B0
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	add r1, sp, #8
	bl ov63_0222D8D0
	cmp r0, #1
	bne _0225CAC8
	add r7, sp, #0
	add r6, sp, #8
_0225CAA4:
	ldr r1, [r5, #0]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov63_0222CA88
	cmp r0, #1
	bne _0225CABC
	ldr r0, [r5, #0]
	add r1, r7, #0
	bl ov63_0222BE70
_0225CABC:
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	bl ov63_0222D8D0
	cmp r0, #1
	beq _0225CAA4
_0225CAC8:
	ldr r0, [r5, #4]
	bl ov66_02234590
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0225CA5C

	thumb_func_start ov70_0225CAD4
ov70_0225CAD4: ; 0x0225CAD4
	ldr r3, _0225CADC ; =ov66_022345C4
	ldr r0, [r0, #4]
	bx r3
	nop
_0225CADC: .word ov66_022345C4
	thumb_func_end ov70_0225CAD4

	thumb_func_start ov70_0225CAE0
ov70_0225CAE0: ; 0x0225CAE0
	ldr r3, _0225CAE8 ; =ov66_02234604
	ldr r0, [r0, #4]
	bx r3
	nop
_0225CAE8: .word ov66_02234604
	thumb_func_end ov70_0225CAE0

	thumb_func_start ov70_0225CAEC
ov70_0225CAEC: ; 0x0225CAEC
	add r3, r0, #0
	add r2, r1, #0
	ldr r1, [r3, #4]
	lsl r3, r2, #2
	ldr r2, _0225CB00 ; =0x0226D518
	add r0, #0x18
	ldr r2, [r2, r3]
	ldr r3, _0225CB04 ; =ov70_0225D920
	bx r3
	nop
_0225CB00: .word 0x0226D518
_0225CB04: .word ov70_0225D920
	thumb_func_end ov70_0225CAEC

	thumb_func_start ov70_0225CB08
ov70_0225CB08: ; 0x0225CB08
	lsl r2, r1, #2
	ldr r1, _0225CB14 ; =0x0226D518
	ldr r3, _0225CB18 ; =ov70_0225D93C
	add r0, #0x18
	ldr r1, [r1, r2]
	bx r3
	; .align 2, 0
_0225CB14: .word 0x0226D518
_0225CB18: .word ov70_0225D93C
	thumb_func_end ov70_0225CB08

	thumb_func_start ov70_0225CB1C
ov70_0225CB1C: ; 0x0225CB1C
	ldr r3, _0225CB24 ; =ov63_0222D894
	ldr r0, [r0, #0x10]
	bx r3
	nop
_0225CB24: .word ov63_0222D894
	thumb_func_end ov70_0225CB1C

	thumb_func_start ov70_0225CB28
ov70_0225CB28: ; 0x0225CB28
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	add r2, sp, #4
	add r4, r1, #0
	ldr r0, [r5, #0x14]
	mov r1, #3
	add r2, #2
	add r3, sp, #4
	bl ov70_0225C8D8
	cmp r0, #0
	bne _0225CB4A
	bl GF_AssertFail
_0225CB4A:
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0225CB5C
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225CB28

	thumb_func_start ov70_0225CB5C
ov70_0225CB5C: ; 0x0225CB5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	str r3, [sp]
	bl ov70_0225D2C0
	add r4, r0, #0
	lsl r0, r7, #4
	add r1, sp, #4
	strh r0, [r1]
	ldr r0, [sp]
	mov r2, #0
	lsl r0, r0, #4
	strh r0, [r1, #2]
	strh r6, [r1, #4]
	strh r2, [r1, #6]
	strh r2, [r1, #8]
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	bne _0225CB8C
	strh r2, [r1, #0xa]
	b _0225CB90
_0225CB8C:
	mov r0, #0x61
	strh r0, [r1, #0xa]
_0225CB90:
	ldr r0, [r5, #0]
	add r1, sp, #4
	bl ov63_0222BEC0
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0]
	bl ov66_0223461C
	str r0, [r4, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	str r4, [r5, #0x20]
	bl ov70_0225CDEC
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0225CB5C

	thumb_func_start ov70_0225CBB8
ov70_0225CBB8: ; 0x0225CBB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp, #4]
	bl ov70_0225D2C0
	mov r6, #0
	str r0, [sp, #8]
	add r4, r6, #0
_0225CBCC:
	str r4, [sp]
	add r2, sp, #0xc
	ldr r0, [r5, #0x14]
	add r1, r7, #4
	add r2, #2
	add r3, sp, #0xc
	bl ov70_0225C8D8
	cmp r0, #0
	bne _0225CBE6
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0225CBE6:
	add r0, r5, #0
	bl ov70_0225CCAC
	cmp r0, #0
	bne _0225CBF4
	mov r6, #1
	b _0225CC06
_0225CBF4:
	add r1, sp, #0xc
	add r2, sp, #0xc
	ldrh r1, [r1, #2]
	ldrh r2, [r2]
	bl ov70_0225CEDC
	cmp r0, #0
	bne _0225CC06
	mov r6, #1
_0225CC06:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r6, #0
	beq _0225CBCC
	add r1, sp, #0xc
	ldrh r0, [r1, #2]
	lsl r0, r0, #4
	strh r0, [r1, #4]
	ldrh r0, [r1]
	lsl r0, r0, #4
	strh r0, [r1, #6]
	strh r7, [r1, #8]
	mov r0, #0
	strh r0, [r1, #0xa]
	mov r0, #1
	strh r0, [r1, #0xc]
	ldr r0, [sp, #4]
	strh r0, [r1, #0xe]
	ldr r0, [r5, #0]
	add r1, sp, #0x10
	bl ov63_0222BEC0
	ldr r1, [sp, #8]
	str r0, [r1, #0]
	ldr r0, [r5, #4]
	ldr r1, [r1, #0]
	bl ov66_0223461C
	ldr r1, [sp, #8]
	mov r2, #0
	str r0, [r1, #4]
	add r0, r5, #0
	bl ov70_0225CDEC
	ldr r0, [sp, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0225CBB8

	thumb_func_start ov70_0225CC54
ov70_0225CC54: ; 0x0225CC54
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov66_02234798
	ldr r0, [r4, #0]
	bl ov63_0222BF08
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x28
	bl memset
	pop {r4, pc}
	thumb_func_end ov70_0225CC54

	thumb_func_start ov70_0225CC70
ov70_0225CC70: ; 0x0225CC70
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0xc]
	add r7, r1, #0
	mov r6, #0
	cmp r0, #0
	ble _0225CCA6
	add r4, r6, #0
_0225CC80:
	ldr r0, [r5, #8]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0225CC9C
	mov r1, #4
	bl ov63_0222BF90
	cmp r0, r7
	bne _0225CC9C
	mov r0, #0x28
	ldr r1, [r5, #8]
	mul r0, r6
	add r0, r1, r0
	pop {r3, r4, r5, r6, r7, pc}
_0225CC9C:
	ldrh r0, [r5, #0xc]
	add r6, r6, #1
	add r4, #0x28
	cmp r6, r0
	blt _0225CC80
_0225CCA6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0225CC70

	thumb_func_start ov70_0225CCAC
ov70_0225CCAC: ; 0x0225CCAC
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end ov70_0225CCAC

	thumb_func_start ov70_0225CCB0
ov70_0225CCB0: ; 0x0225CCB0
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end ov70_0225CCB0

	thumb_func_start ov70_0225CCB4
ov70_0225CCB4: ; 0x0225CCB4
	push {r0, r1, r2, r3}
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0225CCC4
	bl GF_AssertFail
_0225CCC4:
	add r1, sp, #8
	ldrh r2, [r1, #4]
	mov r3, sp
	ldr r0, [r4, #0]
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1A4
	add r1, sp, #8
	mov r3, sp
	ldrh r2, [r1, #4]
	ldr r0, [r4, #0]
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C1B4
	ldr r0, [r4, #0]
	mov r1, #5
	mov r2, #0
	bl ov63_0222C000
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end ov70_0225CCB4

	thumb_func_start ov70_0225CD04
ov70_0225CD04: ; 0x0225CD04
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	add r1, sp, #0x10
	add r4, r2, #0
	mov r3, sp
	ldrh r2, [r1, #4]
	sub r3, r3, #4
	add r5, r0, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov70_0225CCB4
	ldr r0, [r5, #0]
	mov r1, #6
	add r2, r4, #0
	bl ov63_0222C000
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end ov70_0225CD04

	thumb_func_start ov70_0225CD34
ov70_0225CD34: ; 0x0225CD34
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0225CD44
	bl GF_AssertFail
_0225CD44:
	ldr r0, [r4, #0]
	bl ov63_0222C0FC
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r2, [r1, #2]
	ldrh r0, [r1]
	lsl r1, r2, #0x10
	orr r0, r1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225CD34

	thumb_func_start ov70_0225CD60
ov70_0225CD60: ; 0x0225CD60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	cmp r0, #0
	bne _0225CD70
	bl GF_AssertFail
_0225CD70:
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl ov63_0222BF90
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_0225CD60

	thumb_func_start ov70_0225CD7C
ov70_0225CD7C: ; 0x0225CD7C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #5
	add r6, r2, #0
	add r7, r3, #0
	bl ov63_0222BF90
	cmp r0, #0
	beq _0225CD96
	bl GF_AssertFail
_0225CD96:
	ldr r0, [r4, #0]
	mov r1, #4
	bl ov63_0222BF90
	add r3, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov70_0225D17C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225CD7C

	thumb_func_start ov70_0225CDAC
ov70_0225CDAC: ; 0x0225CDAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r6, r2, #0
	add r7, r3, #0
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	strh r6, [r1, #8]
	strb r7, [r1, #0xa]
	ldr r0, [r4, #0]
	mov r1, #4
	bl ov63_0222BF90
	add r1, sp, #0
	strb r0, [r1, #0xb]
	ldr r0, [r5, #0]
	add r1, sp, #4
	bl ov63_0222BE70
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0225CDAC

	thumb_func_start ov70_0225CDEC
ov70_0225CDEC: ; 0x0225CDEC
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	cmp r4, #0xa
	blt _0225CDFC
	bl GF_AssertFail
_0225CDFC:
	ldrb r0, [r5, #0xb]
	lsl r1, r0, #2
	ldr r0, _0225CE30 ; =0x0226D530
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _0225CE0E
	add r0, r5, #0
	add r1, r6, #0
	blx r2
_0225CE0E:
	mov r2, #0
	strh r2, [r5, #8]
	strb r2, [r5, #0xa]
	add r1, r5, #0
	strb r4, [r5, #0xb]
	add r1, #0xc
	mov r0, #0x18
_0225CE1C:
	strb r2, [r1]
	add r1, r1, #1
	sub r0, r0, #1
	bne _0225CE1C
	ldr r0, _0225CE34 ; =0x0226D558
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	str r0, [r5, #0x24]
	pop {r4, r5, r6, pc}
	nop
_0225CE30: .word 0x0226D530
_0225CE34: .word 0x0226D558
	thumb_func_end ov70_0225CDEC

	thumb_func_start ov70_0225CE38
ov70_0225CE38: ; 0x0225CE38
	ldrb r0, [r0, #0xa]
	bx lr
	thumb_func_end ov70_0225CE38

	thumb_func_start ov70_0225CE3C
ov70_0225CE3C: ; 0x0225CE3C
	ldrb r0, [r0, #0xb]
	bx lr
	thumb_func_end ov70_0225CE3C

	thumb_func_start ov70_0225CE40
ov70_0225CE40: ; 0x0225CE40
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #6
	bl ov63_0222BF90
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r5, #0]
	bl ov63_0222C1C4
	cmp r0, #0
	bne _0225CE60
	mov r0, #0
	pop {r3, r4, r5, pc}
_0225CE60:
	mov r1, #4
	bl ov63_0222BF90
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225CC70
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225CE40

	thumb_func_start ov70_0225CE70
ov70_0225CE70: ; 0x0225CE70
	ldr r3, _0225CE78 ; =ov66_022347CC
	ldr r0, [r0, #4]
	bx r3
	nop
_0225CE78: .word ov66_022347CC
	thumb_func_end ov70_0225CE70

	thumb_func_start ov70_0225CE7C
ov70_0225CE7C: ; 0x0225CE7C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	lsl r0, r1, #4
	add r1, sp, #0
	strh r0, [r1]
	lsl r0, r2, #4
	strh r0, [r1, #2]
	mov r3, sp
	ldrh r2, [r1]
	ldr r0, [r4, #0]
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov63_0222C2AC
	cmp r0, #0
	bne _0225CEAA
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_0225CEAA:
	ldrh r2, [r4, #0xc]
	mov r1, #0
	cmp r2, #0
	ble _0225CED0
	ldr r3, [r4, #8]
_0225CEB4:
	ldr r2, [r3, #0]
	cmp r2, r0
	bne _0225CEC6
	mov r0, #0x28
	ldr r2, [r4, #8]
	mul r0, r1
	add sp, #4
	add r0, r2, r0
	pop {r3, r4, pc}
_0225CEC6:
	ldrh r2, [r4, #0xc]
	add r1, r1, #1
	add r3, #0x28
	cmp r1, r2
	blt _0225CEB4
_0225CED0:
	bl GF_AssertFail
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225CE7C

	thumb_func_start ov70_0225CEDC
ov70_0225CEDC: ; 0x0225CEDC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	add r4, r2, #0
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1, #4]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldr r0, [r5, #0]
	bl ov63_0222C0F0
	add r2, sp, #0
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #0xc
	strh r0, [r2, #8]
	ldrh r0, [r2, #2]
	strh r0, [r2, #0xa]
	ldrsh r1, [r2, r1]
	lsl r0, r6, #4
	cmp r1, r0
	bne _0225CF2C
	mov r1, #0xe
	ldrsh r2, [r2, r1]
	lsl r1, r4, #4
	cmp r2, r1
	bne _0225CF2C
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225CF2C:
	add r2, sp, #0
	mov r1, #8
	ldrsh r1, [r2, r1]
	cmp r1, r0
	bne _0225CF46
	mov r0, #0xa
	ldrsh r1, [r2, r0]
	lsl r0, r4, #4
	cmp r1, r0
	bne _0225CF46
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225CF46:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0225CEDC

	thumb_func_start ov70_0225CF4C
ov70_0225CF4C: ; 0x0225CF4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r6, r0, #0
	ldr r0, [r1, #0]
	str r2, [sp]
	str r3, [sp, #4]
	bl ov63_0222C0E4
	add r4, sp, #0x1c
	strh r0, [r4, #4]
	lsr r0, r0, #0x10
	strh r0, [r4, #6]
	ldrh r0, [r4, #4]
	mov r5, sp
	ldr r7, _0225D02C ; =0x0226D504
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #6]
	sub r5, r5, #4
	strh r0, [r4, #0xe]
	mov r0, #0
	str r0, [sp, #0x10]
	ldrh r0, [r4, #0xc]
	str r0, [sp, #0x14]
	ldrh r0, [r4, #0xe]
	str r0, [sp, #0x18]
_0225CF7E:
	ldr r0, [sp, #0x14]
	strh r0, [r5]
	ldr r0, [sp, #0x18]
	strh r0, [r5, #2]
	ldrb r1, [r7]
	ldr r0, [r5, #0]
	bl ov63_0222C078
	strh r0, [r4]
	lsr r0, r0, #0x10
	strh r0, [r4, #2]
	ldrh r0, [r4]
	strh r0, [r4, #8]
	ldrh r0, [r4, #2]
	strh r0, [r4, #0xa]
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #0xc]
	mov r0, #8
	ldrsh r1, [r4, r0]
	ldr r2, [sp, #0xc]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	ldr r0, [r6, #0x14]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov70_0225C8AC
	cmp r0, #1
	beq _0225D018
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r6, #0x14]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov70_0225C8C4
	cmp r0, #0
	beq _0225CFE8
	cmp r0, #0x2a
	bne _0225D018
_0225CFE8:
	ldrh r1, [r4, #8]
	ldr r0, [r6, #0]
	strh r1, [r5]
	ldrh r1, [r4, #0xa]
	strh r1, [r5, #2]
	ldr r1, [r5, #0]
	bl ov63_0222C2AC
	cmp r0, #0
	bne _0225D018
	ldr r1, _0225D02C ; =0x0226D504
	ldr r0, [sp, #0x10]
	ldrb r1, [r1, r0]
	ldr r0, [sp]
	str r1, [r0, #0]
	add r1, sp, #0x1c
	ldr r0, [sp, #4]
	ldrh r2, [r1, #8]
	add sp, #0x2c
	strh r2, [r0]
	ldrh r1, [r1, #0xa]
	strh r1, [r0, #2]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0225D018:
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _0225CF7E
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0225D02C: .word 0x0226D504
	thumb_func_end ov70_0225CF4C

	thumb_func_start ov70_0225D030
ov70_0225D030: ; 0x0225D030
	ldr r3, _0225D038 ; =ov66_022347B0
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D038: .word ov66_022347B0
	thumb_func_end ov70_0225D030

	thumb_func_start ov70_0225D03C
ov70_0225D03C: ; 0x0225D03C
	ldr r3, _0225D044 ; =ov66_022347D4
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D044: .word ov66_022347D4
	thumb_func_end ov70_0225D03C

	thumb_func_start ov70_0225D048
ov70_0225D048: ; 0x0225D048
	ldr r3, _0225D050 ; =ov66_022347F8
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D050: .word ov66_022347F8
	thumb_func_end ov70_0225D048

	thumb_func_start ov70_0225D054
ov70_0225D054: ; 0x0225D054
	ldr r3, _0225D05C ; =ov66_0223481C
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D05C: .word ov66_0223481C
	thumb_func_end ov70_0225D054

	thumb_func_start ov70_0225D060
ov70_0225D060: ; 0x0225D060
	ldr r3, _0225D068 ; =ov66_02234834
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D068: .word ov66_02234834
	thumb_func_end ov70_0225D060

	thumb_func_start ov70_0225D06C
ov70_0225D06C: ; 0x0225D06C
	push {r3, lr}
	cmp r1, #0
	ldr r0, [r0, #4]
	beq _0225D07C
	mov r1, #1
	bl ov66_02234850
	pop {r3, pc}
_0225D07C:
	bl ov66_0223487C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_0225D06C

	thumb_func_start ov70_0225D084
ov70_0225D084: ; 0x0225D084
	push {r3, lr}
	cmp r1, #0
	ldr r0, [r0, #4]
	beq _0225D094
	mov r1, #0
	bl ov66_02234850
	pop {r3, pc}
_0225D094:
	bl ov66_0223487C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_0225D084

	thumb_func_start ov70_0225D09C
ov70_0225D09C: ; 0x0225D09C
	push {r3, lr}
	cmp r1, #0
	ldr r0, [r0, #4]
	beq _0225D0AC
	mov r1, #2
	bl ov66_02234850
	pop {r3, pc}
_0225D0AC:
	bl ov66_0223487C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_0225D09C

	thumb_func_start ov70_0225D0B4
ov70_0225D0B4: ; 0x0225D0B4
	ldr r3, _0225D0BC ; =ov66_022347C4
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D0BC: .word ov66_022347C4
	thumb_func_end ov70_0225D0B4

	thumb_func_start ov70_0225D0C0
ov70_0225D0C0: ; 0x0225D0C0
	ldr r3, _0225D0C8 ; =ov66_0223488C
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D0C8: .word ov66_0223488C
	thumb_func_end ov70_0225D0C0

	thumb_func_start ov70_0225D0CC
ov70_0225D0CC: ; 0x0225D0CC
	ldr r3, _0225D0D4 ; =ov66_022348A8
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D0D4: .word ov66_022348A8
	thumb_func_end ov70_0225D0CC

	thumb_func_start ov70_0225D0D8
ov70_0225D0D8: ; 0x0225D0D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	ldr r4, _0225D178 ; =0x0226D508
	str r0, [sp, #8]
_0225D0E4:
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp]
	ldrb r1, [r4]
	add r2, sp, #0xc
	ldr r0, [r5, #0x14]
	add r2, #2
	add r3, sp, #0xc
	bl ov70_0225C8D8
	cmp r0, #1
	bne _0225D166
	add r7, sp, #0xc
_0225D0FE:
	add r0, r5, #0
	bl ov70_0225D2C0
	add r6, r0, #0
	ldrh r0, [r7, #2]
	add r1, sp, #0x10
	lsl r0, r0, #4
	strh r0, [r7, #4]
	ldrh r0, [r7]
	lsl r0, r0, #4
	strh r0, [r7, #6]
	ldrb r0, [r4, #3]
	strh r0, [r7, #8]
	mov r0, #0
	strh r0, [r7, #0xa]
	ldrb r0, [r4, #1]
	strh r0, [r7, #0xc]
	ldrb r0, [r4, #2]
	strh r0, [r7, #0xe]
	ldr r0, [r5, #0]
	bl ov63_0222BEC0
	add r1, r0, #0
	str r1, [r6, #0]
	ldr r0, [r5, #4]
	bl ov66_0223461C
	str r0, [r6, #4]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov70_0225CDEC
	ldrb r0, [r4]
	cmp r0, #0x61
	bne _0225D148
	str r6, [r5, #0x24]
_0225D148:
	ldr r0, [sp, #4]
	add r2, sp, #0xc
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	str r0, [sp]
	ldrb r1, [r4]
	ldr r0, [r5, #0x14]
	add r2, #2
	add r3, sp, #0xc
	bl ov70_0225C8D8
	cmp r0, #1
	beq _0225D0FE
_0225D166:
	ldr r0, [sp, #8]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blo _0225D0E4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0225D178: .word 0x0226D508
	thumb_func_end ov70_0225D0D8

	thumb_func_start ov70_0225D17C
ov70_0225D17C: ; 0x0225D17C
	push {r3, r4, lr}
	sub sp, #4
	add r4, sp, #0
	strh r1, [r4]
	strb r2, [r4, #2]
	add r1, sp, #0
	strb r3, [r4, #3]
	bl ov70_0225CB1C
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225D17C

	thumb_func_start ov70_0225D194
ov70_0225D194: ; 0x0225D194
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_0201D35C
	add r1, r4, #0
	bl _u32_div_f
	ldrb r0, [r5, r1]
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225D194

	thumb_func_start ov70_0225D1A8
ov70_0225D1A8: ; 0x0225D1A8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r1, #0]
	add r6, r2, #0
	add r4, r3, #0
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1, #4]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	mov r2, sp
	sub r2, r2, #4
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	ldrh r0, [r1, #0xe]
	add r1, r6, #0
	strh r0, [r2, #2]
	ldr r0, [r2, #0]
	bl ov63_0222C078
	add r2, sp, #0
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #8
	strh r0, [r2, #8]
	ldrh r0, [r2, #2]
	strh r0, [r2, #0xa]
	ldrsh r3, [r2, r1]
	ldr r0, [r5, #0x14]
	asr r1, r3, #3
	lsr r1, r1, #0x1c
	add r1, r3, r1
	mov r3, #0xa
	ldrsh r3, [r2, r3]
	lsl r1, r1, #0xc
	lsr r1, r1, #0x10
	asr r2, r3, #3
	lsr r2, r2, #0x1c
	add r2, r3, r2
	lsl r2, r2, #0xc
	lsr r2, r2, #0x10
	bl ov70_0225C8B8
	cmp r0, r4
	bne _0225D218
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225D218:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_0225D1A8

	thumb_func_start ov70_0225D220
ov70_0225D220: ; 0x0225D220
	str r1, [r0, #0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0xc]
	bx lr
	thumb_func_end ov70_0225D220

	thumb_func_start ov70_0225D22C
ov70_0225D22C: ; 0x0225D22C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r6, [r5, #8]
	beq _0225D248
	lsl r0, r4, #0xc
	bl _f_utof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0225D256
_0225D248:
	lsl r0, r4, #0xc
	bl _f_utof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0225D256:
	bl _f_ftoi
	add r2, r0, #0
	asr r1, r6, #0x1f
	add r0, r6, #0
	asr r3, r2, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0225D28E
	lsl r0, r0, #0xc
	bl _f_utof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0225D29C
_0225D28E:
	lsl r0, r0, #0xc
	bl _f_utof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0225D29C:
	bl _f_ftoi
	add r1, r0, #0
	add r0, r6, #0
	bl FX_Div
	ldr r1, [r5, #4]
	add r0, r0, r1
	str r0, [r5, #0]
	ldr r0, [r5, #0xc]
	cmp r4, r0
	blo _0225D2B8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225D2B8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0225D22C

	thumb_func_start ov70_0225D2BC
ov70_0225D2BC: ; 0x0225D2BC
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov70_0225D2BC

	thumb_func_start ov70_0225D2C0
ov70_0225D2C0: ; 0x0225D2C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _0225D2EE
	add r4, r6, #0
_0225D2CE:
	ldr r0, [r5, #8]
	add r0, r0, r4
	bl ov70_0225D2FC
	cmp r0, #0
	beq _0225D2E4
	mov r0, #0x28
	ldr r1, [r5, #8]
	mul r0, r6
	add r0, r1, r0
	pop {r4, r5, r6, pc}
_0225D2E4:
	ldrh r0, [r5, #0xc]
	add r6, r6, #1
	add r4, #0x28
	cmp r6, r0
	blt _0225D2CE
_0225D2EE:
	bl GF_AssertFail
	mov r0, #0x28
	ldr r1, [r5, #8]
	mul r0, r6
	add r0, r1, r0
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0225D2C0

	thumb_func_start ov70_0225D2FC
ov70_0225D2FC: ; 0x0225D2FC
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0225D306
	mov r0, #1
	bx lr
_0225D306:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225D2FC

	thumb_func_start ov70_0225D30C
ov70_0225D30C: ; 0x0225D30C
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225D30C

	thumb_func_start ov70_0225D310
ov70_0225D310: ; 0x0225D310
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0]
	add r5, r1, #0
	mov r1, #6
	bl ov63_0222BF90
	add r4, r0, #0
	ldr r0, [r7, #0]
	mov r1, #4
	bl ov63_0222BF90
	add r6, r0, #0
	ldr r0, [r7, #0]
	mov r1, #5
	bl ov63_0222BF90
	cmp r0, #0
	bne _0225D3D2
	ldr r0, _0225D3D4 ; =0x021BF67C
	mov r1, #2
	ldr r0, [r0, #0x44]
	add r2, r0, #0
	tst r2, r1
	beq _0225D344
	mov r1, #3
_0225D344:
	mov r2, #0x40
	tst r2, r0
	beq _0225D368
	cmp r4, #0
	bne _0225D35A
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov70_0225D17C
	pop {r3, r4, r5, r6, r7, pc}
_0225D35A:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	add r3, r6, #0
	bl ov70_0225D17C
	pop {r3, r4, r5, r6, r7, pc}
_0225D368:
	mov r2, #0x80
	tst r2, r0
	beq _0225D38C
	cmp r4, #1
	bne _0225D37E
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov70_0225D17C
	pop {r3, r4, r5, r6, r7, pc}
_0225D37E:
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	add r3, r6, #0
	bl ov70_0225D17C
	pop {r3, r4, r5, r6, r7, pc}
_0225D38C:
	mov r2, #0x20
	tst r2, r0
	beq _0225D3B0
	cmp r4, #2
	bne _0225D3A2
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov70_0225D17C
	pop {r3, r4, r5, r6, r7, pc}
_0225D3A2:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	add r3, r6, #0
	bl ov70_0225D17C
	pop {r3, r4, r5, r6, r7, pc}
_0225D3B0:
	mov r2, #0x10
	tst r0, r2
	beq _0225D3D2
	cmp r4, #3
	bne _0225D3C6
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov70_0225D17C
	pop {r3, r4, r5, r6, r7, pc}
_0225D3C6:
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	add r3, r6, #0
	bl ov70_0225D17C
_0225D3D2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225D3D4: .word 0x021BF67C
	thumb_func_end ov70_0225D310

	thumb_func_start ov70_0225D3D8
ov70_0225D3D8: ; 0x0225D3D8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	add r5, r1, #0
	cmp r0, #4
	bhi _0225D4C0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225D3F0: ; jump table
	.short _0225D3FA - _0225D3F0 - 2 ; case 0
	.short _0225D40C - _0225D3F0 - 2 ; case 1
	.short _0225D422 - _0225D3F0 - 2 ; case 2
	.short _0225D48E - _0225D3F0 - 2 ; case 3
	.short _0225D4B0 - _0225D3F0 - 2 ; case 4
_0225D3FA:
	ldr r0, _0225D4C4 ; =0x0226D500
	mov r1, #4
	bl ov70_0225D194
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225D40C:
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _0225D4C0
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225D422:
	ldr r0, [r4, #0]
	mov r1, #4
	bl ov63_0222BF90
	add r6, r0, #0
	ldr r0, [r4, #0]
	mov r1, #6
	bl ov63_0222BF90
	add r7, r0, #0
	ldr r0, _0225D4C8 ; =0x0226D4FC
	mov r1, #4
	bl ov70_0225D194
	strh r0, [r4, #0xe]
	mov r2, #0xe
	ldrsh r2, [r4, r2]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r6, #4
	bl ov70_0225D1A8
	cmp r0, #1
	bne _0225D47A
	mov r0, #0xe
	ldrsh r3, [r4, r0]
	cmp r7, r3
	bne _0225D46A
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov70_0225CD7C
	mov r0, #4
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225D46A:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov70_0225CD7C
	mov r0, #3
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225D47A:
	mov r3, #0xe
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov70_0225CD7C
	mov r0, #4
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225D48E:
	ldr r0, [r4, #0]
	mov r1, #5
	bl ov63_0222BF90
	cmp r0, #0
	bne _0225D4C0
	mov r3, #0xe
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov70_0225CD7C
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225D4B0:
	ldr r0, [r4, #0]
	mov r1, #5
	bl ov63_0222BF90
	cmp r0, #0
	bne _0225D4C0
	mov r0, #0
	strh r0, [r4, #8]
_0225D4C0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D4C4: .word 0x0226D500
_0225D4C8: .word 0x0226D4FC
	thumb_func_end ov70_0225D3D8

	thumb_func_start ov70_0225D4CC
ov70_0225D4CC: ; 0x0225D4CC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrh r0, [r4, #8]
	cmp r0, #3
	bhi _0225D572
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225D4E4: ; jump table
	.short _0225D4EC - _0225D4E4 - 2 ; case 0
	.short _0225D516 - _0225D4E4 - 2 ; case 1
	.short _0225D532 - _0225D4E4 - 2 ; case 2
	.short _0225D572 - _0225D4E4 - 2 ; case 3
_0225D4EC:
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov66_022347B0
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov66_02234850
	add r0, r4, #0
	mov r2, #0x7d
	add r0, #0xc
	mov r1, #0
	lsl r2, r2, #0xe
	mov r3, #0x18
	bl ov70_0225D220
	mov r0, #0x20
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
_0225D516:
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	bne _0225D572
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r0, _0225D578 ; =0x0000064F
	bl sub_02005748
	add sp, #0xc
	pop {r4, r5, pc}
_0225D532:
	add r0, r4, #0
	ldr r1, [r4, #0x1c]
	add r0, #0xc
	bl ov70_0225D22C
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	add r1, sp, #0
	add r0, r0, #1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	bl ov66_0223481C
	add r0, r4, #0
	add r0, #0xc
	bl ov70_0225D2BC
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl ov66_022347F8
	cmp r5, #1
	bne _0225D572
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldr r0, [r4, #4]
	bl ov66_0223487C
	mov r0, #1
	strb r0, [r4, #0xa]
_0225D572:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0225D578: .word 0x0000064F
	thumb_func_end ov70_0225D4CC

	thumb_func_start ov70_0225D57C
ov70_0225D57C: ; 0x0225D57C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrh r0, [r4, #8]
	cmp r0, #3
	bhi _0225D62A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225D594: ; jump table
	.short _0225D59C - _0225D594 - 2 ; case 0
	.short _0225D5CC - _0225D594 - 2 ; case 1
	.short _0225D60A - _0225D594 - 2 ; case 2
	.short _0225D62A - _0225D594 - 2 ; case 3
_0225D59C:
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov66_022347B0
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov66_02234850
	add r0, r4, #0
	mov r1, #0x7d
	add r0, #0xc
	lsl r1, r1, #0xe
	mov r2, #0
	mov r3, #0x18
	bl ov70_0225D220
	mov r0, #0
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldr r0, _0225D630 ; =0x0000064F
	bl sub_02005748
_0225D5CC:
	add r0, r4, #0
	ldr r1, [r4, #0x1c]
	add r0, #0xc
	bl ov70_0225D22C
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	add r1, sp, #0
	add r0, r0, #1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	bl ov66_0223481C
	add r0, r4, #0
	add r0, #0xc
	bl ov70_0225D2BC
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl ov66_022347F8
	cmp r5, #1
	bne _0225D62A
	mov r0, #0x20
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #8]
	add sp, #0xc
	add r0, r0, #1
	strh r0, [r4, #8]
	pop {r4, r5, pc}
_0225D60A:
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	bne _0225D62A
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldr r0, [r4, #4]
	bl ov66_0223487C
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov66_022347B0
	mov r0, #1
	strb r0, [r4, #0xa]
_0225D62A:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0225D630: .word 0x0000064F
	thumb_func_end ov70_0225D57C

	thumb_func_start ov70_0225D634
ov70_0225D634: ; 0x0225D634
	ldr r3, _0225D63C ; =ov70_0225D664
	mov r2, #2
	bx r3
	nop
_0225D63C: .word ov70_0225D664
	thumb_func_end ov70_0225D634

	thumb_func_start ov70_0225D640
ov70_0225D640: ; 0x0225D640
	ldr r3, _0225D648 ; =ov70_0225D664
	mov r2, #3
	bx r3
	nop
_0225D648: .word ov70_0225D664
	thumb_func_end ov70_0225D640

	thumb_func_start ov70_0225D64C
ov70_0225D64C: ; 0x0225D64C
	ldr r3, _0225D654 ; =ov70_0225D664
	mov r2, #0
	bx r3
	nop
_0225D654: .word ov70_0225D664
	thumb_func_end ov70_0225D64C

	thumb_func_start ov70_0225D658
ov70_0225D658: ; 0x0225D658
	ldr r3, _0225D660 ; =ov70_0225D664
	mov r2, #1
	bx r3
	nop
_0225D660: .word ov70_0225D664
	thumb_func_end ov70_0225D658

	thumb_func_start ov70_0225D664
ov70_0225D664: ; 0x0225D664
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r4, r0, #0
	ldrh r0, [r4, #8]
	add r5, r2, #0
	cmp r0, #3
	bls _0225D674
	b _0225D816
_0225D674:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225D680: ; jump table
	.short _0225D688 - _0225D680 - 2 ; case 0
	.short _0225D6E4 - _0225D680 - 2 ; case 1
	.short _0225D79E - _0225D680 - 2 ; case 2
	.short _0225D816 - _0225D680 - 2 ; case 3
_0225D688:
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov66_022347B0
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov66_02234850
	ldr r0, [r4, #4]
	mov r1, #2
	bl ov66_02234888
	add r0, r4, #0
	mov r2, #1
	add r0, #0xc
	mov r1, #0
	lsl r2, r2, #0x10
	mov r3, #4
	bl ov70_0225D220
	ldr r0, [r4, #4]
	add r1, sp, #0x1c
	bl ov66_0223481C
	cmp r5, #3
	bhi _0225D6DA
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225D6C8: ; jump table
	.short _0225D6D0 - _0225D6C8 - 2 ; case 0
	.short _0225D6D0 - _0225D6C8 - 2 ; case 1
	.short _0225D6D6 - _0225D6C8 - 2 ; case 2
	.short _0225D6D6 - _0225D6C8 - 2 ; case 3
_0225D6D0:
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x20]
	b _0225D6DA
_0225D6D6:
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x20]
_0225D6DA:
	mov r0, #0
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
_0225D6E4:
	add r0, r4, #0
	ldr r1, [r4, #0x1c]
	add r0, #0xc
	bl ov70_0225D22C
	add r6, r0, #0
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	bl ov66_0223481C
	cmp r5, #3
	bhi _0225D754
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225D70E: ; jump table
	.short _0225D716 - _0225D70E - 2 ; case 0
	.short _0225D726 - _0225D70E - 2 ; case 1
	.short _0225D736 - _0225D70E - 2 ; case 2
	.short _0225D746 - _0225D70E - 2 ; case 3
_0225D716:
	add r0, r4, #0
	add r0, #0xc
	bl ov70_0225D2BC
	ldr r1, [r4, #0x20]
	sub r0, r1, r0
	str r0, [sp, #0x18]
	b _0225D754
_0225D726:
	add r0, r4, #0
	add r0, #0xc
	bl ov70_0225D2BC
	ldr r1, [r4, #0x20]
	add r0, r1, r0
	str r0, [sp, #0x18]
	b _0225D754
_0225D736:
	add r0, r4, #0
	add r0, #0xc
	bl ov70_0225D2BC
	ldr r1, [r4, #0x20]
	sub r0, r1, r0
	str r0, [sp, #0x10]
	b _0225D754
_0225D746:
	add r0, r4, #0
	add r0, #0xc
	bl ov70_0225D2BC
	ldr r1, [r4, #0x20]
	add r0, r1, r0
	str r0, [sp, #0x10]
_0225D754:
	ldr r0, [r4, #4]
	add r1, sp, #0x10
	bl ov66_022347F8
	cmp r6, #1
	bne _0225D816
	add r0, r5, #0
	bl ov63_0222C0AC
	mov r1, #4
	str r1, [r4, #0x1c]
	cmp r0, #3
	bhi _0225D794
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225D77A: ; jump table
	.short _0225D788 - _0225D77A - 2 ; case 0
	.short _0225D794 - _0225D77A - 2 ; case 1
	.short _0225D78E - _0225D77A - 2 ; case 2
	.short _0225D782 - _0225D77A - 2 ; case 3
_0225D782:
	ldr r0, [r4, #0x1c]
	add r0, r0, #2
	str r0, [r4, #0x1c]
_0225D788:
	ldr r0, [r4, #0x1c]
	add r0, r0, #2
	str r0, [r4, #0x1c]
_0225D78E:
	ldr r0, [r4, #0x1c]
	add r0, r0, #2
	str r0, [r4, #0x1c]
_0225D794:
	ldrh r0, [r4, #8]
	add sp, #0x28
	add r0, r0, #1
	strh r0, [r4, #8]
	pop {r4, r5, r6, pc}
_0225D79E:
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	bne _0225D816
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldr r0, [r4, #0]
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1, #4]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	mov r2, sp
	sub r2, r2, #4
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	ldrh r0, [r1, #0xe]
	add r1, r5, #0
	strh r0, [r2, #2]
	ldr r0, [r2, #0]
	bl ov63_0222C078
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #8]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0xa]
	add r0, r5, #0
	bl ov63_0222C0AC
	add r1, sp, #0
	mov r5, sp
	add r2, r0, #0
	ldrh r3, [r1, #8]
	sub r5, r5, #4
	add r0, r4, #0
	strh r3, [r5]
	ldrh r1, [r1, #0xa]
	strh r1, [r5, #2]
	ldr r1, [r5, #0]
	bl ov70_0225CD04
	ldr r0, [r4, #4]
	bl ov66_0223487C
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov66_022347B0
	mov r0, #1
	strb r0, [r4, #0xa]
_0225D816:
	add sp, #0x28
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_0225D664

	thumb_func_start ov70_0225D81C
ov70_0225D81C: ; 0x0225D81C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _0225D830
	cmp r0, #1
	beq _0225D850
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0225D830:
	ldr r0, [r5, #4]
	mov r1, #0
	bl ov66_022347B0
	add r1, r5, #0
	ldr r0, [r5, #4]
	add r1, #0x10
	bl ov66_0223481C
	mov r0, #0x1c
	str r0, [r5, #0xc]
	ldrh r0, [r5, #8]
	add sp, #0xc
	add r0, r0, #1
	strh r0, [r5, #8]
	pop {r3, r4, r5, r6, pc}
_0225D850:
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	bpl _0225D85C
	mov r0, #0x1c
	str r0, [r5, #0xc]
_0225D85C:
	add r3, r5, #0
	add r3, #0x10
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r5, #0xc]
	sub r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	cmp r0, #0
	ble _0225D8DE
	mov r1, #6
	bl _s32_div_f
	lsl r0, r1, #0x10
	asr r1, r0, #0x10
	mov r0, #0xb4
	mul r0, r1
	mov r1, #6
	bl _s32_div_f
	add r4, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D15C
	ldr r2, _0225D8F4 ; =0xFFFFE000
	asr r1, r0, #0x1f
	asr r3, r2, #0xd
	bl _ull_mul
	mov r3, #2
	mov r6, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #8]
	orr r1, r0
	add r0, r2, r1
	str r0, [sp, #8]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D15C
	mov r2, #0xa
	asr r1, r0, #0x1f
	lsl r2, r2, #0xc
	add r3, r6, #0
	bl _ull_mul
	mov r3, #2
	add r4, r6, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #4]
	orr r1, r0
	add r0, r2, r1
	str r0, [sp, #4]
_0225D8DE:
	ldr r0, [r5, #4]
	add r1, sp, #0
	bl ov66_022347F8
	ldr r0, [r5, #4]
	mov r1, #1
	bl ov66_02234834
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0225D8F4: .word 0xFFFFE000
	thumb_func_end ov70_0225D81C

	thumb_func_start ov70_0225D8F8
ov70_0225D8F8: ; 0x0225D8F8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov66_022347B0
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl ov66_0223481C
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl ov66_022347F8
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225D8F8

	thumb_func_start ov70_0225D920
ov70_0225D920: ; 0x0225D920
	strb r2, [r0, #1]
	strb r2, [r0, #2]
	mov r3, #0
	strb r3, [r0, #3]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	strb r3, [r0]
	add r0, r1, #0
	ldr r3, _0225D938 ; =ov66_02234610
	add r1, r2, #0
	bx r3
	nop
_0225D938: .word ov66_02234610
	thumb_func_end ov70_0225D920

	thumb_func_start ov70_0225D93C
ov70_0225D93C: ; 0x0225D93C
	mov r2, #1
	strb r2, [r0]
	ldrb r2, [r0, #1]
	strb r2, [r0, #2]
	ldrb r2, [r0, #1]
	sub r1, r1, r2
	strb r1, [r0, #3]
	mov r1, #0
	strh r1, [r0, #4]
	mov r1, #0x3c
	strh r1, [r0, #6]
	bx lr
	thumb_func_end ov70_0225D93C

	thumb_func_start ov70_0225D954
ov70_0225D954: ; 0x0225D954
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5]
	add r4, r1, #0
	cmp r0, #0
	bne _0225D964
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225D964:
	mov r0, #4
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, #4]
	ldrsh r1, [r5, r0]
	mov r0, #6
	ldrsh r0, [r5, r0]
	cmp r1, r0
	blt _0225D97A
	mov r0, #0
	strb r0, [r5]
_0225D97A:
	mov r0, #4
	ldrsh r1, [r5, r0]
	mov r0, #3
	ldrsb r0, [r5, r0]
	mul r0, r1
	mov r1, #6
	ldrsh r1, [r5, r1]
	bl _s32_div_f
	strb r0, [r5, #1]
	mov r0, #2
	ldrb r1, [r5, #1]
	ldrsb r0, [r5, r0]
	add r0, r1, r0
	strb r0, [r5, #1]
	ldrb r1, [r5, #1]
	add r0, r4, #0
	bl ov66_02234610
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225D954

	.rodata


	.global Unk_ov70_0226D4FC
Unk_ov70_0226D4FC: ; 0x0226D4FC
	.incbin "incbin/overlay70_rodata.bin", 0x30, 0x34 - 0x30

	.global Unk_ov70_0226D500
Unk_ov70_0226D500: ; 0x0226D500
	.incbin "incbin/overlay70_rodata.bin", 0x34, 0x38 - 0x34

	.global Unk_ov70_0226D504
Unk_ov70_0226D504: ; 0x0226D504
	.incbin "incbin/overlay70_rodata.bin", 0x38, 0x3C - 0x38

	.global Unk_ov70_0226D508
Unk_ov70_0226D508: ; 0x0226D508
	.incbin "incbin/overlay70_rodata.bin", 0x3C, 0x4C - 0x3C

	.global Unk_ov70_0226D518
Unk_ov70_0226D518: ; 0x0226D518
	.incbin "incbin/overlay70_rodata.bin", 0x4C, 0x64 - 0x4C

	.global Unk_ov70_0226D530
Unk_ov70_0226D530: ; 0x0226D530
	.incbin "incbin/overlay70_rodata.bin", 0x64, 0x8C - 0x64

	.global Unk_ov70_0226D558
Unk_ov70_0226D558: ; 0x0226D558
	.incbin "incbin/overlay70_rodata.bin", 0x8C, 0x28

