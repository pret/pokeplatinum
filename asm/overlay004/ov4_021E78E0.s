	.include "macros/function.inc"
	.include "overlay004/ov4_021E78E0.inc"

	

	.text


	arm_func_start ov4_021E78E0
ov4_021E78E0: ; 0x021E78E0
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #0x10
	bl ov4_021E62EC
	mov r4, r0
	bl ov4_021E63A4
	mov r5, r0
	bl ov4_02213898
	cmp r5, #2
	cmpeq r0, #3
	bne _021E7918
	mov r0, r4
	bl ov4_021E7B20
	mov r5, r0
	b _021E799C
_021E7918:
	cmp r5, #6
	bne _021E7934
	mov r0, r4
	mov r1, r5
	bl ov4_021E7F68
	mov r5, r0
	b _021E799C
_021E7934:
	cmp r0, #3
	cmpne r0, #6
	bne _021E799C
	mov r0, r4
	mov r1, r5
	bl ov4_021E7F68
	mov r5, r0
	cmp r5, #7
	beq _021E799C
	cmp r5, #3
	bne _021E7970
	mov r0, r4
	bl ov4_021E7B70
	mov r5, r0
	b _021E799C
_021E7970:
	cmp r5, #4
	bne _021E7988
	mov r0, r4
	bl ov4_021E7C5C
	mov r5, r0
	b _021E799C
_021E7988:
	cmp r5, #5
	bne _021E799C
	mov r0, r4
	bl ov4_021E7D84
	mov r5, r0
_021E799C:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E78E0

	arm_func_start ov4_021E79A4
ov4_021E79A4: ; 0x021E79A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl ov4_021E62EC
	add r0, r0, #0xd00
	cmp r4, #0xd
	movhi r4, #0xd
	ldrh r3, [r0, #0x16]
	sub r1, r4, #1
	mov r2, #1
	orr r1, r3, r2, lsl r1
	strh r1, [r0, #0x16]
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021E79A4

	arm_func_start ov4_021E79D8
ov4_021E79D8: ; 0x021E79D8
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl ov4_021E62EC
	add r0, r0, #0xd00
	ldrh ip, [r0, #0x16]
	cmp ip, #0
	mvneq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r2, #0
	mov r3, r2
	mov r1, #1
_021E7A08:
	tst ip, r1, lsl r2
	beq _021E7A28
	cmp r3, r4
	moveq r0, r2, lsl #0x18
	moveq r0, r0, asr #0x18
	ldmeqia sp!, {r4, pc}
	add r0, r3, #1
	and r3, r0, #0xff
_021E7A28:
	add r0, r2, #1
	and r2, r0, #0xff
	cmp r2, #0xd
	blo _021E7A08
	mvn r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021E79D8

	arm_func_start ov4_021E7A40
ov4_021E7A40: ; 0x021E7A40
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	bl ov4_021E62EC
	mov r4, r0
	cmp r5, #3
	beq _021E7A70
	cmp r5, #4
	beq _021E7A98
	cmp r5, #5
	beq _021E7AE4
	ldmia sp!, {r3, r4, r5, pc}
_021E7A70:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r0, _021E7B18 ; =0x02215E48
	ldr r1, _021E7B1C ; =0x02215E50
	mov r3, #0x200000
	bl ov4_021E808C
	ldmia sp!, {r3, r4, r5, pc}
_021E7A98:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r2, [r4, #0xd0f]
	mov r0, #0xc0
	add r1, r4, #0x74
	smulbb ip, r2, r0
	add r0, r4, ip
	add r0, r0, #0x400
	ldrh r2, [r0, #0xa6]
	add r0, r4, #0x7c
	add r3, r1, #0x400
	add r1, r0, #0x400
	add r0, r3, ip
	add r1, r1, ip
	sub r2, r2, #1
	mov r3, #0x300000
	bl ov4_021E808C
	ldmia sp!, {r3, r4, r5, pc}
_021E7AE4:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r3, [r4, #0xd0f]
	add r1, r4, #0x304
	mov r0, #0x24
	add r2, r4, #0xd00
	mla r1, r3, r0, r1
	ldrsb r2, [r2, #0x11]
	ldr r0, _021E7B18 ; =0x02215E48
	mov r3, #0x300000
	bl ov4_021E808C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021E7B18: .word 0x02215E48
_021E7B1C: .word 0x02215E50
	arm_func_end ov4_021E7A40

	arm_func_start ov4_021E7B20
ov4_021E7B20: ; 0x021E7B20
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	mov r0, #0
	strb r0, [r4, #0xd11]
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r0, _021E7B68 ; =0x02215E48
	ldr r1, _021E7B6C ; =0x02215E50
	mov r3, #0x200000
	bl ov4_021E808C
	mov r0, #3
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E7B68: .word 0x02215E48
_021E7B6C: .word 0x02215E50
	arm_func_end ov4_021E7B20

	arm_func_start ov4_021E7B70
ov4_021E7B70: ; 0x021E7B70
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021E7C08 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	cmp r1, #0
	cmpeq r0, #0x12c
	blo _021E7C00
	add r0, r4, #0xd00
	ldrsb r1, [r0, #0x11]
	add r1, r1, #2
	strb r1, [r4, #0xd11]
	ldrsb r0, [r0, #0x11]
	cmp r0, #0xd
	blt _021E7BDC
	mov r0, r4
	mov r1, #3
	bl ov4_021E7EA4
	ldmia sp!, {r4, pc}
_021E7BDC:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r0, _021E7C0C ; =0x02215E48
	ldr r1, _021E7C10 ; =0x02215E50
	mov r3, #0x200000
	bl ov4_021E808C
_021E7C00:
	mov r0, #3
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E7C08: .word 0x000082EA
_021E7C0C: .word 0x02215E48
_021E7C10: .word 0x02215E50
	arm_func_end ov4_021E7B70

	arm_func_start ov4_021E7C14
ov4_021E7C14: ; 0x021E7C14
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	strb r0, [r4, #0xd15]
	ldrb r2, [r4, #0xd0b]
	mov r1, r2, lsl #0x18
	mov r1, r1, lsr #0x1c
	add r1, r1, #1
	and r1, r1, #0xff
	bic r2, r2, #0xf0
	mov r1, r1, lsl #0x1c
	orr r1, r2, r1, lsr #24
	strb r1, [r4, #0xd0b]
	bl ov4_021E73FC
	mov r0, #1
	strb r0, [r4, #0xd11]
	mov r0, #3
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021E7C14

	arm_func_start ov4_021E7C5C
ov4_021E7C5C: ; 0x021E7C5C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021E7D80 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	cmp r1, #0
	cmpeq r0, #0x96
	bhs _021E7CB8
	ldrb r0, [r4, #0xd0f]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0x447]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _021E7D78
_021E7CB8:
	ldrb r1, [r4, #0xd0f]
	add r0, r4, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	ldrb r2, [r4, #0xd12]
	ldrb r1, [r4, #0xd0f]
	cmp r1, r2
	bhs _021E7D10
_021E7CE0:
	add r0, r4, r1, lsl #2
	ldrb r0, [r0, #0x447]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	beq _021E7D10
	ldrb r0, [r4, #0xd0f]
	add r0, r0, #1
	strb r0, [r4, #0xd0f]
	ldrb r2, [r4, #0xd12]
	and r1, r0, #0xff
	cmp r1, r2
	blo _021E7CE0
_021E7D10:
	cmp r2, r1
	bhi _021E7D30
	mov r2, #0
	mov r0, r4
	mov r1, #4
	strb r2, [r4, #0xd0f]
	bl ov4_021E7EA4
	ldmia sp!, {r4, pc}
_021E7D30:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r2, [r4, #0xd0f]
	mov r0, #0xc0
	add r1, r4, #0x74
	smulbb ip, r2, r0
	add r0, r4, ip
	add r0, r0, #0x400
	ldrh r2, [r0, #0xa6]
	add r0, r4, #0x7c
	add r3, r1, #0x400
	add r1, r0, #0x400
	add r0, r3, ip
	add r1, r1, ip
	sub r2, r2, #1
	mov r3, #0x300000
	bl ov4_021E808C
_021E7D78:
	mov r0, #4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E7D80: .word 0x000082EA
	arm_func_end ov4_021E7C5C

	arm_func_start ov4_021E7D84
ov4_021E7D84: ; 0x021E7D84
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021E7E9C ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	cmp r1, #0
	cmpeq r0, #0x96
	bhs _021E7DE4
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	mla r0, r1, r0, r4
	ldrb r0, [r0, #0x300]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	bne _021E7E94
_021E7DE4:
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	add r2, r4, #0x300
	smulbb r1, r1, r0
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf
	strb r0, [r2, r1]
	ldrb r0, [r4, #0xd0f]
	add r0, r0, #1
	strb r0, [r4, #0xd0f]
	ldrb r1, [r4, #0xd10]
	and r0, r0, #0xff
	cmp r1, r0
	bhi _021E7E3C
	ldrb r1, [r4, #0xd15]
	mov r0, #0
	add r1, r1, #1
	strb r1, [r4, #0xd15]
	strb r0, [r4, #0xd0f]
	ldrb r0, [r4, #0xd15]
	bl ov4_021E79D8
	strb r0, [r4, #0xd11]
_021E7E3C:
	add r0, r4, #0xd00
	ldrsb r0, [r0, #0x11]
	cmp r0, #0
	bge _021E7E64
	mov r2, #0
	mov r0, r4
	mov r1, #5
	strb r2, [r4, #0xd15]
	bl ov4_021E7EA4
	ldmia sp!, {r4, pc}
_021E7E64:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r3, [r4, #0xd0f]
	add r1, r4, #0x304
	mov r0, #0x24
	add r2, r4, #0xd00
	mla r1, r3, r0, r1
	ldrsb r2, [r2, #0x11]
	ldr r0, _021E7EA0 ; =0x02215E48
	mov r3, #0x300000
	bl ov4_021E808C
_021E7E94:
	mov r0, #5
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E7E9C: .word 0x000082EA
_021E7EA0: .word 0x02215E48
	arm_func_end ov4_021E7D84

	arm_func_start ov4_021E7EA4
ov4_021E7EA4: ; 0x021E7EA4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #3
	beq _021E7ECC
	cmp r4, #4
	beq _021E7F2C
	cmp r4, #5
	beq _021E7F38
	b _021E7F58
_021E7ECC:
	ldrb r1, [r5, #0xd12]
	cmp r1, #0
	addeq r1, r5, #0xd00
	ldreqh r1, [r1, #0x16]
	cmpeq r1, #0
	beq _021E7F08
	mov r0, #1
	bl ov4_021E73FC
	cmp r0, #0
	movne r4, #4
	bne _021E7F58
	mov r0, r5
	bl ov4_021E802C
	mov r4, r0
	b _021E7F58
_021E7F08:
	ldrb r1, [r5, #0xd0b]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _021E7F58
	bl ov4_021E7C14
	mov r4, r0
	b _021E7F58
_021E7F2C:
	bl ov4_021E802C
	mov r4, r0
	b _021E7F58
_021E7F38:
	ldrb r1, [r5, #0xd0b]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _021E7F58
	bl ov4_021E7C14
	mov r4, r0
_021E7F58:
	mov r0, r4
	bl ov4_021E7A40
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E7EA4

	arm_func_start ov4_021E7F68
ov4_021E7F68: ; 0x021E7F68
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0x11
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r2, [r5, #0xd12]
	mov r1, #0
	cmp r2, #0
	bls _021E7FB0
_021E7F90:
	add r0, r5, r1, lsl #2
	ldrb r0, [r0, #0x444]
	cmp r0, #0
	beq _021E7FB0
	add r0, r1, #1
	and r1, r0, #0xff
	cmp r1, r2
	blo _021E7F90
_021E7FB0:
	cmp r4, #6
	bne _021E7FE4
	cmp r2, r1
	bne _021E8010
	cmp r1, #0
	bne _021E7FD4
	mov r0, #5
	bl ov4_021E63C0
	b _021E7FDC
_021E7FD4:
	mov r0, #6
	bl ov4_021E63C0
_021E7FDC:
	mov r0, #0x11
	ldmia sp!, {r3, r4, r5, pc}
_021E7FE4:
	cmp r2, #0
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r2, r1
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r5, r1, lsl #2
	ldrb r0, [r0, #0x446]
	cmp r0, #0x14
	movlo r0, r4
	ldmloia sp!, {r3, r4, r5, pc}
_021E8010:
	strb r1, [r5, #0xd13]
	bl ov4_022132C4
	cmp r0, #1
	strneb r4, [r5, #0xd0e]
	movne r4, #7
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E7F68

	arm_func_start ov4_021E802C
ov4_021E802C: ; 0x021E802C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xd00
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _021E8068
	mov r0, #2
	bl ov4_021E73FC
	cmp r0, #0
	beq _021E8068
	mov r0, #0
	bl ov4_021E79D8
	strb r0, [r4, #0xd11]
	mov r0, #5
	ldmia sp!, {r4, pc}
_021E8068:
	ldrb r0, [r4, #0xd0b]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	movhs r0, #6
	ldmhsia sp!, {r4, pc}
	mov r0, r4
	bl ov4_021E7C14
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021E802C

	arm_func_start ov4_021E808C
ov4_021E808C: ; 0x021E808C
	stmfd sp!, {r3, lr}
	ldr ip, _021E80AC ; =0x022158B4
	cmp r2, #0xc
	movgt r2, #0xc
	ldr r2, [ip, r2, lsl #2]
	orr r2, r3, r2
	bl ov4_0221312C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021E80AC: .word 0x022158B4
	arm_func_end ov4_021E808C

	.rodata


	.global Unk_ov4_022158B4
Unk_ov4_022158B4: ; 0x022158B4
	.incbin "incbin/overlay4_rodata.bin", 0x4C, 0x34

