	.include "macros/function.inc"
	.include "overlay016/ov16_0226485C.inc"

	

	.text


	thumb_func_start ov16_0226485C
ov16_0226485C: ; 0x0226485C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r6, r3, #0
	str r1, [sp]
	str r2, [sp, #4]
	cmp r1, #1
	bne _02264882
	bl ov16_0223E074
	add r4, r0, #0
	add r0, r7, #0
	bl ov16_0223E0B0
	add r5, r0, #0
	add r0, r7, #0
	bl ov16_0223E0BC
	b _02264896
_02264882:
	bl ov16_0223E06C
	add r4, r0, #0
	add r0, r7, #0
	bl ov16_0223E08C
	add r5, r0, #0
	add r0, r7, #0
	bl ov16_0223E098
_02264896:
	add r7, r0, #0
	add r0, sp, #0x10
	ldrh r2, [r5]
	ldrb r3, [r0, #0x10]
	add r0, r2, #5
	add r1, r0, r3
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r1, r0
	bls _022648B0
	strh r2, [r7]
	mov r0, #0
	strh r0, [r5]
_022648B0:
	ldr r1, [sp]
	add r0, sp, #8
	strb r1, [r0]
	ldr r1, [sp, #4]
	strb r1, [r0, #1]
	add r1, sp, #0x10
	ldrb r1, [r1, #0x10]
	strh r1, [r0, #2]
	add r1, sp, #8
	mov r0, #0
_022648C4:
	ldrb r7, [r1, r0]
	ldrh r2, [r5]
	add r0, r0, #1
	strb r7, [r4, r2]
	ldrh r2, [r5]
	add r2, r2, #1
	strh r2, [r5]
	cmp r0, #4
	blo _022648C4
	mov r0, #0
	cmp r3, #0
	ble _022648EE
_022648DC:
	ldrb r2, [r6, r0]
	ldrh r1, [r5]
	add r0, r0, #1
	strb r2, [r4, r1]
	ldrh r1, [r5]
	add r1, r1, #1
	strh r1, [r5]
	cmp r0, r3
	blt _022648DC
_022648EE:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0226485C

	thumb_func_start ov16_022648F4
ov16_022648F4: ; 0x022648F4
	push {r3, r4, r5, r6, r7, lr}
	add r3, r1, #0
	ldrb r6, [r3, #3]
	ldrb r1, [r3]
	ldrb r7, [r3, #2]
	lsl r6, r6, #8
	add r5, r0, #0
	mov r2, #0
	orr r6, r7
	ldrb r4, [r3, #1]
	cmp r1, #0
	bne _0226493A
	ldr r0, [r5, #0x30]
	lsl r1, r4, #8
	add r4, r0, r1
	mov r0, #0x23
	lsl r0, r0, #8
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _02264984
	cmp r6, #0
	ble _02264936
	mov r4, #0x23
	lsl r4, r4, #8
_02264924:
	add r0, r3, r2
	ldr r7, [r5, #0x30]
	ldrb r0, [r0, #4]
	add r7, r1, r7
	add r7, r2, r7
	add r2, r2, #1
	strb r0, [r7, r4]
	cmp r2, r6
	blt _02264924
_02264936:
	mov r2, #1
	b _02264984
_0226493A:
	cmp r1, #1
	bne _02264966
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r1, [r0, #0x34]
	add r1, #0x94
	ldrb r1, [r1]
	cmp r1, #0
	bne _02264984
	cmp r6, #0
	ble _02264962
_02264950:
	add r1, r3, r2
	ldrb r4, [r1, #4]
	ldr r1, [r0, #0x34]
	add r1, r1, r2
	add r1, #0x94
	add r2, r2, #1
	strb r4, [r1]
	cmp r2, r6
	blt _02264950
_02264962:
	mov r2, #1
	b _02264984
_02264966:
	cmp r1, #2
	bne _02264984
	ldrb r7, [r3, #4]
	ldrb r6, [r3, #5]
	bl ov16_0223ED60
	cmp r0, #0
	beq _02264982
	ldr r0, [r5, #0x30]
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov16_02251F80
_02264982:
	mov r2, #1
_02264984:
	add r0, r2, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_022648F4

	thumb_func_start ov16_02264988
ov16_02264988: ; 0x02264988
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	cmp r1, #1
	bne _022649AE
	bl ov16_0223E074
	add r6, r0, #0
	add r0, r5, #0
	bl ov16_0223E0A4
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_0223E0B0
	add r7, r0, #0
	add r0, r5, #0
	bl ov16_0223E0BC
	b _022649CA
_022649AE:
	bl ov16_0223E06C
	add r6, r0, #0
	add r0, r5, #0
	bl ov16_0223E080
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_0223E08C
	add r7, r0, #0
	add r0, r5, #0
	bl ov16_0223E098
_022649CA:
	ldrh r1, [r4]
	ldrh r2, [r7]
	cmp r1, r2
	beq _02264A00
	ldrh r2, [r0]
	cmp r1, r2
	bne _022649DE
	mov r1, #0
	strh r1, [r4]
	strh r1, [r0]
_022649DE:
	ldrh r1, [r4]
	add r0, r5, #0
	add r1, r6, r1
	bl ov16_022648F4
	cmp r0, #1
	bne _02264A00
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
_02264A00:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02264988

	thumb_func_start ov16_02264A04
ov16_02264A04: ; 0x02264A04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp, #4]
	ldr r1, [r5, #0x2c]
	mov r0, #4
	add r7, r2, #0
	add r6, r3, #0
	tst r0, r1
	beq _02264A5E
	ldr r0, _02264A88 ; =0x0000240C
	ldr r1, [r5, r0]
	mov r0, #0x10
	tst r0, r1
	bne _02264A5E
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02264A48
	mov r4, #0
	bl sub_02035E18
	cmp r0, #0
	ble _02264A48
_02264A32:
	ldrb r3, [r6]
	ldr r0, [r5, #0x30]
	add r1, r4, #0
	add r2, r7, #0
	bl ov16_02251F44
	add r4, r4, #1
	bl sub_02035E18
	cmp r4, r0
	blt _02264A32
_02264A48:
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	ldr r1, [sp, #4]
	add r2, r7, #0
	str r0, [sp]
	add r0, r5, #0
	add r3, r6, #0
	bl sub_0207A81C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02264A5E:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02264A70
	ldrb r3, [r6]
	ldr r0, [r5, #0x30]
	mov r1, #0
	add r2, r7, #0
	bl ov16_02251F44
_02264A70:
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	ldr r1, [sp, #4]
	add r2, r7, #0
	str r0, [sp]
	add r0, r5, #0
	add r3, r6, #0
	bl ov16_0226485C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02264A88: .word 0x0000240C
	thumb_func_end ov16_02264A04

	thumb_func_start ov16_02264A8C
ov16_02264A8C: ; 0x02264A8C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	str r1, [sp, #4]
	bl ov16_0223F4E8
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02264A8C

	thumb_func_start ov16_02264AB4
ov16_02264AB4: ; 0x02264AB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r7, r1, #0
	mov r3, #2
	add r2, sp, #4
	strb r3, [r2]
	mov r2, #0xc0
	add r4, r7, #0
	mul r4, r2
	add r2, sp, #4
	ldrb r5, [r2, #1]
	mov r2, #3
	add r6, r0, #0
	bic r5, r2
	ldr r2, [r6, #0x30]
	add r3, r2, r4
	ldr r2, _02264BAC ; =0x00002DBE
	mov ip, r2
	ldrb r2, [r3, r2]
	lsl r2, r2, #0x1c
	lsr r3, r2, #0x1c
	mov r2, #3
	and r2, r3
	add r3, r5, #0
	orr r3, r2
	add r2, sp, #4
	strb r3, [r2, #1]
	ldrb r5, [r2, #1]
	mov r2, #4
	bic r5, r2
	ldr r2, [r6, #0x30]
	add r3, r2, r4
	mov r2, ip
	sub r2, #0x58
	ldrb r2, [r3, r2]
	add r3, r5, #0
	lsl r2, r2, #0x1a
	lsr r2, r2, #0x1f
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1d
	orr r3, r2
	add r2, sp, #4
	strb r3, [r2, #1]
	ldr r2, [r6, #0x30]
	add r3, r2, r4
	mov r2, ip
	sub r2, #0x7e
	ldrh r3, [r3, r2]
	add r2, sp, #4
	strh r3, [r2, #2]
	ldr r2, [r6, #0x30]
	add r3, r2, r4
	mov r2, ip
	sub r2, #0x16
	ldr r2, [r3, r2]
	str r2, [sp, #8]
	bl ov16_0223E1F8
	add r2, r0, #0
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	mov r3, #1
	bl ov16_022599D0
	add r2, sp, #4
	str r0, [sp, #0xc]
	ldrb r0, [r2, #1]
	mov r1, #0xf8
	add r5, sp, #4
	bic r0, r1
	ldr r1, [r6, #0x30]
	add r3, r1, r4
	ldr r1, _02264BB0 ; =0x00002D66
	mov r4, #0
	ldrb r1, [r3, r1]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r2, #1]
_02264B56:
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	add r2, r4, #6
	mov r3, #0
	bl ov16_02252060
	strh r0, [r5, #0xc]
	add r2, r4, #0
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	add r2, #0x1f
	mov r3, #0
	bl ov16_02252060
	strh r0, [r5, #0x14]
	add r2, r4, #0
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	add r2, #0x27
	mov r3, #0
	bl ov16_02252060
	strh r0, [r5, #0x1c]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _02264B56
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	mov r2, #0x2d
	add r3, sp, #0x28
	bl ov16_02252060
	mov r0, #0x3c
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	add r2, r7, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02264BAC: .word 0x00002DBE
_02264BB0: .word 0x00002D66
	thumb_func_end ov16_02264AB4

	thumb_func_start ov16_02264BB4
ov16_02264BB4: ; 0x02264BB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	add r7, r1, #0
	add r3, sp, #4
	mov r2, #3
	strb r2, [r3]
	mov r2, #0xc0
	add r4, r7, #0
	mul r4, r2
	add r2, r3, #0
	ldrb r5, [r2, #1]
	mov r2, #3
	add r6, r0, #0
	bic r5, r2
	ldr r2, [r6, #0x30]
	add r3, r2, r4
	ldr r2, _02264CDC ; =0x00002DBE
	mov ip, r2
	ldrb r2, [r3, r2]
	lsl r2, r2, #0x1c
	lsr r3, r2, #0x1c
	mov r2, #3
	and r2, r3
	add r3, r5, #0
	orr r3, r2
	add r2, sp, #4
	strb r3, [r2, #1]
	ldrb r5, [r2, #1]
	mov r2, #4
	bic r5, r2
	ldr r2, [r6, #0x30]
	add r3, r2, r4
	mov r2, ip
	sub r2, #0x58
	ldrb r2, [r3, r2]
	add r3, r5, #0
	lsl r2, r2, #0x1a
	lsr r2, r2, #0x1f
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1d
	orr r3, r2
	add r2, sp, #4
	strb r3, [r2, #1]
	ldr r2, [r6, #0x30]
	add r3, r2, r4
	mov r2, ip
	sub r2, #0x7e
	ldrh r3, [r3, r2]
	add r2, sp, #4
	strh r3, [r2, #2]
	ldr r2, [r6, #0x30]
	add r3, r2, r4
	mov r2, ip
	sub r2, #0x16
	ldr r2, [r3, r2]
	str r2, [sp, #8]
	bl ov16_0223E1F8
	add r2, r0, #0
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	mov r3, #1
	bl ov16_022599D0
	str r0, [sp, #0xc]
	ldr r0, [r6, #0x30]
	add r2, sp, #4
	add r1, r0, r7
	ldr r0, _02264CE0 ; =0x0000219C
	ldrb r0, [r1, r0]
	mov r1, #0xf8
	str r0, [sp, #0x10]
	ldrb r0, [r2, #1]
	bic r0, r1
	ldr r1, [r6, #0x30]
	add r3, r1, r4
	ldr r1, _02264CE4 ; =0x00002D66
	ldrb r3, [r3, r1]
	add r1, #0x59
	lsl r3, r3, #0x1b
	lsr r3, r3, #0x1b
	lsl r3, r3, #0x1b
	lsr r3, r3, #0x18
	orr r0, r3
	strb r0, [r2, #1]
	ldr r0, [r6, #0x30]
	add r0, r0, r4
	ldrb r0, [r0, r1]
	add r1, r7, #0
	str r0, [sp, #0x14]
	add r0, r6, #0
	bl ov16_0223E258
	ldr r1, [r6, #0x30]
	ldr r2, [sp, #0x10]
	add r1, r1, r0
	ldr r0, _02264CE0 ; =0x0000219C
	ldrb r0, [r1, r0]
	add r1, r7, #0
	str r0, [sp, #0x4c]
	add r0, r6, #0
	bl ov16_0223EF2C
	mov r4, #0
	add r5, sp, #4
_02264C86:
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	add r2, r4, #6
	mov r3, #0
	bl ov16_02252060
	strh r0, [r5, #0x18]
	add r2, r4, #0
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	add r2, #0x1f
	mov r3, #0
	bl ov16_02252060
	strh r0, [r5, #0x20]
	add r2, r4, #0
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	add r2, #0x27
	mov r3, #0
	bl ov16_02252060
	strh r0, [r5, #0x28]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _02264C86
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	mov r2, #0x2d
	add r3, sp, #0x34
	bl ov16_02252060
	mov r0, #0x74
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	add r2, r7, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02264CDC: .word 0x00002DBE
_02264CE0: .word 0x0000219C
_02264CE4: .word 0x00002D66
	thumb_func_end ov16_02264BB4

	thumb_func_start ov16_02264CE8
ov16_02264CE8: ; 0x02264CE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r7, r1, #0
	add r4, r0, #0
	mov r1, #4
	add r6, sp, #0x10
	strb r1, [r6]
	mov r0, #0xc0
	add r5, r7, #0
	mul r5, r0
	ldr r0, [r4, #0x30]
	str r2, [sp, #4]
	add r2, r0, r5
	ldr r0, _02264EDC ; =0x00002DB0
	str r3, [sp, #8]
	ldr r3, [r2, r0]
	lsl r1, r1, #0x13
	tst r1, r3
	ldrb r1, [r6, #1]
	beq _02264D32
	mov r3, #3
	bic r1, r3
	add r3, r0, #0
	add r3, #0x4a
	ldrh r2, [r2, r3]
	add r0, #0x34
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	mov r2, #3
	and r2, r3
	orr r1, r2
	strb r1, [r6, #1]
	ldr r1, [r4, #0x30]
	add r1, r1, r5
	ldr r0, [r1, r0]
	str r0, [sp, #0x14]
	b _02264D52
_02264D32:
	mov r3, #3
	bic r1, r3
	add r3, r0, #0
	add r3, #0xe
	ldrb r2, [r2, r3]
	sub r0, #8
	lsl r2, r2, #0x1c
	lsr r3, r2, #0x1c
	mov r2, #3
	and r2, r3
	orr r1, r2
	strb r1, [r6, #1]
	ldr r1, [r4, #0x30]
	add r1, r1, r5
	ldr r0, [r1, r0]
	str r0, [sp, #0x14]
_02264D52:
	mov r0, #0xc0
	add r6, r7, #0
	add r3, sp, #0x10
	mul r6, r0
	ldrb r0, [r3, #1]
	mov r1, #4
	bic r0, r1
	ldr r1, [r4, #0x30]
	add r2, r1, r6
	ldr r1, _02264EE0 ; =0x00002D66
	ldrb r2, [r2, r1]
	sub r1, #0x26
	lsl r2, r2, #0x1a
	lsr r2, r2, #0x1f
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1d
	orr r0, r2
	strb r0, [r3, #1]
	ldr r0, [r4, #0x30]
	add r0, r0, r6
	ldrh r0, [r0, r1]
	add r1, r7, #0
	strh r0, [r3, #2]
	add r0, r4, #0
	bl ov16_0223E1F8
	add r2, r0, #0
	ldr r0, [r4, #0x30]
	add r1, r7, #0
	mov r3, #0
	bl ov16_022599D0
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x30]
	mov r2, #0xf8
	add r1, r0, r7
	ldr r0, _02264EE4 ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #0x1c]
	add r0, sp, #0x10
	ldrb r1, [r0, #1]
	bic r1, r2
	ldr r2, [r4, #0x30]
	add r3, r2, r6
	ldr r2, _02264EE0 ; =0x00002D66
	ldrb r3, [r3, r2]
	lsl r3, r3, #0x1b
	lsr r3, r3, #0x1b
	lsl r3, r3, #0x1b
	lsr r3, r3, #0x18
	orr r1, r3
	strb r1, [r0, #1]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02264DC4
	str r0, [sp, #0x20]
	b _02264DCE
_02264DC4:
	ldr r0, [r4, #0x30]
	add r2, #0x59
	add r0, r0, r5
	ldrb r0, [r0, r2]
	str r0, [sp, #0x20]
_02264DCE:
	ldr r0, [sp, #8]
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x30]
	add r1, r0, r5
	ldr r0, _02264EDC ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0x18
	tst r0, r1
	beq _02264DE6
	mov r0, #1
	b _02264DE8
_02264DE6:
	mov r0, #0
_02264DE8:
	ldr r2, [sp, #0x1c]
	str r0, [sp, #0x5c]
	add r0, r4, #0
	add r1, r7, #0
	bl ov16_0223EF2C
	mov r6, #0
	add r5, sp, #0x10
_02264DF8:
	ldr r0, [r4, #0x30]
	add r1, r7, #0
	add r2, r6, #6
	mov r3, #0
	bl ov16_02252060
	strh r0, [r5, #0x18]
	add r2, r6, #0
	ldr r0, [r4, #0x30]
	add r1, r7, #0
	add r2, #0x1f
	mov r3, #0
	bl ov16_02252060
	strh r0, [r5, #0x20]
	add r2, r6, #0
	ldr r0, [r4, #0x30]
	add r1, r7, #0
	add r2, #0x27
	mov r3, #0
	bl ov16_02252060
	strh r0, [r5, #0x28]
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, #4
	blt _02264DF8
	ldr r0, [r4, #0x30]
	add r1, r7, #0
	mov r2, #0x2d
	add r3, sp, #0x40
	bl ov16_02252060
	add r3, sp, #0x10
	mov r2, #0
	mov ip, r2
	str r3, [sp, #0xc]
	add r5, r3, #0
_02264E44:
	ldr r0, [r4, #0x30]
	add r1, r0, r2
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r1, [r1, r0]
	ldr r0, [sp, #0xc]
	add r0, #0x50
	strh r1, [r0]
	ldr r0, [r4, #0x30]
	add r1, r0, r2
	ldr r0, _02264EE0 ; =0x00002D66
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x1a
	lsr r1, r0, #0x1f
	add r0, r3, #0
	add r0, #0x5c
	strb r1, [r0]
	ldr r0, [r4, #0x30]
	add r1, r0, r2
	ldr r0, _02264EE0 ; =0x00002D66
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x1b
	lsr r1, r0, #0x1b
	add r0, r3, #0
	add r0, #0x60
	strb r1, [r0]
	ldr r0, [r4, #0x30]
	add r6, r0, r2
	ldr r0, _02264EDC ; =0x00002DB0
	ldr r1, [r6, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r1
	beq _02264E9A
	ldr r0, _02264EE8 ; =0x00002DFA
	ldrh r1, [r6, r0]
	add r0, r3, #0
	add r0, #0x58
	strb r1, [r0]
	ldr r0, [r4, #0x30]
	add r1, r0, r2
	ldr r0, _02264EEC ; =0x00002DE4
	b _02264EAE
_02264E9A:
	ldr r0, _02264EF0 ; =0x00002DBE
	ldrb r0, [r6, r0]
	lsl r0, r0, #0x1c
	lsr r1, r0, #0x1c
	add r0, r3, #0
	add r0, #0x58
	strb r1, [r0]
	ldr r0, [r4, #0x30]
	add r1, r0, r2
	ldr r0, _02264EF4 ; =0x00002DA8
_02264EAE:
	ldr r0, [r1, r0]
	add r2, #0xc0
	str r0, [r5, #0x64]
	ldr r0, [sp, #0xc]
	add r3, r3, #1
	add r0, r0, #2
	str r0, [sp, #0xc]
	mov r0, ip
	add r0, r0, #1
	add r5, r5, #4
	mov ip, r0
	cmp r0, #4
	blt _02264E44
	mov r0, #0x74
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	add r3, sp, #0x10
	bl ov16_02264A04
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02264EDC: .word 0x00002DB0
_02264EE0: .word 0x00002D66
_02264EE4: .word 0x0000219C
_02264EE8: .word 0x00002DFA
_02264EEC: .word 0x00002DE4
_02264EF0: .word 0x00002DBE
_02264EF4: .word 0x00002DA8
	thumb_func_end ov16_02264CE8

	thumb_func_start ov16_02264EF8
ov16_02264EF8: ; 0x02264EF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r4, r1, #0
	lsl r1, r2, #2
	str r0, [sp, #4]
	add r0, r0, r1
	ldr r1, [r0, #0x34]
	ldr r0, _02265034 ; =0x00000195
	str r2, [sp, #8]
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _02264F16
	mov r2, #2
	b _02264F18
_02264F16:
	mov r2, #0
_02264F18:
	ldr r0, [sp, #8]
	mov r1, #0xc0
	add r5, r0, #0
	ldr r0, [sp, #4]
	mul r5, r1
	ldr r0, [r0, #0x30]
	ldr r3, _02265038 ; =0x00002D66
	add r0, r0, r5
	ldrb r0, [r0, r3]
	mov r1, #5
	lsl r0, r0, #0x1b
	lsr r7, r0, #0x1b
	add r0, sp, #0xc
	strb r1, [r0]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x30]
	add r1, r0, r5
	add r0, r3, #0
	add r0, #0x4a
	ldr r6, [r1, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r6
	beq _02264F6C
	add r0, r3, #0
	add r0, #0x7e
	ldr r0, [r1, r0]
	lsl r2, r2, #0x18
	str r0, [sp]
	add r0, r3, #0
	sub r0, #0x26
	add r3, #0x94
	ldrh r0, [r1, r0]
	ldrh r1, [r1, r3]
	lsl r3, r7, #0x18
	lsr r2, r2, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl sub_02076648
	b _02264F8E
_02264F6C:
	add r0, r3, #0
	add r0, #0x42
	ldr r0, [r1, r0]
	lsl r2, r2, #0x18
	str r0, [sp]
	add r0, r3, #0
	sub r0, #0x26
	add r3, #0x58
	ldrh r0, [r1, r0]
	ldrb r1, [r1, r3]
	lsl r3, r7, #0x18
	lsr r2, r2, #0x18
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	lsr r3, r3, #0x18
	bl sub_02076648
_02264F8E:
	add r1, sp, #0xc
	strb r0, [r1, #1]
	ldr r0, [sp, #4]
	ldr r1, _0226503C ; =0x00002DBF
	ldr r0, [r0, #0x30]
	add r0, r0, r5
	ldrb r2, [r0, r1]
	add r0, sp, #0xc
	sub r1, #0xf
	strh r2, [r0, #2]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x30]
	add r0, r0, r5
	ldr r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0x18
	tst r0, r1
	beq _02264FB6
	mov r0, #1
	b _02264FB8
_02264FB6:
	mov r0, #0
_02264FB8:
	str r0, [sp, #0x10]
	mov r0, #0
	mov ip, r0
	add r7, sp, #0xc
	ldr r0, _02265038 ; =0x00002D66
	add r3, r7, #0
	add r2, r4, r0
	add r0, #0x58
	add r5, r7, #0
	add r6, r4, r0
_02264FCC:
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r4, r0]
	strh r0, [r7, #8]
	ldrb r0, [r2]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	strb r0, [r3, #0x14]
	ldrb r0, [r2]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	strb r0, [r3, #0x18]
	ldr r0, _02265040 ; =0x00002DB0
	ldr r1, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r1
	beq _02264FFA
	ldr r0, _02265044 ; =0x00002DFA
	ldrh r0, [r4, r0]
	strb r0, [r3, #0x10]
	ldr r0, _02265048 ; =0x00002DE4
	b _02265004
_02264FFA:
	ldrb r0, [r6]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	strb r0, [r3, #0x10]
	ldr r0, _0226504C ; =0x00002DA8
_02265004:
	ldr r0, [r4, r0]
	add r4, #0xc0
	str r0, [r5, #0x1c]
	mov r0, ip
	add r0, r0, #1
	add r7, r7, #2
	add r2, #0xc0
	add r3, r3, #1
	add r5, r5, #4
	add r6, #0xc0
	mov ip, r0
	cmp r0, #4
	blt _02264FCC
	mov r0, #0x2c
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	mov r1, #1
	add r3, sp, #0xc
	bl ov16_02264A04
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265034: .word 0x00000195
_02265038: .word 0x00002D66
_0226503C: .word 0x00002DBF
_02265040: .word 0x00002DB0
_02265044: .word 0x00002DFA
_02265048: .word 0x00002DE4
_0226504C: .word 0x00002DA8
	thumb_func_end ov16_02264EF8

	thumb_func_start ov16_02265050
ov16_02265050: ; 0x02265050
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	add r4, r0, #0
	lsl r0, r7, #2
	add r0, r4, r0
	ldr r1, [r0, #0x34]
	ldr r0, _02265100 ; =0x00000195
	str r2, [sp, #4]
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _0226506E
	mov r2, #2
	b _02265070
_0226506E:
	mov r2, #0
_02265070:
	mov r0, #0xc0
	add r6, r7, #0
	mul r6, r0
	ldr r0, [r4, #0x30]
	ldr r5, _02265104 ; =0x00002D66
	add r0, r0, r6
	ldrb r0, [r0, r5]
	mov r1, #6
	lsl r0, r0, #0x1b
	lsr r3, r0, #0x1b
	add r0, sp, #8
	strb r1, [r0]
	ldr r0, [r4, #0x30]
	add r1, r0, r6
	add r0, r5, #0
	add r0, #0x4a
	ldr r6, [r1, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r6
	beq _022650BE
	add r0, r5, #0
	add r0, #0x7e
	ldr r0, [r1, r0]
	lsl r2, r2, #0x18
	str r0, [sp]
	add r0, r5, #0
	sub r0, #0x26
	add r5, #0x94
	ldrh r0, [r1, r0]
	ldrh r1, [r1, r5]
	lsl r3, r3, #0x18
	lsr r2, r2, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl sub_02076648
	b _022650E0
_022650BE:
	add r0, r5, #0
	add r0, #0x42
	ldr r0, [r1, r0]
	lsl r2, r2, #0x18
	str r0, [sp]
	add r0, r5, #0
	sub r0, #0x26
	add r5, #0x58
	ldrh r0, [r1, r0]
	ldrb r1, [r1, r5]
	lsl r3, r3, #0x18
	lsr r2, r2, #0x18
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	lsr r3, r3, #0x18
	bl sub_02076648
_022650E0:
	add r1, sp, #8
	strb r0, [r1, #1]
	ldr r0, [sp, #4]
	add r1, sp, #8
	strh r0, [r1, #2]
	mov r0, #4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	add r3, sp, #8
	bl ov16_02264A04
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02265100: .word 0x00000195
_02265104: .word 0x00002D66
	thumb_func_end ov16_02265050

	thumb_func_start ov16_02265108
ov16_02265108: ; 0x02265108
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #7
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_02265108

	thumb_func_start ov16_02265124
ov16_02265124: ; 0x02265124
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #8
	add r3, sp, #4
	strb r1, [r3]
	mov r1, #0x34
	mul r1, r2
	add r1, r0, r1
	add r1, #0xad
	ldrb r1, [r1]
	strh r1, [r3, #2]
	add r1, r0, r2
	add r1, #0xa8
	ldrb r1, [r1]
	strb r1, [r3, #1]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov16_02265124

	thumb_func_start ov16_02265154
ov16_02265154: ; 0x02265154
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r6, #9
	add r3, sp, #4
	strb r6, [r3]
	add r5, r0, #0
	strb r2, [r3, #1]
	add r4, r1, #0
	bl ov16_0223E258
	ldr r1, [r5, #0x30]
	add r2, r4, #0
	add r1, r1, r0
	ldr r0, _02265188 ; =0x0000219C
	add r3, sp, #4
	ldrb r1, [r1, r0]
	add r0, sp, #4
	strh r1, [r0, #2]
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02264A04
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02265188: .word 0x0000219C
	thumb_func_end ov16_02265154

	thumb_func_start ov16_0226518C
ov16_0226518C: ; 0x0226518C
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0xa
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_0226518C

	thumb_func_start ov16_022651A8
ov16_022651A8: ; 0x022651A8
	push {r3, r4, lr}
	sub sp, #0xc
	add r3, r1, #0
	mov r1, #0xb
	add r4, sp, #4
	strb r1, [r4]
	mov r1, #0x34
	mul r1, r3
	add r1, r0, r1
	add r1, #0xad
	ldrb r1, [r1]
	strh r1, [r4, #2]
	add r1, r0, r3
	add r1, #0xa8
	ldrb r1, [r1]
	strb r1, [r4, #1]
	str r2, [sp, #8]
	mov r1, #8
	str r1, [sp]
	add r2, r3, #0
	mov r1, #1
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov16_022651A8

	thumb_func_start ov16_022651DC
ov16_022651DC: ; 0x022651DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r1, #0
	ldr r1, _02265300 ; =0x0000219C
	add r4, r2, #0
	add r7, r5, r1
	ldrb r2, [r7, r4]
	add r1, r4, #0
	str r0, [sp, #4]
	str r3, [sp, #8]
	bl ov16_0223DFAC
	add r6, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	mov r0, #0xc
	add r3, sp, #0x14
	strb r0, [r3]
	mov r0, #0xc0
	add r6, r4, #0
	mul r6, r0
	ldr r2, _02265304 ; =0x00002D74
	add r0, r5, r6
	ldrb r1, [r0, r2]
	strb r1, [r3, #1]
	add r1, r2, #0
	add r1, #0x18
	ldr r1, [r0, r1]
	add r2, #0x1c
	strh r1, [r3, #2]
	ldr r0, [r0, r2]
	add r1, r4, #0
	strh r0, [r3, #4]
	ldrb r0, [r7, r4]
	strb r0, [r3, #6]
	add r0, r5, #0
	bl ov16_02253F7C
	add r1, sp, #0x14
	ldrb r2, [r1, #7]
	mov r3, #0x1f
	lsl r0, r0, #0x18
	bic r2, r3
	lsr r3, r0, #0x18
	mov r0, #0x1f
	and r0, r3
	orr r0, r2
	strb r0, [r1, #7]
	mov r0, #0xb5
	lsl r0, r0, #6
	add r7, r5, r0
	ldrh r0, [r7, r6]
	cmp r0, #0x1d
	beq _0226525E
	cmp r0, #0x20
	bne _02265278
_0226525E:
	ldr r0, _02265308 ; =0x00002D54
	add r1, r5, r6
	ldr r0, [r1, r0]
	lsr r0, r0, #0x1f
	bne _02265278
	add r0, sp, #0x14
	ldrb r1, [r0, #7]
	mov r2, #0x60
	bic r1, r2
	mov r2, #0x40
	orr r1, r2
	strb r1, [r0, #7]
	b _02265292
_02265278:
	add r3, sp, #0x14
	ldrb r2, [r3, #7]
	mov r0, #0x60
	add r1, r5, r6
	bic r2, r0
	ldr r0, _0226530C ; =0x00002DBE
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x19
	orr r0, r2
	strb r0, [r3, #7]
_02265292:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl sub_02075AD0
	mov r1, #0xc0
	mul r1, r4
	add r2, r5, r1
	ldr r1, _02265310 ; =0x00002DA4
	ldr r1, [r2, r1]
	sub r0, r1, r0
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	add r1, r1, #1
	bl sub_02075AD0
	add r5, r0, #0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl sub_02075AD0
	sub r0, r5, r0
	str r0, [sp, #0x20]
	ldrh r1, [r7, r6]
	ldr r0, [sp, #4]
	bl ov16_0223F9E0
	add r3, sp, #0x14
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	ldrb r1, [r3, #7]
	mov r2, #0x80
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r3, #7]
	ldr r0, [sp, #4]
	bl ov16_0223ED8C
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	add r1, sp, #0x14
	strb r0, [r1, #0x14]
	mov r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #0x14
	bl ov16_02264A04
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_02265300: .word 0x0000219C
_02265304: .word 0x00002D74
_02265308: .word 0x00002D54
_0226530C: .word 0x00002DBE
_02265310: .word 0x00002DA4
	thumb_func_end ov16_022651DC

	thumb_func_start ov16_02265314
ov16_02265314: ; 0x02265314
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0xd
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_02265314

	thumb_func_start ov16_02265330
ov16_02265330: ; 0x02265330
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0
	add r1, sp, #0x28
	mov r2, #0x2c
	add r6, r3, #0
	bl MIi_CpuClearFast
	ldr r0, [sp, #4]
	bl ov16_0223DF10
	ldr r1, [sp, #0xc]
	bl ov16_02252040
	mov r5, #0
	ldr r0, [sp, #4]
	add r4, r5, #0
	bl ov16_0223DF1C
	cmp r0, #0
	ble _02265380
_02265360:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov16_02259A28
	cmp r0, #0
	bne _02265374
	add r0, r4, #0
	bl sub_020787CC
	orr r5, r0
_02265374:
	ldr r0, [sp, #4]
	add r4, r4, #1
	bl ov16_0223DF1C
	cmp r4, r0
	blt _02265360
_02265380:
	mov r1, #0xe
	add r0, sp, #0x28
	strb r1, [r0]
	strb r6, [r0, #1]
	ldr r1, _02265680 ; =0x00003108
	ldr r0, [sp, #8]
	ldrb r0, [r0, r1]
	add r1, r0, #0
	orr r1, r5
	add r0, sp, #0x48
	strb r1, [r0, #9]
	ldr r0, [sp, #4]
	bl ov16_0223DF0C
	mov r1, #2
	str r0, [sp, #0x20]
	tst r0, r1
	beq _022653B6
	ldr r0, [sp, #0x20]
	mov r1, #8
	tst r0, r1
	bne _022653B6
	ldr r0, [sp, #0xc]
	mov r1, #1
	add r4, r0, #0
	and r4, r1
	b _022653B8
_022653B6:
	ldr r4, [sp, #0xc]
_022653B8:
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl ov16_0223DF20
	str r0, [sp, #0x24]
	mov r7, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _0226544E
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r5, sp, #0x28
	add r6, r0, r1
	mov r1, #0xa9
	ldr r0, [sp, #0x20]
	lsl r1, r1, #2
	and r0, r1
	str r0, [sp, #0x1c]
_022653E2:
	ldr r1, _02265684 ; =0x0000312C
	ldr r0, [sp, #0x24]
	ldrb r1, [r6, r1]
	bl sub_0207A0FC
	mov r1, #0xae
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02265440
	ldr r1, _02265688 ; =0x000001EE
	cmp r0, r1
	beq _02265440
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02265428
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02265422
	mov r0, #3
	strb r0, [r5, #8]
	b _0226542C
_02265422:
	mov r0, #1
	strb r0, [r5, #8]
	b _0226542C
_02265428:
	mov r0, #2
	strb r0, [r5, #8]
_0226542C:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02265436
	mov r0, #0
	b _0226543C
_02265436:
	add r0, r4, #0
	bl sub_02075A10
_0226543C:
	strb r0, [r5, #2]
	add r5, r5, #1
_02265440:
	ldr r0, [sp, #0x24]
	add r6, r6, #1
	add r7, r7, #1
	bl sub_0207A0F8
	cmp r7, r0
	blt _022653E2
_0226544E:
	ldr r0, [sp, #0x20]
	mov r1, #0xc
	and r0, r1
	cmp r0, #0xc
	beq _0226546C
	ldr r0, [sp, #0x20]
	mov r1, #0x10
	tst r0, r1
	bne _0226546C
	ldr r0, [sp, #0x20]
	cmp r0, #0x4b
	beq _0226546C
	cmp r0, #0xcb
	beq _0226546C
	b _022655A4
_0226546C:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	bl ov16_0223E208
	cmp r0, #0
	beq _02265482
	ldr r0, [sp, #4]
	mov r1, #2
	bl ov16_0223E1C4
	b _0226548A
_02265482:
	ldr r0, [sp, #4]
	mov r1, #3
	bl ov16_0223E1C4
_0226548A:
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl ov16_0223DF20
	str r0, [sp, #0x10]
	mov r7, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _02265506
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r5, sp, #0x28
	add r4, r0, r1
_022654AC:
	ldr r1, _02265684 ; =0x0000312C
	ldr r0, [sp, #0x10]
	ldrb r1, [r4, r1]
	bl sub_0207A0FC
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _022654F8
	ldr r1, _02265688 ; =0x000001EE
	cmp r0, r1
	beq _022654F8
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _022654F2
	add r0, r6, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _022654EC
	mov r0, #3
	strb r0, [r5, #0xe]
	b _022654F6
_022654EC:
	mov r0, #1
	strb r0, [r5, #0xe]
	b _022654F6
_022654F2:
	mov r0, #2
	strb r0, [r5, #0xe]
_022654F6:
	add r5, r5, #1
_022654F8:
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	add r7, r7, #1
	bl sub_0207A0F8
	cmp r7, r0
	blt _022654AC
_02265506:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	bl ov16_0223E208
	cmp r0, #0
	beq _0226551C
	ldr r0, [sp, #4]
	mov r1, #4
	bl ov16_0223E1C4
	b _02265524
_0226551C:
	ldr r0, [sp, #4]
	mov r1, #5
	bl ov16_0223E1C4
_02265524:
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl ov16_0223DF20
	str r0, [sp, #0x14]
	mov r7, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _0226562A
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r5, sp, #0x28
	add r4, r0, r1
	add r5, #3
_02265548:
	ldr r1, _02265684 ; =0x0000312C
	ldr r0, [sp, #0x14]
	ldrb r1, [r4, r1]
	bl sub_0207A0FC
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02265594
	ldr r1, _02265688 ; =0x000001EE
	cmp r0, r1
	beq _02265594
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0226558E
	add r0, r6, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02265588
	mov r0, #3
	strb r0, [r5, #0xe]
	b _02265592
_02265588:
	mov r0, #1
	strb r0, [r5, #0xe]
	b _02265592
_0226558E:
	mov r0, #2
	strb r0, [r5, #0xe]
_02265592:
	add r5, r5, #1
_02265594:
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	add r7, r7, #1
	bl sub_0207A0F8
	cmp r7, r0
	blt _02265548
	b _0226562A
_022655A4:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	mov r2, #2
	bl ov16_0223E2A4
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl ov16_0223DF20
	str r0, [sp, #0x18]
	mov r7, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _0226562A
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r5, sp, #0x28
	add r4, r0, r1
_022655D0:
	ldr r1, _02265684 ; =0x0000312C
	ldr r0, [sp, #0x18]
	ldrb r1, [r4, r1]
	bl sub_0207A0FC
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0226561C
	ldr r1, _02265688 ; =0x000001EE
	cmp r0, r1
	beq _0226561C
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02265616
	add r0, r6, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02265610
	mov r0, #3
	strb r0, [r5, #0xe]
	b _0226561A
_02265610:
	mov r0, #1
	strb r0, [r5, #0xe]
	b _0226561A
_02265616:
	mov r0, #2
	strb r0, [r5, #0xe]
_0226561A:
	add r5, r5, #1
_0226561C:
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	add r7, r7, #1
	bl sub_0207A0F8
	cmp r7, r0
	blt _022655D0
_0226562A:
	mov r5, #0
	add r6, sp, #0x28
	add r4, r6, #0
	add r7, r5, #0
_02265632:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r2, r5, #6
	add r3, r7, #0
	bl ov16_02252060
	strh r0, [r6, #0x14]
	add r2, r5, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r2, #0x1f
	mov r3, #0
	bl ov16_02252060
	strb r0, [r4, #0x1c]
	add r2, r5, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r2, #0x27
	mov r3, #0
	bl ov16_02252060
	add r1, r4, #0
	add r1, #0x20
	add r5, r5, #1
	strb r0, [r1]
	add r6, r6, #2
	add r4, r4, #1
	cmp r5, #4
	blt _02265632
	ldr r0, [sp, #0xc]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, [sp, #8]
	add r3, sp, #0x28
	add r0, r0, r1
	ldr r1, _0226568C ; =0x00002D8C
	b _02265690
	nop
_02265680: .word 0x00003108
_02265684: .word 0x0000312C
_02265688: .word 0x000001EE
_0226568C: .word 0x00002D8C
_02265690:
	ldr r2, [r0, r1]
	strh r2, [r3, #0x24]
	add r2, r1, #4
	ldr r2, [r0, r2]
	strh r2, [r3, #0x26]
	mov r2, #0x24
	ldrsh r2, [r3, r2]
	cmp r2, #0
	beq _022656B8
	add r1, #0x20
	ldr r0, [r0, r1]
	cmp r0, #0
	add r0, sp, #0x48
	beq _022656B2
	mov r1, #3
	strb r1, [r0, #8]
	b _022656BE
_022656B2:
	mov r1, #1
	strb r1, [r0, #8]
	b _022656BE
_022656B8:
	mov r1, #2
	add r0, sp, #0x48
	strb r1, [r0, #8]
_022656BE:
	mov r0, #0x2c
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r1, #1
	add r3, sp, #0x28
	bl ov16_02264A04
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02265330

	thumb_func_start ov16_022656D4
ov16_022656D4: ; 0x022656D4
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r2, r1, #0
	mov r1, #4
	str r1, [sp]
	mov r1, #0
	add r3, sp, #0x10
	bl ov16_02264A04
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end ov16_022656D4

	thumb_func_start ov16_022656F0
ov16_022656F0: ; 0x022656F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r2, [sp, #0xc]
	str r0, [sp, #4]
	str r1, [sp, #8]
	bl ov16_0223DF10
	ldr r1, [sp, #0xc]
	bl ov16_02252040
	mov r0, #0xf
	add r2, sp, #0x14
	strb r0, [r2]
	add r7, sp, #0x14
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	add r5, r7, #0
	add r1, r1, r0
	ldr r0, _02265780 ; =0x0000219C
	ldrb r0, [r1, r0]
	mov r1, #0xc0
	strb r0, [r2, #1]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	mul r1, r0
	ldr r0, [sp, #8]
	add r6, r0, r1
	add r4, r6, #0
_0226572A:
	ldr r0, _02265784 ; =0x00002D4C
	ldr r1, _02265788 ; =0x00002D70
	ldrh r0, [r6, r0]
	strh r0, [r7, #4]
	ldr r0, _0226578C ; =0x00002D6C
	ldrb r0, [r4, r0]
	strb r0, [r5, #0xc]
	ldr r0, _02265784 ; =0x00002D4C
	ldrb r1, [r4, r1]
	ldrh r0, [r6, r0]
	bl sub_020790DC
	strb r0, [r5, #0x10]
	ldr r0, [sp, #0x10]
	add r6, r6, #2
	add r0, r0, #1
	add r7, r7, #2
	add r4, r4, #1
	add r5, r5, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _0226572A
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	mov r3, #0
	bl ov16_02254A6C
	add r1, sp, #0x14
	strh r0, [r1, #2]
	mov r0, #0x14
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r1, #1
	add r3, sp, #0x14
	bl ov16_02264A04
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02265780: .word 0x0000219C
_02265784: .word 0x00002D4C
_02265788: .word 0x00002D70
_0226578C: .word 0x00002D6C
	thumb_func_end ov16_022656F0

	thumb_func_start ov16_02265790
ov16_02265790: ; 0x02265790
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r2, r1, #0
	mov r1, #4
	str r1, [sp]
	mov r1, #0
	add r3, sp, #0x10
	bl ov16_02264A04
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end ov16_02265790

	thumb_func_start ov16_022657AC
ov16_022657AC: ; 0x022657AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r1, #0
	add r1, r3, #0
	add r4, r2, #0
	str r3, [sp, #0xc]
	bl ov16_02252040
	ldr r0, [sp, #4]
	bl ov16_0223DF0C
	mov r2, #0x10
	add r1, sp, #0x1c
	strb r2, [r1]
	strh r4, [r1, #2]
	mov r1, #2
	add r2, r0, #0
	and r2, r1
	beq _022657E6
	mov r1, #8
	tst r0, r1
	bne _022657E6
	cmp r2, #0
	beq _022657EE
	ldr r0, [sp, #0xc]
	cmp r0, #2
	blt _022657EE
_022657E6:
	mov r1, #1
	add r0, sp, #0x1c
	strb r1, [r0, #1]
	b _022657F4
_022657EE:
	mov r1, #0
	add r0, sp, #0x1c
	strb r1, [r0, #1]
_022657F4:
	ldr r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r1, _022658B8 ; =0x00002D54
	add r0, r2, #0
	add r7, r0, r1
	add r1, #0x6a
	add r5, r0, r1
	mov r0, #3
	add r4, sp, #0x20
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	mov r0, #4
	add r3, sp, #0x1c
	add r4, #1
	mov ip, r0
_02265814:
	ldr r0, _022658BC ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02265882
	strh r0, [r3, #8]
	ldr r0, _022658C0 ; =0x00002D90
	ldr r0, [r2, r0]
	strh r0, [r3, #0xa]
	ldrb r1, [r4]
	mov r0, #4
	orr r0, r1
	strb r0, [r4]
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r2, r0]
	cmp r0, #0x1d
	beq _0226583A
	cmp r0, #0x20
	bne _0226584E
_0226583A:
	ldr r0, [r7, #0]
	lsr r0, r0, #0x1f
	bne _0226584E
	ldrb r0, [r4]
	ldr r1, [sp, #0x10]
	bic r0, r1
	mov r1, #2
	orr r0, r1
	strb r0, [r4]
	b _02265862
_0226584E:
	ldrb r6, [r4]
	ldr r0, [sp, #0x14]
	bic r6, r0
	ldrb r0, [r5]
	lsl r0, r0, #0x1c
	lsr r1, r0, #0x1c
	mov r0, #3
	and r0, r1
	orr r0, r6
	strb r0, [r4]
_02265862:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x18]
	add r1, r1, r0
	ldr r0, _022658C4 ; =0x0000219C
	ldrb r0, [r1, r0]
	strb r0, [r3, #4]
	ldr r0, _022658C8 ; =0x00002DAC
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0226587C
	mov r0, #3
	strb r0, [r3, #6]
	b _0226588E
_0226587C:
	mov r0, #1
	strb r0, [r3, #6]
	b _0226588E
_02265882:
	ldrb r1, [r4]
	mov r0, ip
	bic r1, r0
	strb r1, [r4]
	mov r0, #2
	strb r0, [r3, #6]
_0226588E:
	ldr r0, [sp, #0x18]
	add r2, #0xc0
	add r0, r0, #1
	add r3, #8
	add r4, #8
	add r7, #0xc0
	add r5, #0xc0
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _02265814
	mov r0, #0x24
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r1, #1
	add r3, sp, #0x1c
	bl ov16_02264A04
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022658B8: .word 0x00002D54
_022658BC: .word 0x00002D8C
_022658C0: .word 0x00002D90
_022658C4: .word 0x0000219C
_022658C8: .word 0x00002DAC
	thumb_func_end ov16_022657AC

	thumb_func_start ov16_022658CC
ov16_022658CC: ; 0x022658CC
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r2, r1, #0
	mov r1, #4
	str r1, [sp]
	mov r1, #0
	add r3, sp, #0x10
	bl ov16_02264A04
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end ov16_022658CC

	thumb_func_start ov16_022658E8
ov16_022658E8: ; 0x022658E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r1, #0
	add r1, r2, #0
	str r2, [sp, #0xc]
	bl ov16_02252040
	add r6, sp, #0x10
	mov r1, #0x11
	add r0, sp, #0x10
	strb r1, [r0]
	mov r0, #0
	ldr r4, [sp, #8]
	mov ip, r0
	ldr r1, _02265A5C ; =0x00002DCC
	add r0, r4, #0
	add r7, r0, r1
	ldr r0, _02265A60 ; =0x0000312C
	add r5, r6, #0
_02265912:
	ldr r2, [sp, #8]
	mov r1, ip
	add r2, r2, r1
	ldr r1, _02265A64 ; =0x0000219C
	mov r3, #0
	ldrb r1, [r2, r1]
	strb r1, [r6, #4]
_02265920:
	add r1, r4, r3
	ldrb r2, [r1, r0]
	add r1, r5, r3
	add r3, r3, #1
	strb r2, [r1, #8]
	cmp r3, #6
	blt _02265920
	ldr r1, [r7, #0]
	add r4, r4, #6
	lsl r1, r1, #0xa
	lsr r2, r1, #0x1d
	add r1, r6, #0
	add r1, #0x20
	strb r2, [r1]
	mov r1, ip
	add r1, r1, #1
	add r6, r6, #1
	add r5, r5, #6
	add r7, #0xc0
	mov ip, r1
	cmp r1, #4
	blt _02265912
	ldr r0, [sp, #4]
	bl ov16_0223DF0C
	cmp r0, #0x4a
	bne _022659FE
	mov r0, #1
	bl sub_020787CC
	ldr r2, _02265A68 ; =0x00003108
	ldr r1, [sp, #8]
	ldrb r1, [r1, r2]
	tst r0, r1
	bne _02265984
	mov r0, #3
	bl sub_020787CC
	ldr r2, _02265A68 ; =0x00003108
	ldr r1, [sp, #8]
	ldrb r1, [r1, r2]
	tst r0, r1
	bne _02265984
	mov r1, #1
	add r0, sp, #0x10
	strb r1, [r0, #1]
	mov r1, #0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	b _02265A48
_02265984:
	mov r0, #1
	bl sub_020787CC
	ldr r2, _02265A68 ; =0x00003108
	ldr r1, [sp, #8]
	add r3, sp, #0x10
	ldrb r1, [r1, r2]
	tst r0, r1
	bne _022659CA
	mov r0, #0
	mov r2, #0xba
	ldr r1, [sp, #8]
	strb r0, [r3, #1]
	lsl r2, r2, #6
	ldr r4, [r1, r2]
	ldr r1, _02265A6C ; =0x200400C0
	tst r1, r4
	beq _022659B0
	mov r1, #1
	strb r1, [r3, #2]
	strb r0, [r3, #3]
	b _02265A48
_022659B0:
	ldr r1, [sp, #8]
	sub r2, #0x10
	ldr r2, [r1, r2]
	mov r1, #1
	lsl r1, r1, #0x18
	tst r1, r2
	strb r0, [r3, #2]
	beq _022659C6
	mov r0, #1
	strb r0, [r3, #3]
	b _02265A48
_022659C6:
	strb r0, [r3, #3]
	b _02265A48
_022659CA:
	mov r0, #0
	mov r2, #3
	ldr r1, [sp, #8]
	strb r0, [r3, #1]
	lsl r2, r2, #0xc
	ldr r4, [r1, r2]
	ldr r1, _02265A6C ; =0x200400C0
	tst r1, r4
	beq _022659E4
	mov r1, #1
	strb r1, [r3, #2]
	strb r0, [r3, #3]
	b _02265A48
_022659E4:
	ldr r1, [sp, #8]
	sub r2, #0x10
	ldr r2, [r1, r2]
	mov r1, #1
	lsl r1, r1, #0x18
	tst r1, r2
	strb r0, [r3, #2]
	beq _022659FA
	mov r0, #1
	strb r0, [r3, #3]
	b _02265A48
_022659FA:
	strb r0, [r3, #3]
	b _02265A48
_022659FE:
	ldr r0, [sp, #4]
	bl ov16_0223DF0C
	cmp r0, #0
	bne _02265A3E
	mov r2, #0xba
	mov r0, #0
	add r3, sp, #0x10
	ldr r1, [sp, #8]
	strb r0, [r3, #1]
	lsl r2, r2, #6
	ldr r4, [r1, r2]
	ldr r1, _02265A6C ; =0x200400C0
	tst r1, r4
	beq _02265A24
	mov r1, #1
	strb r1, [r3, #2]
	strb r0, [r3, #3]
	b _02265A48
_02265A24:
	ldr r1, [sp, #8]
	sub r2, #0x10
	ldr r2, [r1, r2]
	mov r1, #1
	lsl r1, r1, #0x18
	tst r1, r2
	strb r0, [r3, #2]
	beq _02265A3A
	mov r0, #1
	strb r0, [r3, #3]
	b _02265A48
_02265A3A:
	strb r0, [r3, #3]
	b _02265A48
_02265A3E:
	mov r1, #0
	add r0, sp, #0x10
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
_02265A48:
	mov r0, #0x24
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r1, #1
	add r3, sp, #0x10
	bl ov16_02264A04
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02265A5C: .word 0x00002DCC
_02265A60: .word 0x0000312C
_02265A64: .word 0x0000219C
_02265A68: .word 0x00003108
_02265A6C: .word 0x200400C0
	thumb_func_end ov16_022658E8

	thumb_func_start ov16_02265A70
ov16_02265A70: ; 0x02265A70
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r2, r1, #0
	mov r1, #4
	str r1, [sp]
	mov r1, #0
	add r3, sp, #0x10
	bl ov16_02264A04
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end ov16_02265A70

	thumb_func_start ov16_02265A8C
ov16_02265A8C: ; 0x02265A8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r1, #0
	add r1, r2, #0
	str r2, [sp, #0xc]
	add r4, r3, #0
	bl ov16_02252040
	mov r0, #0x12
	add r1, sp, #0x10
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	add r7, sp, #0x10
	strb r0, [r1, #1]
	ldr r0, [sp, #0x50]
	strb r4, [r1, #2]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x54]
	ldr r5, [sp, #8]
	strb r0, [r1, #3]
	ldr r1, _02265B04 ; =0x00003108
	ldr r0, [sp, #8]
	mov r3, #0
	ldrb r1, [r0, r1]
	add r0, sp, #0x30
	add r6, r7, #0
	strb r1, [r0, #4]
	ldr r0, _02265B08 ; =0x0000312C
_02265AC8:
	ldr r1, [sp, #8]
	mov r4, #0
	add r2, r1, r3
	ldr r1, _02265B0C ; =0x0000219C
	ldrb r1, [r2, r1]
	strb r1, [r7, #4]
_02265AD4:
	add r1, r5, r4
	ldrb r2, [r1, r0]
	add r1, r6, r4
	add r4, r4, #1
	strb r2, [r1, #8]
	cmp r4, #6
	blt _02265AD4
	add r3, r3, #1
	add r7, r7, #1
	add r5, r5, #6
	add r6, r6, #6
	cmp r3, #4
	blt _02265AC8
	mov r0, #0x28
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r1, #1
	add r3, sp, #0x10
	bl ov16_02264A04
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265B04: .word 0x00003108
_02265B08: .word 0x0000312C
_02265B0C: .word 0x0000219C
	thumb_func_end ov16_02265A8C

	thumb_func_start ov16_02265B10
ov16_02265B10: ; 0x02265B10
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r2, r1, #0
	mov r1, #4
	str r1, [sp]
	mov r1, #0
	add r3, sp, #0x10
	bl ov16_02264A04
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end ov16_02265B10

	thumb_func_start ov16_02265B2C
ov16_02265B2C: ; 0x02265B2C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r2, #0
	add r6, r0, #0
	add r0, r1, #0
	add r1, r5, #0
	add r4, r3, #0
	bl ov16_02252040
	mov r1, #0x13
	add r0, sp, #4
	strb r1, [r0]
	ldr r1, [sp, #0x20]
	strh r4, [r0, #2]
	strb r1, [r0, #1]
	ldr r0, [sp, #0x24]
	mov r1, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	add r2, r5, #0
	str r0, [sp, #0xc]
	mov r0, #0xc
	str r0, [sp]
	add r0, r6, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_02265B2C

	thumb_func_start ov16_02265B68
ov16_02265B68: ; 0x02265B68
	push {r4, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x14
	add r3, sp, #4
	strb r1, [r3]
	ldr r1, [r2, #0x64]
	add r4, r2, r1
	ldr r1, _02265B98 ; =0x0000219C
	ldrb r1, [r4, r1]
	strb r1, [r3, #1]
	ldr r1, _02265B9C ; =0x00003044
	ldr r1, [r2, r1]
	strh r1, [r3, #2]
	mov r1, #4
	str r1, [sp]
	ldr r2, [r2, #0x64]
	mov r1, #1
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r4, pc}
	nop
_02265B98: .word 0x0000219C
_02265B9C: .word 0x00003044
	thumb_func_end ov16_02265B68

	thumb_func_start ov16_02265BA0
ov16_02265BA0: ; 0x02265BA0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r3, r2, #0
	mov r1, #0x15
	strb r1, [r3]
	mov r1, #0x24
	str r1, [sp]
	ldr r2, [r4, #0x64]
	mov r1, #1
	bl ov16_02264A04
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov16_02265BA0

	thumb_func_start ov16_02265BBC
ov16_02265BBC: ; 0x02265BBC
	push {r4, r5, r6, lr}
	sub sp, #0x68
	mov r3, #0
	add r4, r1, #0
	str r3, [sp]
	ldr r6, [r4, #0x64]
	add r5, r0, #0
	str r6, [sp, #4]
	ldr r6, [r4, #0x6c]
	str r6, [sp, #8]
	str r2, [sp, #0xc]
	add r2, sp, #0x10
	bl ov16_02266B78
	mov r0, #0x58
	str r0, [sp]
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	mov r1, #1
	add r3, sp, #0x10
	bl ov16_02264A04
	add sp, #0x68
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_02265BBC

	thumb_func_start ov16_02265BEC
ov16_02265BEC: ; 0x02265BEC
	push {r4, r5, r6, lr}
	sub sp, #0x68
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r6, [sp, #0x78]
	str r4, [sp, #4]
	str r6, [sp, #8]
	str r2, [sp, #0xc]
	add r2, sp, #0x10
	add r5, r0, #0
	bl ov16_02266B78
	mov r0, #0x58
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #0x10
	bl ov16_02264A04
	add sp, #0x68
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_02265BEC

	thumb_func_start ov16_02265C1C
ov16_02265C1C: ; 0x02265C1C
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x17
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_02265C1C

	thumb_func_start ov16_02265C38
ov16_02265C38: ; 0x02265C38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	str r2, [sp, #8]
	add r1, r2, #0
	add r3, r5, r2
	ldr r2, _02265CFC ; =0x0000219C
	str r0, [sp, #4]
	ldrb r2, [r3, r2]
	bl ov16_0223DFAC
	add r4, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	mov r0, #0x18
	add r3, sp, #0xc
	strb r0, [r3]
	ldr r0, [sp, #8]
	mov r1, #0xc0
	add r4, r0, #0
	mul r4, r1
	ldr r0, _02265D00 ; =0x00002D74
	add r1, r5, r4
	ldrb r2, [r1, r0]
	strb r2, [r3, #1]
	add r2, r0, #0
	add r2, #0x18
	ldr r2, [r1, r2]
	strh r2, [r3, #2]
	add r2, r0, #0
	add r2, #0x1c
	ldr r2, [r1, r2]
	sub r0, #0x34
	strh r2, [r3, #4]
	ldr r2, _02265D04 ; =0x0000215C
	ldr r2, [r5, r2]
	str r2, [sp, #0x14]
	ldrh r0, [r1, r0]
	cmp r0, #0x1d
	beq _02265C9E
	cmp r0, #0x20
	bne _02265CB0
_02265C9E:
	ldr r0, _02265D08 ; =0x00002D54
	add r1, r5, r4
	ldr r0, [r1, r0]
	lsr r0, r0, #0x1f
	bne _02265CB0
	mov r1, #2
	add r0, sp, #0xc
	strb r1, [r0, #7]
	b _02265CBE
_02265CB0:
	ldr r0, _02265D0C ; =0x00002DBE
	add r1, r5, r4
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x1c
	lsr r1, r0, #0x1c
	add r0, sp, #0xc
	strb r1, [r0, #7]
_02265CBE:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02075AD0
	ldr r1, _02265D10 ; =0x00002DA4
	add r2, r5, r4
	ldr r1, [r2, r1]
	sub r0, r1, r0
	str r0, [sp, #0x18]
	add r0, r7, #0
	add r1, r6, #1
	bl sub_02075AD0
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02075AD0
	sub r0, r4, r0
	str r0, [sp, #0x1c]
	mov r0, #0x14
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	mov r1, #1
	add r3, sp, #0xc
	bl ov16_02264A04
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265CFC: .word 0x0000219C
_02265D00: .word 0x00002D74
_02265D04: .word 0x0000215C
_02265D08: .word 0x00002D54
_02265D0C: .word 0x00002DBE
_02265D10: .word 0x00002DA4
	thumb_func_end ov16_02265C38

	thumb_func_start ov16_02265D14
ov16_02265D14: ; 0x02265D14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r2, #0
	add r5, r1, #0
	str r3, [sp, #8]
	ldr r2, _02265D90 ; =0x0000219C
	add r3, r5, r4
	ldrb r2, [r3, r2]
	add r1, r4, #0
	str r0, [sp, #4]
	bl ov16_0223DFAC
	add r6, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	mov r1, #0x19
	add r0, sp, #0xc
	strb r1, [r0]
	ldr r0, [sp, #8]
	add r1, r6, #0
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl sub_02075AD0
	mov r1, #0xc0
	mul r1, r4
	add r2, r5, r1
	ldr r1, _02265D94 ; =0x00002DA4
	ldr r1, [r2, r1]
	sub r0, r1, r0
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r1, r6, #1
	bl sub_02075AD0
	add r5, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02075AD0
	sub r0, r5, r0
	str r0, [sp, #0x18]
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #0xc
	bl ov16_02264A04
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02265D90: .word 0x0000219C
_02265D94: .word 0x00002DA4
	thumb_func_end ov16_02265D14

	thumb_func_start ov16_02265D98
ov16_02265D98: ; 0x02265D98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #4]
	add r0, r1, #0
	mov ip, r2
	mov r5, #0xb5
	mov r2, #0x1a
	add r1, sp, #0xc
	strb r2, [r1]
	mov r3, #0xc0
	mov r2, ip
	mul r3, r2
	add r2, r0, r3
	lsl r5, r5, #6
	ldrh r4, [r2, r5]
	strh r4, [r1, #2]
	add r4, r5, #0
	add r4, #0x26
	ldrb r2, [r2, r4]
	add r5, #0x70
	lsl r2, r2, #0x1b
	lsr r2, r2, #0x1b
	strb r2, [r1, #8]
	add r2, r0, r5
	mov r1, #1
	ldr r4, [r2, r3]
	lsl r1, r1, #0x18
	tst r1, r4
	beq _02265DD6
	mov r4, #1
	b _02265DD8
_02265DD6:
	mov r4, #0
_02265DD8:
	add r1, sp, #0xc
	strb r4, [r1, #9]
	mov r1, #2
	ldr r4, [r2, r3]
	lsl r1, r1, #0x14
	tst r1, r4
	beq _02265DEA
	mov r4, #1
	b _02265DEC
_02265DEA:
	mov r4, #0
_02265DEC:
	add r1, sp, #0xc
	strb r4, [r1, #0xa]
	ldr r4, [r2, r3]
	mov r2, #2
	lsl r2, r2, #0x14
	tst r2, r4
	beq _02265E0A
	ldr r2, _02265E94 ; =0x00002DFA
	add r4, r0, r3
	ldrh r3, [r4, r2]
	sub r2, #0x16
	strb r3, [r1, #1]
	ldr r1, [r4, r2]
	str r1, [sp, #0x10]
	b _02265E1C
_02265E0A:
	ldr r2, _02265E98 ; =0x00002DBE
	add r4, r0, r3
	ldrb r3, [r4, r2]
	sub r2, #0x16
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x1c
	strb r3, [r1, #1]
	ldr r1, [r4, r2]
	str r1, [sp, #0x10]
_02265E1C:
	mov r1, #0
	str r1, [sp, #8]
	ldr r1, _02265E9C ; =0x00002D66
	add r7, sp, #0xc
	add r3, r0, r1
	add r1, #0x58
	add r4, r7, #0
	add r5, r7, #0
	add r6, r0, r1
_02265E2E:
	mov r1, #0xb5
	lsl r1, r1, #6
	ldrh r1, [r0, r1]
	strh r1, [r7, #0xc]
	ldrb r1, [r3]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1f
	strb r1, [r4, #0x18]
	ldrb r1, [r3]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	strb r1, [r4, #0x1c]
	ldr r1, _02265EA0 ; =0x00002DB0
	ldr r2, [r0, r1]
	mov r1, #2
	lsl r1, r1, #0x14
	tst r1, r2
	beq _02265E5C
	ldr r1, _02265E94 ; =0x00002DFA
	ldrh r1, [r0, r1]
	strb r1, [r4, #0x14]
	ldr r1, _02265EA4 ; =0x00002DE4
	b _02265E66
_02265E5C:
	ldrb r1, [r6]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	strb r1, [r4, #0x14]
	ldr r1, _02265EA8 ; =0x00002DA8
_02265E66:
	ldr r1, [r0, r1]
	add r0, #0xc0
	str r1, [r5, #0x20]
	ldr r1, [sp, #8]
	add r7, r7, #2
	add r1, r1, #1
	add r3, #0xc0
	add r4, r4, #1
	add r5, r5, #4
	add r6, #0xc0
	str r1, [sp, #8]
	cmp r1, #4
	blt _02265E2E
	mov r0, #0x30
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #1
	mov r2, ip
	add r3, sp, #0xc
	bl ov16_02264A04
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02265E94: .word 0x00002DFA
_02265E98: .word 0x00002DBE
_02265E9C: .word 0x00002D66
_02265EA0: .word 0x00002DB0
_02265EA4: .word 0x00002DE4
_02265EA8: .word 0x00002DA8
	thumb_func_end ov16_02265D98

	thumb_func_start ov16_02265EAC
ov16_02265EAC: ; 0x02265EAC
	push {r4, lr}
	sub sp, #8
	mov r4, #0x1b
	add r1, sp, #4
	strb r4, [r1]
	strh r2, [r1, #2]
	mov r1, #4
	str r1, [sp]
	add r2, r3, #0
	mov r1, #1
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_02265EAC

	thumb_func_start ov16_02265ECC
ov16_02265ECC: ; 0x02265ECC
	push {r3, lr}
	sub sp, #8
	mov r1, #0x1c
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	mov r2, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_02265ECC

	thumb_func_start ov16_02265EE8
ov16_02265EE8: ; 0x02265EE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	mov ip, r1
	mov r3, #0x1d
	add r1, sp, #8
	strb r3, [r1]
	strb r2, [r1, #1]
	ldr r3, [r0, #0x30]
	mov r2, #0xc0
	mov r1, ip
	mul r2, r1
	ldr r1, _02265FA0 ; =0x00002DB0
	add r2, r3, r2
	ldr r2, [r2, r1]
	mov r1, #1
	lsl r1, r1, #0x18
	tst r1, r2
	beq _02265F10
	mov r2, #1
	b _02265F12
_02265F10:
	mov r2, #0
_02265F12:
	add r7, sp, #8
	add r1, sp, #8
	mov r3, #0
	strb r2, [r1, #2]
	str r3, [sp, #4]
	add r4, r7, #0
	add r5, r7, #0
_02265F20:
	ldr r1, [r0, #0x30]
	add r2, r1, r3
	mov r1, #0xb5
	lsl r1, r1, #6
	ldrh r1, [r2, r1]
	strh r1, [r7, #4]
	ldr r1, [r0, #0x30]
	add r2, r1, r3
	ldr r1, _02265FA4 ; =0x00002D66
	ldrb r1, [r2, r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1f
	strb r1, [r4, #0x10]
	ldr r1, [r0, #0x30]
	add r2, r1, r3
	ldr r1, _02265FA4 ; =0x00002D66
	ldrb r1, [r2, r1]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	strb r1, [r4, #0x14]
	ldr r1, [r0, #0x30]
	add r6, r1, r3
	ldr r1, _02265FA0 ; =0x00002DB0
	ldr r2, [r6, r1]
	mov r1, #2
	lsl r1, r1, #0x14
	tst r1, r2
	beq _02265F66
	ldr r1, _02265FA8 ; =0x00002DFA
	ldrh r1, [r6, r1]
	strb r1, [r4, #0xc]
	ldr r1, [r0, #0x30]
	add r2, r1, r3
	ldr r1, _02265FAC ; =0x00002DE4
	b _02265F76
_02265F66:
	ldr r1, _02265FB0 ; =0x00002DBE
	ldrb r1, [r6, r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	strb r1, [r4, #0xc]
	ldr r1, [r0, #0x30]
	add r2, r1, r3
	ldr r1, _02265FB4 ; =0x00002DA8
_02265F76:
	ldr r1, [r2, r1]
	add r3, #0xc0
	str r1, [r5, #0x18]
	ldr r1, [sp, #4]
	add r7, r7, #2
	add r1, r1, #1
	add r4, r4, #1
	add r5, r5, #4
	str r1, [sp, #4]
	cmp r1, #4
	blt _02265F20
	mov r1, #0x28
	str r1, [sp]
	mov r1, #1
	mov r2, ip
	add r3, sp, #8
	bl ov16_02264A04
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265FA0: .word 0x00002DB0
_02265FA4: .word 0x00002D66
_02265FA8: .word 0x00002DFA
_02265FAC: .word 0x00002DE4
_02265FB0: .word 0x00002DBE
_02265FB4: .word 0x00002DA8
	thumb_func_end ov16_02265EE8

	thumb_func_start ov16_02265FB8
ov16_02265FB8: ; 0x02265FB8
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	mov r3, #0x1e
	add r1, sp, #4
	strb r3, [r1]
	strb r2, [r1, #1]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov16_02265FB8

	thumb_func_start ov16_02265FD8
ov16_02265FD8: ; 0x02265FD8
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	mov r3, #0x1f
	add r1, sp, #4
	strb r3, [r1]
	strb r2, [r1, #1]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov16_02265FD8

	thumb_func_start ov16_02265FF8
ov16_02265FF8: ; 0x02265FF8
	push {r3, r4, r5, lr}
	sub sp, #0x68
	add r4, r2, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	add r2, sp, #0x10
	mov r3, #1
	add r5, r0, #0
	bl ov16_02266B78
	mov r0, #0x58
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #0x10
	bl ov16_02264A04
	add sp, #0x68
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02265FF8

	thumb_func_start ov16_02266028
ov16_02266028: ; 0x02266028
	push {r3, r4, r5, lr}
	sub sp, #0x68
	add r4, r2, #0
	ldr r2, [sp, #0x78]
	add r5, r0, #0
	str r2, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	add r2, sp, #0x10
	mov r3, #1
	bl ov16_02266B78
	mov r0, #0x58
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #0x10
	bl ov16_02264A04
	add sp, #0x68
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02266028

	thumb_func_start ov16_02266058
ov16_02266058: ; 0x02266058
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	mov r2, #0x20
	add r0, sp, #4
	strb r2, [r0]
	strb r3, [r0, #1]
	ldr r0, _02266094 ; =0x00003122
	ldrsh r2, [r1, r0]
	ldr r0, _02266098 ; =0x00002E4C
	ldr r0, [r1, r0]
	sub r1, r2, r0
	mov r0, #0x64
	mul r0, r1
	add r1, r2, #0
	bl _s32_div_f
	add r1, sp, #4
	strh r0, [r1, #2]
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02266094: .word 0x00003122
_02266098: .word 0x00002E4C
	thumb_func_end ov16_02266058

	thumb_func_start ov16_0226609C
ov16_0226609C: ; 0x0226609C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0x21
	add r0, sp, #4
	strb r1, [r0]
	ldr r2, _022660E4 ; =0x00002E4C
	strb r3, [r0, #1]
	ldr r1, [r6, r2]
	cmp r1, #0
	bne _022660BE
	mov r1, #0xfa
	lsl r1, r1, #2
	strh r1, [r0, #2]
	b _022660D0
_022660BE:
	mov r0, #0xfa
	lsl r0, r0, #2
	mul r0, r1
	add r1, r2, #4
	ldr r1, [r6, r1]
	bl _u32_div_f
	add r1, sp, #4
	strh r0, [r1, #2]
_022660D0:
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022660E4: .word 0x00002E4C
	thumb_func_end ov16_0226609C

	thumb_func_start ov16_022660E8
ov16_022660E8: ; 0x022660E8
	push {r3, lr}
	sub sp, #8
	mov r1, #0x22
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov16_022660E8

	thumb_func_start ov16_02266100
ov16_02266100: ; 0x02266100
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	str r2, [sp, #4]
	mov r2, #0x23
	add r1, sp, #8
	add r6, r0, #0
	strb r2, [r1]
	mov r4, #0
	bl ov16_0223DF1C
	cmp r0, #0
	ble _02266132
	add r5, sp, #8
_0226611C:
	ldr r0, _02266148 ; =0x0000219C
	add r1, r7, r4
	ldrb r0, [r1, r0]
	add r4, r4, #1
	strb r0, [r5, #4]
	add r0, r6, #0
	add r5, r5, #1
	bl ov16_0223DF1C
	cmp r4, r0
	blt _0226611C
_02266132:
	mov r0, #8
	str r0, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	mov r1, #1
	add r3, sp, #8
	bl ov16_02264A04
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02266148: .word 0x0000219C
	thumb_func_end ov16_02266100

	thumb_func_start ov16_0226614C
ov16_0226614C: ; 0x0226614C
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x24
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_0226614C

	thumb_func_start ov16_02266168
ov16_02266168: ; 0x02266168
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r4, r1, #0
	add r5, r0, #0
	bl ov16_0223DF10
	add r1, r4, #0
	bl ov16_02252040
	mov r1, #0x25
	add r0, sp, #4
	strb r1, [r0]
	add r6, sp, #0x48
	add r3, sp, #8
	mov r2, #4
_02266188:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02266188
	ldr r0, [r6, #0]
	mov r1, #1
	str r0, [r3, #0]
	mov r0, #0x28
	str r0, [sp]
	add r0, r5, #0
	add r2, r4, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #0x2c
	pop {r3, r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end ov16_02266168

	thumb_func_start ov16_022661B0
ov16_022661B0: ; 0x022661B0
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_022661B0

	thumb_func_start ov16_022661CC
ov16_022661CC: ; 0x022661CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	ldr r1, _022662E8 ; =0x0000219C
	add r4, r2, #0
	add r7, r5, r1
	ldrb r2, [r7, r4]
	add r1, r4, #0
	str r0, [sp, #4]
	bl ov16_0223DFAC
	add r6, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	mov r0, #0x26
	add r3, sp, #0x10
	strb r0, [r3]
	mov r0, #0xc0
	add r6, r4, #0
	mul r6, r0
	ldr r2, _022662EC ; =0x00002D74
	add r0, r5, r6
	ldrb r1, [r0, r2]
	strb r1, [r3, #1]
	add r1, r2, #0
	add r1, #0x18
	ldr r1, [r0, r1]
	add r2, #0x1c
	strh r1, [r3, #2]
	ldr r0, [r0, r2]
	add r1, r4, #0
	strh r0, [r3, #4]
	ldrb r0, [r7, r4]
	strb r0, [r3, #6]
	add r0, r5, #0
	bl ov16_02253F7C
	add r1, sp, #0x10
	ldrb r2, [r1, #7]
	mov r3, #0x1f
	lsl r0, r0, #0x18
	bic r2, r3
	lsr r3, r0, #0x18
	mov r0, #0x1f
	and r0, r3
	orr r0, r2
	strb r0, [r1, #7]
	mov r0, #0xb5
	lsl r0, r0, #6
	add r7, r5, r0
	ldrh r0, [r7, r6]
	cmp r0, #0x1d
	beq _0226624C
	cmp r0, #0x20
	bne _02266266
_0226624C:
	ldr r0, _022662F0 ; =0x00002D54
	add r1, r5, r6
	ldr r0, [r1, r0]
	lsr r0, r0, #0x1f
	bne _02266266
	add r0, sp, #0x10
	ldrb r1, [r0, #7]
	mov r2, #0x60
	bic r1, r2
	mov r2, #0x40
	orr r1, r2
	strb r1, [r0, #7]
	b _02266280
_02266266:
	add r3, sp, #0x10
	ldrb r2, [r3, #7]
	mov r0, #0x60
	add r1, r5, r6
	bic r2, r0
	ldr r0, _022662F4 ; =0x00002DBE
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x19
	orr r0, r2
	strb r0, [r3, #7]
_02266280:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl sub_02075AD0
	mov r1, #0xc0
	mul r1, r4
	add r2, r5, r1
	ldr r1, _022662F8 ; =0x00002DA4
	ldr r1, [r2, r1]
	sub r0, r1, r0
	ldr r1, [sp, #8]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r1, r1, #1
	bl sub_02075AD0
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl sub_02075AD0
	sub r0, r5, r0
	str r0, [sp, #0x1c]
	ldrh r1, [r7, r6]
	ldr r0, [sp, #4]
	bl ov16_0223F9E0
	add r3, sp, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	ldrb r1, [r3, #7]
	mov r2, #0x80
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r3, #7]
	ldr r0, [sp, #4]
	bl ov16_0223ED8C
	str r0, [sp, #0x20]
	mov r0, #0x14
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #0x10
	bl ov16_02264A04
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_022662E8: .word 0x0000219C
_022662EC: .word 0x00002D74
_022662F0: .word 0x00002D54
_022662F4: .word 0x00002DBE
_022662F8: .word 0x00002DA4
	thumb_func_end ov16_022661CC

	thumb_func_start ov16_022662FC
ov16_022662FC: ; 0x022662FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r6, r1, #0
	str r2, [sp, #8]
	mov r1, #0x27
	add r2, sp, #0x10
	strb r1, [r2]
	ldrb r1, [r2, #1]
	mov r3, #0xf
	str r0, [sp, #4]
	bic r1, r3
	ldr r3, [sp, #8]
	add r4, r6, r3
	ldr r3, _02266438 ; =0x0000219C
	ldrb r4, [r4, r3]
	mov r3, #0xf
	and r3, r4
	orr r1, r3
	strb r1, [r2, #1]
	ldr r1, [sp, #8]
	mov r3, #0xc0
	mul r3, r1
	ldrb r4, [r2, #1]
	mov r1, #0xf0
	str r3, [sp, #0xc]
	bic r4, r1
	add r1, r3, #0
	add r3, r6, r1
	ldr r1, _0226643C ; =0x00002DCC
	ldr r5, [r3, r1]
	lsl r5, r5, #0x1a
	lsr r5, r5, #0x1c
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	lsl r5, r5, #0x1c
	lsr r5, r5, #0x18
	orr r4, r5
	strb r4, [r2, #1]
	add r4, r1, #0
	sub r4, #0x40
	ldr r4, [r3, r4]
	sub r1, #0x14
	strh r4, [r2, #2]
	ldrh r1, [r3, r1]
	strh r1, [r2, #0xc]
	ldr r1, [sp, #8]
	bl ov16_0223E208
	lsl r0, r0, #3
	add r1, r6, r0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r7, _02266440 ; =0x00002D6C
	lsl r0, r0, #3
	lsr r0, r0, #0x1a
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r2, r6, r0
	ldr r0, _02266444 ; =0x00002D66
	ldrb r1, [r2, r0]
	add r0, r0, #1
	lsl r1, r1, #0x1b
	lsr r3, r1, #0x1b
	add r1, sp, #0x10
	strh r3, [r1, #0x20]
	ldrb r0, [r2, r0]
	ldr r1, [sp, #8]
	mov r2, #0xc0
	mul r2, r1
	add r1, r6, r2
	mov ip, r2
	add r2, sp, #0x10
	str r0, [sp, #0x34]
	mov r0, #0
	add r3, r1, #0
	add r4, r2, #0
_02266396:
	ldr r5, _02266448 ; =0x00002D4C
	add r0, r0, #1
	ldrh r5, [r1, r5]
	add r1, r1, #2
	strh r5, [r2, #0xe]
	ldrb r5, [r3, r7]
	add r2, r2, #2
	add r3, r3, #1
	strb r5, [r4, #0x16]
	add r4, r4, #1
	cmp r0, #4
	blt _02266396
	add r1, sp, #0x10
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0
	beq _022663CE
	mov r0, ip
	add r3, r6, r0
	ldr r0, _0226644C ; =0x00002DAC
	ldr r1, _02266450 ; =0xFFFFF0FF
	ldr r2, [r3, r0]
	add r0, r0, #4
	and r1, r2
	str r1, [sp, #0x14]
	ldr r0, [r3, r0]
	str r0, [sp, #0x2c]
	b _022663DC
_022663CE:
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r1, r6, r0
	ldr r0, _02266454 ; =0x00002DB0
	ldr r0, [r1, r0]
	str r0, [sp, #0x2c]
_022663DC:
	mov r1, #0x85
	lsl r1, r1, #6
	mov r0, #1
	ldr r2, [r6, r1]
	lsl r0, r0, #0x1a
	tst r0, r2
	add r0, sp, #0x10
	beq _022663FA
	mov r2, #1
	strh r2, [r0, #0x2a]
	ldr r2, [r6, r1]
	ldr r0, _02266458 ; =0xFBFFFFFF
	and r0, r2
	str r0, [r6, r1]
	b _022663FE
_022663FA:
	mov r1, #0
	strh r1, [r0, #0x2a]
_022663FE:
	mov r1, #0x85
	lsl r1, r1, #6
	mov r0, #2
	ldr r2, [r6, r1]
	lsl r0, r0, #0x1a
	tst r0, r2
	add r0, sp, #0x10
	beq _0226641E
	mov r2, #1
	strh r2, [r0, #0x28]
	strh r2, [r0, #0x2a]
	ldr r2, [r6, r1]
	ldr r0, _0226645C ; =0xF7FFFFFF
	and r0, r2
	str r0, [r6, r1]
	b _02266422
_0226641E:
	mov r1, #0
	strh r1, [r0, #0x28]
_02266422:
	mov r0, #0x2c
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	mov r1, #1
	add r3, sp, #0x10
	bl ov16_02264A04
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_02266438: .word 0x0000219C
_0226643C: .word 0x00002DCC
_02266440: .word 0x00002D6C
_02266444: .word 0x00002D66
_02266448: .word 0x00002D4C
_0226644C: .word 0x00002DAC
_02266450: .word 0xFFFFF0FF
_02266454: .word 0x00002DB0
_02266458: .word 0xFBFFFFFF
_0226645C: .word 0xF7FFFFFF
	thumb_func_end ov16_022662FC

	thumb_func_start ov16_02266460
ov16_02266460: ; 0x02266460
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x28
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_02266460

	thumb_func_start ov16_0226647C
ov16_0226647C: ; 0x0226647C
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x29
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_0226647C

	thumb_func_start ov16_02266498
ov16_02266498: ; 0x02266498
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r5, #0x2a
	add r4, sp, #4
	strb r5, [r4]
	strh r3, [r4, #2]
	mov r3, #0xc0
	mul r3, r2
	add r3, r1, r3
	ldr r1, _022664C0 ; =0x00002D67
	ldrb r1, [r3, r1]
	add r3, sp, #4
	strb r1, [r4, #1]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	bl ov16_02264A04
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022664C0: .word 0x00002D67
	thumb_func_end ov16_02266498

	thumb_func_start ov16_022664C4
ov16_022664C4: ; 0x022664C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ov16_0223DF10
	add r1, r5, #0
	bl ov16_02252040
	mov r1, #0x2b
	add r0, sp, #4
	strb r1, [r0]
	strh r4, [r0, #2]
	strb r6, [r0, #1]
	mov r0, #4
	str r0, [sp]
	add r0, r7, #0
	mov r1, #1
	add r2, r5, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_022664C4

	thumb_func_start ov16_022664F8
ov16_022664F8: ; 0x022664F8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	mov r5, #0x2c
	add r1, sp, #4
	strb r5, [r1]
	strb r2, [r1, #1]
	strb r3, [r1, #2]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_022664F8

	thumb_func_start ov16_0226651C
ov16_0226651C: ; 0x0226651C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	mov r1, #0x2d
	add r3, sp, #4
	strb r1, [r3]
	mov r1, #0xc0
	add r6, r7, #0
	mul r6, r1
	ldr r1, [r0, #0x30]
	add r2, r1, r6
	mov r1, #0xb5
	lsl r1, r1, #6
	ldrh r2, [r2, r1]
	strh r2, [r3, #2]
	ldr r2, [r0, #0x30]
	add r4, r2, r6
	add r2, r1, #0
	add r2, #0x26
	ldrb r2, [r4, r2]
	lsl r2, r2, #0x1a
	lsr r2, r2, #0x1f
	strb r2, [r3, #5]
	ldr r2, [r0, #0x30]
	add r5, r2, r6
	add r2, r1, #0
	add r2, #0x70
	ldr r4, [r5, r2]
	mov r2, #2
	lsl r2, r2, #0x14
	tst r2, r4
	beq _02266570
	add r2, r1, #0
	add r2, #0xba
	ldrh r2, [r5, r2]
	add r1, #0xa4
	strb r2, [r3, #4]
	ldr r2, [r0, #0x30]
	add r2, r2, r6
	ldr r1, [r2, r1]
	str r1, [sp, #0xc]
	b _02266586
_02266570:
	add r2, r1, #0
	add r2, #0x7e
	ldrb r2, [r5, r2]
	add r1, #0x68
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1c
	strb r2, [r3, #4]
	ldr r2, [r0, #0x30]
	add r2, r2, r6
	ldr r1, [r2, r1]
	str r1, [sp, #0xc]
_02266586:
	ldr r1, [r0, #0x30]
	add r3, sp, #4
	add r2, r1, r6
	ldr r1, _022665A8 ; =0x00002D66
	ldrb r1, [r2, r1]
	lsl r1, r1, #0x1b
	lsr r2, r1, #0x1b
	add r1, sp, #4
	strb r2, [r1, #1]
	mov r1, #0xc
	str r1, [sp]
	mov r1, #1
	add r2, r7, #0
	bl ov16_02264A04
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022665A8: .word 0x00002D66
	thumb_func_end ov16_0226651C

	thumb_func_start ov16_022665AC
ov16_022665AC: ; 0x022665AC
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x2e
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_022665AC

	thumb_func_start ov16_022665C8
ov16_022665C8: ; 0x022665C8
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x2f
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_022665C8

	thumb_func_start ov16_022665E4
ov16_022665E4: ; 0x022665E4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	str r4, [sp]
	ldr r1, [r5, #0x30]
	add r2, sp, #4
	mov r3, #0x30
	bl ov16_02266CF0
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov16_022665E4

	thumb_func_start ov16_0226660C
ov16_0226660C: ; 0x0226660C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	str r4, [sp]
	ldr r1, [r5, #0x30]
	add r2, sp, #4
	mov r3, #0x31
	bl ov16_02266CF0
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov16_0226660C

	thumb_func_start ov16_02266634
ov16_02266634: ; 0x02266634
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	str r4, [sp]
	ldr r1, [r5, #0x30]
	add r2, sp, #4
	mov r3, #0x32
	bl ov16_02266CF0
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov16_02266634

	thumb_func_start ov16_0226665C
ov16_0226665C: ; 0x0226665C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	str r4, [sp]
	ldr r1, [r5, #0x30]
	add r2, sp, #4
	mov r3, #0x33
	bl ov16_02266CF0
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov16_0226665C

	thumb_func_start ov16_02266684
ov16_02266684: ; 0x02266684
	push {r3, lr}
	sub sp, #8
	mov r1, #0x34
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	mov r2, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_02266684

	thumb_func_start ov16_022666A0
ov16_022666A0: ; 0x022666A0
	push {r3, lr}
	sub sp, #8
	mov r1, #0x35
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	mov r2, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_022666A0

	thumb_func_start ov16_022666BC
ov16_022666BC: ; 0x022666BC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	mov r5, #0x36
	add r1, sp, #4
	strb r5, [r1]
	strb r2, [r1, #1]
	strh r3, [r1, #2]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_022666BC

	thumb_func_start ov16_022666E0
ov16_022666E0: ; 0x022666E0
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	bl ov16_0223DF0C
	mov r2, #0x37
	add r1, sp, #4
	strb r2, [r1]
	mov r2, #0
	strh r2, [r1, #2]
	mov r1, #4
	tst r0, r1
	beq _02266734
	bl sub_0202F250
	cmp r0, #1
	bne _02266734
	ldr r0, _02266738 ; =0x0000240C
	ldr r1, [r5, r0]
	mov r0, #0x10
	tst r0, r1
	bne _02266734
	add r0, r5, #0
	add r1, sp, #8
	bl ov16_0223F58C
	add r1, sp, #4
	strh r0, [r1, #2]
	ldrh r0, [r1, #2]
	cmp r0, #0x1c
	blo _02266724
	bl GF_AssertFail
_02266724:
	mov r0, #0x20
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov16_02264A04
_02266734:
	add sp, #0x24
	pop {r4, r5, pc}
	; .align 2, 0
_02266738: .word 0x0000240C
	thumb_func_end ov16_022666E0

	thumb_func_start ov16_0226673C
ov16_0226673C: ; 0x0226673C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	str r0, [sp, #4]
	add r3, r1, #0
	mov r1, #0x38
	add r0, sp, #0xc
	strb r1, [r0]
	mov r0, #0
	add r7, sp, #0xc
	str r2, [sp, #8]
	ldr r4, _022667D4 ; =0x00002D66
	mov ip, r0
	add r0, r3, r4
	add r4, #0x58
	add r1, r7, #0
	add r2, r7, #0
	add r6, r3, r4
_0226675E:
	mov r4, #0xb5
	lsl r4, r4, #6
	ldrh r4, [r3, r4]
	strh r4, [r7, #0x18]
	ldrb r4, [r0]
	lsl r4, r4, #0x1a
	lsr r5, r4, #0x1f
	add r4, r1, #0
	add r4, #0x24
	strb r5, [r4]
	ldrb r4, [r0]
	lsl r4, r4, #0x1b
	lsr r5, r4, #0x1b
	add r4, r1, #0
	add r4, #0x28
	strb r5, [r4]
	ldr r4, _022667D8 ; =0x00002DB0
	ldr r5, [r3, r4]
	mov r4, #2
	lsl r4, r4, #0x14
	tst r4, r5
	beq _02266798
	ldr r4, _022667DC ; =0x00002DFA
	ldrh r5, [r3, r4]
	add r4, r1, #0
	add r4, #0x20
	strb r5, [r4]
	ldr r4, _022667E0 ; =0x00002DE4
	b _022667A6
_02266798:
	ldrb r4, [r6]
	lsl r4, r4, #0x1c
	lsr r5, r4, #0x1c
	add r4, r1, #0
	add r4, #0x20
	strb r5, [r4]
	ldr r4, _022667E4 ; =0x00002DA8
_022667A6:
	ldr r4, [r3, r4]
	add r3, #0xc0
	str r4, [r2, #0x2c]
	mov r4, ip
	add r4, r4, #1
	add r7, r7, #2
	add r0, #0xc0
	add r1, r1, #1
	add r2, r2, #4
	add r6, #0xc0
	mov ip, r4
	cmp r4, #4
	blt _0226675E
	mov r0, #0x58
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	mov r1, #1
	add r3, sp, #0xc
	bl ov16_02264A04
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022667D4: .word 0x00002D66
_022667D8: .word 0x00002DB0
_022667DC: .word 0x00002DFA
_022667E0: .word 0x00002DE4
_022667E4: .word 0x00002DA8
	thumb_func_end ov16_0226673C

	thumb_func_start ov16_022667E8
ov16_022667E8: ; 0x022667E8
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x39
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_022667E8

	thumb_func_start ov16_02266804
ov16_02266804: ; 0x02266804
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x3a
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_02266804

	thumb_func_start ov16_02266820
ov16_02266820: ; 0x02266820
	push {r3, lr}
	sub sp, #8
	mov r1, #0x3b
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	mov r2, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_02266820

	thumb_func_start ov16_0226683C
ov16_0226683C: ; 0x0226683C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r0, #0
	add r5, r1, #0
	bl ov16_0223DF0C
	str r0, [sp, #4]
	mov r1, #0x3c
	add r0, sp, #8
	strb r1, [r0]
	mov r4, #0
	strb r4, [r0, #1]
	strh r4, [r0, #2]
	add r0, r6, #0
	bl ov16_0223DF1C
	cmp r0, #0
	ble _02266884
	add r7, sp, #8
_02266862:
	ldr r0, _022668C8 ; =0x000021A8
	ldr r0, [r5, r0]
	cmp r0, #0x10
	bne _02266876
	add r0, r4, #0
	bl sub_020787CC
	ldrb r1, [r7, #1]
	orr r0, r1
	strb r0, [r7, #1]
_02266876:
	add r0, r6, #0
	add r5, #0x10
	add r4, r4, #1
	bl ov16_0223DF1C
	cmp r4, r0
	blt _02266862
_02266884:
	ldr r0, [sp, #4]
	mov r1, #4
	tst r0, r1
	beq _022668B4
	bl sub_0202F250
	cmp r0, #1
	bne _022668B4
	ldr r0, _022668CC ; =0x0000240C
	ldr r1, [r6, r0]
	mov r0, #0x10
	tst r0, r1
	bne _022668B4
	add r0, r6, #0
	add r1, sp, #0xc
	bl ov16_0223F58C
	add r1, sp, #8
	strh r0, [r1, #2]
	ldrh r0, [r1, #2]
	cmp r0, #0x1c
	blo _022668B4
	bl GF_AssertFail
_022668B4:
	mov r0, #0x20
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	mov r2, #0
	add r3, sp, #8
	bl ov16_02264A04
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022668C8: .word 0x000021A8
_022668CC: .word 0x0000240C
	thumb_func_end ov16_0226683C

	thumb_func_start ov16_022668D0
ov16_022668D0: ; 0x022668D0
	push {r3, r4, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl ov16_0223DF0C
	mov r2, #0x3d
	add r1, sp, #4
	strb r2, [r1]
	mov r2, #0
	strh r2, [r1, #2]
	mov r1, #4
	tst r0, r1
	beq _02266912
	bl sub_0202F250
	cmp r0, #1
	bne _02266912
	ldr r0, _02266928 ; =0x0000240C
	ldr r1, [r4, r0]
	mov r0, #0x10
	tst r0, r1
	bne _02266912
	add r0, r4, #0
	add r1, sp, #8
	bl ov16_0223F58C
	add r1, sp, #4
	strh r0, [r1, #2]
	ldrh r0, [r1, #2]
	cmp r0, #0x1c
	blo _02266912
	bl GF_AssertFail
_02266912:
	mov r0, #0x20
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #0x24
	pop {r3, r4, pc}
	nop
_02266928: .word 0x0000240C
	thumb_func_end ov16_022668D0

	thumb_func_start ov16_0226692C
ov16_0226692C: ; 0x0226692C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	str r0, [sp, #4]
	add r3, r1, #0
	mov r1, #0x3e
	add r0, sp, #0xc
	strb r1, [r0]
	mov r0, #0
	add r7, sp, #0xc
	str r2, [sp, #8]
	ldr r4, _022669C4 ; =0x00002D66
	mov ip, r0
	add r0, r3, r4
	add r4, #0x58
	add r1, r7, #0
	add r2, r7, #0
	add r6, r3, r4
_0226694E:
	mov r4, #0xb5
	lsl r4, r4, #6
	ldrh r4, [r3, r4]
	strh r4, [r7, #0x18]
	ldrb r4, [r0]
	lsl r4, r4, #0x1a
	lsr r5, r4, #0x1f
	add r4, r1, #0
	add r4, #0x24
	strb r5, [r4]
	ldrb r4, [r0]
	lsl r4, r4, #0x1b
	lsr r5, r4, #0x1b
	add r4, r1, #0
	add r4, #0x28
	strb r5, [r4]
	ldr r4, _022669C8 ; =0x00002DB0
	ldr r5, [r3, r4]
	mov r4, #2
	lsl r4, r4, #0x14
	tst r4, r5
	beq _02266988
	ldr r4, _022669CC ; =0x00002DFA
	ldrh r5, [r3, r4]
	add r4, r1, #0
	add r4, #0x20
	strb r5, [r4]
	ldr r4, _022669D0 ; =0x00002DE4
	b _02266996
_02266988:
	ldrb r4, [r6]
	lsl r4, r4, #0x1c
	lsr r5, r4, #0x1c
	add r4, r1, #0
	add r4, #0x20
	strb r5, [r4]
	ldr r4, _022669D4 ; =0x00002DA8
_02266996:
	ldr r4, [r3, r4]
	add r3, #0xc0
	str r4, [r2, #0x2c]
	mov r4, ip
	add r4, r4, #1
	add r7, r7, #2
	add r0, #0xc0
	add r1, r1, #1
	add r2, r2, #4
	add r6, #0xc0
	mov ip, r4
	cmp r4, #4
	blt _0226694E
	mov r0, #0x58
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	mov r1, #1
	add r3, sp, #0xc
	bl ov16_02264A04
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022669C4: .word 0x00002D66
_022669C8: .word 0x00002DB0
_022669CC: .word 0x00002DFA
_022669D0: .word 0x00002DE4
_022669D4: .word 0x00002DA8
	thumb_func_end ov16_0226692C

	thumb_func_start ov16_022669D8
ov16_022669D8: ; 0x022669D8
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r3, #0x3f
	add r4, sp, #4
	strb r3, [r4]
	ldr r3, _02266A14 ; =0x0000216C
	ldr r5, [r1, r3]
	mov r1, #2
	add r3, r5, #0
	tst r3, r1
	beq _022669F2
	strb r1, [r4, #1]
	b _02266A02
_022669F2:
	mov r1, #4
	tst r1, r5
	beq _022669FE
	mov r1, #1
	strb r1, [r4, #1]
	b _02266A02
_022669FE:
	mov r1, #0
	strb r1, [r4, #1]
_02266A02:
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02266A14: .word 0x0000216C
	thumb_func_end ov16_022669D8

	thumb_func_start ov16_02266A18
ov16_02266A18: ; 0x02266A18
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	mov r3, #0x40
	add r1, sp, #4
	strb r3, [r1]
	strh r2, [r1, #2]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov16_02266A18

	thumb_func_start ov16_02266A38
ov16_02266A38: ; 0x02266A38
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	bl ov16_0223DF0C
	add r4, r0, #0
	mov r1, #0x41
	add r0, sp, #4
	strb r1, [r0]
	add r0, r5, #0
	bl ov16_0223F438
	str r0, [sp, #8]
	mov r1, #0
	add r0, sp, #4
	strh r1, [r0, #2]
	mov r0, #4
	tst r0, r4
	beq _02266A86
	bl sub_0202F250
	cmp r0, #1
	bne _02266A86
	ldr r0, _02266A9C ; =0x0000240C
	ldr r1, [r5, r0]
	mov r0, #0x10
	tst r0, r1
	bne _02266A86
	add r0, r5, #0
	add r1, sp, #0xc
	bl ov16_0223F58C
	add r1, sp, #4
	strh r0, [r1, #2]
	ldrh r0, [r1, #2]
	cmp r0, #0x1c
	bls _02266A86
	bl GF_AssertFail
_02266A86:
	mov r0, #0x24
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #0x28
	pop {r3, r4, r5, pc}
	nop
_02266A9C: .word 0x0000240C
	thumb_func_end ov16_02266A38

	thumb_func_start ov16_02266AA0
ov16_02266AA0: ; 0x02266AA0
	push {r3, lr}
	sub sp, #8
	mov r1, #0x42
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	mov r2, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_02266AA0

	thumb_func_start ov16_02266ABC
ov16_02266ABC: ; 0x02266ABC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, sp, #4
	add r4, r1, #0
	strb r2, [r0]
	bl sub_0203608C
	add r1, sp, #4
	strb r0, [r1, #1]
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	add r3, sp, #4
	bl ov16_02264A04
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02266ABC

	thumb_func_start ov16_02266AE4
ov16_02266AE4: ; 0x02266AE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #1
	ldrb r3, [r5, #3]
	str r1, [sp]
	ldrb r2, [r5]
	ldrb r1, [r5, #2]
	lsl r3, r3, #8
	add r4, r0, #0
	orr r1, r3
	ldrb r6, [r5, #1]
	cmp r2, #0
	bne _02266B1E
	mov r2, #0
	cmp r1, #0
	ble _02266B72
	mov r7, #0x23
	lsl r3, r6, #8
	lsl r7, r7, #8
_02266B0A:
	add r0, r5, r2
	ldr r6, [r4, #0x30]
	ldrb r0, [r0, #4]
	add r6, r3, r6
	add r6, r2, r6
	add r2, r2, #1
	strb r0, [r6, r7]
	cmp r2, r1
	blt _02266B0A
	b _02266B72
_02266B1E:
	cmp r2, #1
	bne _02266B56
	lsl r0, r6, #2
	add r0, r4, r0
	mov r3, #0x6a
	ldr r4, [r0, #0x34]
	lsl r3, r3, #2
	ldrb r2, [r4, r3]
	cmp r2, #0
	bne _02266B50
	ldr r2, [sp]
	strb r2, [r4, r3]
	mov r2, #0
	cmp r1, #0
	ble _02266B72
_02266B3C:
	add r3, r5, r2
	ldrb r4, [r3, #4]
	ldr r3, [r0, #0x34]
	add r3, r3, r2
	add r3, #0x94
	add r2, r2, #1
	strb r4, [r3]
	cmp r2, r1
	blt _02266B3C
	b _02266B72
_02266B50:
	mov r0, #0
	str r0, [sp]
	b _02266B72
_02266B56:
	cmp r2, #2
	bne _02266B72
	ldrb r7, [r5, #4]
	ldrb r5, [r5, #5]
	bl ov16_0223ED60
	cmp r0, #0
	beq _02266B72
	ldr r0, [r4, #0x30]
	add r1, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov16_02251F80
_02266B72:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02266AE4

	thumb_func_start ov16_02266B78
ov16_02266B78: ; 0x02266B78
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r2, #0
	mov r1, #0x16
	strb r1, [r5]
	add r1, sp, #8
	ldrh r1, [r1, #0x1c]
	add r7, r0, #0
	strh r1, [r5, #2]
	ldr r1, [sp, #0x1c]
	strh r1, [r5, #0x14]
	ldr r1, [sp, #0x20]
	strh r1, [r5, #0x16]
	ldr r1, [sp, #0x18]
	str r3, [r5, #0x4c]
	str r1, [r5, #0x50]
	bl ov16_0223E22C
	str r0, [r5, #0x54]
	cmp r4, #0
	bne _02266BA4
	b _02266CC8
_02266BA4:
	ldr r0, _02266CCC ; =0x00002144
	ldr r1, [r4, r0]
	add r0, #0x10
	str r1, [r5, #4]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02266BB4
	b _02266BC0
_02266BB4:
	add r0, sp, #8
	ldrh r0, [r0, #0x1c]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _02266CD0 ; =0x000003E1
	ldrb r0, [r1, r0]
_02266BC0:
	ldr r1, [sp, #0x1c]
	strh r0, [r5, #8]
	mov r0, #0xc0
	add r6, r1, #0
	mul r6, r0
	ldr r0, _02266CD4 ; =0x00002D75
	add r1, r4, r6
	ldrb r0, [r1, r0]
	add r1, r4, #0
	mov r2, #8
	strh r0, [r5, #0xc]
	mov r0, #0xd
	str r0, [sp]
	add r0, r7, #0
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _02266C04
	mov r0, #0x4c
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _02266C04
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	str r0, [r5, #0x10]
	b _02266C08
_02266C04:
	mov r0, #0
	str r0, [r5, #0x10]
_02266C08:
	ldr r0, _02266CD8 ; =0x00002164
	ldr r0, [r4, r0]
	strh r0, [r5, #0xa]
	ldr r0, _02266CDC ; =0x00002DB0
	add r1, r4, r0
	mov r0, #1
	ldr r2, [r1, r6]
	lsl r0, r0, #0x18
	tst r0, r2
	beq _02266C20
	mov r3, #1
	b _02266C22
_02266C20:
	mov r3, #0
_02266C22:
	ldrh r0, [r5, #0xe]
	mov r2, #1
	bic r0, r2
	lsl r2, r3, #0x10
	lsr r3, r2, #0x10
	mov r2, #1
	and r3, r2
	orr r0, r3
	strh r0, [r5, #0xe]
	ldr r1, [r1, r6]
	lsl r0, r2, #0x15
	tst r0, r1
	bne _02266C3E
	mov r2, #0
_02266C3E:
	ldrh r0, [r5, #0xe]
	mov r1, #2
	ldr r3, _02266CE0 ; =0x00002D66
	bic r0, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1e
	orr r0, r1
	add r1, r4, r3
	add r3, #0x58
	strh r0, [r5, #0xe]
	mov r0, #0
	mov ip, r5
	add r2, r5, #0
	add r7, r4, r3
_02266C5E:
	mov r3, #0xb5
	lsl r3, r3, #6
	ldrh r6, [r4, r3]
	mov r3, ip
	strh r6, [r3, #0x18]
	ldrb r3, [r1]
	lsl r3, r3, #0x1a
	lsr r6, r3, #0x1f
	add r3, r5, r0
	add r3, #0x24
	strb r6, [r3]
	ldrb r3, [r1]
	lsl r3, r3, #0x1b
	lsr r6, r3, #0x1b
	add r3, r5, r0
	add r3, #0x28
	strb r6, [r3]
	mov r3, #0xb7
	lsl r3, r3, #6
	ldr r3, [r4, r3]
	str r3, [r2, #0x3c]
	ldr r3, _02266CDC ; =0x00002DB0
	ldr r6, [r4, r3]
	mov r3, #2
	lsl r3, r3, #0x14
	tst r3, r6
	beq _02266CA2
	ldr r3, _02266CE4 ; =0x00002DFA
	ldrh r6, [r4, r3]
	add r3, r5, r0
	add r3, #0x20
	strb r6, [r3]
	ldr r3, _02266CE8 ; =0x00002DE4
	b _02266CB0
_02266CA2:
	ldrb r3, [r7]
	lsl r3, r3, #0x1c
	lsr r6, r3, #0x1c
	add r3, r5, r0
	add r3, #0x20
	strb r6, [r3]
	ldr r3, _02266CEC ; =0x00002DA8
_02266CB0:
	ldr r3, [r4, r3]
	add r0, r0, #1
	str r3, [r2, #0x2c]
	mov r3, ip
	add r3, r3, #2
	add r4, #0xc0
	mov ip, r3
	add r1, #0xc0
	add r2, r2, #4
	add r7, #0xc0
	cmp r0, #4
	blt _02266C5E
_02266CC8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02266CCC: .word 0x00002144
_02266CD0: .word 0x000003E1
_02266CD4: .word 0x00002D75
_02266CD8: .word 0x00002164
_02266CDC: .word 0x00002DB0
_02266CE0: .word 0x00002D66
_02266CE4: .word 0x00002DFA
_02266CE8: .word 0x00002DE4
_02266CEC: .word 0x00002DA8
	thumb_func_end ov16_02266B78

	thumb_func_start ov16_02266CF0
ov16_02266CF0: ; 0x02266CF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x38]
	add r5, r2, #0
	str r1, [sp, #4]
	str r0, [sp, #0x38]
	mov r0, #0
	add r1, r5, #0
	mov r2, #8
	add r6, r3, #0
	bl MIi_CpuClearFast
	ldr r0, [sp]
	bl ov16_0223DF0C
	add r4, r0, #0
	mov r0, #0xc
	and r0, r4
	strb r6, [r5]
	cmp r0, #0xc
	beq _02266D44
	mov r0, #0x10
	tst r0, r4
	beq _02266D2E
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl ov16_0223E208
	cmp r0, #0
	bne _02266D44
_02266D2E:
	cmp r4, #0x4b
	bne _02266D3E
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl ov16_0223E208
	cmp r0, #0
	bne _02266D44
_02266D3E:
	cmp r4, #0xcb
	beq _02266D44
	b _02266E7A
_02266D44:
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl ov16_0223E1F8
	cmp r0, #2
	beq _02266D5C
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl ov16_0223E1F8
	cmp r0, #3
	bne _02266D6A
_02266D5C:
	ldr r6, [sp, #0x38]
	ldr r0, [sp]
	add r1, r6, #0
	bl ov16_0223E258
	str r0, [sp, #0x38]
	b _02266D74
_02266D6A:
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl ov16_0223E258
	add r6, r0, #0
_02266D74:
	ldr r0, [sp]
	add r1, r6, #0
	bl ov16_0223DF20
	mov r4, #0
	str r0, [sp, #0x10]
	add r7, r4, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _02266DF4
	mov r0, #6
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r6, r0, r1
_02266D94:
	ldr r1, _02266F14 ; =0x0000312C
	ldr r0, [sp, #0x10]
	ldrb r1, [r6, r1]
	bl sub_0207A0FC
	mov r1, #0xae
	mov r2, #0
	str r0, [sp, #0x14]
	bl sub_02074470
	cmp r0, #0
	beq _02266DE6
	ldr r1, _02266F18 ; =0x000001EE
	cmp r0, r1
	beq _02266DE6
	ldr r0, [sp, #0x14]
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02266DDE
	ldr r0, [sp, #0x14]
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02266DD6
	add r1, r5, r4
	mov r0, #3
	strb r0, [r1, #2]
	b _02266DE4
_02266DD6:
	add r1, r5, r4
	mov r0, #1
	strb r0, [r1, #2]
	b _02266DE4
_02266DDE:
	add r1, r5, r4
	mov r0, #2
	strb r0, [r1, #2]
_02266DE4:
	add r4, r4, #1
_02266DE6:
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r7, r7, #1
	bl sub_0207A0F8
	cmp r7, r0
	blt _02266D94
_02266DF4:
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl ov16_0223DF20
	str r0, [sp, #8]
	mov r4, #3
	mov r7, #0
	bl sub_0207A0F8
	cmp r0, #0
	bgt _02266E0C
	b _02266F0E
_02266E0C:
	ldr r0, [sp, #0x38]
	mov r1, #6
	mul r1, r0
	ldr r0, [sp, #4]
	add r6, r0, r1
_02266E16:
	ldr r1, _02266F14 ; =0x0000312C
	ldr r0, [sp, #8]
	ldrb r1, [r6, r1]
	bl sub_0207A0FC
	mov r1, #0xae
	mov r2, #0
	str r0, [sp, #0x18]
	bl sub_02074470
	cmp r0, #0
	beq _02266E68
	ldr r1, _02266F18 ; =0x000001EE
	cmp r0, r1
	beq _02266E68
	ldr r0, [sp, #0x18]
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02266E60
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02266E58
	add r1, r5, r4
	mov r0, #3
	strb r0, [r1, #2]
	b _02266E66
_02266E58:
	add r1, r5, r4
	mov r0, #1
	strb r0, [r1, #2]
	b _02266E66
_02266E60:
	add r1, r5, r4
	mov r0, #2
	strb r0, [r1, #2]
_02266E66:
	add r4, r4, #1
_02266E68:
	ldr r0, [sp, #8]
	add r6, r6, #1
	add r7, r7, #1
	bl sub_0207A0F8
	cmp r7, r0
	blt _02266E16
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02266E7A:
	mov r0, #2
	tst r0, r4
	beq _02266E8E
	mov r0, #8
	tst r0, r4
	bne _02266E8E
	ldr r0, [sp, #0x38]
	mov r1, #1
	and r0, r1
	str r0, [sp, #0x38]
_02266E8E:
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl ov16_0223DF20
	mov r4, #0
	str r0, [sp, #0xc]
	add r7, r4, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _02266F0E
	ldr r0, [sp, #0x38]
	mov r1, #6
	mul r1, r0
	ldr r0, [sp, #4]
	add r6, r0, r1
_02266EAE:
	ldr r1, _02266F14 ; =0x0000312C
	ldr r0, [sp, #0xc]
	ldrb r1, [r6, r1]
	bl sub_0207A0FC
	mov r1, #0xae
	mov r2, #0
	str r0, [sp, #0x1c]
	bl sub_02074470
	cmp r0, #0
	beq _02266F00
	ldr r1, _02266F18 ; =0x000001EE
	cmp r0, r1
	beq _02266F00
	ldr r0, [sp, #0x1c]
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02266EF8
	ldr r0, [sp, #0x1c]
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02266EF0
	add r1, r5, r4
	mov r0, #3
	strb r0, [r1, #2]
	b _02266EFE
_02266EF0:
	add r1, r5, r4
	mov r0, #1
	strb r0, [r1, #2]
	b _02266EFE
_02266EF8:
	add r1, r5, r4
	mov r0, #2
	strb r0, [r1, #2]
_02266EFE:
	add r4, r4, #1
_02266F00:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r7, r7, #1
	bl sub_0207A0F8
	cmp r7, r0
	blt _02266EAE
_02266F0E:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02266F14: .word 0x0000312C
_02266F18: .word 0x000001EE
	thumb_func_end ov16_02266CF0