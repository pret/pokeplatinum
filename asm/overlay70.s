	.include "macros/function.inc"


	.text

	thumb_func_start ov70_0225C700
ov70_0225C700: ; 0x0225C700
	mov r3, #0
	ldrsh r2, [r0, r3]
	lsl r2, r2, #0xc
	str r2, [r1, #0]
	mov r2, #2
	ldrsh r0, [r0, r2]
	lsl r0, r0, #0xc
	str r0, [r1, #8]
	str r3, [r1, #4]
	bx lr
	thumb_func_end ov70_0225C700

	thumb_func_start ov70_0225C714
ov70_0225C714: ; 0x0225C714
	ldr r3, [r0, #0]
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	strh r2, [r1]
	ldr r2, [r0, #8]
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	add r0, r2, r0
	asr r0, r0, #0xc
	strh r0, [r1, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225C714

	thumb_func_start ov70_0225C730
ov70_0225C730: ; 0x0225C730
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0
	add r7, r3, #0
	bl sub_0200723C
	add r4, r0, #0
	bl sub_020B3C1C
	add r6, r0, #0
	bl sub_0201CBCC
	add r0, r6, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl sub_020AE9B8
	add r0, r6, #0
	bl sub_020AEA70
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02022F24
	add r6, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02018144
	str r0, [r5, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020D50B8
	ldr r0, [r5, #0]
	bl sub_020B3C1C
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r5, r0, #0
	bl sub_020AE8EC
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl sub_020AEA18
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225C730

	thumb_func_start ov70_0225C7A0
ov70_0225C7A0: ; 0x0225C7A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r1, sp, #0x54
	add r2, sp, #0x58
	add r3, sp, #0x5c
	bl sub_02017358
	add r0, r5, #0
	add r1, sp, #0x48
	add r2, sp, #0x4c
	add r3, sp, #0x50
	bl sub_02017374
	add r0, r5, #0
	mov r1, #0
	bl sub_02017394
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_02017394
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl sub_02017394
	add r5, r0, #0
	add r0, sp, #0x24
	bl sub_020BB4C8
	asr r0, r6, #4
	lsl r3, r0, #1
	lsl r1, r3, #1
	ldr r2, _0225C854 ; =0x020F983C
	add r3, r3, #1
	lsl r3, r3, #1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	add r0, sp, #0
	bl sub_020BB5AC
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl sub_020BB8EC
	asr r0, r5, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	ldr r3, _0225C854 ; =0x020F983C
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020BB5E4
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl sub_020BB8EC
	asr r0, r7, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	ldr r3, _0225C854 ; =0x020F983C
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020BB5C8
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl sub_020BB8EC
	ldr r0, [r4, #8]
	add r1, sp, #0x54
	add r2, sp, #0x24
	add r3, sp, #0x48
	bl sub_0201CED8
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225C854: .word 0x020F983C
	thumb_func_end ov70_0225C7A0

	thumb_func_start ov70_0225C858
ov70_0225C858: ; 0x0225C858
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0x23
	mov r1, #0x2a
	add r2, r5, #0
	bl FUN_0222BCE8
	str r0, [r4, #0]
	mov r0, #1
	mov r1, #0
	str r0, [sp]
	mov r0, #0xae
	add r2, r1, #0
	add r3, r5, #0
	bl sub_02006FE8
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl FUN_0222BD50
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225C858

	thumb_func_start ov70_0225C894
ov70_0225C894: ; 0x0225C894
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl FUN_0222BD30
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225C894

	thumb_func_start ov70_0225C8A8
ov70_0225C8A8: ; 0x0225C8A8
	mov r0, #0x23
	bx lr
	thumb_func_end ov70_0225C8A8

	thumb_func_start ov70_0225C8AC
ov70_0225C8AC: ; 0x0225C8AC
	ldr r3, _0225C8B4 ; =FUN_0222BDAC
	ldr r0, [r0, #0]
	bx r3
	nop
_0225C8B4: .word FUN_0222BDAC
	thumb_func_end ov70_0225C8AC

	thumb_func_start ov70_0225C8B8
ov70_0225C8B8: ; 0x0225C8B8
	push {r3, lr}
	ldr r0, [r0, #0]
	bl FUN_0222BDE4
	lsr r0, r0, #0xf
	pop {r3, pc}
	thumb_func_end ov70_0225C8B8

	thumb_func_start ov70_0225C8C4
ov70_0225C8C4: ; 0x0225C8C4
	push {r3, lr}
	ldr r0, [r0, #0]
	bl FUN_0222BDE4
	ldr r1, _0225C8D4 ; =0x00007FFF
	and r0, r1
	pop {r3, pc}
	nop
_0225C8D4: .word 0x00007FFF
	thumb_func_end ov70_0225C8C4

	thumb_func_start ov70_0225C8D8
ov70_0225C8D8: ; 0x0225C8D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r5, #0
	ldr r7, [sp, #0x28]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r5, [sp, #0x10]
_0225C8EA:
	ldr r0, [sp, #0x10]
	mov r4, #0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_0225C8F2:
	lsl r1, r4, #0x10
	ldr r0, [sp]
	lsr r1, r1, #0x10
	add r2, r6, #0
	bl ov70_0225C8B8
	ldr r1, [sp, #4]
	cmp r0, r1
	bne _0225C91A
	cmp r5, r7
	blo _0225C918
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	strh r4, [r0]
	ldr r0, [sp, #0xc]
	add sp, #0x14
	strh r1, [r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0225C918:
	add r5, r5, #1
_0225C91A:
	add r4, r4, #1
	cmp r4, #0x23
	blt _0225C8F2
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x2a
	blt _0225C8EA
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225C8D8

	thumb_func_start ov70_0225C930
ov70_0225C930: ; 0x0225C930
	ldr r3, _0225C94C ; =0x0226D4DC
	mov r2, #0
_0225C934:
	ldrb r1, [r3]
	cmp r0, r1
	bne _0225C93E
	mov r0, #1
	bx lr
_0225C93E:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #0x20
	blo _0225C934
	mov r0, #0
	bx lr
	nop
_0225C94C: .word 0x0226D4DC
	thumb_func_end ov70_0225C930

	thumb_func_start ov70_0225C950
ov70_0225C950: ; 0x0225C950
	ldr r3, _0225C96C ; =0x0226D4CC
	mov r2, #0
_0225C954:
	ldrb r1, [r3]
	cmp r0, r1
	bne _0225C95E
	mov r0, #1
	bx lr
_0225C95E:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #3
	blo _0225C954
	mov r0, #0
	bx lr
	nop
_0225C96C: .word 0x0226D4CC
	thumb_func_end ov70_0225C950

	thumb_func_start ov70_0225C970
ov70_0225C970: ; 0x0225C970
	ldr r3, _0225C98C ; =0x0226D4D4
	mov r2, #0
_0225C974:
	ldrb r1, [r3]
	cmp r0, r1
	bne _0225C97E
	mov r0, #1
	bx lr
_0225C97E:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #7
	blo _0225C974
	mov r0, #0
	bx lr
	nop
_0225C98C: .word 0x0226D4D4
	thumb_func_end ov70_0225C970

	thumb_func_start ov70_0225C990
ov70_0225C990: ; 0x0225C990
	ldr r3, _0225C9AC ; =0x0226D4D0
	mov r2, #0
_0225C994:
	ldrb r1, [r3]
	cmp r0, r1
	bne _0225C99E
	mov r0, #1
	bx lr
_0225C99E:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #4
	blo _0225C994
	mov r0, #0
	bx lr
	nop
_0225C9AC: .word 0x0226D4D0
	thumb_func_end ov70_0225C990

	thumb_func_start ov70_0225C9B0
ov70_0225C9B0: ; 0x0225C9B0
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov70_0225C9B0

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
	bl sub_020D5124
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl FUN_0222BE18
	str r0, [r4, #0]
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	add r1, r6, #0
	bl FUN_022343A8
	str r0, [r4, #4]
	ldr r1, [sp, #4]
	mov r0, #0x20
	bl FUN_0222D848
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
	bl sub_020D5124
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
	bl FUN_0222D880
	ldr r0, [r4, #4]
	bl FUN_02234548
	ldr r0, [r4, #0]
	bl FUN_0222BE58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov70_0225CA20

	thumb_func_start ov70_0225CA44
ov70_0225CA44: ; 0x0225CA44
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl FUN_0222BE84
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
	bl FUN_0222D8D0
	cmp r0, #1
	bne _0225CAC8
	add r7, sp, #0
	add r6, sp, #8
_0225CAA4:
	ldr r1, [r5, #0]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl FUN_0222CA88
	cmp r0, #1
	bne _0225CABC
	ldr r0, [r5, #0]
	add r1, r7, #0
	bl FUN_0222BE70
_0225CABC:
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	bl FUN_0222D8D0
	cmp r0, #1
	beq _0225CAA4
_0225CAC8:
	ldr r0, [r5, #4]
	bl FUN_02234590
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0225CA5C

	thumb_func_start ov70_0225CAD4
ov70_0225CAD4: ; 0x0225CAD4
	ldr r3, _0225CADC ; =FUN_022345C4
	ldr r0, [r0, #4]
	bx r3
	nop
_0225CADC: .word FUN_022345C4
	thumb_func_end ov70_0225CAD4

	thumb_func_start ov70_0225CAE0
ov70_0225CAE0: ; 0x0225CAE0
	ldr r3, _0225CAE8 ; =FUN_02234604
	ldr r0, [r0, #4]
	bx r3
	nop
_0225CAE8: .word FUN_02234604
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
	ldr r3, _0225CB24 ; =FUN_0222D894
	ldr r0, [r0, #0x10]
	bx r3
	nop
_0225CB24: .word FUN_0222D894
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
	bl sub_02022974
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
	bl FUN_0222BEC0
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0]
	bl FUN_0223461C
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
	bl FUN_0222BEC0
	ldr r1, [sp, #8]
	str r0, [r1, #0]
	ldr r0, [r5, #4]
	ldr r1, [r1, #0]
	bl FUN_0223461C
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
	bl FUN_02234798
	ldr r0, [r4, #0]
	bl FUN_0222BF08
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x28
	bl sub_020D5124
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
	bl FUN_0222BF90
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
	bl sub_02022974
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
	bl FUN_0222C1A4
	add r1, sp, #8
	mov r3, sp
	ldrh r2, [r1, #4]
	ldr r0, [r4, #0]
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl FUN_0222C1B4
	ldr r0, [r4, #0]
	mov r1, #5
	mov r2, #0
	bl FUN_0222C000
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
	bl FUN_0222C000
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
	bl sub_02022974
_0225CD44:
	ldr r0, [r4, #0]
	bl FUN_0222C0FC
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
	bl sub_02022974
_0225CD70:
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl FUN_0222BF90
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
	bl FUN_0222BF90
	cmp r0, #0
	beq _0225CD96
	bl sub_02022974
_0225CD96:
	ldr r0, [r4, #0]
	mov r1, #4
	bl FUN_0222BF90
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
	bl FUN_0222C0E4
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
	bl FUN_0222BF90
	add r1, sp, #0
	strb r0, [r1, #0xb]
	ldr r0, [r5, #0]
	add r1, sp, #4
	bl FUN_0222BE70
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
	bl sub_02022974
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
	bl FUN_0222BF90
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r5, #0]
	bl FUN_0222C1C4
	cmp r0, #0
	bne _0225CE60
	mov r0, #0
	pop {r3, r4, r5, pc}
_0225CE60:
	mov r1, #4
	bl FUN_0222BF90
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225CC70
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225CE40

	thumb_func_start ov70_0225CE70
ov70_0225CE70: ; 0x0225CE70
	ldr r3, _0225CE78 ; =FUN_022347CC
	ldr r0, [r0, #4]
	bx r3
	nop
_0225CE78: .word FUN_022347CC
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
	bl FUN_0222C2AC
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
	bl sub_02022974
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
	bl FUN_0222C0E4
	add r1, sp, #0
	strh r0, [r1, #4]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldr r0, [r5, #0]
	bl FUN_0222C0F0
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
	bl FUN_0222C0E4
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
	bl FUN_0222C078
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
	bl FUN_0222C2AC
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
	ldr r3, _0225D038 ; =FUN_022347B0
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D038: .word FUN_022347B0
	thumb_func_end ov70_0225D030

	thumb_func_start ov70_0225D03C
ov70_0225D03C: ; 0x0225D03C
	ldr r3, _0225D044 ; =FUN_022347D4
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D044: .word FUN_022347D4
	thumb_func_end ov70_0225D03C

	thumb_func_start ov70_0225D048
ov70_0225D048: ; 0x0225D048
	ldr r3, _0225D050 ; =FUN_022347F8
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D050: .word FUN_022347F8
	thumb_func_end ov70_0225D048

	thumb_func_start ov70_0225D054
ov70_0225D054: ; 0x0225D054
	ldr r3, _0225D05C ; =FUN_0223481C
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D05C: .word FUN_0223481C
	thumb_func_end ov70_0225D054

	thumb_func_start ov70_0225D060
ov70_0225D060: ; 0x0225D060
	ldr r3, _0225D068 ; =FUN_02234834
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D068: .word FUN_02234834
	thumb_func_end ov70_0225D060

	thumb_func_start ov70_0225D06C
ov70_0225D06C: ; 0x0225D06C
	push {r3, lr}
	cmp r1, #0
	ldr r0, [r0, #4]
	beq _0225D07C
	mov r1, #1
	bl FUN_02234850
	pop {r3, pc}
_0225D07C:
	bl FUN_0223487C
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
	bl FUN_02234850
	pop {r3, pc}
_0225D094:
	bl FUN_0223487C
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
	bl FUN_02234850
	pop {r3, pc}
_0225D0AC:
	bl FUN_0223487C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_0225D09C

	thumb_func_start ov70_0225D0B4
ov70_0225D0B4: ; 0x0225D0B4
	ldr r3, _0225D0BC ; =FUN_022347C4
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D0BC: .word FUN_022347C4
	thumb_func_end ov70_0225D0B4

	thumb_func_start ov70_0225D0C0
ov70_0225D0C0: ; 0x0225D0C0
	ldr r3, _0225D0C8 ; =FUN_0223488C
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D0C8: .word FUN_0223488C
	thumb_func_end ov70_0225D0C0

	thumb_func_start ov70_0225D0CC
ov70_0225D0CC: ; 0x0225D0CC
	ldr r3, _0225D0D4 ; =FUN_022348A8
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D0D4: .word FUN_022348A8
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
	bl FUN_0222BEC0
	add r1, r0, #0
	str r1, [r6, #0]
	ldr r0, [r5, #4]
	bl FUN_0223461C
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
	bl sub_020E2178
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
	bl FUN_0222C0E4
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
	bl FUN_0222C078
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
	bl sub_020E17FC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0225D256
_0225D248:
	lsl r0, r4, #0xc
	bl sub_020E17FC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0225D256:
	bl sub_020E1740
	add r2, r0, #0
	asr r1, r6, #0x1f
	add r0, r6, #0
	asr r3, r2, #0x1f
	bl sub_020E1F1C
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
	bl sub_020E17FC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0225D29C
_0225D28E:
	lsl r0, r0, #0xc
	bl sub_020E17FC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0225D29C:
	bl sub_020E1740
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020BCFD0
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
	bl sub_02022974
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
	bl FUN_0222BF90
	add r4, r0, #0
	ldr r0, [r7, #0]
	mov r1, #4
	bl FUN_0222BF90
	add r6, r0, #0
	ldr r0, [r7, #0]
	mov r1, #5
	bl FUN_0222BF90
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
	bl FUN_0222BF90
	add r6, r0, #0
	ldr r0, [r4, #0]
	mov r1, #6
	bl FUN_0222BF90
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
	bl FUN_0222BF90
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
	bl FUN_0222BF90
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
	bl FUN_022347B0
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_02234850
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
	bl FUN_0223481C
	add r0, r4, #0
	add r0, #0xc
	bl ov70_0225D2BC
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl FUN_022347F8
	cmp r5, #1
	bne _0225D572
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldr r0, [r4, #4]
	bl FUN_0223487C
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
	bl FUN_022347B0
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_02234850
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
	bl FUN_0223481C
	add r0, r4, #0
	add r0, #0xc
	bl ov70_0225D2BC
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl FUN_022347F8
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
	bl FUN_0223487C
	ldr r0, [r4, #4]
	mov r1, #1
	bl FUN_022347B0
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
	bl FUN_022347B0
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_02234850
	ldr r0, [r4, #4]
	mov r1, #2
	bl FUN_02234888
	add r0, r4, #0
	mov r2, #1
	add r0, #0xc
	mov r1, #0
	lsl r2, r2, #0x10
	mov r3, #4
	bl ov70_0225D220
	ldr r0, [r4, #4]
	add r1, sp, #0x1c
	bl FUN_0223481C
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
	bl FUN_0223481C
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
	bl FUN_022347F8
	cmp r6, #1
	bne _0225D816
	add r0, r5, #0
	bl FUN_0222C0AC
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
	bl FUN_0222C0E4
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
	bl FUN_0222C078
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #8]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0xa]
	add r0, r5, #0
	bl FUN_0222C0AC
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
	bl FUN_0223487C
	ldr r0, [r4, #4]
	mov r1, #1
	bl FUN_022347B0
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
	bl FUN_022347B0
	add r1, r5, #0
	ldr r0, [r5, #4]
	add r1, #0x10
	bl FUN_0223481C
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
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	asr r1, r0, #0x10
	mov r0, #0xb4
	mul r0, r1
	mov r1, #6
	bl sub_020E1F6C
	add r4, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D15C
	ldr r2, _0225D8F4 ; =0xFFFFE000
	asr r1, r0, #0x1f
	asr r3, r2, #0xd
	bl sub_020E1F1C
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
	bl sub_020E1F1C
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
	bl FUN_022347F8
	ldr r0, [r5, #4]
	mov r1, #1
	bl FUN_02234834
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
	bl FUN_022347B0
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl FUN_0223481C
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl FUN_022347F8
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
	ldr r3, _0225D938 ; =FUN_02234610
	add r1, r2, #0
	bx r3
	nop
_0225D938: .word FUN_02234610
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
	bl sub_020E1F6C
	strb r0, [r5, #1]
	mov r0, #2
	ldrb r1, [r5, #1]
	ldrsb r0, [r5, r0]
	add r0, r1, r0
	strb r0, [r5, #1]
	ldrb r1, [r5, #1]
	add r0, r4, #0
	bl FUN_02234610
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225D954

	thumb_func_start ov70_0225D9A4
ov70_0225D9A4: ; 0x0225D9A4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02006840
	mov r2, #0x3a
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x70
	lsl r2, r2, #0xc
	bl sub_02017FC8
	mov r2, #0x3d
	mov r0, #3
	mov r1, #0x71
	lsl r2, r2, #0xc
	bl sub_02017FC8
	mov r1, #0xfe
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x70
	bl sub_0200681C
	mov r2, #0xfe
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	add r0, r5, #0
	add r0, #0xc
	str r0, [r4, #0x38]
	ldr r0, [r5, #0x1c]
	str r0, [r4, #0x34]
	bl FUN_0222E338
	strb r0, [r4, #2]
	ldr r0, [r4, #0x34]
	bl FUN_0222E338
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0225DA02
	bl sub_02022974
_0225DA02:
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	ldr r0, [r5, #0]
	bl sub_02025E38
	mov r1, #0xfd
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r5, #0]
	add r0, #0x3c
	mov r2, #0x70
	bl ov70_0225E4EC
	mov r0, #0x70
	bl ov70_0225C858
	mov r1, #0xfa
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r1, #0xc
	ldr r0, [r4, r1]
	bl sub_02025F30
	add r1, r0, #0
	mov r0, #0x71
	mov r2, #0xfa
	str r0, [sp]
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	mov r0, #0x18
	mov r3, #0x70
	bl ov70_0225C9B4
	mov r2, #0x3e
	lsl r2, r2, #4
	str r0, [r4, r2]
	mov r0, #0x71
	str r0, [sp]
	add r2, #8
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [r4, r2]
	mov r3, #0x70
	bl ov70_02261E10
	mov r1, #0xf9
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x70
	bl ov70_02260A70
	mov r1, #0xfb
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0xf4
	add r0, r4, r1
	add r1, r4, #0
	ldr r2, [r5, #0]
	add r1, #0x3c
	mov r3, #0x70
	bl ov70_0225E9C8
	mov r0, #0xc6
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r2, [r5, #0]
	add r0, r4, r0
	add r1, #0x3c
	mov r3, #0x70
	bl ov70_0225EBA8
	mov r0, #0xce
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x3c
	mov r2, #0x70
	bl ov70_0225EC20
	mov r0, #0x39
	lsl r0, r0, #4
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x3c
	mov r2, #0x70
	bl ov70_0225F114
	mov r0, #0xf1
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x3c
	mov r2, #0x70
	bl ov70_0225EFD4
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0x70
	bl ov70_0225F208
	mov r1, #0x3a
	lsl r1, r1, #4
	add r0, r4, r1
	sub r1, #0xc4
	add r1, r4, r1
	mov r2, #0x70
	bl ov70_0225F098
	mov r0, #0x70
	str r0, [sp]
	mov r3, #0xfd
	mov r0, #0x61
	lsl r3, r3, #2
	lsl r0, r0, #2
	add r2, r4, #0
	ldr r1, [r4, #0x38]
	ldr r3, [r4, r3]
	add r0, r4, r0
	add r2, #0x3c
	bl ov70_0225F350
	ldr r0, [r4, #0x34]
	bl FUN_0222E3BC
	add r5, r0, #0
	bl FUN_0222E8D8
	cmp r0, #1
	bne _0225DB2E
	mov r0, #0x61
	mov r2, #0xb7
	lsl r0, r0, #2
	add r1, r4, #0
	lsl r2, r2, #2
	add r0, r4, r0
	add r1, #0x3c
	add r2, r4, r2
	mov r3, #0x70
	str r5, [sp]
	bl ov70_0225F8AC
_0225DB2E:
	add r0, r4, #0
	mov r1, #0x70
	bl ov70_02262DA8
	mov r1, #0x3f
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov70_022630A4
	add r0, r4, #0
	bl ov70_022630EC
	mov r0, #0x70
	str r0, [sp]
	mov r0, #0x71
	mov r3, #0xfa
	str r0, [sp, #4]
	lsl r3, r3, #2
	add r2, r3, #4
	ldr r1, [r4, r3]
	sub r3, #8
	ldr r0, [r4, #0x34]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl ov70_02269190
	mov r1, #0xf5
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x70
	add r1, r4, #0
	bl ov70_0226C60C
	mov r1, #0xf7
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _0225DB8C ; =ov70_0225E4C8
	add r1, r4, #0
	bl sub_02017798
	bl sub_020177A4
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0225DB8C: .word ov70_0225E4C8
	thumb_func_end ov70_0225D9A4

	thumb_func_start ov70_0225DB90
ov70_0225DB90: ; 0x0225DB90
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02006840
	ldr r0, [r5, #0]
	cmp r0, #8
	bhi _0225DC58
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225DBB6: ; jump table
	.short _0225DBC8 - _0225DBB6 - 2 ; case 0
	.short _0225DBEA - _0225DBB6 - 2 ; case 1
	.short _0225DBFE - _0225DBB6 - 2 ; case 2
	.short _0225DC7A - _0225DBB6 - 2 ; case 3
	.short _0225DCF8 - _0225DBB6 - 2 ; case 4
	.short _0225DD08 - _0225DBB6 - 2 ; case 5
	.short _0225DD58 - _0225DBB6 - 2 ; case 6
	.short _0225DD76 - _0225DBB6 - 2 ; case 7
	.short _0225DDD0 - _0225DBB6 - 2 ; case 8
_0225DBC8:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x70
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	strb r0, [r4, #3]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225DDE2
_0225DBEA:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0225DC58
	mov r0, #0
	strb r0, [r4, #3]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225DDE2
_0225DBFE:
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _0225DC26
	bl FUN_02231760
	cmp r0, #1
	beq _0225DC1A
	ldr r0, [r4, #0x34]
	bl FUN_0222DFF8
	cmp r0, #0
	beq _0225DC26
_0225DC1A:
	ldrb r1, [r4, #4]
	mov r0, #0xf0
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r4, #4]
_0225DC26:
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0225DC42
	ldr r0, [r4, #0x34]
	bl FUN_0222E138
	cmp r0, #1
	bne _0225DC42
	mov r0, #1
	strb r0, [r4, #6]
	add r0, r4, #0
	mov r1, #8
	bl ov70_0225DF38
_0225DC42:
	ldrb r0, [r4]
	cmp r0, #1
	beq _0225DC5A
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _0225DC5A
	ldrb r0, [r4, #6]
	cmp r0, #1
	beq _0225DC5A
_0225DC58:
	b _0225DDE2
_0225DC5A:
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	beq _0225DC68
	mov r0, #3
	str r0, [r5, #0]
	b _0225DDE2
_0225DC68:
	ldrb r0, [r4, #6]
	cmp r0, #1
	bne _0225DC74
	mov r0, #5
	str r0, [r5, #0]
	b _0225DDE2
_0225DC74:
	mov r0, #7
	str r0, [r5, #0]
	b _0225DDE2
_0225DC7A:
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225EB74
	mov r0, #0xce
	lsl r0, r0, #2
	mov r1, #0
	add r0, r4, r0
	add r2, r1, #0
	bl ov70_0225EF14
	mov r0, #0xf1
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225F024
	mov r0, #0x3a
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov70_0225F100
	bl sub_020383E8
	cmp r0, #0
	beq _0225DCBE
	mov r1, #0x39
	lsl r1, r1, #4
	add r0, r4, r1
	sub r1, #0xb4
	add r1, r4, r1
	bl ov70_0225F184
	b _0225DCF2
_0225DCBE:
	bl sub_0203881C
	cmp r0, #0
	beq _0225DCDC
	bl FUN_022326DC
	mov r1, #0x39
	lsl r1, r1, #4
	add r2, r0, #0
	add r0, r4, r1
	sub r1, #0xb4
	add r1, r4, r1
	bl ov70_0225F1C0
	b _0225DCF2
_0225DCDC:
	ldr r0, [r4, #0x34]
	bl FUN_0222DFF8
	mov r1, #0x39
	lsl r1, r1, #4
	add r2, r0, #0
	add r0, r4, r1
	sub r1, #0xb4
	add r1, r4, r1
	bl ov70_0225F1F0
_0225DCF2:
	mov r0, #4
	str r0, [r5, #0]
	b _0225DDE2
_0225DCF8:
	ldr r0, _0225DDF4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0225DDE2
	mov r0, #7
	str r0, [r5, #0]
	b _0225DDE2
_0225DD08:
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225EB74
	mov r0, #0xce
	lsl r0, r0, #2
	mov r1, #0
	add r0, r4, r0
	add r2, r1, #0
	bl ov70_0225EF14
	mov r0, #0xf1
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225F024
	mov r0, #0x3a
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov70_0225F100
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	mov r2, #0x46
	bl ov70_0225F288
	add r1, r0, #0
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225EA44
	mov r0, #6
	str r0, [r5, #0]
	mov r0, #0x3c
	str r0, [r4, #8]
	b _0225DDE2
_0225DD58:
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225EB5C
	cmp r0, #0
	beq _0225DDE2
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0
	bgt _0225DDE2
	mov r0, #7
	str r0, [r5, #0]
	b _0225DDE2
_0225DD76:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225F798
	cmp r0, #5
	bne _0225DDA8
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x70
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	strb r0, [r4, #3]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225DDE2
_0225DDA8:
	cmp r0, #0
	bne _0225DDE2
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x70
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	strb r0, [r4, #3]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225DDE2
_0225DDD0:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0225DDE2
	mov r0, #0
	strb r0, [r4, #3]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0225DDE2:
	add r0, r4, #0
	bl ov70_0225E88C
	add r0, r4, #0
	bl ov70_0225E92C
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0225DDF4: .word 0x021BF67C
	thumb_func_end ov70_0225DB90

	thumb_func_start ov70_0225DDF8
ov70_0225DDF8: ; 0x0225DDF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006840
	ldrb r1, [r4, #1]
	str r1, [r0, #0x18]
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_0226C6F8
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02269204
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_02262DF4
	mov r0, #0x61
	mov r1, #0xc6
	lsl r0, r0, #2
	lsl r1, r1, #2
	add r2, r4, #0
	add r0, r4, r0
	add r1, r4, r1
	add r2, #0x3c
	bl ov70_0225F3E4
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225F25C
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225EA14
	mov r0, #0xc6
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225EBBC
	mov r0, #0xce
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x3c
	bl ov70_0225ED4C
	mov r0, #0x39
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov70_0225F144
	mov r0, #0x3a
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov70_0225F100
	mov r0, #0xf1
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225EFD8
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02260AD4
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_022621AC
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_0225CA20
	mov r0, #0xfa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_0225C894
	add r0, r4, #0
	add r0, #0x3c
	bl ov70_0225E6D0
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x70
	bl sub_0201807C
	mov r0, #0x71
	bl sub_0201807C
	mov r0, #0
	bl sub_020057BC
	mov r0, #0
	bl sub_0200592C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_0225DDF8

	thumb_func_start ov70_0225DEE8
ov70_0225DEE8: ; 0x0225DEE8
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end ov70_0225DEE8

	thumb_func_start ov70_0225DEEC
ov70_0225DEEC: ; 0x0225DEEC
	ldr r0, [r0, #0x38]
	bx lr
	thumb_func_end ov70_0225DEEC

	thumb_func_start ov70_0225DEF0
ov70_0225DEF0: ; 0x0225DEF0
	mov r1, #0x3e
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov70_0225DEF0

	thumb_func_start ov70_0225DEF8
ov70_0225DEF8: ; 0x0225DEF8
	mov r1, #0xf9
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov70_0225DEF8

	thumb_func_start ov70_0225DF00
ov70_0225DF00: ; 0x0225DF00
	mov r1, #0xfa
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov70_0225DF00

	thumb_func_start ov70_0225DF08
ov70_0225DF08: ; 0x0225DF08
	mov r1, #0xfb
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov70_0225DF08

	thumb_func_start ov70_0225DF10
ov70_0225DF10: ; 0x0225DF10
	mov r1, #0x3f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov70_0225DF10

	thumb_func_start ov70_0225DF18
ov70_0225DF18: ; 0x0225DF18
	ldrb r3, [r0, #4]
	mov r2, #0xf
	lsl r1, r1, #0x18
	bic r3, r2
	lsr r2, r1, #0x18
	mov r1, #0xf
	and r1, r2
	orr r1, r3
	strb r1, [r0, #4]
	bx lr
	thumb_func_end ov70_0225DF18

	thumb_func_start ov70_0225DF2C
ov70_0225DF2C: ; 0x0225DF2C
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end ov70_0225DF2C

	thumb_func_start ov70_0225DF30
ov70_0225DF30: ; 0x0225DF30
	ldrb r0, [r0, #3]
	bx lr
	thumb_func_end ov70_0225DF30

	thumb_func_start ov70_0225DF34
ov70_0225DF34: ; 0x0225DF34
	strb r1, [r0]
	bx lr
	thumb_func_end ov70_0225DF34

	thumb_func_start ov70_0225DF38
ov70_0225DF38: ; 0x0225DF38
	strb r1, [r0, #1]
	bx lr
	thumb_func_end ov70_0225DF38

	thumb_func_start ov70_0225DF3C
ov70_0225DF3C: ; 0x0225DF3C
	strb r1, [r0, #5]
	bx lr
	thumb_func_end ov70_0225DF3C

	thumb_func_start ov70_0225DF40
ov70_0225DF40: ; 0x0225DF40
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end ov70_0225DF40

	thumb_func_start ov70_0225DF44
ov70_0225DF44: ; 0x0225DF44
	mov r1, #1
	strb r1, [r0, #7]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225DF44

	thumb_func_start ov70_0225DF4C
ov70_0225DF4C: ; 0x0225DF4C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x14
	blo _0225DF5C
	bl sub_02022974
_0225DF5C:
	add r0, r5, r4
	strb r6, [r0, #0xc]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_0225DF4C

	thumb_func_start ov70_0225DF64
ov70_0225DF64: ; 0x0225DF64
	add r0, r0, r1
	ldrb r0, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225DF64

	thumb_func_start ov70_0225DF6C
ov70_0225DF6C: ; 0x0225DF6C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x14
	blo _0225DF7C
	bl sub_02022974
_0225DF7C:
	add r0, r5, r4
	add r0, #0x20
	strb r6, [r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0225DF6C

	thumb_func_start ov70_0225DF84
ov70_0225DF84: ; 0x0225DF84
	add r0, r0, r1
	add r0, #0x20
	ldrb r0, [r0]
	bx lr
	thumb_func_end ov70_0225DF84

	thumb_func_start ov70_0225DF8C
ov70_0225DF8C: ; 0x0225DF8C
	mov r2, #0xbe
	lsl r2, r2, #2
	ldr r3, _0225DF98 ; =ov70_0225EA44
	add r0, r0, r2
	bx r3
	nop
_0225DF98: .word ov70_0225EA44
	thumb_func_end ov70_0225DF8C

	thumb_func_start ov70_0225DF9C
ov70_0225DF9C: ; 0x0225DF9C
	mov r2, #0xbe
	lsl r2, r2, #2
	ldr r3, _0225DFA8 ; =ov70_0225EAA4
	add r0, r0, r2
	bx r3
	nop
_0225DFA8: .word ov70_0225EAA4
	thumb_func_end ov70_0225DF9C

	thumb_func_start ov70_0225DFAC
ov70_0225DFAC: ; 0x0225DFAC
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r3, _0225DFB8 ; =ov70_0225EB5C
	add r0, r0, r1
	bx r3
	nop
_0225DFB8: .word ov70_0225EB5C
	thumb_func_end ov70_0225DFAC

	thumb_func_start ov70_0225DFBC
ov70_0225DFBC: ; 0x0225DFBC
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r3, _0225DFC8 ; =ov70_0225EB08
	add r0, r0, r1
	bx r3
	nop
_0225DFC8: .word ov70_0225EB08
	thumb_func_end ov70_0225DFBC

	thumb_func_start ov70_0225DFCC
ov70_0225DFCC: ; 0x0225DFCC
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r3, _0225DFD8 ; =ov70_0225EB24
	add r0, r0, r1
	bx r3
	nop
_0225DFD8: .word ov70_0225EB24
	thumb_func_end ov70_0225DFCC

	thumb_func_start ov70_0225DFDC
ov70_0225DFDC: ; 0x0225DFDC
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r3, _0225DFE8 ; =ov70_0225EB4C
	add r0, r0, r1
	bx r3
	nop
_0225DFE8: .word ov70_0225EB4C
	thumb_func_end ov70_0225DFDC

	thumb_func_start ov70_0225DFEC
ov70_0225DFEC: ; 0x0225DFEC
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r3, _0225DFF8 ; =ov70_0225EB74
	add r0, r0, r1
	bx r3
	nop
_0225DFF8: .word ov70_0225EB74
	thumb_func_end ov70_0225DFEC

	thumb_func_start ov70_0225DFFC
ov70_0225DFFC: ; 0x0225DFFC
	mov r2, #0xc6
	lsl r2, r2, #2
	ldr r3, _0225E008 ; =ov70_0225EBC4
	add r0, r0, r2
	bx r3
	nop
_0225E008: .word ov70_0225EBC4
	thumb_func_end ov70_0225DFFC

	thumb_func_start ov70_0225E00C
ov70_0225E00C: ; 0x0225E00C
	push {r3, lr}
	mov r2, #0xce
	lsl r2, r2, #2
	add r0, r0, r2
	mov r2, #0x71
	mov r3, #0
	bl ov70_0225EDA8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E00C

	thumb_func_start ov70_0225E020
ov70_0225E020: ; 0x0225E020
	push {r3, lr}
	add r3, r2, #0
	mov r2, #0xce
	lsl r2, r2, #2
	add r0, r0, r2
	mov r2, #0x71
	bl ov70_0225EDA8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E020

	thumb_func_start ov70_0225E034
ov70_0225E034: ; 0x0225E034
	mov r1, #0xce
	lsl r1, r1, #2
	ldr r3, _0225E040 ; =ov70_0225EDE0
	add r0, r0, r1
	bx r3
	nop
_0225E040: .word ov70_0225EDE0
	thumb_func_end ov70_0225E034

	thumb_func_start ov70_0225E044
ov70_0225E044: ; 0x0225E044
	mov r3, #0xce
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225E050 ; =ov70_0225EDF8
	bx r3
	nop
_0225E050: .word ov70_0225EDF8
	thumb_func_end ov70_0225E044

	thumb_func_start ov70_0225E054
ov70_0225E054: ; 0x0225E054
	mov r1, #0xce
	lsl r1, r1, #2
	ldr r3, _0225E060 ; =ov70_0225EE04
	add r0, r0, r1
	bx r3
	nop
_0225E060: .word ov70_0225EE04
	thumb_func_end ov70_0225E054

	thumb_func_start ov70_0225E064
ov70_0225E064: ; 0x0225E064
	mov r2, #0xce
	lsl r2, r2, #2
	ldr r3, _0225E070 ; =ov70_0225EE08
	add r0, r0, r2
	bx r3
	nop
_0225E070: .word ov70_0225EE08
	thumb_func_end ov70_0225E064

	thumb_func_start ov70_0225E074
ov70_0225E074: ; 0x0225E074
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r3, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r0, #0xce
	lsl r0, r0, #2
	add r4, r2, #0
	add r0, r5, r0
	add r5, #0x3c
	add r2, r5, #0
	add r3, r4, #0
	bl ov70_0225EE30
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E074

	thumb_func_start ov70_0225E0A4
ov70_0225E0A4: ; 0x0225E0A4
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r3, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	add r4, r2, #0
	add r0, sp, #0x10
	ldrb r2, [r0, #0x10]
	add r3, r4, #0
	str r2, [sp, #8]
	ldrb r2, [r0, #0x14]
	str r2, [sp, #0xc]
	ldrb r0, [r0, #0x18]
	str r0, [sp, #0x10]
	mov r0, #0xce
	lsl r0, r0, #2
	add r0, r5, r0
	add r5, #0x3c
	add r2, r5, #0
	bl ov70_0225EE30
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov70_0225E0A4

	thumb_func_start ov70_0225E0D4
ov70_0225E0D4: ; 0x0225E0D4
	mov r1, #0xce
	lsl r1, r1, #2
	ldr r3, _0225E0E0 ; =ov70_0225EED8
	add r0, r0, r1
	bx r3
	nop
_0225E0E0: .word ov70_0225EED8
	thumb_func_end ov70_0225E0D4

	thumb_func_start ov70_0225E0E4
ov70_0225E0E4: ; 0x0225E0E4
	mov r3, #0xce
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225E0F0 ; =ov70_0225EF14
	bx r3
	nop
_0225E0F0: .word ov70_0225EF14
	thumb_func_end ov70_0225E0E4

	thumb_func_start ov70_0225E0F4
ov70_0225E0F4: ; 0x0225E0F4
	mov r2, #0xce
	lsl r2, r2, #2
	ldr r3, _0225E100 ; =ov70_0225EF6C
	add r0, r0, r2
	bx r3
	nop
_0225E100: .word ov70_0225EF6C
	thumb_func_end ov70_0225E0F4

	thumb_func_start ov70_0225E104
ov70_0225E104: ; 0x0225E104
	push {r4, r5, lr}
	sub sp, #0xc
	str r2, [sp]
	add r5, r0, #0
	str r3, [sp, #4]
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	add r4, r1, #0
	mov r2, #0x70
	str r0, [sp, #8]
	mov r0, #0xf1
	lsl r0, r0, #2
	add r0, r5, r0
	add r5, #0x3c
	add r1, r5, #0
	add r3, r4, #0
	bl ov70_0225EFE0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov70_0225E104

	thumb_func_start ov70_0225E12C
ov70_0225E12C: ; 0x0225E12C
	mov r1, #0xf1
	lsl r1, r1, #2
	ldr r3, _0225E138 ; =ov70_0225F024
	add r0, r0, r1
	bx r3
	nop
_0225E138: .word ov70_0225F024
	thumb_func_end ov70_0225E12C

	thumb_func_start ov70_0225E13C
ov70_0225E13C: ; 0x0225E13C
	push {r4, lr}
	mov r4, #0xf1
	lsl r4, r4, #2
	add r0, r0, r4
	bl ov70_0225F048
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E13C

	thumb_func_start ov70_0225E14C
ov70_0225E14C: ; 0x0225E14C
	push {r3, r4, lr}
	sub sp, #4
	add r4, sp, #0
	ldrh r4, [r4, #0x10]
	str r4, [sp]
	mov r4, #0xf1
	lsl r4, r4, #2
	add r0, r0, r4
	bl ov70_0225F078
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov70_0225E14C

	thumb_func_start ov70_0225E164
ov70_0225E164: ; 0x0225E164
	push {lr}
	sub sp, #0x14
	mov r3, #0
	add r2, r0, #0
	str r3, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	mov r0, #0x19
	str r0, [sp, #8]
	mov r0, #0xd
	mov r1, #0xce
	str r0, [sp, #0xc]
	mov r0, #6
	lsl r1, r1, #2
	str r0, [sp, #0x10]
	add r0, r2, r1
	add r1, #0x6c
	add r1, r2, r1
	add r2, #0x3c
	bl ov70_0225EE30
	add sp, #0x14
	pop {pc}
	; .align 2, 0
	thumb_func_end ov70_0225E164

	thumb_func_start ov70_0225E194
ov70_0225E194: ; 0x0225E194
	push {lr}
	sub sp, #0x14
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	mov r0, #0x19
	str r0, [sp, #8]
	mov r0, #0xd
	mov r1, #0xce
	str r0, [sp, #0xc]
	mov r0, #6
	lsl r1, r1, #2
	str r0, [sp, #0x10]
	add r0, r2, r1
	add r1, #0x6c
	add r1, r2, r1
	add r2, #0x3c
	mov r3, #0
	bl ov70_0225EE30
	add sp, #0x14
	pop {pc}
	thumb_func_end ov70_0225E194

	thumb_func_start ov70_0225E1C4
ov70_0225E1C4: ; 0x0225E1C4
	push {r3, lr}
	mov r1, #0xce
	lsl r1, r1, #2
	add r0, r0, r1
	bl ov70_0225EED8
	cmp r0, #0
	beq _0225E1EA
	cmp r0, #1
	beq _0225E1E6
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _0225E1EE
	ldr r0, _0225E1F4 ; =0x000005DC
	bl sub_02005748
_0225E1E6:
	mov r0, #1
	pop {r3, pc}
_0225E1EA:
	mov r0, #0
	pop {r3, pc}
_0225E1EE:
	mov r0, #2
	pop {r3, pc}
	nop
_0225E1F4: .word 0x000005DC
	thumb_func_end ov70_0225E1C4

	thumb_func_start ov70_0225E1F8
ov70_0225E1F8: ; 0x0225E1F8
	mov r1, #0xce
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #0
	ldr r3, _0225E208 ; =ov70_0225EF14
	add r2, r1, #0
	bx r3
	nop
_0225E208: .word ov70_0225EF14
	thumb_func_end ov70_0225E1F8

	thumb_func_start ov70_0225E20C
ov70_0225E20C: ; 0x0225E20C
	mov r3, #0xb7
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225E218 ; =ov70_0225F288
	bx r3
	nop
_0225E218: .word ov70_0225F288
	thumb_func_end ov70_0225E20C

	thumb_func_start ov70_0225E21C
ov70_0225E21C: ; 0x0225E21C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #0xb7
	lsl r4, r4, #2
	add r0, r0, r4
	bl ov70_0225F2A8
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E21C

	thumb_func_start ov70_0225E234
ov70_0225E234: ; 0x0225E234
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x70
	add r4, r1, #0
	add r7, r2, #0
	bl sub_02025E6C
	add r6, r0, #0
	ldr r0, [r5, #0x34]
	bl FUN_0222E338
	cmp r4, r0
	ldr r0, [r5, #0x34]
	bne _0225E256
	bl FUN_0222E3BC
	b _0225E25C
_0225E256:
	add r1, r4, #0
	bl FUN_0222E374
_0225E25C:
	add r1, r6, #0
	mov r2, #0x70
	bl FUN_0222E640
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r6, #0
	add r2, r7, #0
	bl ov70_0225F2C8
	add r0, r6, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E234

	thumb_func_start ov70_0225E27C
ov70_0225E27C: ; 0x0225E27C
	mov r3, #0xb7
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225E288 ; =ov70_0225F2D8
	bx r3
	nop
_0225E288: .word ov70_0225F2D8
	thumb_func_end ov70_0225E27C

	thumb_func_start ov70_0225E28C
ov70_0225E28C: ; 0x0225E28C
	mov r3, #0xb7
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225E298 ; =ov70_0225F2E8
	bx r3
	nop
_0225E298: .word ov70_0225F2E8
	thumb_func_end ov70_0225E28C

	thumb_func_start ov70_0225E29C
ov70_0225E29C: ; 0x0225E29C
	mov r3, #0xb7
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225E2A8 ; =ov70_0225F2F8
	bx r3
	nop
_0225E2A8: .word ov70_0225F2F8
	thumb_func_end ov70_0225E29C

	thumb_func_start ov70_0225E2AC
ov70_0225E2AC: ; 0x0225E2AC
	mov r3, #0xb7
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225E2B8 ; =sub_0200C158
	bx r3
	nop
_0225E2B8: .word sub_0200C158
	thumb_func_end ov70_0225E2AC

	thumb_func_start ov70_0225E2BC
ov70_0225E2BC: ; 0x0225E2BC
	mov r3, #0xb7
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225E2C8 ; =sub_0200C190
	bx r3
	nop
_0225E2C8: .word sub_0200C190
	thumb_func_end ov70_0225E2BC

	thumb_func_start ov70_0225E2CC
ov70_0225E2CC: ; 0x0225E2CC
	mov r3, #0xb7
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225E2D8 ; =sub_0200C1C8
	bx r3
	nop
_0225E2D8: .word sub_0200C1C8
	thumb_func_end ov70_0225E2CC

	thumb_func_start ov70_0225E2DC
ov70_0225E2DC: ; 0x0225E2DC
	mov r3, #0xb7
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225E2E8 ; =sub_0200C200
	bx r3
	nop
_0225E2E8: .word sub_0200C200
	thumb_func_end ov70_0225E2DC

	thumb_func_start ov70_0225E2EC
ov70_0225E2EC: ; 0x0225E2EC
	mov r3, #0xb7
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225E2F8 ; =sub_0200C238
	bx r3
	nop
_0225E2F8: .word sub_0200C238
	thumb_func_end ov70_0225E2EC

	thumb_func_start ov70_0225E2FC
ov70_0225E2FC: ; 0x0225E2FC
	mov r3, #0xb7
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225E308 ; =sub_0200C270
	bx r3
	nop
_0225E308: .word sub_0200C270
	thumb_func_end ov70_0225E2FC

	thumb_func_start ov70_0225E30C
ov70_0225E30C: ; 0x0225E30C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl FUN_022316E8
	add r2, r0, #0
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0200B7EC
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225E30C

	thumb_func_start ov70_0225E328
ov70_0225E328: ; 0x0225E328
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	add r4, r1, #0
	add r6, r2, #0
	bl ov70_0225F7F8
	cmp r4, r0
	bne _0225E368
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov70_0225F7FC
	cmp r0, #1
	bne _0225E368
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov70_0225F834
	cmp r0, #0
	bne _0225E368
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov70_0225F828
	cmp r6, r0
	beq _0225E376
_0225E368:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	add r2, r6, #0
	bl ov70_0225F79C
_0225E376:
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0225E328

	thumb_func_start ov70_0225E378
ov70_0225E378: ; 0x0225E378
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r3, r0
	add r3, #0x3c
	add r2, r1, #0
	add r1, r3, #0
	mov r3, #0x70
	bl ov70_0225F7A8
	pop {r3, pc}
	thumb_func_end ov70_0225E378

	thumb_func_start ov70_0225E390
ov70_0225E390: ; 0x0225E390
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225F7FC
	cmp r0, #0
	beq _0225E3CC
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0225F7F8
	add r1, r0, #0
	ldr r0, [r4, #0x34]
	bl FUN_0222E374
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [sp]
	add r0, r4, r1
	add r1, #8
	add r1, r4, r1
	add r4, #0x3c
	add r2, r4, #0
	mov r3, #0x70
	bl ov70_0225FDA0
_0225E3CC:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov70_0225E390

	thumb_func_start ov70_0225E3D0
ov70_0225E3D0: ; 0x0225E3D0
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r3, _0225E3DC ; =ov70_0225F7E0
	add r0, r0, r1
	bx r3
	nop
_0225E3DC: .word ov70_0225F7E0
	thumb_func_end ov70_0225E3D0

	thumb_func_start ov70_0225E3E0
ov70_0225E3E0: ; 0x0225E3E0
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r3, _0225E3EC ; =ov70_0225F7F8
	add r0, r0, r1
	bx r3
	nop
_0225E3EC: .word ov70_0225F7F8
	thumb_func_end ov70_0225E3E0

	thumb_func_start ov70_0225E3F0
ov70_0225E3F0: ; 0x0225E3F0
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r3, _0225E3FC ; =ov70_0225F7FC
	add r0, r0, r1
	bx r3
	nop
_0225E3FC: .word ov70_0225F7FC
	thumb_func_end ov70_0225E3F0

	thumb_func_start ov70_0225E400
ov70_0225E400: ; 0x0225E400
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r3, _0225E40C ; =ov70_0225F814
	add r0, r0, r1
	bx r3
	nop
_0225E40C: .word ov70_0225F814
	thumb_func_end ov70_0225E400

	thumb_func_start ov70_0225E410
ov70_0225E410: ; 0x0225E410
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r3, _0225E41C ; =ov70_0225F7EC
	add r0, r0, r1
	bx r3
	nop
_0225E41C: .word ov70_0225F7EC
	thumb_func_end ov70_0225E410

	thumb_func_start ov70_0225E420
ov70_0225E420: ; 0x0225E420
	mov r2, #0xf7
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	ldr r3, _0225E42C ; =ov70_0226C810
	mov r2, #1
	bx r3
	; .align 2, 0
_0225E42C: .word ov70_0226C810
	thumb_func_end ov70_0225E420

	thumb_func_start ov70_0225E430
ov70_0225E430: ; 0x0225E430
	ldr r1, _0225E438 ; =0x0000018A
	mov r2, #1
	strh r2, [r0, r1]
	bx lr
	; .align 2, 0
_0225E438: .word 0x0000018A
	thumb_func_end ov70_0225E430

	thumb_func_start ov70_0225E43C
ov70_0225E43C: ; 0x0225E43C
	mov r2, #0x61
	lsl r2, r2, #2
	ldr r3, _0225E448 ; =ov70_0225F934
	add r0, r0, r2
	bx r3
	nop
_0225E448: .word ov70_0225F934
	thumb_func_end ov70_0225E43C

	thumb_func_start ov70_0225E44C
ov70_0225E44C: ; 0x0225E44C
	mov r1, #0xa6
	lsl r1, r1, #2
	ldr r3, _0225E458 ; =ov70_02260A68
	add r0, r0, r1
	bx r3
	nop
_0225E458: .word ov70_02260A68
	thumb_func_end ov70_0225E44C

	thumb_func_start ov70_0225E45C
ov70_0225E45C: ; 0x0225E45C
	mov r1, #0xf6
	lsl r1, r1, #2
	ldr r3, [r0, r1]
	mov r2, #0
	str r2, [r0, r1]
	add r0, r3, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225E45C

	thumb_func_start ov70_0225E46C
ov70_0225E46C: ; 0x0225E46C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _0225E47A
	bl sub_02022974
_0225E47A:
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	bl FUN_0222E374
	bl FUN_0222E8C4
	add r6, r0, #0
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r6, #0
	bl ov70_02269268
	ldr r0, [r5, #0x34]
	bl FUN_0222E338
	cmp r4, r0
	bne _0225E4A8
	ldr r0, [r5, #0x34]
	add r1, r6, #0
	bl FUN_0222EB6C
_0225E4A8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E46C

	thumb_func_start ov70_0225E4AC
ov70_0225E4AC: ; 0x0225E4AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blo _0225E4BA
	bl sub_02022974
_0225E4BA:
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl ov70_02269298
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225E4AC

	thumb_func_start ov70_0225E4C8
ov70_0225E4C8: ; 0x0225E4C8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_022622A4
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_0225CAE0
	add r4, #0x3c
	add r0, r4, #0
	bl ov70_0225E740
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E4C8

	thumb_func_start ov70_0225E4EC
ov70_0225E4EC: ; 0x0225E4EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x14]
	ldr r0, _0225E698 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0225E69C ; =0x04001050
	add r6, r2, #0
	strh r1, [r0]
	mov r0, #0x20
	add r1, r6, #0
	bl sub_0201DBEC
	ldr r0, _0225E6A0 ; =0x0226D664
	bl sub_0201FE94
	ldr r0, _0225E6A4 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	ldr r0, _0225E6A8 ; =0x0226D5BC
	bl sub_02018368
	add r0, r6, #0
	bl sub_02018340
	str r0, [r5, #0]
	mov r0, #0
	ldr r7, _0225E6AC ; =0x0226D6B4
	ldr r4, _0225E6B0 ; =0x0226D5CC
	str r0, [sp, #0x18]
_0225E536:
	ldr r1, [r4, #0]
	ldr r0, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r7, #0
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0]
	mov r1, #0x20
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0
	add r3, r6, #0
	bl sub_02019690
	ldr r1, [r4, #0]
	ldr r0, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02019EBC
	ldr r0, [sp, #0x18]
	add r7, #0x1c
	add r0, r0, #1
	add r4, r4, #4
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _0225E536
	ldr r0, [sp, #0x14]
	bl sub_02025E44
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	mov r0, #0
	mov r1, #0xa0
	add r2, r6, #0
	bl sub_02002E7C
	mov r0, #0
	mov r1, #0x80
	add r2, r6, #0
	bl sub_02002E98
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #1
	mov r2, #0x55
	mov r3, #3
	bl sub_0200DAA4
	mov r1, #1
	str r4, [sp]
	str r6, [sp, #4]
	ldr r0, [r5, #0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200DD0C
	mov r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0]
	mov r1, #1
	mov r2, #0x1f
	mov r3, #2
	bl sub_0200E2A4
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xba
	mov r1, #0x5a
	mov r2, #0
	mov r3, #0x40
	str r6, [sp, #4]
	bl sub_02006E84
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x1f
	str r3, [sp, #0xc]
	add r2, r0, #0
	str r6, [sp, #0x10]
	bl sub_0200A784
	ldr r0, _0225E6B4 ; =0x0226D5DC
	ldr r2, _0225E6B8 ; =0x00100010
	mov r1, #0x10
	bl sub_0201E88C
	mov r0, #0x18
	add r1, r6, #0
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	mov r0, #1
	mov r1, #0x10
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	bl sub_02039734
	add r1, r5, #0
	mov r0, #0x18
	add r1, #8
	add r2, r6, #0
	bl sub_020095C4
	str r0, [r5, #4]
	add r0, r5, #0
	mov r2, #1
	add r0, #8
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r7, #0
	add r4, r5, #0
_0225E642:
	mov r0, #0x18
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02009714
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #4
	blt _0225E642
	mov r0, #0x18
	add r1, r6, #0
	bl sub_0201DCC8
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	str r0, [sp]
	ldr r0, _0225E6BC ; =ov70_0225E754
	mov r1, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #2
	add r3, r1, #0
	bl sub_02024220
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0225E698: .word 0x04000050
_0225E69C: .word 0x04001050
_0225E6A0: .word 0x0226D664
_0225E6A4: .word 0x021BF6DC
_0225E6A8: .word 0x0226D5BC
_0225E6AC: .word 0x0226D6B4
_0225E6B0: .word 0x0226D5CC
_0225E6B4: .word 0x0226D5DC
_0225E6B8: .word 0x00100010
_0225E6BC: .word ov70_0225E754
	thumb_func_end ov70_0225E4EC

	thumb_func_start ov70_0225E6C0
ov70_0225E6C0: ; 0x0225E6C0
	push {r3, lr}
	ldr r0, [r0, #4]
	bl sub_020219F8
	bl sub_0201DCE8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E6C0

	thumb_func_start ov70_0225E6D0
ov70_0225E6D0: ; 0x0225E6D0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0201DC3C
	ldr r5, _0225E73C ; =0x0226D5CC
	mov r4, #0
_0225E6DC:
	ldr r1, [r5, #0]
	ldr r0, [r6, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02019044
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225E6DC
	ldr r0, [r6, #0]
	bl sub_020181C4
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	bl sub_0201DCF0
	mov r0, #5
	lsl r0, r0, #6
	mov r4, #0
	add r7, r0, #0
	str r4, [r6, r0]
	add r5, r6, #0
	sub r7, #0x10
_0225E70E:
	ldr r0, [r5, r7]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225E70E
	ldr r0, [r6, #4]
	bl sub_02021964
	bl sub_0201E958
	bl sub_0201F8B4
	bl sub_0200A878
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_020242C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225E73C: .word 0x0226D5CC
	thumb_func_end ov70_0225E6D0

	thumb_func_start ov70_0225E740
ov70_0225E740: ; 0x0225E740
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_0201C2B8
	bl sub_0200A858
	bl sub_0201DCAC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E740

	thumb_func_start ov70_0225E754
ov70_0225E754: ; 0x0225E754
	push {r3, r4, lr}
	sub sp, #0xc
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _0225E864 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0225E868 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	add r2, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0225E86C ; =0x0000CFFB
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #8
	orr r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldr r0, _0225E870 ; =0x0226D5EC
	bl sub_020BFD2C
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	mov r1, #0
	ldr r0, _0225E874 ; =0x00006B5A
	ldr r2, _0225E878 ; =0x00007FFF
	mov r3, #0x3f
	str r1, [sp]
	bl sub_020BFD58
	ldr r1, _0225E87C ; =0xBFFF0000
	ldr r0, _0225E880 ; =0x04000580
	ldr r2, _0225E884 ; =0xFFFFF224
	str r1, [r0, #0]
	ldr r1, _0225E888 ; =0xFFFFF805
	mov r0, #0
	mov r3, #0x6e
	bl sub_020AF51C
	mov r1, #0
	add r0, sp, #4
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #1
	lsl r1, r1, #0xc
	strh r1, [r0, #4]
	add r0, sp, #4
	add r1, r0, #0
	bl sub_020BD4FC
	add r4, sp, #4
	mov r1, #0
	mov r2, #2
	mov r3, #4
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	mov r0, #1
	bl sub_020AF51C
	mov r1, #0
	add r0, r4, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #1
	lsl r1, r1, #0xc
	strh r1, [r0, #4]
	add r0, sp, #4
	add r1, r0, #0
	bl sub_020BD4FC
	mov r0, #2
	mov r1, #0
	mov r3, #4
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r0]
	ldrsh r3, [r4, r3]
	bl sub_020AF51C
	ldr r1, _0225E878 ; =0x00007FFF
	mov r0, #2
	bl sub_020AF558
	mov r1, #0
	add r0, r4, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #1
	lsl r1, r1, #0xc
	strh r1, [r0, #4]
	add r0, sp, #4
	add r1, r0, #0
	bl sub_020BD4FC
	mov r1, #0
	mov r2, #2
	mov r3, #4
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	mov r0, #3
	bl sub_020AF51C
	ldr r1, _0225E878 ; =0x00007FFF
	mov r0, #3
	bl sub_020AF558
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0225E864: .word 0x04000008
_0225E868: .word 0xFFFFCFFD
_0225E86C: .word 0x0000CFFB
_0225E870: .word 0x0226D5EC
_0225E874: .word 0x00006B5A
_0225E878: .word 0x00007FFF
_0225E87C: .word 0xBFFF0000
_0225E880: .word 0x04000580
_0225E884: .word 0xFFFFF224
_0225E888: .word 0xFFFFF805
	thumb_func_end ov70_0225E754

	thumb_func_start ov70_0225E88C
ov70_0225E88C: ; 0x0225E88C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_0225CA44
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bne _0225E8B2
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0225E8B2
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_02262E20
_0225E8B2:
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02262210
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bne _0225E8E8
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0225E8E8
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_0225CA5C
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_02262E2C
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_0226C718
_0225E8E8:
	add r0, r4, #0
	bl ov70_0225E970
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0225E91E
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _0225E90A
	ldrb r0, [r4, #6]
	cmp r0, #1
	beq _0225E90A
	ldrb r0, [r4]
	cmp r0, #1
	bne _0225E90E
_0225E90A:
	mov r2, #1
	b _0225E910
_0225E90E:
	mov r2, #0
_0225E910:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, #0
	mov r3, #0x70
	bl ov70_0225F418
_0225E91E:
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02269220
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E88C

	thumb_func_start ov70_0225E92C
ov70_0225E92C: ; 0x0225E92C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020241B4
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02260AEC
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02262298
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_0225CAD4
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02269240
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	add r4, #0x3c
	add r0, r4, #0
	bl ov70_0225E6C0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E92C

	thumb_func_start ov70_0225E970
ov70_0225E970: ; 0x0225E970
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, [r7, #0x34]
	bl FUN_0222E190
	str r0, [sp, #8]
	mov r4, #0
_0225E980:
	add r0, r4, #0
	bl FUN_02233184
	add r6, r0, #0
	cmp r6, #1
	bne _0225E99E
	add r0, r4, #0
	bl FUN_022331A4
	cmp r0, #0
	bne _0225E99A
	mov r5, #1
	b _0225E9A0
_0225E99A:
	mov r5, #0
	b _0225E9A0
_0225E99E:
	mov r5, #0
_0225E9A0:
	add r0, r4, #0
	bl FUN_02233224
	add r2, r0, #0
	ldr r0, [sp, #8]
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r1, r4, #0
	add r3, r6, #0
	bl ov70_022627BC
	add r4, r4, #1
	cmp r4, #3
	blt _0225E980
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0225E970

	thumb_func_start ov70_0225E9C8
ov70_0225E9C8: ; 0x0225E9C8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x5e
	str r0, [sp, #0x10]
	ldr r0, [r1, #0]
	add r4, r2, #0
	add r6, r3, #0
	add r1, r5, #0
	mov r2, #1
	mov r3, #2
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #6
	lsl r0, r0, #6
	add r1, r6, #0
	bl sub_02023790
	str r0, [r5, #0x18]
	add r0, r4, #0
	bl sub_02025E44
	bl sub_02027AC0
	str r0, [r5, #0x14]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov70_0225E9C8

	thumb_func_start ov70_0225EA14
ov70_0225EA14: ; 0x0225EA14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0225EA30
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_0225EA30:
	add r0, r4, #0
	bl ov70_0225EB38
	ldr r0, [r4, #0x18]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	thumb_func_end ov70_0225EA14

	thumb_func_start ov70_0225EA44
ov70_0225EA44: ; 0x0225EA44
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0225EA64
	ldr r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_0225EA64:
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_02023810
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x14]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, _0225EAA0 ; =0x0001020F
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r5, #0x18]
	add r0, r5, #0
	bl sub_0201D78C
	mov r1, #1
	str r0, [r5, #0x10]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200E060
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0225EAA0: .word 0x0001020F
	thumb_func_end ov70_0225EA44

	thumb_func_start ov70_0225EAA4
ov70_0225EAA4: ; 0x0225EAA4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0225EAC4
	ldr r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_0225EAC4:
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_02023810
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225EB04 ; =0x0001020F
	mov r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r5, #0x18]
	add r0, r5, #0
	bl sub_0201D78C
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200E060
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0225EB04: .word 0x0001020F
	thumb_func_end ov70_0225EAA4

	thumb_func_start ov70_0225EB08
ov70_0225EB08: ; 0x0225EB08
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225EB16
	bl sub_02022974
_0225EB16:
	add r0, r4, #0
	mov r1, #1
	bl sub_0200E7FC
	str r0, [r4, #0x1c]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225EB08

	thumb_func_start ov70_0225EB24
ov70_0225EB24: ; 0x0225EB24
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225EB36
	bl sub_0200EBA0
	mov r0, #0
	str r0, [r4, #0x1c]
_0225EB36:
	pop {r4, pc}
	thumb_func_end ov70_0225EB24

	thumb_func_start ov70_0225EB38
ov70_0225EB38: ; 0x0225EB38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225EB4A
	bl sub_0200EBC8
	mov r0, #0
	str r0, [r4, #0x1c]
_0225EB4A:
	pop {r4, pc}
	thumb_func_end ov70_0225EB38

	thumb_func_start ov70_0225EB4C
ov70_0225EB4C: ; 0x0225EB4C
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _0225EB56
	mov r0, #1
	bx lr
_0225EB56:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225EB4C

	thumb_func_start ov70_0225EB5C
ov70_0225EB5C: ; 0x0225EB5C
	push {r3, lr}
	ldr r0, [r0, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0225EB70
	mov r0, #1
	pop {r3, pc}
_0225EB70:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov70_0225EB5C

	thumb_func_start ov70_0225EB74
ov70_0225EB74: ; 0x0225EB74
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0225EB90
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_0225EB90:
	add r0, r4, #0
	bl ov70_0225EB38
	add r0, r4, #0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	bl sub_0201AD10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225EB74

	thumb_func_start ov70_0225EBA8
ov70_0225EBA8: ; 0x0225EBA8
	push {r4, lr}
	add r4, r0, #0
	bl ov70_0225E9C8
	add r0, r4, #0
	mov r1, #2
	bl sub_0201C2B4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225EBA8

	thumb_func_start ov70_0225EBBC
ov70_0225EBBC: ; 0x0225EBBC
	ldr r3, _0225EBC0 ; =ov70_0225EA14
	bx r3
	; .align 2, 0
_0225EBC0: .word ov70_0225EA14
	thumb_func_end ov70_0225EBBC

	thumb_func_start ov70_0225EBC4
ov70_0225EBC4: ; 0x0225EBC4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0225EBE4
	ldr r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_0225EBE4:
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_02023810
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x14]
	mov r1, #1
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r5, #0x18]
	add r0, r5, #0
	bl sub_0201D738
	str r0, [r5, #0x10]
	mov r0, #3
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #2
	bl sub_0200E69C
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_0225EBC4

	thumb_func_start ov70_0225EC20
ov70_0225EC20: ; 0x0225EC20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r5, r2, #0
	add r7, r0, #0
	add r4, r1, #0
	mov r0, #0x3e
	add r1, r5, #0
	bl sub_02006C24
	add r6, r0, #0
	ldr r0, _0225ED44 ; =0x00001388
	add r1, r6, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x13
	str r5, [sp, #8]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r2, #4
	mov r3, #0
	bl sub_02009A4C
	str r0, [r7, #0x40]
	ldr r0, _0225ED44 ; =0x00001388
	add r1, r6, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4d
	str r5, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xa
	mov r3, #0
	bl sub_02009B04
	str r0, [r7, #0x44]
	ldr r1, _0225ED44 ; =0x00001388
	mov r0, #2
	str r1, [sp]
	str r0, [sp, #4]
	lsr r0, r1, #4
	str r5, [sp, #8]
	ldr r0, [r4, r0]
	add r1, r6, #0
	mov r2, #5
	mov r3, #0
	bl sub_02009BC4
	str r0, [r7, #0x48]
	ldr r0, _0225ED44 ; =0x00001388
	add r1, r6, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4f
	str r5, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #6
	mov r3, #0
	bl sub_02009BC4
	str r0, [r7, #0x4c]
	add r0, r6, #0
	bl sub_02006CA8
	ldr r0, [r7, #0x40]
	bl sub_0200A3DC
	ldr r0, [r7, #0x44]
	bl sub_0200A640
	ldr r1, _0225ED44 ; =0x00001388
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r0, #0x13
	str r2, [sp, #0x10]
	lsl r0, r0, #4
	ldr r3, [r4, r0]
	str r3, [sp, #0x14]
	add r3, r0, #4
	ldr r3, [r4, r3]
	str r3, [sp, #0x18]
	add r3, r0, #0
	add r3, #8
	ldr r3, [r4, r3]
	add r0, #0xc
	str r3, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r3, r1, #0
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x4c
	add r2, r1, #0
	bl sub_020093B4
	ldr r0, [r4, #4]
	mov r6, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0x44]
	mov r0, #3
	lsl r0, r0, #0x12
	str r5, [sp, #0x48]
	ldr r4, _0225ED48 ; =0x0226D580
	str r6, [sp, #0x40]
	str r0, [sp, #0x34]
	add r5, r7, #0
_0225ED0E:
	ldrb r0, [r4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021B90
	str r0, [r5, #0x50]
	add r1, r6, #0
	bl sub_02021D6C
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r5, #0x50]
	mov r1, #0
	bl sub_02021CAC
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #4
	cmp r6, #2
	blt _0225ED0E
	mov r0, #0
	str r0, [r7, #0x3c]
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225ED44: .word 0x00001388
_0225ED48: .word 0x0226D580
	thumb_func_end ov70_0225EC20

	thumb_func_start ov70_0225ED4C
ov70_0225ED4C: ; 0x0225ED4C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5, #0x34]
	cmp r1, #0
	beq _0225ED5C
	bl ov70_0225EDE0
_0225ED5C:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0225ED6C
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225EF14
_0225ED6C:
	mov r7, #0
	add r4, r5, #0
_0225ED70:
	ldr r0, [r4, #0x50]
	bl sub_02021BD4
	mov r0, #0
	str r0, [r4, #0x50]
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #2
	blt _0225ED70
	ldr r0, [r5, #0x40]
	bl sub_0200A4E4
	ldr r0, [r5, #0x44]
	bl sub_0200A6DC
	mov r7, #0x13
	mov r4, #0
	lsl r7, r7, #4
_0225ED94:
	ldr r0, [r6, r7]
	ldr r1, [r5, #0x40]
	bl sub_02009D68
	add r4, r4, #1
	add r5, r5, #4
	add r6, r6, #4
	cmp r4, #4
	blt _0225ED94
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225ED4C

	thumb_func_start ov70_0225EDA8
ov70_0225EDA8: ; 0x0225EDA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _0225EDBC
	bl sub_02022974
_0225EDBC:
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02013A04
	str r0, [r5, #0x34]
	mov r1, #0
	strh r4, [r5, #0x38]
	cmp r4, #0
	bls _0225EDDE
	add r2, r1, #0
_0225EDD0:
	ldr r0, [r5, #0x34]
	add r1, r1, #1
	add r0, r0, r2
	str r6, [r0, #4]
	add r2, #8
	cmp r1, r4
	blo _0225EDD0
_0225EDDE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225EDA8

	thumb_func_start ov70_0225EDE0
ov70_0225EDE0: ; 0x0225EDE0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0225EDF4
	bl sub_02013A3C
	mov r0, #0
	str r0, [r4, #0x34]
	strh r0, [r4, #0x38]
_0225EDF4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225EDE0

	thumb_func_start ov70_0225EDF8
ov70_0225EDF8: ; 0x0225EDF8
	ldr r3, _0225EE00 ; =sub_02013A6C
	ldr r0, [r0, #0x34]
	bx r3
	nop
_0225EE00: .word sub_02013A6C
	thumb_func_end ov70_0225EDF8

	thumb_func_start ov70_0225EE04
ov70_0225EE04: ; 0x0225EE04
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end ov70_0225EE04

	thumb_func_start ov70_0225EE08
ov70_0225EE08: ; 0x0225EE08
	push {r3, r4}
	ldrh r2, [r0, #0x38]
	mov r3, #0
	cmp r2, #0
	ble _0225EE2A
	ldr r4, [r0, #0x34]
_0225EE14:
	ldr r2, [r4, #4]
	cmp r1, r2
	bne _0225EE20
	mov r0, #1
	pop {r3, r4}
	bx lr
_0225EE20:
	ldrh r2, [r0, #0x38]
	add r3, r3, #1
	add r4, #8
	cmp r3, r2
	blt _0225EE14
_0225EE2A:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov70_0225EE08

	thumb_func_start ov70_0225EE30
ov70_0225EE30: ; 0x0225EE30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0225EE46
	bl sub_02022974
_0225EE46:
	ldrh r0, [r4, #0x12]
	lsl r0, r0, #1
	cmp r0, #0x12
	blt _0225EE52
	bl sub_02022974
_0225EE52:
	add r3, r4, #0
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r1, r5, #0
	add r1, #0x20
	str r1, [r5, #0xc]
	ldrh r0, [r4, #0x10]
	add r3, sp, #0x18
	mov r2, #1
	strh r0, [r5, #0x3a]
	ldr r0, _0225EED4 ; =ov70_0225EF58
	str r0, [r5, #4]
	ldrb r0, [r3, #0x1c]
	str r0, [sp]
	add r0, sp, #0x38
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x12]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0xca
	str r0, [sp, #0x10]
	ldrb r3, [r3, #0x18]
	ldr r0, [r6, #0]
	bl sub_0201A7E8
	add r0, r5, #0
	add r0, #0x20
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x20
	mov r1, #1
	mov r2, #0x55
	mov r3, #3
	bl sub_0200DC48
	add r2, sp, #0x18
	ldr r3, [sp, #0x2c]
	ldrh r2, [r2, #0x10]
	lsl r3, r3, #0x18
	add r0, r5, #0
	add r1, r7, #0
	lsr r3, r3, #0x18
	bl sub_0200112C
	str r0, [r5, #0x30]
	add r5, #0x20
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225EED4: .word ov70_0225EF58
	thumb_func_end ov70_0225EE30

	thumb_func_start ov70_0225EED8
ov70_0225EED8: ; 0x0225EED8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _0225EEE8
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0225EEE8:
	bl sub_02001288
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0225EEFC
	add r0, r0, #1
	cmp r4, r0
	bne _0225EF04
_0225EEFC:
	add r0, r5, #0
	bl ov70_0225EF70
	b _0225EF0A
_0225EF04:
	ldr r0, _0225EF10 ; =0x000005DC
	bl sub_02005748
_0225EF0A:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0225EF10: .word 0x000005DC
	thumb_func_end ov70_0225EED8

	thumb_func_start ov70_0225EF14
ov70_0225EF14: ; 0x0225EF14
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0225EF56
	bl sub_02001384
	mov r0, #0
	str r0, [r5, #0x30]
	add r0, r5, #0
	add r0, #0x20
	mov r1, #1
	bl sub_0200DC9C
	add r0, r5, #0
	add r0, #0x20
	bl sub_0201AD10
	add r0, r5, #0
	add r0, #0x20
	bl sub_0201A8FC
	mov r4, #0
	str r4, [r5, #0x3c]
	add r6, r4, #0
_0225EF46:
	ldr r0, [r5, #0x50]
	add r1, r6, #0
	bl sub_02021CAC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0225EF46
_0225EF56:
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0225EF14

	thumb_func_start ov70_0225EF58
ov70_0225EF58: ; 0x0225EF58
	push {r3, lr}
	cmp r2, #0
	bne _0225EF64
	ldr r0, _0225EF68 ; =0x000005DC
	bl sub_02005748
_0225EF64:
	pop {r3, pc}
	nop
_0225EF68: .word 0x000005DC
	thumb_func_end ov70_0225EF58

	thumb_func_start ov70_0225EF6C
ov70_0225EF6C: ; 0x0225EF6C
	str r1, [r0, #0x3c]
	bx lr
	thumb_func_end ov70_0225EF6C

	thumb_func_start ov70_0225EF70
ov70_0225EF70: ; 0x0225EF70
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _0225EF90
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_02021CAC
	add sp, #4
	pop {r3, r4, pc}
_0225EF90:
	ldr r0, [r4, #0x30]
	add r1, sp, #0
	mov r2, #0
	bl sub_020014DC
	add r0, sp, #0
	ldrh r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x50]
	bne _0225EFAC
	mov r1, #0
	bl sub_02021CAC
	b _0225EFB2
_0225EFAC:
	mov r1, #1
	bl sub_02021CAC
_0225EFB2:
	add r0, sp, #0
	ldrh r1, [r0]
	ldrh r0, [r4, #0x3a]
	sub r0, r0, #7
	cmp r1, r0
	ldr r0, [r4, #0x54]
	blt _0225EFCA
	mov r1, #0
	bl sub_02021CAC
	add sp, #4
	pop {r3, r4, pc}
_0225EFCA:
	mov r1, #1
	bl sub_02021CAC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov70_0225EF70

	thumb_func_start ov70_0225EFD4
ov70_0225EFD4: ; 0x0225EFD4
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225EFD4

	thumb_func_start ov70_0225EFD8
ov70_0225EFD8: ; 0x0225EFD8
	ldr r3, _0225EFDC ; =ov70_0225F024
	bx r3
	; .align 2, 0
_0225EFDC: .word ov70_0225F024
	thumb_func_end ov70_0225EFD8

	thumb_func_start ov70_0225EFE0
ov70_0225EFE0: ; 0x0225EFE0
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, sp, #0x10
	ldrb r2, [r0, #0x10]
	str r2, [sp]
	ldrb r2, [r0, #0x14]
	str r2, [sp, #4]
	ldrb r0, [r0, #0x18]
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0xca
	str r0, [sp, #0x10]
	ldr r0, [r1, #0]
	add r1, r4, #0
	bl sub_0201A7E8
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x55
	mov r3, #3
	bl sub_0200DC48
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov70_0225EFE0

	thumb_func_start ov70_0225F024
ov70_0225F024: ; 0x0225F024
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201A7CC
	cmp r0, #1
	bne _0225F044
	add r0, r4, #0
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	bl sub_0201AD10
	add r0, r4, #0
	bl sub_0201A8FC
_0225F044:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225F024

	thumb_func_start ov70_0225F048
ov70_0225F048: ; 0x0225F048
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	str r3, [sp]
	add r5, r2, #0
	mov r1, #0xff
	str r1, [sp, #4]
	ldr r1, _0225F074 ; =0x0001020F
	add r4, r0, #0
	str r1, [sp, #8]
	mov r1, #0
	add r2, r6, #0
	add r3, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0225F074: .word 0x0001020F
	thumb_func_end ov70_0225F048

	thumb_func_start ov70_0225F078
ov70_0225F078: ; 0x0225F078
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	str r3, [sp]
	add r1, sp, #8
	add r4, r2, #0
	ldrh r1, [r1, #0x10]
	add r2, r5, #0
	add r3, r4, #0
	str r1, [sp, #4]
	mov r1, #0xf
	bl sub_0201AE78
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_0225F078

	thumb_func_start ov70_0225F098
ov70_0225F098: ; 0x0225F098
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _0225F0AA
	bl sub_02022974
_0225F0AA:
	mov r0, #2
	add r1, r6, #0
	bl sub_02013A04
	str r0, [r5, #0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x43
	bl ov70_0225F288
	add r1, r0, #0
	ldr r0, [r5, #0]
	mov r2, #0
	bl sub_02013A6C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x42
	bl ov70_0225F288
	add r1, r0, #0
	ldr r0, [r5, #0]
	mov r2, #1
	bl sub_02013A6C
	ldr r3, _0225F0FC ; =0x0226D644
	add r2, r5, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #2
	strh r0, [r5, #0x14]
	ldr r0, [r5, #0]
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
	nop
_0225F0FC: .word 0x0226D644
	thumb_func_end ov70_0225F098

	thumb_func_start ov70_0225F100
ov70_0225F100: ; 0x0225F100
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0225F112
	bl sub_02013A3C
	mov r0, #0
	str r0, [r4, #0]
_0225F112:
	pop {r4, pc}
	thumb_func_end ov70_0225F100

	thumb_func_start ov70_0225F114
ov70_0225F114: ; 0x0225F114
	push {r3, r4, lr}
	sub sp, #0x14
	mov r3, #4
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0x5e
	str r0, [sp, #0x10]
	ldr r0, [r1, #0]
	add r1, r4, #0
	mov r2, #1
	bl sub_0201A7E8
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov70_0225F114

	thumb_func_start ov70_0225F144
ov70_0225F144: ; 0x0225F144
	ldr r3, _0225F148 ; =sub_0201A8FC
	bx r3
	; .align 2, 0
_0225F148: .word sub_0201A8FC
	thumb_func_end ov70_0225F144

	thumb_func_start ov70_0225F14C
ov70_0225F14C: ; 0x0225F14C
	push {r4, lr}
	sub sp, #0x10
	add r2, r1, #0
	mov r1, #0
	str r1, [sp]
	mov r3, #0xff
	str r3, [sp, #4]
	ldr r3, _0225F180 ; =0x0001020F
	add r4, r0, #0
	str r3, [sp, #8]
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x55
	mov r3, #3
	bl sub_0200DC48
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, pc}
	nop
_0225F180: .word 0x0001020F
	thumb_func_end ov70_0225F14C

	thumb_func_start ov70_0225F184
ov70_0225F184: ; 0x0225F184
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_020382F8
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	bl FUN_022316F4
	add r7, r0, #0
	mov r0, #2
	str r0, [sp]
	ldr r1, [r4, #0]
	add r0, r5, #0
	mov r2, #5
	mov r3, #0
	bl ov70_0225F2A8
	add r0, r5, #0
	mov r1, #2
	add r2, r7, #0
	bl ov70_0225F288
	add r1, r0, #0
	add r0, r6, #0
	bl ov70_0225F14C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0225F184

	thumb_func_start ov70_0225F1C0
ov70_0225F1C0: ; 0x0225F1C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl FUN_0223270C
	add r1, r0, #0
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	mov r2, #5
	mov r3, #0
	bl ov70_0225F2A8
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x20
	bl ov70_0225F288
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225F14C
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225F1C0

	thumb_func_start ov70_0225F1F0
ov70_0225F1F0: ; 0x0225F1F0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #2
	mov r2, #0xe
	bl ov70_0225F288
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225F14C
	pop {r4, pc}
	thumb_func_end ov70_0225F1F0

	thumb_func_start ov70_0225F208
ov70_0225F208: ; 0x0225F208
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	str r0, [sp]
	mov r0, #8
	mov r1, #0x40
	add r2, r7, #0
	bl sub_0200B368
	ldr r1, [sp]
	ldr r4, _0225F258 ; =0x0226D5AC
	str r0, [r1, #0]
	mov r6, #0
	add r5, r1, #0
_0225F222:
	ldr r2, [r4, #0]
	mov r0, #1
	mov r1, #0x1a
	add r3, r7, #0
	bl sub_0200B144
	str r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _0225F222
	mov r0, #0x1e
	lsl r0, r0, #4
	add r1, r7, #0
	bl sub_02023790
	ldr r1, [sp]
	str r0, [r1, #0x14]
	mov r0, #0x1e
	lsl r0, r0, #4
	add r1, r7, #0
	bl sub_02023790
	ldr r1, [sp]
	str r0, [r1, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225F258: .word 0x0226D5AC
	thumb_func_end ov70_0225F208

	thumb_func_start ov70_0225F25C
ov70_0225F25C: ; 0x0225F25C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_0200B3F0
	mov r4, #0
	add r5, r6, #0
_0225F26A:
	ldr r0, [r5, #4]
	bl sub_0200B190
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225F26A
	ldr r0, [r6, #0x14]
	bl sub_020237BC
	ldr r0, [r6, #0x18]
	bl sub_020237BC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_0225F25C

	thumb_func_start ov70_0225F288
ov70_0225F288: ; 0x0225F288
	push {r4, lr}
	add r4, r0, #0
	lsl r0, r1, #2
	add r0, r4, r0
	add r1, r2, #0
	ldr r0, [r0, #4]
	ldr r2, [r4, #0x18]
	bl sub_0200B1B8
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_0200C388
	ldr r0, [r4, #0x14]
	pop {r4, pc}
	thumb_func_end ov70_0225F288

	thumb_func_start ov70_0225F2A8
ov70_0225F2A8: ; 0x0225F2A8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, [sp, #0x18]
	add r4, r2, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r1, r3, #0
	ldr r0, [r0, #0]
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0200B60C
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225F2A8

	thumb_func_start ov70_0225F2C8
ov70_0225F2C8: ; 0x0225F2C8
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0225F2D4 ; =sub_0200B498
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0225F2D4: .word sub_0200B498
	thumb_func_end ov70_0225F2C8

	thumb_func_start ov70_0225F2D8
ov70_0225F2D8: ; 0x0225F2D8
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0225F2E4 ; =sub_0200C0B0
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0225F2E4: .word sub_0200C0B0
	thumb_func_end ov70_0225F2D8

	thumb_func_start ov70_0225F2E8
ov70_0225F2E8: ; 0x0225F2E8
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0225F2F4 ; =sub_0200C0E8
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0225F2F4: .word sub_0200C0E8
	thumb_func_end ov70_0225F2E8

	thumb_func_start ov70_0225F2F8
ov70_0225F2F8: ; 0x0225F2F8
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0225F304 ; =sub_0200C120
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0225F304: .word sub_0200C120
	thumb_func_end ov70_0225F2F8

	thumb_func_start ov70_0225F308
ov70_0225F308: ; 0x0225F308
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0225F314 ; =sub_0200BDD0
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0225F314: .word sub_0200BDD0
	thumb_func_end ov70_0225F308

	thumb_func_start ov70_0225F318
ov70_0225F318: ; 0x0225F318
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r1, r3, #0
	ldr r0, [r0, #0]
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0200BE08
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225F318

	thumb_func_start ov70_0225F32C
ov70_0225F32C: ; 0x0225F32C
	ldr r3, _0225F334 ; =sub_0200BE48
	ldr r0, [r0, #0]
	bx r3
	nop
_0225F334: .word sub_0200BE48
	thumb_func_end ov70_0225F32C

	thumb_func_start ov70_0225F338
ov70_0225F338: ; 0x0225F338
	ldr r3, _0225F340 ; =sub_0200C41C
	ldr r0, [r0, #0]
	bx r3
	nop
_0225F340: .word sub_0200C41C
	thumb_func_end ov70_0225F338

	thumb_func_start ov70_0225F344
ov70_0225F344: ; 0x0225F344
	mov r1, #0xf6
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225F344

	thumb_func_start ov70_0225F350
ov70_0225F350: ; 0x0225F350
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r4, [sp, #0x20]
	add r5, r0, #0
	add r0, r3, #0
	add r7, r1, #0
	add r6, r2, #0
	bl sub_02025F30
	str r0, [sp, #4]
	mov r0, #0xba
	add r1, r4, #0
	bl sub_02006C24
	mov r2, #0x53
	lsl r2, r2, #2
	str r0, [r5, r2]
	str r4, [sp]
	ldr r2, [r5, r2]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl ov70_0225F9BC
	mov r2, #0x53
	lsl r2, r2, #2
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #8
	add r1, r6, #0
	add r3, r4, #0
	bl ov70_0225FA84
	mov r2, #0x45
	lsl r2, r2, #2
	add r0, r5, r2
	add r2, #0x38
	ldr r2, [r5, r2]
	add r1, r6, #0
	add r3, r4, #0
	bl ov70_02260744
	mov r1, #0
	strb r1, [r5, #2]
	strb r1, [r5, #1]
	ldrh r0, [r7, #6]
	cmp r0, #0
	bne _0225F3DC
	mov r0, #4
	strb r1, [r5]
	bl sub_0201975C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0225F3DC:
	mov r0, #5
	strb r0, [r5]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225F350

	thumb_func_start ov70_0225F3E4
ov70_0225F3E4: ; 0x0225F3E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r6, r1, #0
	add r4, r2, #0
	bl ov70_022607A8
	add r0, r5, #0
	add r0, #8
	add r1, r6, #0
	add r2, r4, #0
	bl ov70_0225FAA8
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0225FA10
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02006CA8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_0225F3E4

	thumb_func_start ov70_0225F418
ov70_0225F418: ; 0x0225F418
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	str r0, [sp, #0x38]
	add r0, #0x3c
	str r0, [sp, #0x38]
	mov r0, #0xb7
	lsl r0, r0, #2
	ldrb r1, [r4]
	add r7, r3, #0
	ldr r6, [r5, #0x34]
	str r0, [sp, #0x3c]
	cmp r1, #0xa
	bhi _0225F4FA
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F444: ; jump table
	.short _0225F45A - _0225F444 - 2 ; case 0
	.short _0225F468 - _0225F444 - 2 ; case 1
	.short _0225F486 - _0225F444 - 2 ; case 2
	.short _0225F4D4 - _0225F444 - 2 ; case 3
	.short _0225F4F2 - _0225F444 - 2 ; case 4
	.short _0225F506 - _0225F444 - 2 ; case 5
	.short _0225F5E2 - _0225F444 - 2 ; case 6
	.short _0225F600 - _0225F444 - 2 ; case 7
	.short _0225F648 - _0225F444 - 2 ; case 8
	.short _0225F74E - _0225F444 - 2 ; case 9
	.short _0225F780 - _0225F444 - 2 ; case 10
_0225F45A:
	ldrh r0, [r4, #6]
	cmp r0, #1
	bne _0225F4FA
	add r0, r1, #1
	add sp, #0x50
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F468:
	mov r0, #4
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #0
	ldr r3, _0225F790 ; =0x00007FFF
	str r7, [sp, #8]
	add r2, r1, #0
	bl sub_0200F174
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F486:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0225F4FA
	add r0, r6, #0
	bl FUN_0222E3BC
	mov r2, #0xb7
	lsl r2, r2, #2
	str r0, [sp]
	ldr r1, [sp, #0x38]
	add r0, r4, #0
	add r2, r5, r2
	add r3, r7, #0
	bl ov70_0225F8AC
	mov r0, #4
	strb r0, [r4, #1]
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F4D4:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r3, _0225F790 ; =0x00007FFF
	str r7, [sp, #8]
	mov r0, #4
	add r2, r1, #0
	bl sub_0200F174
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F4F2:
	bl sub_0200F2AC
	cmp r0, #1
	beq _0225F4FC
_0225F4FA:
	b _0225F78C
_0225F4FC:
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F506:
	cmp r2, #1
	beq _0225F608
	ldrb r0, [r4, #1]
	cmp r0, #4
	bhi _0225F5D2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F51C: ; jump table
	.short _0225F5D2 - _0225F51C - 2 ; case 0
	.short _0225F526 - _0225F51C - 2 ; case 1
	.short _0225F5C2 - _0225F51C - 2 ; case 2
	.short _0225F542 - _0225F51C - 2 ; case 3
	.short _0225F5D2 - _0225F51C - 2 ; case 4
_0225F526:
	mov r2, #0x45
	lsl r2, r2, #2
	add r0, r4, r2
	add r2, #0x38
	ldr r1, [sp, #0x38]
	ldr r2, [r4, r2]
	bl ov70_022607D4
	cmp r0, #1
	bne _0225F5D2
	add r0, r5, #0
	bl ov70_0225F344
	b _0225F5D2
_0225F542:
	ldr r2, _0225F794 ; =0x00000153
	ldrb r0, [r4, r2]
	cmp r0, #0
	beq _0225F56E
	sub r1, r2, #3
	mov r0, #0xf7
	sub r2, r2, #1
	lsl r0, r0, #2
	ldrh r1, [r4, r1]
	ldrb r2, [r4, r2]
	ldr r0, [r5, r0]
	bl ov70_0226C810
	cmp r0, #0
	bne _0225F56E
	ldr r0, _0225F794 ; =0x00000153
	mov r1, #0
	strb r1, [r4, r0]
	sub r0, #0x3f
	add r0, r4, r0
	bl ov70_02260A68
_0225F56E:
	mov r2, #0x45
	lsl r2, r2, #2
	add r0, r4, r2
	add r2, #0x38
	ldr r1, [sp, #0x38]
	ldr r2, [r4, r2]
	add r3, r7, #0
	bl ov70_022607D4
	cmp r0, #1
	bne _0225F5D2
	add r0, r6, #0
	bl FUN_0222E338
	add r1, r0, #0
	add r0, r6, #0
	bl FUN_0222EBD4
	add r0, r6, #0
	bl FUN_0222EC50
	add r0, r6, #0
	bl FUN_0222E338
	add r1, r0, #0
	add r0, r6, #0
	bl FUN_0222EBA4
	add r1, sp, #0x4c
	add r2, sp, #0x48
	bl FUN_0222EC04
	ldr r0, _0225F794 ; =0x00000153
	mov r1, #1
	strb r1, [r4, r0]
	sub r1, r0, #3
	ldr r2, [sp, #0x4c]
	sub r0, r0, #1
	strh r2, [r4, r1]
	ldr r1, [sp, #0x48]
	strb r1, [r4, r0]
	b _0225F5D2
_0225F5C2:
	ldr r1, [sp, #0x3c]
	add r0, r4, #0
	add r1, #0x3c
	str r1, [sp, #0x3c]
	add r0, #8
	add r1, r5, r1
	bl ov70_0225FACC
_0225F5D2:
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0225F608
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F5E2:
	mov r0, #3
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r2, #0
	str r7, [sp, #8]
	mov r0, #4
	add r3, r2, #0
	bl sub_0200F174
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F600:
	bl sub_0200F2AC
	cmp r0, #1
	beq _0225F60A
_0225F608:
	b _0225F78C
_0225F60A:
	ldrb r0, [r4, #1]
	cmp r0, #4
	bhi _0225F63E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F61C: ; jump table
	.short _0225F63E - _0225F61C - 2 ; case 0
	.short _0225F626 - _0225F61C - 2 ; case 1
	.short _0225F630 - _0225F61C - 2 ; case 2
	.short _0225F626 - _0225F61C - 2 ; case 3
	.short _0225F626 - _0225F61C - 2 ; case 4
_0225F626:
	ldr r1, [sp, #0x38]
	add r0, r4, #0
	bl ov70_0225F920
	b _0225F63E
_0225F630:
	mov r1, #0xc6
	lsl r1, r1, #2
	ldr r2, [sp, #0x38]
	add r0, r4, #0
	add r1, r5, r1
	bl ov70_0225F89C
_0225F63E:
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F648:
	ldrb r0, [r4, #2]
	cmp r0, #4
	bhi _0225F740
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F65A: ; jump table
	.short _0225F740 - _0225F65A - 2 ; case 0
	.short _0225F664 - _0225F65A - 2 ; case 1
	.short _0225F67E - _0225F65A - 2 ; case 2
	.short _0225F710 - _0225F65A - 2 ; case 3
	.short _0225F664 - _0225F65A - 2 ; case 4
_0225F664:
	add r0, r6, #0
	bl FUN_0222E3BC
	mov r2, #0xb7
	lsl r2, r2, #2
	str r0, [sp]
	ldr r1, [sp, #0x38]
	add r0, r4, #0
	add r2, r5, r2
	add r3, r7, #0
	bl ov70_0225F8AC
	b _0225F740
_0225F67E:
	add r0, r6, #0
	bl FUN_0222E3BC
	str r0, [sp, #0x28]
	ldrb r0, [r4, #3]
	str r0, [sp, #0x24]
	add r0, r6, #0
	bl FUN_0222E338
	ldr r1, [sp, #0x24]
	cmp r1, r0
	bne _0225F6A4
	add r0, r6, #0
	bl FUN_0222E3BC
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp, #0x2c]
	b _0225F6B0
_0225F6A4:
	add r0, r6, #0
	bl FUN_0222E374
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x2c]
_0225F6B0:
	ldrb r1, [r4, #3]
	add r0, r6, #0
	bl FUN_0222E924
	str r0, [sp, #0x34]
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _0225F6DC
	ldrb r1, [r4, #3]
	add r0, r6, #0
	bl FUN_0222E944
	str r0, [sp, #0x30]
	ldrb r1, [r4, #3]
	add r0, r6, #0
	bl FUN_0222E954
	cmp r0, #0
	bne _0225F6E0
	mov r1, #0
	str r1, [sp, #0x30]
	b _0225F6E0
_0225F6DC:
	mov r0, #0
	str r0, [sp, #0x30]
_0225F6E0:
	ldr r1, [sp, #0x2c]
	ldr r3, [sp, #0x3c]
	str r1, [sp]
	ldr r1, [sp, #0x20]
	str r7, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x38]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x34]
	add r3, r5, r3
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x30]
	str r1, [sp, #0x14]
	mov r1, #0xc6
	str r0, [sp, #0x18]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [sp, #0x1c]
	add r0, r4, #0
	add r1, r5, r1
	bl ov70_0225F844
	b _0225F740
_0225F710:
	add r0, r6, #0
	bl FUN_0222E338
	add r1, r0, #0
	add r0, r6, #0
	bl FUN_0222EBA4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0225F72C
	bl sub_02022974
	mov r0, #0
_0225F72C:
	add r1, sp, #0x44
	add r2, sp, #0x40
	bl FUN_0222EC04
	ldr r1, [sp, #0x38]
	ldr r3, [sp, #0x40]
	add r0, r4, #0
	add r2, r7, #0
	bl ov70_0225F8F0
_0225F740:
	mov r0, #0
	strb r0, [r4, #2]
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F74E:
	mov r0, #3
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r0, #4
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne _0225F776
	mov r1, #0xc6
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #8
	add r1, r5, r1
	bl ov70_0225FACC
_0225F776:
	ldrb r0, [r4]
	add sp, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F780:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0225F78C
	mov r0, #5
	strb r0, [r4]
_0225F78C:
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225F790: .word 0x00007FFF
_0225F794: .word 0x00000153
	thumb_func_end ov70_0225F418

	thumb_func_start ov70_0225F798
ov70_0225F798: ; 0x0225F798
	ldrb r0, [r0]
	bx lr
	thumb_func_end ov70_0225F798

	thumb_func_start ov70_0225F79C
ov70_0225F79C: ; 0x0225F79C
	mov r3, #2
	strb r3, [r0, #2]
	strb r1, [r0, #3]
	strh r2, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225F79C

	thumb_func_start ov70_0225F7A8
ov70_0225F7A8: ; 0x0225F7A8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r7, r3, #0
	cmp r4, #0x1b
	blo _0225F7BA
	bl sub_02022974
_0225F7BA:
	ldrb r0, [r5, #1]
	cmp r0, #2
	beq _0225F7C4
	bl sub_02022974
_0225F7C4:
	ldrb r0, [r5, #1]
	cmp r0, #2
	bne _0225F7DE
	mov r2, #0x53
	str r4, [sp]
	lsl r2, r2, #2
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #8
	add r1, r6, #0
	add r3, r7, #0
	bl ov70_0225FEC4
_0225F7DE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225F7A8

	thumb_func_start ov70_0225F7E0
ov70_0225F7E0: ; 0x0225F7E0
	ldrb r1, [r0, #1]
	cmp r1, #1
	beq _0225F7EA
	mov r1, #1
	strb r1, [r0, #2]
_0225F7EA:
	bx lr
	thumb_func_end ov70_0225F7E0

	thumb_func_start ov70_0225F7EC
ov70_0225F7EC: ; 0x0225F7EC
	ldrb r1, [r0, #1]
	cmp r1, #3
	beq _0225F7F6
	mov r1, #3
	strb r1, [r0, #2]
_0225F7F6:
	bx lr
	thumb_func_end ov70_0225F7EC

	thumb_func_start ov70_0225F7F8
ov70_0225F7F8: ; 0x0225F7F8
	ldrb r0, [r0, #3]
	bx lr
	thumb_func_end ov70_0225F7F8

	thumb_func_start ov70_0225F7FC
ov70_0225F7FC: ; 0x0225F7FC
	ldrb r1, [r0, #2]
	cmp r1, #2
	bne _0225F806
	mov r0, #1
	bx lr
_0225F806:
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _0225F810
	mov r0, #1
	bx lr
_0225F810:
	mov r0, #0
	bx lr
	thumb_func_end ov70_0225F7FC

	thumb_func_start ov70_0225F814
ov70_0225F814: ; 0x0225F814
	ldrb r1, [r0, #2]
	cmp r1, #0
	bne _0225F824
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _0225F824
	mov r0, #1
	bx lr
_0225F824:
	mov r0, #0
	bx lr
	thumb_func_end ov70_0225F814

	thumb_func_start ov70_0225F828
ov70_0225F828: ; 0x0225F828
	ldr r3, _0225F830 ; =ov70_0225FEEC
	add r0, #8
	bx r3
	nop
_0225F830: .word ov70_0225FEEC
	thumb_func_end ov70_0225F828

	thumb_func_start ov70_0225F834
ov70_0225F834: ; 0x0225F834
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0225F83E
	mov r0, #1
	bx lr
_0225F83E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225F834

	thumb_func_start ov70_0225F844
ov70_0225F844: ; 0x0225F844
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r3, #0
	ldrb r3, [r5, #1]
	add r6, r1, #0
	add r7, r2, #0
	cmp r3, #2
	bne _0225F85A
	bl ov70_0225F89C
_0225F85A:
	ldr r0, [sp, #0x40]
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	add r1, r6, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x48]
	add r2, #8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x4c]
	add r3, r7, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x24]
	add r0, r5, #0
	bl ov70_0225FAD0
	mov r0, #2
	strb r0, [r5, #1]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0225F844

	thumb_func_start ov70_0225F89C
ov70_0225F89C: ; 0x0225F89C
	push {r4, lr}
	add r4, r0, #0
	add r0, #8
	bl ov70_0225FE80
	mov r0, #0
	strb r0, [r4, #1]
	pop {r4, pc}
	thumb_func_end ov70_0225F89C

	thumb_func_start ov70_0225F8AC
ov70_0225F8AC: ; 0x0225F8AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #1]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r0, #1
	beq _0225F8C8
	add r0, #0xfd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0225F8D0
_0225F8C8:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0225F920
_0225F8D0:
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r0, #0x38
	str r1, [sp]
	ldr r3, [sp, #0x20]
	add r0, r5, r0
	add r1, r4, #0
	add r2, r7, #0
	str r6, [sp, #4]
	bl ov70_02260870
	mov r0, #1
	strb r0, [r5, #1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225F8AC

	thumb_func_start ov70_0225F8F0
ov70_0225F8F0: ; 0x0225F8F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	ldrb r2, [r5, #1]
	add r6, r1, #0
	add r7, r3, #0
	cmp r2, #3
	bne _0225F904
	bl ov70_0225F920
_0225F904:
	mov r3, #0x45
	lsl r3, r3, #2
	add r0, r5, r3
	str r4, [sp]
	add r3, #0x38
	ldr r3, [r5, r3]
	add r1, r6, #0
	add r2, r7, #0
	bl ov70_02260930
	mov r0, #3
	strb r0, [r5, #1]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0225F8F0

	thumb_func_start ov70_0225F920
ov70_0225F920: ; 0x0225F920
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_022609A8
	mov r0, #0
	strb r0, [r4, #1]
	pop {r4, pc}
	thumb_func_end ov70_0225F920

	thumb_func_start ov70_0225F934
ov70_0225F934: ; 0x0225F934
	ldr r2, _0225F93C ; =0x0000011A
	strh r1, [r0, r2]
	bx lr
	nop
_0225F93C: .word 0x0000011A
	thumb_func_end ov70_0225F934

	thumb_func_start ov70_0225F940
ov70_0225F940: ; 0x0225F940
	add r1, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	strh r2, [r1, r0]
	add r0, r0, #2
	strh r3, [r1, r0]
	ldr r3, _0225F954 ; =sub_0200DA3C
	ldr r0, _0225F958 ; =ov70_0225F95C
	mov r2, #0
	bx r3
	; .align 2, 0
_0225F954: .word sub_0200DA3C
_0225F958: .word ov70_0225F95C
	thumb_func_end ov70_0225F940

	thumb_func_start ov70_0225F95C
ov70_0225F95C: ; 0x0225F95C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	mov r3, #0
	ldr r1, _0225F9B8 ; =0x00000156
	str r3, [sp]
	add r5, r0, #0
	ldrh r0, [r4, r1]
	mov r2, #4
	str r0, [sp, #4]
	add r0, r1, #0
	sub r1, r1, #2
	sub r0, #0xa
	ldrh r1, [r4, r1]
	ldr r0, [r4, r0]
	bl sub_02007130
	mov r1, #0xa0
	add r2, r1, #0
	add r2, #0xb6
	ldrh r2, [r4, r2]
	mov r0, #4
	bl sub_02002E7C
	bl sub_0207C944
	add r6, r0, #0
	bl sub_0207C920
	add r1, r0, #0
	mov r0, #0x60
	str r0, [sp]
	add r0, #0xf6
	ldrh r0, [r4, r0]
	mov r3, #0x16
	mov r2, #4
	str r0, [sp, #4]
	add r0, r6, #0
	lsl r3, r3, #4
	bl sub_02006E84
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0225F9B8: .word 0x00000156
	thumb_func_end ov70_0225F95C

	thumb_func_start ov70_0225F9BC
ov70_0225F9BC: ; 0x0225F9BC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r5, r2, #0
	ldr r4, [sp, #0x20]
	cmp r3, #0
	bne _0225F9DC
	mov r3, #0
	str r3, [sp]
	add r0, r5, #0
	mov r1, #0x56
	mov r2, #4
	str r4, [sp, #4]
	bl sub_02007130
	b _0225F9EC
_0225F9DC:
	mov r3, #0
	str r3, [sp]
	add r0, r5, #0
	mov r1, #0x57
	mov r2, #4
	str r4, [sp, #4]
	bl sub_02007130
_0225F9EC:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r6, #0]
	add r0, r5, #0
	mov r1, #0x36
	mov r3, #4
	bl sub_020070E8
	mov r0, #4
	mov r1, #0xa0
	add r2, r4, #0
	bl sub_02002E7C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0225F9BC

	thumb_func_start ov70_0225FA10
ov70_0225FA10: ; 0x0225FA10
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225FA10

	thumb_func_start ov70_0225FA14
ov70_0225FA14: ; 0x0225FA14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x2c]
	add r6, r3, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0
	add r3, sp, #0xc
	ldr r4, [sp, #0x28]
	bl sub_020071D0
	ldr r2, [sp, #0xc]
	add r7, r0, #0
	ldr r0, [r2, #8]
	add r2, #0xc
	lsr r1, r0, #1
	mov r0, #0
	cmp r1, #0
	ble _0225FA4C
_0225FA3E:
	ldrh r3, [r2]
	add r0, r0, #1
	add r3, r3, r4
	strh r3, [r2]
	add r2, r2, #2
	cmp r0, r1
	blt _0225FA3E
_0225FA4C:
	ldr r2, [sp, #0xc]
	mov r3, #0
	str r3, [sp]
	ldrh r0, [r2]
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	bl sub_020198C0
	lsl r1, r6, #0x18
	ldr r0, [r5, #0]
	lsr r1, r1, #0x18
	bl sub_0201C3C0
	add r0, r7, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0225FA14

	thumb_func_start ov70_0225FA84
ov70_0225FA84: ; 0x0225FA84
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0225FAA4 ; =0x0226D68C
	add r7, r1, #0
	mov r6, #0
	add r5, r0, #4
_0225FA8E:
	ldr r0, [r7, #0]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201A8D4
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #5
	blt _0225FA8E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225FAA4: .word 0x0226D68C
	thumb_func_end ov70_0225FA84

	thumb_func_start ov70_0225FAA8
ov70_0225FAA8: ; 0x0225FAA8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r3, [r4, #0x54]
	cmp r3, #0
	beq _0225FAB6
	bl ov70_0225FE80
_0225FAB6:
	mov r5, #0
	add r4, r4, #4
_0225FABA:
	add r0, r4, #0
	bl sub_0201A8FC
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #5
	blt _0225FABA
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_0225FAA8

	thumb_func_start ov70_0225FACC
ov70_0225FACC: ; 0x0225FACC
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0225FACC

	thumb_func_start ov70_0225FAD0
ov70_0225FAD0: ; 0x0225FAD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	ldr r4, [sp, #0x28]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	add r5, r2, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x38]
	add r6, r3, #0
	str r0, [sp, #0x38]
	add r0, r4, #0
	bl ov70_0225F338
	ldr r0, [sp, #0x38]
	bl FUN_0222E7C8
	cmp r0, #0
	bne _0225FB1C
	ldr r0, [sp, #0x40]
	ldr r7, _0225FD98 ; =0x00070800
	cmp r0, #0
	bne _0225FB0E
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	mov r2, #0x56
	bl ov70_0225F940
	b _0225FB40
_0225FB0E:
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	mov r2, #0x58
	bl ov70_0225F940
	b _0225FB40
_0225FB1C:
	ldr r0, [sp, #0x40]
	mov r7, #0xc1
	lsl r7, r7, #0xa
	cmp r0, #0
	bne _0225FB34
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	mov r2, #0x57
	bl ov70_0225F940
	b _0225FB40
_0225FB34:
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	mov r2, #0x58
	bl ov70_0225F940
_0225FB40:
	ldr r0, [r6, #0]
	mov r1, #4
	mov r2, #0
	bl sub_02019F04
	ldr r0, [r6, #0]
	mov r1, #5
	mov r2, #0
	bl sub_02019F04
	ldr r0, [r6, #0]
	mov r1, #6
	mov r2, #0
	bl sub_02019F04
	add r0, r5, #0
	bl ov70_022602C0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x5c
	mov r3, #4
	bl ov70_0225FA14
	ldr r0, [sp, #0x34]
	bl sub_02025E6C
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	bl FUN_0222E640
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0x2c
	str r7, [sp, #8]
	bl ov70_022602DC
	ldr r0, [sp, #0x10]
	bl sub_02025F24
	add r1, r0, #0
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	mov r2, #5
	mov r3, #0
	bl ov70_0225F2A8
	mov r0, #0x7a
	str r0, [sp]
	mov r2, #0
	ldr r0, _0225FD9C ; =0x00010200
	str r2, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0x31
	bl ov70_02260314
	mov r2, #0
	str r2, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0x2d
	str r7, [sp, #8]
	bl ov70_022602DC
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02260370
	mov r0, #0x7a
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0225FD9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0x32
	bl ov70_02260314
	add r0, r5, #0
	mov r1, #0
	bl ov70_02260360
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	mov r3, #0x2e
	str r7, [sp, #8]
	bl ov70_022602DC
	ldr r0, [sp, #0x38]
	bl FUN_0222E880
	cmp r0, #0
	bne _0225FC3E
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0225FD9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x37
	bl ov70_022602DC
	b _0225FC60
_0225FC3E:
	ldr r2, [sp, #0x38]
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02260380
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0225FD9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x33
	bl ov70_022602DC
_0225FC60:
	add r0, r5, #0
	mov r1, #1
	bl ov70_02260360
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _0225FD06
	mov r0, #1
	str r0, [r5, #0]
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02260370
	mov r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #4
	mov r3, #0x38
	str r7, [sp, #8]
	bl ov70_022602DC
	ldr r2, [sp, #0x48]
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_022603B0
	mov r0, #6
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	ldr r0, _0225FD9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0x3b
	bl ov70_022602DC
	mov r0, #0x5a
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	ldr r0, _0225FD9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0x3c
	bl ov70_022602DC
	mov r0, #6
	str r0, [sp]
	mov r0, #0x2c
	str r0, [sp, #4]
	ldr r0, _0225FD9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0x3d
	bl ov70_022602DC
	mov r0, #0x5a
	str r0, [sp]
	mov r0, #0x2c
	str r0, [sp, #4]
	ldr r0, _0225FD9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0x3e
	bl ov70_022602DC
	add r0, r5, #0
	mov r1, #4
	bl ov70_02260360
	b _0225FD3A
_0225FD06:
	mov r1, #0
	str r1, [r5, #0]
	mov r0, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #4
	mov r3, #0x30
	str r7, [sp, #8]
	bl ov70_022602DC
	add r0, r5, #0
	mov r1, #4
	bl ov70_02260360
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x30]
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x34]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl ov70_022603CC
_0225FD3A:
	ldr r0, [sp, #0x38]
	bl FUN_0222E8C4
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	ldr r2, [sp, #0x30]
	str r0, [sp, #4]
	ldr r3, [sp, #0x34]
	add r0, r5, #0
	add r1, r6, #0
	bl ov70_0225FEF0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne _0225FD6A
	ldr r0, [sp, #0x38]
	bl FUN_0222E7C8
	cmp r0, #1
	bne _0225FD66
	mov r0, #0x61
	b _0225FD70
_0225FD66:
	mov r0, #0
	b _0225FD70
_0225FD6A:
	ldr r0, [sp, #0x38]
	bl FUN_0222E858
_0225FD70:
	ldr r2, [sp, #0x30]
	str r0, [sp]
	ldr r3, [sp, #0x34]
	add r0, r5, #0
	add r1, r6, #0
	bl ov70_02260080
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x34]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0225FDA0
	ldr r0, [sp, #0x10]
	bl sub_020181C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225FD98: .word 0x00070800
_0225FD9C: .word 0x00010200
	thumb_func_end ov70_0225FAD0

	thumb_func_start ov70_0225FDA0
ov70_0225FDA0: ; 0x0225FDA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r0, [sp, #0x48]
	ldr r6, _0225FE78 ; =0x0226D624
	str r0, [sp, #0x48]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, _0225FE7C ; =0x0226D590
	add r5, r2, #0
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	mov r4, #2
_0225FDB8:
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x24]
	bl FUN_0222E8E8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	beq _0225FE60
	bl FUN_022316E8
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	bl sub_0207C944
	str r0, [sp, #0x28]
	add r0, r7, #0
	bl sub_0207C908
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	mov r2, #1
	bl sub_02006FE8
	add r1, sp, #0x30
	str r0, [sp, #0x2c]
	bl sub_020A7118
	ldr r0, [sp, #0x20]
	mov r1, #6
	ldrh r0, [r0]
	add r3, r1, #0
	add r3, #0xfa
	str r0, [sp]
	ldr r2, [sp, #0x30]
	ldr r0, [r5, #0]
	ldr r2, [r2, #0x14]
	bl sub_0201958C
	ldr r0, [sp, #0x2c]
	bl sub_020181C4
	mov r0, #4
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	lsl r3, r4, #0x18
	str r6, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0x18]
	ldr r0, [r5, #0]
	mov r1, #6
	mov r2, #0x1a
	lsr r3, r3, #0x18
	bl sub_020198E8
	add r0, r7, #0
	bl sub_0207C92C
	mov r1, #4
	add r0, #0xb
	str r1, [sp]
	mov r1, #2
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsl r3, r4, #0x18
	ldr r0, [r5, #0]
	mov r1, #6
	mov r2, #0x1a
	lsr r3, r3, #0x18
	bl sub_02019E2C
	ldr r0, [r5, #0]
	mov r1, #6
	bl sub_0201C3C0
_0225FE60:
	ldr r0, [sp, #0x20]
	add r6, #0x10
	add r0, r0, #2
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r4, r4, #2
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #2
	blt _0225FDB8
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225FE78: .word 0x0226D624
_0225FE7C: .word 0x0226D590
	thumb_func_end ov70_0225FDA0

	thumb_func_start ov70_0225FE80
ov70_0225FE80: ; 0x0225FE80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0]
	add r4, r2, #0
	cmp r1, #1
	bne _0225FE92
	mov r0, #0
	str r0, [r5, #0]
	b _0225FE98
_0225FE92:
	add r1, r4, #0
	bl ov70_0226068C
_0225FE98:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02260048
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02260228
	ldr r0, [r4, #0]
	mov r1, #4
	bl sub_02019EBC
	ldr r0, [r4, #0]
	mov r1, #5
	bl sub_02019EBC
	ldr r0, [r4, #0]
	mov r1, #6
	bl sub_02019EBC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_0225FE80

	thumb_func_start ov70_0225FEC4
ov70_0225FEC4: ; 0x0225FEC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov70_02260048
	ldr r0, [sp, #0x20]
	add r1, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov70_0225FEF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225FEC4

	thumb_func_start ov70_0225FEEC
ov70_0225FEEC: ; 0x0225FEEC
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov70_0225FEEC

	thumb_func_start ov70_0225FEF0
ov70_0225FEF0: ; 0x0225FEF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r5, r0, #0
	ldr r0, [sp, #0x90]
	add r4, r1, #0
	add r6, r3, #0
	str r2, [sp, #0x2c]
	cmp r0, #0x1b
	blo _0225FF06
	bl sub_02022974
_0225FF06:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _0225FF10
	bl sub_02022974
_0225FF10:
	ldr r0, [sp, #0x90]
	mov r1, #3
	bl sub_020E2178
	add r7, r0, #0
	ldr r0, [sp, #0x90]
	mov r1, #3
	bl sub_020E2178
	str r1, [sp, #0x30]
	lsl r0, r7, #1
	str r0, [sp, #0x34]
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x34]
	str r6, [sp, #8]
	add r1, #0xcc
	ldr r0, [r4, r1]
	add r2, r7, r2
	ldr r1, [sp, #0x2c]
	add r2, #0x3d
	mov r3, #0
	bl sub_02009A4C
	str r0, [r5, #0x58]
	bl sub_0200A3DC
	cmp r0, #0
	bne _0225FF52
	bl sub_02022974
_0225FF52:
	ldr r0, [r5, #0x58]
	bl sub_02009D4C
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	add r1, #0xd0
	ldr r0, [r4, r1]
	ldr r1, [sp, #0x2c]
	mov r2, #0x59
	mov r3, #0
	bl sub_02009B04
	str r0, [r5, #0x5c]
	bl sub_0200A640
	cmp r0, #0
	bne _0225FF82
	bl sub_02022974
_0225FF82:
	ldr r0, [r5, #0x5c]
	bl sub_02009D4C
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x34]
	str r6, [sp, #8]
	add r1, #0xd4
	ldr r0, [r4, r1]
	add r2, r7, r2
	ldr r1, [sp, #0x2c]
	add r2, #0x3c
	mov r3, #0
	bl sub_02009BC4
	str r0, [r5, #0x60]
	mov r1, #0x64
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r2, [sp, #0x34]
	str r6, [sp, #8]
	add r1, #0xd8
	ldr r0, [r4, r1]
	add r2, r7, r2
	ldr r1, [sp, #0x2c]
	add r2, #0x3b
	mov r3, #0
	bl sub_02009BC4
	str r0, [r5, #0x64]
	mov r0, #0
	add r2, sp, #0x38
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0x64
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x65
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	add r2, r1, #0
	str r0, [sp, #0x10]
	add r2, #0xcc
	ldr r2, [r4, r2]
	add r3, r1, #0
	str r2, [sp, #0x14]
	add r2, r1, #0
	add r2, #0xd0
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r1, #0
	add r2, #0xd4
	ldr r2, [r4, r2]
	str r2, [sp, #0x1c]
	add r2, r1, #0
	add r2, #0xd8
	ldr r2, [r4, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x58
	add r2, r1, #0
	bl sub_020093B4
	ldr r0, [r4, #4]
	str r0, [sp, #0x38]
	add r0, sp, #0x58
	str r0, [sp, #0x3c]
	mov r0, #0x10
	str r0, [sp, #0x4c]
	mov r0, #2
	str r0, [sp, #0x50]
	mov r0, #0xd
	lsl r0, r0, #0x10
	str r0, [sp, #0x40]
	mov r0, #0x66
	lsl r0, r0, #0xe
	str r0, [sp, #0x44]
	add r0, sp, #0x38
	str r6, [sp, #0x54]
	bl sub_02021B90
	ldr r1, [sp, #0x30]
	str r0, [r5, #0x54]
	bl sub_02021D6C
	ldr r0, [r5, #0x54]
	ldr r1, [sp, #0x94]
	bl sub_02021CAC
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225FEF0

	thumb_func_start ov70_02260048
ov70_02260048: ; 0x02260048
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	add r4, r1, #0
	bl sub_02021BD4
	mov r0, #0
	str r0, [r5, #0x54]
	ldr r0, [r5, #0x58]
	bl sub_0200A4E4
	ldr r0, [r5, #0x5c]
	bl sub_0200A6DC
	mov r7, #0x13
	mov r6, #0
	lsl r7, r7, #4
_0226006A:
	ldr r0, [r4, r7]
	ldr r1, [r5, #0x58]
	bl sub_02009D68
	add r6, r6, #1
	add r5, r5, #4
	add r4, r4, #4
	cmp r6, #4
	blt _0226006A
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02260048

	thumb_func_start ov70_02260080
ov70_02260080: ; 0x02260080
	push {r4, r5, r6, r7, lr}
	sub sp, #0x94
	add r6, r0, #0
	ldr r0, [r6, #0x68]
	add r5, r1, #0
	str r3, [sp, #0x2c]
	ldr r4, [sp, #0xa8]
	cmp r0, #0
	beq _02260096
	bl sub_02022974
_02260096:
	ldr r1, _02260224 ; =0x0226D724
	mov r0, #0
_0226009A:
	ldrh r2, [r1]
	cmp r4, r2
	bne _022600AA
	ldrh r2, [r1, #2]
	str r2, [sp, #0x34]
	ldrh r2, [r1, #4]
	str r2, [sp, #0x30]
	ldrh r7, [r1, #6]
_022600AA:
	add r0, r0, #1
	add r1, #8
	cmp r0, #0x12
	blo _0226009A
	ldr r0, [sp, #0x34]
	mov r1, #2
	add r2, sp, #0x7c
	bl sub_02076AAC
	mov r1, #0x65
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, #0xcb
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x80]
	mov r3, #0
	bl sub_0200985C
	str r0, [r6, #0x6c]
	bl sub_0200A3DC
	cmp r0, #0
	bne _022600E4
	bl sub_02022974
_022600E4:
	mov r1, #0x65
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	add r1, #0xcf
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x84]
	mov r3, #0
	bl sub_020098B8
	str r0, [r6, #0x70]
	bl sub_02009E34
	bl ov70_02260268
	ldr r0, [r6, #0x70]
	bl sub_0200A640
	cmp r0, #0
	bne _0226011A
	bl sub_02022974
_0226011A:
	ldr r0, [r6, #0x70]
	bl sub_02009D4C
	mov r1, #0x65
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, #0xd3
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x88]
	mov r3, #0
	bl sub_02009918
	str r0, [r6, #0x74]
	mov r1, #0x65
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, #0xd7
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x8c]
	mov r3, #0
	bl sub_02009918
	str r0, [r6, #0x78]
	mov r0, #0
	add r2, sp, #0x38
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0x65
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x66
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	mov r2, #3
	str r2, [sp, #0x10]
	add r2, r1, #0
	add r2, #0xcb
	ldr r2, [r5, r2]
	add r3, r1, #0
	str r2, [sp, #0x14]
	add r2, r1, #0
	add r2, #0xcf
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r1, #0
	add r2, #0xd3
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	add r2, r1, #0
	add r2, #0xd7
	ldr r2, [r5, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x58
	add r2, r1, #0
	bl sub_020093B4
	ldr r0, [r5, #4]
	str r0, [sp, #0x38]
	add r0, sp, #0x58
	str r0, [sp, #0x3c]
	mov r0, #0x20
	str r0, [sp, #0x4c]
	mov r0, #2
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _022601D4
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022601E2
_022601D4:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022601E2:
	bl sub_020E1740
	str r0, [sp, #0x40]
	cmp r7, #0
	beq _022601FE
	lsl r0, r7, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226020C
_022601FE:
	lsl r0, r7, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226020C:
	bl sub_020E1740
	mov r1, #1
	lsl r1, r1, #0x14
	add r0, r0, r1
	str r0, [sp, #0x44]
	add r0, sp, #0x38
	bl sub_02021B90
	str r0, [r6, #0x68]
	add sp, #0x94
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02260224: .word 0x0226D724
	thumb_func_end ov70_02260080

	thumb_func_start ov70_02260228
ov70_02260228: ; 0x02260228
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x68]
	add r4, r1, #0
	bl sub_02021F98
	bl sub_0201ED1C
	ldr r0, [r5, #0x68]
	bl sub_02021BD4
	mov r0, #0
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x6c]
	bl sub_0200A4E4
	ldr r0, [r5, #0x70]
	bl sub_0200A6DC
	mov r7, #0x13
	mov r6, #0
	lsl r7, r7, #4
_02260254:
	ldr r0, [r4, r7]
	ldr r1, [r5, #0x6c]
	bl sub_02009D68
	add r6, r6, #1
	add r5, r5, #4
	add r4, r4, #4
	cmp r6, #4
	blt _02260254
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02260228

	thumb_func_start ov70_02260268
ov70_02260268: ; 0x02260268
	push {r4, r5, r6, r7}
	ldr r1, [r0, #8]
	ldr r4, [r0, #0xc]
	lsr r3, r1, #1
	mov r2, #0
	cmp r3, #0
	ble _022602BC
	mov r5, #0xc8
_02260278:
	ldrh r6, [r4]
	mov r0, #0x1f
	add r2, r2, #1
	add r1, r6, #0
	asr r7, r6, #5
	and r1, r0
	and r0, r7
	asr r7, r6, #0xa
	mov r6, #0x1f
	and r6, r7
	mov r7, #0x1d
	mul r7, r6
	mov r6, #0x4c
	mul r6, r1
	mov r1, #0x97
	mul r1, r0
	add r0, r6, r1
	add r0, r7, r0
	asr r6, r0, #8
	lsl r0, r6, #8
	add r7, r6, #0
	asr r1, r0, #8
	lsl r0, r6, #7
	mul r7, r5
	asr r0, r0, #8
	asr r6, r7, #8
	lsl r0, r0, #0xa
	lsl r6, r6, #5
	orr r0, r6
	orr r0, r1
	strh r0, [r4]
	add r4, r4, #2
	cmp r2, r3
	blt _02260278
_022602BC:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov70_02260268

	thumb_func_start ov70_022602C0
ov70_022602C0: ; 0x022602C0
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #4
	add r6, r4, #0
_022602C8:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201ADA4
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #5
	blt _022602C8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_022602C0

	thumb_func_start ov70_022602DC
ov70_022602DC: ; 0x022602DC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	mov r1, #1
	add r2, r3, #0
	bl ov70_0225F288
	add r3, sp, #0x10
	add r2, r0, #0
	ldrb r0, [r3, #0x14]
	mov r1, #0
	add r5, r5, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	lsl r0, r4, #4
	ldrb r3, [r3, #0x10]
	add r0, r5, r0
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_022602DC

	thumb_func_start ov70_02260314
ov70_02260314: ; 0x02260314
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	mov r1, #1
	add r2, r3, #0
	bl ov70_0225F288
	add r6, r0, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r1, sp, #0x10
	ldrb r1, [r1, #0x10]
	sub r3, r1, r0
	bpl _0226033C
	mov r3, #0
_0226033C:
	add r0, sp, #0x10
	ldrb r0, [r0, #0x14]
	add r2, r5, #4
	mov r1, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	lsl r0, r4, #4
	add r0, r2, r0
	add r2, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_02260314

	thumb_func_start ov70_02260360
ov70_02260360: ; 0x02260360
	ldr r3, _0226036C ; =sub_0201A9A4
	add r2, r0, #4
	lsl r0, r1, #4
	add r0, r2, r0
	bx r3
	nop
_0226036C: .word sub_0201A9A4
	thumb_func_end ov70_02260360

	thumb_func_start ov70_02260370
ov70_02260370: ; 0x02260370
	ldr r3, _0226037C ; =ov70_0225F2C8
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0
	bx r3
	nop
_0226037C: .word ov70_0225F2C8
	thumb_func_end ov70_02260370

	thumb_func_start ov70_02260380
ov70_02260380: ; 0x02260380
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl FUN_0222E880
	add r4, r0, #0
	add r0, r6, #0
	bl FUN_0222E8A4
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_0225F308
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #1
	bl ov70_0225F318
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_02260380

	thumb_func_start ov70_022603B0
ov70_022603B0: ; 0x022603B0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r2, #0
	mov r4, #0
_022603B8:
	ldrh r2, [r5]
	add r0, r6, #0
	add r1, r4, #0
	bl ov70_0225F32C
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _022603B8
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_022603B0

	thumb_func_start ov70_022603CC
ov70_022603CC: ; 0x022603CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x98
	add r7, r0, #0
	ldr r0, [sp, #0xb0]
	add r5, r1, #0
	str r0, [sp, #0xb0]
	mov r0, #0xc0
	add r1, r3, #0
	str r2, [sp, #0x2c]
	str r3, [sp, #0x30]
	bl sub_02006C24
	str r0, [sp, #0x50]
	ldr r0, [sp, #0xb4]
	bl FUN_0222E798
	str r0, [sp, #0x44]
	ldr r0, [sp, #0xb4]
	bl FUN_0222E7C8
	str r0, [sp, #0x4c]
	ldr r0, _0226067C ; =0x0226D60C
	mov r6, #0
	str r0, [sp, #0x40]
	ldr r0, _02260680 ; =0x0226D59C
	add r4, r7, #0
	str r0, [sp, #0x3c]
	ldr r0, _02260684 ; =0x0226D594
	str r0, [sp, #0x38]
_02260406:
	cmp r6, #2
	bne _02260426
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	bne _02260446
	add r1, r4, #0
	add r1, #0xac
	mov r0, #0
	str r0, [r1, #0]
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1, #0]
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1, #0]
	b _022604EC
_02260426:
	cmp r6, #3
	bne _02260446
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _02260446
	add r1, r4, #0
	add r1, #0xac
	mov r0, #0
	str r0, [r1, #0]
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1, #0]
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1, #0]
	b _022604EC
_02260446:
	ldr r0, [sp, #0x40]
	ldrh r0, [r0]
	cmp r0, #0xc0
	bne _02260454
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x34]
	b _02260458
_02260454:
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x34]
_02260458:
	add r0, r6, #0
	add r0, #0x96
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x40]
	ldrh r0, [r0, #4]
	ldr r1, [sp, #0x34]
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldrh r2, [r2, #2]
	ldr r0, [r5, r0]
	bl sub_02009B04
	add r1, r4, #0
	add r1, #0xac
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0200A640
	cmp r0, #0
	bne _02260496
	bl sub_02022974
_02260496:
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_02009D4C
	add r0, r6, #0
	add r0, #0x96
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x3c]
	str r0, [sp, #8]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x34]
	mov r3, #0
	bl sub_02009BC4
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1, #0]
	add r0, r6, #0
	add r0, #0x96
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x38]
	str r0, [sp, #8]
	mov r0, #0x4f
	lsl r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x34]
	mov r3, #0
	bl sub_02009BC4
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1, #0]
_022604EC:
	ldr r0, [sp, #0x40]
	add r6, r6, #1
	add r0, r0, #6
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	add r4, r4, #4
	add r0, r0, #2
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	add r0, r0, #2
	str r0, [sp, #0x38]
	cmp r6, #4
	bge _02260508
	b _02260406
_02260508:
	ldr r0, _02260688 ; =0x0226D7B4
	mov r6, #0
	str r0, [sp, #0x48]
_0226050E:
	ldr r0, [sp, #0xb0]
	add r1, r6, #0
	bl FUN_0222E728
	add r4, r0, #0
	ldr r0, [sp, #0xb0]
	add r1, r6, #0
	bl FUN_0222E760
	add r1, r0, #0
	cmp r4, #0x18
	bne _02260532
	add r1, r7, #0
	add r1, #0xbc
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r7, #0x7c]
	b _02260660
_02260532:
	ldr r2, [sp, #0x44]
	ldr r3, [sp, #0x4c]
	add r0, r4, #0
	bl ov70_02260728
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	bne _02260548
	ldr r1, [sp, #0x2c]
	b _0226054A
_02260548:
	ldr r1, [sp, #0x50]
_0226054A:
	add r0, r6, #0
	add r0, #0x96
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #0x13
	lsl r0, r0, #4
	ldrh r2, [r4, #2]
	ldr r0, [r5, r0]
	bl sub_02009A4C
	add r1, r7, #0
	add r1, #0xbc
	str r0, [r1, #0]
	add r0, r7, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	bl sub_0200A3DC
	cmp r0, #0
	bne _0226057E
	bl sub_02022974
_0226057E:
	add r0, r7, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	bl sub_02009D4C
	ldrb r2, [r4]
	mov r0, #0
	mvn r0, r0
	add r2, #0x96
	str r2, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	str r0, [sp, #0x14]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, #0x96
	str r0, [sp, #0x18]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r3, r2, #0
	str r0, [sp, #0x1c]
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x54
	bl sub_020093B4
	ldr r0, [r5, #4]
	ldr r2, [sp, #0x48]
	str r0, [sp, #0x78]
	add r0, sp, #0x54
	str r0, [sp, #0x7c]
	mov r0, #0
	str r0, [sp, #0x8c]
	mov r0, #2
	str r0, [sp, #0x90]
	ldr r0, [sp, #0x30]
	add r3, sp, #0x80
	str r0, [sp, #0x94]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02260608
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02260616
_02260608:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02260616:
	bl sub_020E1740
	ldr r1, [sp, #0x80]
	add r0, r1, r0
	str r0, [sp, #0x80]
	mov r0, #6
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0226063A
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02260648
_0226063A:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02260648:
	bl sub_020E1740
	ldr r1, [sp, #0x84]
	add r0, r1, r0
	str r0, [sp, #0x84]
	add r0, sp, #0x78
	bl sub_02021B90
	str r0, [r7, #0x7c]
	ldrb r1, [r4, #1]
	bl sub_02021F24
_02260660:
	ldr r0, [sp, #0x48]
	add r6, r6, #1
	add r0, #0xc
	add r7, r7, #4
	str r0, [sp, #0x48]
	cmp r6, #0xc
	bge _02260670
	b _0226050E
_02260670:
	ldr r0, [sp, #0x50]
	bl sub_02006CA8
	add sp, #0x98
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226067C: .word 0x0226D60C
_02260680: .word 0x0226D59C
_02260684: .word 0x0226D594
_02260688: .word 0x0226D7B4
	thumb_func_end ov70_022603CC

	thumb_func_start ov70_0226068C
ov70_0226068C: ; 0x0226068C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r7, #0
	add r4, r5, #0
_02260696:
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022606CC
	ldr r0, [r4, #0x7c]
	bl sub_02021BD4
	mov r0, #0
	str r0, [r4, #0x7c]
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	bl sub_0200A4E4
	mov r0, #0x13
	add r1, r4, #0
	lsl r0, r0, #4
	add r1, #0xbc
	ldr r0, [r6, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	add r1, r4, #0
	add r1, #0xbc
	mov r0, #0
	str r0, [r1, #0]
_022606CC:
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #0xc
	blt _02260696
	mov r4, #0
	add r7, r4, #0
_022606D8:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0226071C
	bl sub_0200A6DC
	mov r0, #0x4d
	add r1, r5, #0
	lsl r0, r0, #2
	add r1, #0xac
	ldr r0, [r6, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	mov r0, #0x4e
	add r1, r5, #0
	lsl r0, r0, #2
	add r1, #0xec
	ldr r0, [r6, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	mov r0, #0x4f
	add r1, r5, #0
	lsl r0, r0, #2
	add r1, #0xfc
	ldr r0, [r6, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	add r0, r5, #0
	add r0, #0xac
	str r7, [r0, #0]
_0226071C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _022606D8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226068C

	thumb_func_start ov70_02260728
ov70_02260728: ; 0x02260728
	cmp r1, r2
	bne _02260734
	ldr r1, _0226073C ; =0x0226D5FC
	lsl r0, r3, #3
	add r0, r1, r0
	bx lr
_02260734:
	ldr r1, _02260740 ; =0x0226D844
	lsl r0, r0, #3
	add r0, r1, r0
	bx lr
	; .align 2, 0
_0226073C: .word 0x0226D5FC
_02260740: .word 0x0226D844
	thumb_func_end ov70_02260728

	thumb_func_start ov70_02260744
ov70_02260744: ; 0x02260744
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r0, [r1, #0]
	ldr r1, [sp, #4]
	str r2, [sp, #8]
	ldr r2, _0226079C ; =0x0226D5A4
	add r1, #0xc
	add r7, r3, #0
	bl sub_0201A8D4
	ldr r4, [sp, #4]
	ldr r5, [sp, #4]
	mov r6, #0
	add r4, #0x2c
_02260762:
	add r1, r6, #0
	ldr r0, [sp, #8]
	add r1, #0x38
	mov r2, #0
	add r3, r4, #0
	str r7, [sp]
	bl sub_020071D0
	str r0, [r5, #0x20]
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #3
	blt _02260762
	ldr r0, _022607A0 ; =0x0226D58C
	ldr r2, _022607A4 ; =ov70_02260A50
	ldr r3, [sp, #4]
	mov r1, #1
	str r7, [sp]
	bl sub_02023FCC
	ldr r1, [sp, #4]
	str r0, [r1, #0x1c]
	ldr r0, [sp, #4]
	mov r1, #1
	strh r1, [r0, #6]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226079C: .word 0x0226D5A4
_022607A0: .word 0x0226D58C
_022607A4: .word ov70_02260A50
	thumb_func_end ov70_02260744

	thumb_func_start ov70_022607A8
ov70_022607A8: ; 0x022607A8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x1c]
	bl sub_02024034
	add r0, r6, #0
	add r0, #0xc
	bl sub_0201A8FC
	mov r4, #0
	add r5, r6, #0
_022607BE:
	ldr r0, [r5, #0x20]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _022607BE
	mov r0, #0
	strb r0, [r6, #2]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_022607A8

	thumb_func_start ov70_022607D4
ov70_022607D4: ; 0x022607D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5, #6]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	bne _022607F2
	ldr r0, [r5, #0x1c]
	bl sub_0202404C
	b _022607F6
_022607F2:
	mov r0, #1
	strb r0, [r5, #3]
_022607F6:
	ldrb r0, [r5, #2]
	cmp r0, #1
	bne _02260812
	mov r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _02260812
	strb r2, [r5, #2]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	str r4, [sp]
	bl ov70_022609D4
_02260812:
	ldrb r1, [r5, #3]
	ldrh r0, [r5, #4]
	cmp r1, r0
	beq _02260868
	strh r1, [r5, #4]
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _02260832
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	add r3, r7, #0
	str r4, [sp]
	bl ov70_022609D4
	b _02260854
_02260832:
	ldrb r0, [r5, #2]
	cmp r0, #0
	str r4, [sp]
	bne _02260848
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	add r3, r7, #0
	bl ov70_022609D4
	b _02260854
_02260848:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	add r3, r7, #0
	bl ov70_022609D4
_02260854:
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _02260868
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _02260868
	mov r0, #1
	strb r0, [r5, #2]
	str r0, [sp, #4]
	strh r0, [r5]
_02260868:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_022607D4

	thumb_func_start ov70_02260870
ov70_02260870: ; 0x02260870
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r6, r1, #0
	ldr r4, [sp, #0x34]
	str r0, [sp, #8]
	ldr r7, [sp, #0x30]
	str r3, [sp, #0x14]
	str r4, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r2, [r6, #0]
	add r0, r7, #0
	mov r1, #0x37
	mov r3, #4
	bl sub_0200710C
	mov r0, #0
	strh r0, [r5, #8]
	ldr r0, [sp, #0x14]
	bl FUN_0222E8C4
	strh r0, [r5, #0xa]
	mov r0, #5
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrh r1, [r5, #0xa]
	ldr r2, [r6, #0]
	add r0, r7, #0
	mov r3, #6
	bl sub_020070E8
	mov r0, #5
	lsl r0, r0, #6
	str r0, [sp]
	str r4, [sp, #4]
	ldrh r2, [r5, #0xa]
	add r0, r6, #0
	add r1, r7, #0
	add r2, #0x1b
	mov r3, #6
	bl ov70_0225FA14
	ldr r0, [sp, #0x10]
	mov r1, #1
	mov r2, #0x3f
	bl ov70_0225F288
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r0, #0xc
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	ldr r0, _0226092C ; =0x000F0E00
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	ldr r2, [sp, #0x18]
	str r1, [sp, #0xc]
	add r0, #0xc
	add r3, r1, #0
	bl sub_0201D78C
	ldrb r0, [r5, #2]
	cmp r0, #0
	str r4, [sp]
	bne _0226091A
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	add r3, r7, #0
	bl ov70_022609D4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_0226091A:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	add r3, r7, #0
	bl ov70_022609D4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0226092C: .word 0x000F0E00
	thumb_func_end ov70_02260870

	thumb_func_start ov70_02260930
ov70_02260930: ; 0x02260930
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	str r3, [sp, #0x10]
	ldr r4, [sp, #0x28]
	cmp r7, #3
	blo _02260946
	bl sub_02022974
_02260946:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r6, #0]
	mov r1, #0x37
	mov r3, #4
	bl sub_0200710C
	mov r0, #1
	strh r0, [r5, #8]
	mov r0, #5
	strh r7, [r5, #0xa]
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrh r1, [r5, #0xa]
	ldr r0, [sp, #0x10]
	ldr r2, [r6, #0]
	add r1, #0x5d
	mov r3, #6
	bl sub_020070E8
	ldrb r0, [r5, #2]
	cmp r0, #0
	str r4, [sp]
	bne _02260996
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov70_022609D4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02260996:
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	bl ov70_022609D4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02260930

	thumb_func_start ov70_022609A8
ov70_022609A8: ; 0x022609A8
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0]
	mov r1, #4
	bl sub_02019EBC
	ldr r0, [r4, #0]
	mov r1, #5
	bl sub_02019EBC
	ldr r0, [r4, #0]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r4, #0]
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_022609A8

	thumb_func_start ov70_022609D4
ov70_022609D4: ; 0x022609D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x20
	add r4, r1, #0
	add r6, r2, #0
	str r0, [sp]
	mov r1, #0x15
	str r1, [sp, #4]
	lsl r1, r6, #2
	add r1, r5, r1
	ldr r1, [r1, #0x2c]
	add r7, r3, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r3, #3
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0]
	mov r1, #5
	bl sub_020198E8
	ldr r0, [r4, #0]
	mov r1, #5
	bl sub_0201C3C0
	ldrh r0, [r5, #8]
	cmp r0, #1
	bne _02260A34
	mov r0, #5
	lsl r0, r0, #6
	str r0, [sp]
	ldr r0, [sp, #0x30]
	ldr r2, _02260A48 ; =0x0226D584
	str r0, [sp, #4]
	ldrh r3, [r5, #0xa]
	ldrb r2, [r2, r6]
	add r0, r4, #0
	lsl r3, r3, #1
	add r2, r2, r3
	add r1, r7, #0
	add r2, #0x60
	mov r3, #6
	bl ov70_0225FA14
_02260A34:
	ldr r3, _02260A4C ; =0x0226D588
	ldr r0, [r4, #0]
	ldrsb r3, [r3, r6]
	mov r1, #6
	mov r2, #3
	bl sub_0201C63C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02260A48: .word 0x0226D584
_02260A4C: .word 0x0226D588
	thumb_func_end ov70_022609D4

	thumb_func_start ov70_02260A50
ov70_02260A50: ; 0x02260A50
	strb r1, [r2, #3]
	ldrb r0, [r2, #3]
	cmp r0, #0
	bne _02260A5E
	mov r0, #2
	strb r0, [r2, #3]
	bx lr
_02260A5E:
	cmp r0, #3
	bne _02260A66
	mov r0, #1
	strb r0, [r2, #3]
_02260A66:
	bx lr
	thumb_func_end ov70_02260A50

	thumb_func_start ov70_02260A68
ov70_02260A68: ; 0x02260A68
	mov r1, #0
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02260A68

	thumb_func_start ov70_02260A70
ov70_02260A70: ; 0x02260A70
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x14
	add r5, r0, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_02260A84:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02260A84
	add r0, r5, #0
	bl sub_020203AC
	str r0, [r4, #0]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r1, _02260AC8 ; =0x0029AEC1
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r2, _02260ACC ; =0x0226D904
	ldr r3, _02260AD0 ; =0x000005C1
	add r0, #8
	bl sub_020206D0
	ldr r0, [r4, #0]
	bl sub_020203D4
	mov r0, #0x96
	mov r1, #0xe1
	ldr r2, [r4, #0]
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02260AC8: .word 0x0029AEC1
_02260ACC: .word 0x0226D904
_02260AD0: .word 0x000005C1
	thumb_func_end ov70_02260A70

	thumb_func_start ov70_02260AD4
ov70_02260AD4: ; 0x02260AD4
	push {r4, lr}
	add r4, r0, #0
	bl sub_020203E0
	ldr r0, [r4, #0]
	bl sub_020203B8
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02260AD4

	thumb_func_start ov70_02260AEC
ov70_02260AEC: ; 0x02260AEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02260B10
	add r1, r4, #0
	add r1, #8
	bl ov70_0225D054
	mov r0, #2
	ldr r1, [r4, #8]
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [r4, #8]
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	sub r0, r1, r0
	str r0, [r4, #0x10]
_02260B10:
	bl sub_020203EC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02260AEC

	thumb_func_start ov70_02260B18
ov70_02260B18: ; 0x02260B18
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	str r3, [r0, #0x10]
	bx lr
	thumb_func_end ov70_02260B18

	thumb_func_start ov70_02260B20
ov70_02260B20: ; 0x02260B20
	push {r3, r4}
	mov r4, #2
	lsl r4, r4, #0xe
	add r1, r1, r4
	str r1, [r0, #8]
	lsl r1, r4, #2
	str r2, [r0, #0xc]
	sub r1, r3, r1
	str r1, [r0, #0x10]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02260B20

	thumb_func_start ov70_02260B38
ov70_02260B38: ; 0x02260B38
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov70_02260B38

	thumb_func_start ov70_02260B3C
ov70_02260B3C: ; 0x02260B3C
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02260B3C

	thumb_func_start ov70_02260B44
ov70_02260B44: ; 0x02260B44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _02260BB4 ; =0x000004A4
	add r0, r2, #0
	str r2, [sp]
	bl sub_02018144
	ldr r2, _02260BB4 ; =0x000004A4
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0xb4
	mul r0, r5
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_02018144
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xe4
	add r7, r6, #0
	mul r7, r0
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02018144
	mov r1, #0x12
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	ldr r2, [sp, #4]
	mov r1, #0
	bl sub_020D5124
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	add r2, r7, #0
	bl sub_020D5124
	mov r0, #0x49
	lsl r0, r0, #2
	strb r5, [r4, r0]
	add r0, r0, #1
	strb r6, [r4, r0]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02260BB4: .word 0x000004A4
	thumb_func_end ov70_02260B44

	thumb_func_start ov70_02260BB8
ov70_02260BB8: ; 0x02260BB8
	push {r4, lr}
	mov r1, #0x4a
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _02260BCA
	bl ov70_02260D80
_02260BCA:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02260BB8

	thumb_func_start ov70_02260BE8
ov70_02260BE8: ; 0x02260BE8
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x4b
	add r5, r0, #0
	lsl r1, r1, #2
	add r1, r5, r1
	bl ov70_022616B0
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	ble _02260C24
	mov r7, #0x71
	add r6, r4, #0
	lsl r7, r7, #2
_02260C08:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r5, r7
	add r0, r0, r6
	bl ov70_02261968
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	add r4, r4, #1
	add r6, #0xb4
	cmp r4, r0
	blt _02260C08
_02260C24:
	ldr r0, _02260C4C ; =0x00000125
	mov r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _02260C4A
	ldr r7, _02260C4C ; =0x00000125
	add r4, r6, #0
_02260C32:
	mov r1, #0x12
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r1, r1, r4
	bl ov70_02261C60
	ldrb r0, [r5, r7]
	add r6, r6, #1
	add r4, #0xe4
	cmp r6, r0
	blt _02260C32
_02260C4A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02260C4C: .word 0x00000125
	thumb_func_end ov70_02260BE8

	thumb_func_start ov70_02260C50
ov70_02260C50: ; 0x02260C50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bne _02260C5A
	bl sub_02022974
_02260C5A:
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02260C68
	bl sub_02022974
_02260C68:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02260C76
	bl sub_02022974
_02260C76:
	mov r1, #0x4b
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r5, r1
	bl ov70_022616FC
	ldr r0, _02260CDC ; =0x00000125
	mov r4, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _02260CAC
	mov r7, #0xa7
	add r6, r4, #0
	lsl r7, r7, #2
_02260C92:
	mov r1, #0x12
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, r7
	add r1, r1, r6
	bl ov70_02261C04
	ldr r0, _02260CDC ; =0x00000125
	add r4, r4, #1
	ldrb r0, [r5, r0]
	add r6, #0xe4
	cmp r4, r0
	blt _02260C92
_02260CAC:
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	ble _02260CDA
	mov r7, #0x71
	add r6, r4, #0
	lsl r7, r7, #2
_02260CBE:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r5, r7
	add r0, r0, r6
	bl ov70_022619F4
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	add r4, r4, #1
	add r6, #0xb4
	cmp r4, r0
	blt _02260CBE
_02260CDA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02260CDC: .word 0x00000125
	thumb_func_end ov70_02260C50

	thumb_func_start ov70_02260CE0
ov70_02260CE0: ; 0x02260CE0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02260CE0

	thumb_func_start ov70_02260CE4
ov70_02260CE4: ; 0x02260CE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02260D78 ; =0x00000127
	add r7, r3, #0
	strb r2, [r5, r0]
	sub r0, r0, #1
	strb r1, [r5, r0]
	add r0, r1, #0
	add r1, r2, #0
	add r2, r7, #0
	ldr r4, [sp, #0x18]
	bl ov70_022613F4
	add r6, r0, #0
	mov r0, #0xaf
	add r1, r7, #0
	bl sub_02006C24
	add r7, r0, #0
	ldr r0, _02260D7C ; =0x00000494
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #4
	bl sub_020182CC
	ldr r0, _02260D7C ; =0x00000494
	add r1, r7, #0
	add r0, r5, r0
	str r0, [sp]
	mov r0, #0x4b
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r6, #0
	add r3, r4, #0
	bl ov70_022614F4
	mov r0, #0xa7
	ldr r2, _02260D7C ; =0x00000494
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r7, #0
	add r2, r5, r2
	add r3, r6, #0
	str r4, [sp]
	bl ov70_02261B24
	mov r0, #0x71
	ldr r2, _02260D7C ; =0x00000494
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r7, #0
	add r2, r5, r2
	add r3, r6, #0
	str r4, [sp]
	bl ov70_0226174C
	add r0, r7, #0
	bl sub_02006CA8
	add r0, r6, #0
	bl ov70_02261418
	mov r1, #0x4b
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r5, r1
	bl ov70_022615E8
	mov r0, #0x4a
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02260D78: .word 0x00000127
_02260D7C: .word 0x00000494
	thumb_func_end ov70_02260CE4

	thumb_func_start ov70_02260D80
ov70_02260D80: ; 0x02260D80
	push {r4, lr}
	mov r1, #0x4b
	add r4, r0, #0
	lsl r1, r1, #2
	add r1, r4, r1
	bl ov70_02261664
	mov r0, #0x4b
	ldr r1, _02260DC4 ; =0x00000494
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, r1
	bl ov70_022615A4
	mov r0, #0xa7
	ldr r1, _02260DC4 ; =0x00000494
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, r1
	bl ov70_02261BB4
	mov r0, #0x71
	ldr r1, _02260DC4 ; =0x00000494
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, r1
	bl ov70_022618C8
	mov r0, #0x4a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_02260DC4: .word 0x00000494
	thumb_func_end ov70_02260D80

	thumb_func_start ov70_02260DC8
ov70_02260DC8: ; 0x02260DC8
	push {r3, lr}
	mov r2, #7
	add r1, r0, #0
	lsl r2, r2, #6
	ldr r0, [r1, r2]
	cmp r0, #1
	bne _02260DF2
	add r0, r2, #0
	sub r0, #0xbc
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02260DF2
	add r0, r2, #0
	mov r3, #1
	sub r0, #0xbc
	str r3, [r1, r0]
	sub r2, #0x24
	add r0, r1, #4
	add r1, r1, r2
	bl sub_0201727C
_02260DF2:
	pop {r3, pc}
	thumb_func_end ov70_02260DC8

	thumb_func_start ov70_02260DF4
ov70_02260DF4: ; 0x02260DF4
	push {r4, lr}
	mov r1, #7
	add r4, r0, #0
	lsl r1, r1, #6
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _02260E1E
	add r0, r1, #0
	sub r0, #0xbc
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02260E1E
	sub r1, #0x24
	add r0, r4, #4
	add r1, r4, r1
	bl sub_02017288
	mov r0, #0x41
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02260E1E:
	pop {r4, pc}
	thumb_func_end ov70_02260DF4

	thumb_func_start ov70_02260E20
ov70_02260E20: ; 0x02260E20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	add r6, r2, #0
	str r3, [sp]
	cmp r5, #2
	ble _02260E34
	bl sub_02022974
_02260E34:
	cmp r6, #3
	ble _02260E3C
	bl sub_02022974
_02260E3C:
	add r0, r7, #0
	bl ov70_02261718
	mov r1, #0x71
	lsl r1, r1, #2
	add r4, r0, #0
	add r2, r7, r1
	lsl r1, r5, #4
	add r0, r4, #4
	add r1, r2, r1
	bl sub_02017258
	add r0, r4, #4
	mov r1, #1
	bl sub_02017348
	ldr r1, [sp]
	add r0, r4, #0
	bl ov70_02260EA0
	add r1, sp, #4
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	bl ov70_02260EE4
	strb r6, [r4, #1]
	add r0, r4, #0
	strb r5, [r4, #2]
	mov r1, #1
	strb r1, [r4]
	str r1, [r4, #0x7c]
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02260E20

	thumb_func_start ov70_02260E8C
ov70_02260E8C: ; 0x02260E8C
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	mov r1, #0
	bl sub_02017348
	mov r0, #0
	strb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02260E8C

	thumb_func_start ov70_02260EA0
ov70_02260EA0: ; 0x02260EA0
	push {r4, lr}
	add r3, r0, #0
	add r4, r1, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	add r2, #0x9c
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	add r1, r3, #0
	str r0, [r2, #0]
	add r1, #0x9c
	ldr r2, [r1, #0]
	add r1, r3, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	add r0, r3, #4
	add r1, r2, r1
	add r2, r3, #0
	add r2, #0xa0
	ldr r4, [r2, #0]
	add r2, r3, #0
	add r2, #0xac
	ldr r2, [r2, #0]
	add r2, r4, r2
	add r4, r3, #0
	add r4, #0xa4
	add r3, #0xb0
	ldr r4, [r4, #0]
	ldr r3, [r3, #0]
	add r3, r4, r3
	bl sub_02017350
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02260EA0

	thumb_func_start ov70_02260EE4
ov70_02260EE4: ; 0x02260EE4
	push {r4, lr}
	add r3, r0, #0
	add r4, r1, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	add r2, #0xa8
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	add r1, r3, #0
	str r0, [r2, #0]
	add r1, #0x9c
	ldr r2, [r1, #0]
	add r1, r3, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	add r0, r3, #4
	add r1, r2, r1
	add r2, r3, #0
	add r2, #0xa0
	ldr r4, [r2, #0]
	add r2, r3, #0
	add r2, #0xac
	ldr r2, [r2, #0]
	add r2, r4, r2
	add r4, r3, #0
	add r4, #0xa4
	add r3, #0xb0
	ldr r4, [r4, #0]
	ldr r3, [r3, #0]
	add r3, r4, r3
	bl sub_02017350
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02260EE4

	thumb_func_start ov70_02260F28
ov70_02260F28: ; 0x02260F28
	push {r3, lr}
	add r3, r1, #0
	add r0, r0, #4
	add r2, r1, #4
	add r3, #8
	bl sub_02017358
	pop {r3, pc}
	thumb_func_end ov70_02260F28

	thumb_func_start ov70_02260F38
ov70_02260F38: ; 0x02260F38
	ldr r3, _02260F40 ; =sub_02017348
	add r0, r0, #4
	bx r3
	nop
_02260F40: .word sub_02017348
	thumb_func_end ov70_02260F38

	thumb_func_start ov70_02260F44
ov70_02260F44: ; 0x02260F44
	add r1, r0, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _02260F58
	mov r1, #1
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r1, #0
	bx lr
_02260F58:
	mov r0, #0
	bx lr
	thumb_func_end ov70_02260F44

	thumb_func_start ov70_02260F5C
ov70_02260F5C: ; 0x02260F5C
	add r1, r0, #0
	add r1, #0x88
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _02260F70
	mov r1, #1
	add r0, #0x88
	str r1, [r0, #0]
	add r0, r1, #0
	bx lr
_02260F70:
	mov r0, #0
	bx lr
	thumb_func_end ov70_02260F5C

	thumb_func_start ov70_02260F74
ov70_02260F74: ; 0x02260F74
	ldr r3, _02260F7C ; =sub_02017388
	add r0, r0, #4
	mov r2, #0
	bx r3
	; .align 2, 0
_02260F7C: .word sub_02017388
	thumb_func_end ov70_02260F74

	thumb_func_start ov70_02260F80
ov70_02260F80: ; 0x02260F80
	add r0, #0x80
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02260F80

	thumb_func_start ov70_02260F88
ov70_02260F88: ; 0x02260F88
	add r0, #0x88
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02260F88

	thumb_func_start ov70_02260F90
ov70_02260F90: ; 0x02260F90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl ov70_02261AF0
	mov r1, #0xa7
	lsl r1, r1, #2
	add r2, r7, r1
	ldr r1, [sp]
	str r0, [sp, #0xc]
	lsl r1, r1, #4
	add r0, r0, #4
	add r1, r2, r1
	bl sub_02017258
	ldr r5, [sp, #0xc]
	ldr r0, [sp]
	mov r1, #0xc
	mul r1, r0
	mov r0, #0xa7
	lsl r0, r0, #2
	add r0, r7, r0
	str r0, [sp, #0x10]
	ldr r0, [sp]
	mov r6, #0
	lsl r0, r0, #4
	add r4, r7, r1
	add r5, #0x7c
	str r0, [sp, #0x14]
_02260FD0:
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _02260FEA
	ldr r3, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	add r1, r3, r1
	ldr r3, _02261054 ; =0x00000494
	add r3, r7, r3
	bl sub_02017190
_02260FEA:
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r6, #3
	blt _02260FD0
	ldr r0, [sp, #0xc]
	mov r1, #1
	add r0, r0, #4
	bl sub_02017348
	ldr r0, [sp, #4]
	add r1, sp, #0x18
	lsl r0, r0, #4
	strh r0, [r1]
	ldr r0, [sp, #8]
	mov r3, sp
	lsl r0, r0, #4
	strh r0, [r1, #2]
	ldrh r2, [r1]
	sub r3, r3, #4
	ldr r0, [sp, #0xc]
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov70_022610BC
	ldr r0, [sp, #0xc]
	mov r2, #1
	ldr r1, [sp]
	strh r2, [r0]
	strh r1, [r0, #2]
	mov r1, #0x14
	add r0, #0xcc
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	lsl r1, r2, #0xc
	add r0, #0xdc
	str r1, [r0, #0]
	ldr r0, [sp, #0xc]
	mov r1, #0
	add r0, #0xe0
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	mov r1, #0x1f
	add r0, #0xe1
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	add r0, #0xe2
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02261054: .word 0x00000494
	thumb_func_end ov70_02260F90

	thumb_func_start ov70_02261058
ov70_02261058: ; 0x02261058
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r1, [sp]
	add r0, r1, #4
	mov r1, #0
	bl sub_02017348
	mov r0, #0xa7
	ldr r5, [sp]
	lsl r0, r0, #2
	mov r7, #0
	add r0, r6, r0
	add r4, r7, #0
	add r5, #0x7c
	str r0, [sp, #4]
_02261078:
	ldr r0, [sp]
	ldrh r1, [r0, #2]
	mov r0, #0xc
	mul r0, r1
	add r0, r6, r0
	add r2, r4, r0
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r2, [r2, r0]
	cmp r2, #0
	beq _0226109E
	lsl r3, r1, #4
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, r1, r3
	ldr r3, _022610B4 ; =0x00000494
	add r3, r6, r3
	bl sub_02017190
_0226109E:
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r7, #3
	blt _02261078
	ldr r0, [sp]
	mov r1, #0
	strh r1, [r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022610B4: .word 0x00000494
	thumb_func_end ov70_02261058

	thumb_func_start ov70_022610B8
ov70_022610B8: ; 0x022610B8
	ldrh r0, [r0, #2]
	bx lr
	thumb_func_end ov70_022610B8

	thumb_func_start ov70_022610BC
ov70_022610BC: ; 0x022610BC
	push {r0, r1, r2, r3}
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, sp, #0x1c
	add r1, sp, #0
	bl ov70_0225C700
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #4
	bl sub_02017350
	add sp, #0xc
	pop {r3, r4}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end ov70_022610BC

	thumb_func_start ov70_022610E4
ov70_022610E4: ; 0x022610E4
	push {r3, lr}
	sub sp, #0x10
	add r0, r0, #4
	add r1, sp, #4
	add r2, sp, #8
	add r3, sp, #0xc
	bl sub_02017358
	add r0, sp, #4
	add r1, sp, #0
	bl ov70_0225C714
	add r0, sp, #0
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	lsl r1, r1, #0x10
	orr r0, r1
	add sp, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_022610E4

	thumb_func_start ov70_0226110C
ov70_0226110C: ; 0x0226110C
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0
	str r4, [sp]
	bl ov70_0226111C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov70_0226110C

	thumb_func_start ov70_0226111C
ov70_0226111C: ; 0x0226111C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r2, #0
	str r0, [sp]
	add r4, r1, #0
	add r7, r3, #0
	cmp r5, #3
	blt _02261130
	bl sub_02022974
_02261130:
	cmp r7, #7
	blt _02261138
	bl sub_02022974
_02261138:
	ldrh r0, [r4, #2]
	cmp r0, #0x12
	blo _02261142
	bl sub_02022974
_02261142:
	ldrh r0, [r4, #2]
	mov r1, #0xc
	lsl r6, r5, #2
	mul r1, r0
	ldr r0, [sp]
	add r0, r0, r1
	add r1, r0, r6
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0226121C
	add r0, r4, #0
	str r0, [sp, #4]
	add r0, #0xb8
	str r0, [sp, #4]
	ldrb r0, [r0, r5]
	cmp r0, #0
	bne _02261178
	add r2, r4, #0
	mov r1, #0x14
	add r2, #0x7c
	mul r1, r5
	add r0, r4, #4
	add r1, r2, r1
	bl sub_0201727C
_02261178:
	ldr r0, [sp, #4]
	mov r1, #1
	strb r1, [r0, r5]
	add r0, r4, r5
	add r0, #0xbc
	strb r7, [r0]
	add r0, r4, r6
	ldr r1, [sp, #0x20]
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	str r0, [sp, #8]
	add r0, #0xcd
	str r0, [sp, #8]
	mov r0, #0
	ldr r1, [sp, #8]
	cmp r7, #6
	strb r0, [r1, r5]
	bhi _02261208
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022611AA: ; jump table
	.short _022611B8 - _022611AA - 2 ; case 0
	.short _022611B8 - _022611AA - 2 ; case 1
	.short _022611B8 - _022611AA - 2 ; case 2
	.short _022611C0 - _022611AA - 2 ; case 3
	.short _022611C0 - _022611AA - 2 ; case 4
	.short _022611D6 - _022611AA - 2 ; case 5
	.short _022611F0 - _022611AA - 2 ; case 6
_022611B8:
	add r1, r4, r6
	add r1, #0xc0
	str r0, [r1, #0]
	b _02261208
_022611C0:
	add r1, r4, #0
	mov r0, #0x14
	add r1, #0x7c
	mul r0, r5
	add r0, r1, r0
	bl sub_0201724C
	add r1, r4, r6
	add r1, #0xc0
	str r0, [r1, #0]
	b _02261208
_022611D6:
	add r1, r4, r6
	add r1, #0xc0
	str r0, [r1, #0]
	bl sub_0201D35C
	add r1, r4, #0
	add r1, #0xcc
	ldrb r1, [r1]
	bl sub_020E2178
	ldr r0, [sp, #8]
	strb r1, [r0, r5]
	b _02261208
_022611F0:
	add r1, r4, r6
	add r1, #0xc0
	str r0, [r1, #0]
	bl sub_0201D35C
	add r1, r4, #0
	add r1, #0xcc
	ldrb r1, [r1]
	bl sub_020E2178
	ldr r0, [sp, #8]
	strb r1, [r0, r5]
_02261208:
	add r1, r4, #0
	mov r0, #0x14
	add r1, #0x7c
	mul r0, r5
	add r0, r1, r0
	add r1, r4, r6
	add r1, #0xc0
	ldr r1, [r1, #0]
	bl sub_02017240
_0226121C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226111C

	thumb_func_start ov70_02261220
ov70_02261220: ; 0x02261220
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	cmp r4, #3
	blt _02261230
	bl sub_02022974
_02261230:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _0226123A
	bl sub_02022974
_0226123A:
	ldrh r1, [r5, #2]
	mov r0, #0xc
	mul r0, r1
	add r1, r6, r0
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02261288
	add r6, r5, #0
	add r6, #0xb8
	ldrb r0, [r6, r4]
	cmp r0, #1
	bne _02261288
	add r2, r5, #0
	mov r1, #0x14
	add r2, #0x7c
	mul r1, r4
	add r0, r5, #4
	add r1, r2, r1
	bl sub_02017288
	lsl r2, r4, #2
	mov r0, #0
	add r1, r5, r2
	strb r0, [r6, r4]
	add r1, #0xc0
	str r0, [r1, #0]
	add r1, r5, r4
	add r1, #0xbc
	strb r0, [r1]
	add r1, r5, r4
	add r1, #0xcd
	strb r0, [r1]
	add r1, r5, r2
	add r1, #0xd0
	str r0, [r1, #0]
_02261288:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_02261220

	thumb_func_start ov70_0226128C
ov70_0226128C: ; 0x0226128C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
_02261294:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02261348
	cmp r0, #1
	bne _022612AA
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov70_02261220
_022612AA:
	add r4, r4, #1
	cmp r4, #3
	blt _02261294
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_0226128C

	thumb_func_start ov70_022612B4
ov70_022612B4: ; 0x022612B4
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	cmp r4, #3
	blt _022612C4
	bl sub_02022974
_022612C4:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _022612CE
	bl sub_02022974
_022612CE:
	ldrh r1, [r5, #2]
	mov r0, #0xc
	mul r0, r1
	add r1, r6, r0
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022612EC
	add r0, r5, r4
	add r0, #0xb8
	ldrb r0, [r0]
	pop {r4, r5, r6, pc}
_022612EC:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_022612B4

	thumb_func_start ov70_022612F0
ov70_022612F0: ; 0x022612F0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	add r7, r3, #0
	cmp r4, #3
	blt _02261302
	bl sub_02022974
_02261302:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _0226130C
	bl sub_02022974
_0226130C:
	ldrh r1, [r5, #2]
	mov r0, #0xc
	mul r0, r1
	add r1, r6, r0
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02261326
	bl sub_02022974
_02261326:
	add r0, r5, r4
	add r0, #0xbc
	ldrb r0, [r0]
	cmp r0, #2
	bne _02261346
	add r2, r5, #0
	mov r0, #0x14
	add r2, #0xc0
	lsl r1, r4, #2
	str r7, [r2, r1]
	add r5, #0x7c
	mul r0, r4
	ldr r1, [r2, r1]
	add r0, r5, r0
	bl sub_02017240
_02261346:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_022612F0

	thumb_func_start ov70_02261348
ov70_02261348: ; 0x02261348
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blt _02261356
	bl sub_02022974
_02261356:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _02261360
	bl sub_02022974
_02261360:
	add r0, r5, r4
	add r0, #0xb8
	ldrb r0, [r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02261348

	thumb_func_start ov70_02261368
ov70_02261368: ; 0x02261368
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blt _02261376
	bl sub_02022974
_02261376:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _02261380
	bl sub_02022974
_02261380:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xc0
	ldr r0, [r0, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_02261368

	thumb_func_start ov70_0226138C
ov70_0226138C: ; 0x0226138C
	ldr r3, _02261394 ; =sub_02017348
	add r0, r0, #4
	bx r3
	nop
_02261394: .word sub_02017348
	thumb_func_end ov70_0226138C

	thumb_func_start ov70_02261398
ov70_02261398: ; 0x02261398
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #2]
	add r6, r2, #0
	cmp r0, #0x12
	blo _022613AA
	bl sub_02022974
_022613AA:
	ldrh r0, [r4, #2]
	lsl r0, r0, #4
	add r1, r5, r0
	mov r0, #0xa9
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl sub_020B3664
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_02261398

	thumb_func_start ov70_022613C0
ov70_022613C0: ; 0x022613C0
	add r0, #0xdc
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_022613C0

	thumb_func_start ov70_022613C8
ov70_022613C8: ; 0x022613C8
	push {r3, r4}
	add r3, r0, #0
	mov r4, #1
	add r3, #0xe0
	strb r4, [r3]
	add r3, r0, #0
	add r3, #0xe1
	strb r1, [r3]
	add r0, #0xe2
	strb r2, [r0]
	pop {r3, r4}
	bx lr
	thumb_func_end ov70_022613C8

	thumb_func_start ov70_022613E0
ov70_022613E0: ; 0x022613E0
	mov r1, #0
	add r0, #0xe0
	strb r1, [r0]
	bx lr
	thumb_func_end ov70_022613E0

	thumb_func_start ov70_022613E8
ov70_022613E8: ; 0x022613E8
	push {r3, lr}
	add r0, r0, #4
	bl sub_0201736C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_022613E8

	thumb_func_start ov70_022613F4
ov70_022613F4: ; 0x022613F4
	push {r3, r4, r5, lr}
	add r5, r2, #0
	lsl r2, r1, #2
	add r1, r1, r2
	add r4, r0, r1
	cmp r4, #0x19
	blo _02261406
	bl sub_02022974
_02261406:
	mov r0, #1
	str r0, [sp]
	mov r0, #0xae
	add r1, r4, #1
	mov r2, #0
	add r3, r5, #0
	bl sub_02006FE8
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_022613F4

	thumb_func_start ov70_02261418
ov70_02261418: ; 0x02261418
	ldr r3, _0226141C ; =sub_020181C4
	bx r3
	; .align 2, 0
_0226141C: .word sub_020181C4
	thumb_func_end ov70_02261418

	thumb_func_start ov70_02261420
ov70_02261420: ; 0x02261420
	push {r4, lr}
	add r4, r0, #0
	bl ov70_0225C730
	ldr r0, [r4, #0]
	bl sub_020B3C0C
	str r0, [r4, #4]
	cmp r0, #0
	beq _02261454
	add r2, r0, #0
	add r2, #8
	beq _02261448
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02261448
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _0226144A
_02261448:
	mov r1, #0
_0226144A:
	cmp r1, #0
	beq _02261454
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _02261456
_02261454:
	mov r0, #0
_02261456:
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	bl sub_020B3C1C
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	bl sub_0201CBB0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02261420

	thumb_func_start ov70_0226146C
ov70_0226146C: ; 0x0226146C
	ldr r3, _02261470 ; =sub_02017110
	bx r3
	; .align 2, 0
_02261470: .word sub_02017110
	thumb_func_end ov70_0226146C

	thumb_func_start ov70_02261474
ov70_02261474: ; 0x02261474
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl sub_0201724C
	add r1, r0, #0
	ldr r0, [r5, #0]
	add r0, r0, r4
	cmp r0, r1
	bge _0226148E
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_0226148E:
	bl sub_020E1F6C
	str r1, [r5, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_02261474

	thumb_func_start ov70_02261498
ov70_02261498: ; 0x02261498
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl sub_0201724C
	ldr r1, [r5, #0]
	add r1, r1, r4
	cmp r1, r0
	bge _022614B2
	str r1, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
_022614B2:
	mov r1, #2
	lsl r1, r1, #0xa
	sub r0, r0, r1
	str r0, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_02261498

	thumb_func_start ov70_022614C0
ov70_022614C0: ; 0x022614C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl sub_0201724C
	ldr r1, [r5, #0]
	sub r1, r1, r4
	bmi _022614D6
	str r1, [r5, #0]
	pop {r3, r4, r5, pc}
_022614D6:
	add r0, r0, r1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_022614C0

	thumb_func_start ov70_022614DC
ov70_022614DC: ; 0x022614DC
	ldr r1, [r0, #0]
	sub r1, r1, r2
	cmp r1, #0
	ble _022614EA
	str r1, [r0, #0]
	mov r0, #0
	bx lr
_022614EA:
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end ov70_022614DC

	thumb_func_start ov70_022614F4
ov70_022614F4: ; 0x022614F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	mov r7, #6
	ldr r5, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r0, [sp, #0x30]
	mov r6, #0
	add r4, r2, #0
	lsl r7, r7, #6
_0226150E:
	ldr r1, [sp, #0xc]
	ldr r2, [r4, r7]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	bl ov70_02261420
	ldr r0, [r5, #0]
	bl FUN_02231668
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x10
	cmp r6, #2
	blt _0226150E
	ldr r6, [sp, #8]
	ldr r4, [sp, #0x10]
	add r0, r6, #0
	add r5, r6, #0
	str r0, [sp, #0x18]
	add r0, #0x10
	mov r7, #0
	add r5, #0x20
	str r0, [sp, #0x18]
_0226153C:
	mov r0, #6
	ldr r1, [sp, #0x10]
	lsl r0, r0, #6
	ldr r1, [r1, r0]
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r1, r0
	bne _02261556
	add r1, r6, #0
	add r1, #0x84
	mov r0, #0
	str r0, [r1, #0]
	b _02261594
_02261556:
	add r1, r6, #0
	add r1, #0x84
	mov r0, #1
	str r0, [r1, #0]
	cmp r7, #3
	beq _0226157C
	ldr r0, [sp, #0x14]
	mov r3, #0x63
	str r0, [sp]
	ldr r0, [sp, #0x30]
	lsl r3, r3, #2
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [r4, r3]
	add r0, r5, #0
	bl sub_02017164
	b _02261594
_0226157C:
	ldr r0, [sp, #0x14]
	mov r3, #0x63
	str r0, [sp]
	ldr r0, [sp, #0x30]
	lsl r3, r3, #2
	str r0, [sp, #4]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0xc]
	ldr r3, [r4, r3]
	add r0, r5, #0
	bl sub_02017164
_02261594:
	add r7, r7, #1
	add r4, r4, #4
	add r6, r6, #4
	add r5, #0x14
	cmp r7, #5
	blt _0226153C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_022614F4

	thumb_func_start ov70_022615A4
ov70_022615A4: ; 0x022615A4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r6, #0
	str r1, [sp]
	mov r7, #0
	add r4, r6, #0
	add r5, #0x20
_022615B2:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022615CC
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_020171A0
	add r1, r4, #0
	add r1, #0x84
	mov r0, #0
	str r0, [r1, #0]
_022615CC:
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r7, #5
	blt _022615B2
	mov r4, #0
_022615D8:
	add r0, r6, #0
	bl ov70_0226146C
	add r4, r4, #1
	add r6, #0x10
	cmp r4, #2
	blt _022615D8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_022615A4

	thumb_func_start ov70_022615E8
ov70_022615E8: ; 0x022615E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	mov r0, #1
	add r7, r1, #0
	str r0, [r6, #0]
	mov r0, #0
	str r0, [sp]
	add r4, r7, #0
	add r5, r6, #4
_022615FC:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02017258
	add r0, r5, #0
	mov r1, #1
	bl sub_02017348
	ldr r0, [sp]
	add r4, #0x10
	add r0, r0, #1
	add r5, #0x78
	str r0, [sp]
	cmp r0, #2
	blt _022615FC
	add r0, r6, #0
	str r0, [sp, #8]
	add r0, #0x7c
	add r4, r7, #0
	str r0, [sp, #8]
	add r0, r6, #4
	mov r5, #0
	add r4, #0x20
	str r0, [sp, #4]
_0226162C:
	add r0, r7, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02261654
	add r1, r6, #0
	add r1, #0xf4
	mov r0, #1
	str r0, [r1, #0]
	cmp r5, #3
	beq _0226164C
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_0201727C
	b _02261654
_0226164C:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl sub_0201727C
_02261654:
	add r5, r5, #1
	add r7, r7, #4
	add r6, r6, #4
	add r4, #0x14
	cmp r5, #4
	blt _0226162C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_022615E8

	thumb_func_start ov70_02261664
ov70_02261664: ; 0x02261664
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	str r0, [sp]
	add r0, #0x7c
	mov r6, #0
	add r4, r7, #0
	add r5, #0x20
	str r0, [sp]
_02261676:
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _0226169E
	add r1, r4, #0
	add r1, #0xf4
	mov r0, #0
	str r0, [r1, #0]
	cmp r6, #3
	beq _02261696
	add r0, r7, #4
	add r1, r5, #0
	bl sub_02017288
	b _0226169E
_02261696:
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_02017288
_0226169E:
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r6, #4
	blt _02261676
	mov r0, #0
	str r0, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02261664

	thumb_func_start ov70_022616B0
ov70_022616B0: ; 0x022616B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	add r4, r1, #0
	mov r0, #0x42
	add r4, #0x20
	lsl r0, r0, #2
	add r6, r5, r0
	add r7, r4, #0
_022616C4:
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022616E6
	mov r2, #1
	add r0, r6, #0
	add r1, r4, #0
	lsl r2, r2, #0xc
	bl ov70_02261474
	mov r1, #0x42
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r7, #0
	bl sub_02017240
_022616E6:
	ldr r0, [sp]
	add r5, r5, #4
	add r0, r0, #1
	add r4, #0x14
	add r6, r6, #4
	add r7, #0x14
	str r0, [sp]
	cmp r0, #5
	blt _022616C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_022616B0

	thumb_func_start ov70_022616FC
ov70_022616FC: ; 0x022616FC
	push {r3, r4, r5, lr}
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02261716
	mov r4, #0
	add r5, r0, #4
_02261708:
	add r0, r5, #0
	bl sub_02017294
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #2
	blt _02261708
_02261716:
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_022616FC

	thumb_func_start ov70_02261718
ov70_02261718: ; 0x02261718
	push {r4, lr}
	mov r1, #0x49
	lsl r1, r1, #2
	ldrb r4, [r0, r1]
	mov r2, #0
	cmp r4, #0
	ble _02261742
	sub r1, #8
	ldr r3, [r0, r1]
	add r1, r3, #0
_0226172C:
	ldrb r0, [r1]
	cmp r0, #0
	bne _0226173A
	mov r0, #0xb4
	mul r0, r2
	add r0, r3, r0
	pop {r4, pc}
_0226173A:
	add r2, r2, #1
	add r1, #0xb4
	cmp r2, r4
	blt _0226172C
_02261742:
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02261718

	thumb_func_start ov70_0226174C
ov70_0226174C: ; 0x0226174C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #8]
	ldr r0, [sp, #0x58]
	mov r7, #0x4a
	str r0, [sp, #0x58]
	mov r0, #0
	str r0, [sp, #0x40]
	add r0, r3, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x20]
	add r0, #0x20
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r0, [sp, #0x20]
	lsl r7, r7, #2
_02261770:
	ldr r4, [sp, #0x24]
	ldr r5, [sp, #0x20]
	mov r6, #0
_02261776:
	ldr r1, [sp, #0xc]
	ldr r2, [r4, r7]
	ldr r3, [sp, #0x58]
	add r0, r5, #0
	bl ov70_0225C730
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #3
	blt _02261776
	ldr r0, [sp, #0x24]
	add r0, #0xc
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	str r0, [sp, #0x40]
	cmp r0, #2
	blt _02261770
	ldr r4, [sp, #8]
	ldr r6, [sp, #0x14]
	mov r7, #0
	add r5, r4, #0
_022617AA:
	mov r0, #0
	mov r1, #0x12
	str r0, [sp]
	lsl r1, r1, #4
	ldr r0, [sp, #0xc]
	ldr r1, [r6, r1]
	ldr r3, [sp, #0x58]
	mov r2, #0
	bl sub_0200723C
	str r0, [r4, #0]
	bl sub_020B3C0C
	str r0, [r4, #4]
	cmp r0, #0
	beq _022617EA
	add r1, r0, #0
	add r1, #8
	beq _022617DE
	ldrb r2, [r0, #9]
	cmp r2, #0
	bls _022617DE
	ldrh r2, [r0, #0xe]
	add r1, r1, r2
	add r1, r1, #4
	b _022617E0
_022617DE:
	mov r1, #0
_022617E0:
	cmp r1, #0
	beq _022617EA
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _022617EC
_022617EA:
	mov r0, #0
_022617EC:
	str r0, [r4, #8]
	ldr r0, [r5, #0x20]
	bl sub_020B3C1C
	str r0, [r4, #0xc]
	add r7, r7, #1
	add r6, r6, #4
	add r4, #0x10
	add r5, #0xc
	cmp r7, #2
	blt _022617AA
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	ldr r7, [sp, #0x14]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #8]
	str r0, [sp, #0x38]
	add r0, #0x38
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x34]
	ldr r0, [sp, #8]
	str r0, [sp, #0x30]
_0226181C:
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x3c]
	ldr r6, [sp, #0x34]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x38]
	ldr r5, [sp, #0x30]
	str r0, [sp, #0x28]
_0226182C:
	mov r0, #5
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #6
	ldr r3, [r1, r0]
	ldr r1, [sp, #0x14]
	sub r0, #0x20
	ldr r0, [r1, r0]
	cmp r0, r3
	beq _02261880
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0xc]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	bl sub_02017164
	ldr r0, [sp, #0x18]
	cmp r0, #1
	blt _02261880
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	mov r4, #0
	cmp r0, #0
	bls _02261880
_02261862:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r4, r0
	beq _02261874
	ldr r0, [r5, #0x40]
	add r1, r4, #0
	bl sub_020AE5CC
_02261874:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	add r4, r4, #1
	cmp r4, r0
	blo _02261862
_02261880:
	ldr r0, [sp, #0x2c]
	add r6, r6, #4
	add r0, r0, #4
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	add r5, #0x14
	add r0, #0x14
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _0226182C
	ldr r0, [sp, #0x3c]
	add r7, r7, #4
	add r0, #0x10
	str r0, [sp, #0x3c]
	ldr r0, [sp, #8]
	add r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	add r0, #0x50
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	add r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	add r0, #0x50
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #2
	blt _0226181C
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226174C

	thumb_func_start ov70_022618C8
ov70_022618C8: ; 0x022618C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r7, [sp]
	mov r0, #0
	add r6, r1, #0
	str r0, [sp, #8]
	add r7, #0x38
_022618D8:
	mov r4, #0
	add r5, r7, #0
_022618DC:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020171A0
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #4
	blt _022618DC
	ldr r0, [sp, #8]
	add r7, #0x50
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #2
	blt _022618D8
	ldr r4, [sp]
	mov r5, #0
_022618FC:
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #2
	blt _022618FC
	mov r0, #0
	ldr r7, _02261960 ; =0x02100DF0
	str r0, [sp, #4]
_02261910:
	ldr r4, [sp]
	mov r5, #0
_02261914:
	ldr r0, [r4, #0x20]
	bl sub_020B3C1C
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r6, r0, #0
	bl sub_020AE9B8
	ldr r0, [sp, #0x10]
	ldr r1, [r7, #0]
	blx r1
	ldr r0, [sp, #0xc]
	ldr r1, [r7, #0]
	blx r1
	add r0, r6, #0
	bl sub_020AEA70
	ldr r1, _02261964 ; =0x02100DF8
	ldr r1, [r1, #0]
	blx r1
	ldr r0, [r4, #0x20]
	bl sub_020181C4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _02261914
	ldr r0, [sp]
	add r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #2
	blt _02261910
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02261960: .word 0x02100DF0
_02261964: .word 0x02100DF8
	thumb_func_end ov70_022618C8

	thumb_func_start ov70_02261968
ov70_02261968: ; 0x02261968
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r7, #0
	str r0, [sp]
	add r4, r0, #0
	add r0, r1, #0
	str r1, [sp, #4]
	add r0, #0x38
	add r6, r7, #0
	add r5, #0x8c
	str r0, [sp, #4]
_02261980:
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _022619E4
	cmp r7, #3
	bhi _022619E0
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02261996: ; jump table
	.short _0226199E - _02261996 - 2 ; case 0
	.short _022619B8 - _02261996 - 2 ; case 1
	.short _0226199E - _02261996 - 2 ; case 2
	.short _022619B8 - _02261996 - 2 ; case 3
_0226199E:
	ldr r1, [sp]
	mov r2, #0x50
	ldrb r1, [r1, #2]
	add r0, r5, #0
	mul r2, r1
	ldr r1, [sp, #4]
	add r1, r1, r2
	mov r2, #1
	add r1, r1, r6
	lsl r2, r2, #0xc
	bl ov70_02261474
	b _022619E4
_022619B8:
	ldr r1, [sp]
	mov r2, #0x50
	ldrb r1, [r1, #2]
	add r0, r5, #0
	mul r2, r1
	ldr r1, [sp, #4]
	add r1, r1, r2
	mov r2, #1
	add r1, r1, r6
	lsl r2, r2, #0xc
	bl ov70_02261498
	cmp r0, #1
	bne _022619E4
	mov r0, #0
	add r1, r4, #0
	str r0, [r4, #0x7c]
	add r1, #0x8c
	str r0, [r1, #0]
	b _022619E4
_022619E0:
	bl sub_02022974
_022619E4:
	add r7, r7, #1
	add r4, r4, #4
	add r6, #0x14
	add r5, r5, #4
	cmp r7, #4
	blt _02261980
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02261968

	thumb_func_start ov70_022619F4
ov70_022619F4: ; 0x022619F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrb r0, [r5]
	str r1, [sp]
	cmp r0, #0
	beq _02261AEA
	ldrb r0, [r5, #2]
	lsl r1, r0, #4
	ldr r0, [sp]
	add r0, r0, r1
	add r1, r5, #4
	bl ov70_0225C7A0
	cmp r0, #0
	beq _02261AEA
	ldrb r0, [r5, #1]
	cmp r0, #3
	blo _02261A1E
	bl sub_02022974
_02261A1E:
	ldrb r0, [r5, #2]
	cmp r0, #2
	blo _02261A28
	bl sub_02022974
_02261A28:
	ldrb r1, [r5, #2]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	add r1, r0, r2
	ldrb r0, [r5, #1]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x20]
	bl sub_020B3C1C
	ldrb r1, [r5, #2]
	lsl r2, r1, #4
	ldr r1, [sp]
	add r1, r1, r2
	str r0, [r1, #0xc]
	ldrb r0, [r5, #2]
	lsl r1, r0, #4
	ldr r0, [sp]
	add r1, r0, r1
	ldr r0, [r1, #4]
	ldr r1, [r1, #0xc]
	bl sub_020AF1E8
	cmp r0, #0
	bne _02261A62
	bl sub_02022974
_02261A62:
	ldr r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r6, r5, #0
	add r4, r0, #0
	add r7, #0x38
_02261A6E:
	ldr r0, [r6, #0x7c]
	cmp r0, #0
	beq _02261A98
	ldrb r2, [r5, #2]
	mov r1, #0x50
	add r0, r5, #4
	mul r1, r2
	add r1, r7, r1
	add r1, r1, r4
	bl sub_0201727C
	ldrb r1, [r5, #2]
	mov r0, #0x50
	mul r0, r1
	add r1, r6, #0
	add r1, #0x8c
	add r0, r7, r0
	ldr r1, [r1, #0]
	add r0, r0, r4
	bl sub_02017240
_02261A98:
	ldr r0, [sp, #4]
	add r6, r6, #4
	add r0, r0, #1
	add r4, #0x14
	str r0, [sp, #4]
	cmp r0, #4
	blt _02261A6E
	add r0, r5, #4
	bl sub_02017294
	ldr r0, [sp]
	mov r7, #0
	str r0, [sp, #8]
	add r0, #0x38
	add r6, r5, #0
	add r4, r7, #0
	str r0, [sp, #8]
_02261ABA:
	ldr r0, [r6, #0x7c]
	cmp r0, #0
	beq _02261AD2
	ldrb r1, [r5, #2]
	mov r2, #0x50
	add r0, r5, #4
	mul r2, r1
	ldr r1, [sp, #8]
	add r1, r1, r2
	add r1, r1, r4
	bl sub_02017288
_02261AD2:
	add r7, r7, #1
	add r6, r6, #4
	add r4, #0x14
	cmp r7, #4
	blt _02261ABA
	ldrb r0, [r5, #2]
	lsl r1, r0, #4
	ldr r0, [sp]
	add r0, r0, r1
	ldr r0, [r0, #4]
	bl sub_020AF298
_02261AEA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_022619F4

	thumb_func_start ov70_02261AF0
ov70_02261AF0: ; 0x02261AF0
	push {r4, lr}
	ldr r3, _02261B20 ; =0x00000125
	mov r1, #0
	ldrb r2, [r0, r3]
	cmp r2, #0
	ble _02261B18
	sub r3, r3, #5
	ldr r4, [r0, r3]
	add r3, r4, #0
_02261B02:
	ldrh r0, [r3]
	cmp r0, #0
	bne _02261B10
	mov r0, #0xe4
	mul r0, r1
	add r0, r4, r0
	pop {r4, pc}
_02261B10:
	add r1, r1, #1
	add r3, #0xe4
	cmp r1, r2
	blt _02261B02
_02261B18:
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02261B20: .word 0x00000125
	thumb_func_end ov70_02261AF0

	thumb_func_start ov70_02261B24
ov70_02261B24: ; 0x02261B24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r7, r3, #0
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	str r7, [sp, #0x10]
	str r0, [sp, #0xc]
_02261B3C:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [r7, #0]
	ldr r3, [sp, #0x30]
	bl ov70_02261420
	ldr r0, [sp, #0x14]
	cmp r0, #0xb
	beq _02261B5A
	cmp r0, #0xc
	beq _02261B5A
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl FUN_02231668
_02261B5A:
	ldr r4, [sp, #0x10]
	ldr r5, [sp, #0xc]
	mov r6, #0
_02261B60:
	ldr r1, [r4, #0x48]
	ldr r0, [r7, #0]
	cmp r0, r1
	beq _02261B7E
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r3, [sp, #0x30]
	mov r2, #0
	bl sub_0200723C
	mov r1, #0x12
	lsl r1, r1, #4
	str r0, [r5, r1]
	b _02261B86
_02261B7E:
	mov r0, #0x12
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_02261B86:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #3
	blt _02261B60
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0x12
	blt _02261B3C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02261B24

	thumb_func_start ov70_02261BB4
ov70_02261BB4: ; 0x02261BB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	mov r7, #0x12
	str r0, [sp, #4]
	mov r6, #0
	lsl r7, r7, #4
_02261BC8:
	ldr r5, [sp]
	mov r4, #0
_02261BCC:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02261BDC
	bl sub_020181C4
	mov r0, #0x12
	lsl r0, r0, #4
	str r6, [r5, r0]
_02261BDC:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _02261BCC
	ldr r0, [sp, #4]
	bl ov70_0226146C
	ldr r0, [sp]
	add r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0x12
	blt _02261BC8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_02261BB4

	thumb_func_start ov70_02261C04
ov70_02261C04: ; 0x02261C04
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _02261C5C
	ldrh r0, [r4, #2]
	add r1, r4, #4
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov70_0225C7A0
	cmp r0, #0
	beq _02261C5C
	add r0, r4, #0
	add r0, #0xe0
	ldrb r0, [r0]
	cmp r0, #1
	bne _02261C3C
	ldrh r0, [r4, #2]
	add r1, r4, #0
	add r1, #0xe1
	lsl r0, r0, #4
	add r0, r5, r0
	ldrb r1, [r1]
	ldr r0, [r0, #8]
	bl sub_020B3764
_02261C3C:
	add r0, r4, #4
	bl sub_02017294
	add r0, r4, #0
	add r0, #0xe0
	ldrb r0, [r0]
	cmp r0, #1
	bne _02261C5C
	ldrh r0, [r4, #2]
	add r4, #0xe2
	ldrb r1, [r4]
	lsl r0, r0, #4
	add r0, r5, r0
	ldr r0, [r0, #8]
	bl sub_020B3764
_02261C5C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_02261C04

	thumb_func_start ov70_02261C60
ov70_02261C60: ; 0x02261C60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	str r0, [sp]
	add r0, r4, #0
	str r0, [sp, #0xc]
	add r0, #0x7c
	add r7, r4, #0
	mov r5, #0
	str r0, [sp, #0xc]
	add r7, #0xc0
	add r6, r4, #0
	str r0, [sp, #8]
_02261C7A:
	add r0, r4, r5
	add r0, #0xb8
	ldrb r0, [r0]
	cmp r0, #0
	beq _02261CE6
	add r0, r4, r5
	add r0, #0xbc
	ldrb r0, [r0]
	cmp r0, #6
	bhi _02261CE6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02261C9A: ; jump table
	.short _02261CA8 - _02261C9A - 2 ; case 0
	.short _02261CC4 - _02261C9A - 2 ; case 1
	.short _02261DF4 - _02261C9A - 2 ; case 2
	.short _02261D0A - _02261C9A - 2 ; case 3
	.short _02261D26 - _02261C9A - 2 ; case 4
	.short _02261D6A - _02261C9A - 2 ; case 5
	.short _02261DC0 - _02261C9A - 2 ; case 6
_02261CA8:
	add r2, r4, #0
	add r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0]
	add r0, r7, #0
	bl ov70_02261474
	add r1, r6, #0
	add r1, #0xc0
	ldr r0, [sp, #8]
	ldr r1, [r1, #0]
	bl sub_02017240
	b _02261DF4
_02261CC4:
	add r2, r4, #0
	add r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0]
	add r0, r7, #0
	bl ov70_02261498
	add r1, r6, #0
	add r1, #0xc0
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0]
	bl sub_02017240
	ldr r0, [sp, #0x14]
	cmp r0, #1
	beq _02261CE8
_02261CE6:
	b _02261DF4
_02261CE8:
	add r0, r6, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [sp]
	add r2, r5, #0
	bl ov70_02261220
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02261DF4
	ldr r0, [sp]
	ldr r2, [sp, #0x10]
	add r1, r4, #0
	blx r2
	b _02261DF4
_02261D0A:
	add r2, r4, #0
	add r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0]
	add r0, r7, #0
	bl ov70_022614C0
	add r1, r6, #0
	add r1, #0xc0
	ldr r0, [sp, #8]
	ldr r1, [r1, #0]
	bl sub_02017240
	b _02261DF4
_02261D26:
	add r2, r4, #0
	add r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0]
	add r0, r7, #0
	bl ov70_022614DC
	add r1, r6, #0
	add r1, #0xc0
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0]
	bl sub_02017240
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _02261DF4
	add r0, r6, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	add r2, r5, #0
	bl ov70_02261220
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02261DF4
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r4, #0
	blx r2
	b _02261DF4
_02261D6A:
	add r0, r4, r5
	add r0, #0xcd
	ldrb r0, [r0]
	cmp r0, #0
	beq _02261D84
	add r0, r4, r5
	add r0, #0xcd
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, r5
	add r0, #0xcd
	strb r1, [r0]
	b _02261DF4
_02261D84:
	add r2, r4, #0
	add r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0]
	add r0, r7, #0
	bl ov70_02261498
	cmp r0, #1
	bne _02261DB2
	bl sub_0201D35C
	add r1, r4, #0
	add r1, #0xcc
	ldrb r1, [r1]
	bl sub_020E2178
	add r0, r4, r5
	add r0, #0xcd
	strb r1, [r0]
	add r1, r6, #0
	add r1, #0xc0
	mov r0, #0
	str r0, [r1, #0]
_02261DB2:
	add r1, r6, #0
	add r1, #0xc0
	ldr r0, [sp, #8]
	ldr r1, [r1, #0]
	bl sub_02017240
	b _02261DF4
_02261DC0:
	add r0, r4, r5
	add r0, #0xcd
	ldrb r0, [r0]
	cmp r0, #0
	beq _02261DDA
	add r0, r4, r5
	add r0, #0xcd
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, r5
	add r0, #0xcd
	strb r1, [r0]
	b _02261DF4
_02261DDA:
	add r2, r4, #0
	add r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0]
	add r0, r7, #0
	bl ov70_02261474
	add r1, r6, #0
	add r1, #0xc0
	ldr r0, [sp, #8]
	ldr r1, [r1, #0]
	bl sub_02017240
_02261DF4:
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	add r0, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r7, r7, #4
	add r0, #0x14
	add r6, r6, #4
	str r0, [sp, #8]
	cmp r5, #3
	bge _02261E0C
	b _02261C7A
_02261E0C:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_02261C60

	thumb_func_start ov70_02261E10
ov70_02261E10: ; 0x02261E10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _0226217C ; =0x00000614
	add r0, r3, #0
	add r7, r2, #0
	str r3, [sp, #4]
	bl sub_02018144
	ldr r2, _0226217C ; =0x00000614
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x61
	str r7, [r4, #0]
	lsl r0, r0, #4
	strb r5, [r4, r0]
	add r0, r0, #1
	strb r6, [r4, r0]
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x48]
	mov r0, #9
	mov r1, #0x80
	bl ov70_02260B44
	str r0, [r4, #4]
	ldr r0, [sp, #0x48]
	ldr r3, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #4]
	add r1, r6, #0
	add r2, r5, #0
	bl ov70_02260CE4
	mov r0, #0
	ldr r5, _02262180 ; =0x0226D944
	str r0, [sp, #0xc]
_02261E5E:
	mov r0, #0
	str r0, [sp]
	ldrh r1, [r5]
	str r0, [sp, #8]
	add r2, sp, #0x1c
	ldr r0, [r4, #0]
	add r2, #2
	add r3, sp, #0x1c
	bl ov70_0225C8D8
	cmp r0, #1
	beq _02261E78
	b _0226212C
_02261E78:
	mov r0, #0x92
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0x10]
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0x14]
	ldr r0, _02262184 ; =0x000004E8
	mov r7, sp
	add r0, r4, r0
	str r0, [sp, #0x18]
	sub r7, r7, #4
	add r6, sp, #0x1c
_02261E94:
	ldrh r1, [r5, #2]
	ldrh r2, [r6, #2]
	ldrh r3, [r6]
	ldr r0, [r4, #4]
	bl ov70_02260F90
	ldr r1, _02262188 ; =0x00000612
	ldrb r1, [r4, r1]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #8]
	ldrh r0, [r5, #2]
	cmp r0, #0x10
	bls _02261EB2
	b _02262106
_02261EB2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02261EBE: ; jump table
	.short _02261F0C - _02261EBE - 2 ; case 0
	.short _02262106 - _02261EBE - 2 ; case 1
	.short _02262106 - _02261EBE - 2 ; case 2
	.short _02262106 - _02261EBE - 2 ; case 3
	.short _02262106 - _02261EBE - 2 ; case 4
	.short _02262106 - _02261EBE - 2 ; case 5
	.short _02261EE0 - _02261EBE - 2 ; case 6
	.short _02261EE0 - _02261EBE - 2 ; case 7
	.short _02261EE0 - _02261EBE - 2 ; case 8
	.short _02262106 - _02261EBE - 2 ; case 9
	.short _02261F4A - _02261EBE - 2 ; case 10
	.short _02261F76 - _02261EBE - 2 ; case 11
	.short _02261F76 - _02261EBE - 2 ; case 12
	.short _02261F8C - _02261EBE - 2 ; case 13
	.short _02261FEA - _02261EBE - 2 ; case 14
	.short _02262048 - _02261EBE - 2 ; case 15
	.short _02262084 - _02261EBE - 2 ; case 16
_02261EE0:
	ldr r1, _02262188 ; =0x00000612
	mov r2, #0
	ldrb r1, [r4, r1]
	ldr r0, [r4, #4]
	add r3, r2, #0
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #8]
	bl ov70_0226110C
	ldr r0, _02262188 ; =0x00000612
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r2, [r0, #8]
	ldrh r0, [r5, #2]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x85
	lsl r0, r0, #2
	str r2, [r1, r0]
	b _02262106
_02261F0C:
	ldr r1, _02262188 ; =0x00000612
	mov r2, #0
	ldrb r1, [r4, r1]
	ldr r0, [r4, #4]
	add r3, r2, #0
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #8]
	bl ov70_0226110C
	ldr r1, _02262188 ; =0x00000612
	ldr r0, [r4, #4]
	ldrb r1, [r4, r1]
	mov r2, #1
	mov r3, #0
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #8]
	bl ov70_0226110C
	ldr r1, _02262188 ; =0x00000612
	ldr r0, [r4, #4]
	ldrb r1, [r4, r1]
	mov r2, #2
	mov r3, #0
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #8]
	bl ov70_0226110C
	b _02262106
_02261F4A:
	ldr r1, _02262188 ; =0x00000612
	ldr r0, [r4, #4]
	ldrb r1, [r4, r1]
	mov r2, #0
	mov r3, #2
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #8]
	bl ov70_0226110C
	ldr r0, _02262188 ; =0x00000612
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r2, [r0, #8]
	ldrh r0, [r5]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x45
	lsl r0, r0, #2
	str r2, [r1, r0]
	b _02262106
_02261F76:
	ldr r1, _02262188 ; =0x00000612
	ldr r0, [r4, #4]
	ldrb r1, [r4, r1]
	mov r2, #0
	mov r3, #2
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #8]
	bl ov70_0226110C
	b _02262106
_02261F8C:
	ldr r0, _0226218C ; =0x00000608
	mov r1, #0xc
	ldrb r0, [r4, r0]
	mul r1, r0
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	ldr r1, _02262188 ; =0x00000612
	ldrb r1, [r4, r1]
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #8]
	bl ov70_022629FC
	ldr r0, _0226218C ; =0x00000608
	ldrb r0, [r4, r0]
	add r1, r0, #1
	ldr r0, _0226218C ; =0x00000608
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x18
	bls _02261FBA
	bl sub_02022974
_02261FBA:
	ldr r0, _02262188 ; =0x00000612
	mov r1, #0
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl ov70_0226138C
	ldrh r1, [r5]
	ldr r0, _02262190 ; =0x0000FFA4
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bls _02261FDA
	b _02262106
_02261FDA:
	ldr r0, _02262188 ; =0x00000612
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl ov70_02262D48
	b _02262106
_02261FEA:
	ldr r0, _02262194 ; =0x00000609
	mov r1, #0xc
	ldrb r0, [r4, r0]
	mul r1, r0
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	ldr r1, _02262188 ; =0x00000612
	ldrb r1, [r4, r1]
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #8]
	bl ov70_022629FC
	ldr r0, _02262194 ; =0x00000609
	ldrb r0, [r4, r0]
	add r1, r0, #1
	ldr r0, _02262194 ; =0x00000609
	strb r1, [r4, r0]
	sub r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #0x18
	bls _0226201A
	bl sub_02022974
_0226201A:
	ldr r0, _02262188 ; =0x00000612
	mov r1, #0
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl ov70_0226138C
	ldrh r1, [r5]
	ldr r0, _02262190 ; =0x0000FFA4
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _02262106
	ldr r0, _02262188 ; =0x00000612
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl ov70_02262D48
	b _02262106
_02262048:
	ldr r0, _02262188 ; =0x00000612
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r2, [r0, #8]
	ldr r0, _02262198 ; =0x0000060A
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0226219C ; =0x00000488
	str r2, [r1, r0]
	ldr r0, _02262198 ; =0x0000060A
	ldrb r0, [r4, r0]
	add r1, r0, #1
	ldr r0, _02262198 ; =0x0000060A
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x18
	bls _02262072
	bl sub_02022974
_02262072:
	ldr r0, _02262188 ; =0x00000612
	mov r1, #0
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl ov70_0226138C
	b _02262106
_02262084:
	ldr r0, _022621A0 ; =0x0000060B
	mov r1, #0xc
	ldrb r0, [r4, r0]
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	ldr r1, _02262188 ; =0x00000612
	ldrb r1, [r4, r1]
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #8]
	bl ov70_022629FC
	ldr r0, _022621A0 ; =0x0000060B
	ldrb r0, [r4, r0]
	add r1, r0, #1
	ldr r0, _022621A0 ; =0x0000060B
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x18
	bls _022620B2
	bl sub_02022974
_022620B2:
	ldr r0, _02262188 ; =0x00000612
	mov r1, #0
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl ov70_0226138C
	ldr r0, _02262188 ; =0x00000612
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl ov70_022610E4
	strh r0, [r6, #4]
	lsr r0, r0, #0x10
	strh r0, [r6, #6]
	ldrh r0, [r6, #4]
	strh r0, [r6, #8]
	ldrh r0, [r6, #6]
	strh r0, [r6, #0xa]
	mov r0, #8
	ldrsh r0, [r6, r0]
	add r0, #8
	strh r0, [r6, #8]
	mov r0, #0xa
	ldrsh r0, [r6, r0]
	add r0, #0x14
	strh r0, [r6, #0xa]
	ldr r0, _02262188 ; =0x00000612
	ldrh r1, [r6, #8]
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	strh r1, [r7]
	ldrh r1, [r6, #0xa]
	strh r1, [r7, #2]
	ldr r1, [r7, #0]
	bl ov70_022610BC
_02262106:
	ldr r0, _02262188 ; =0x00000612
	add r2, sp, #0x1c
	ldrb r0, [r4, r0]
	add r2, #2
	add r3, sp, #0x1c
	add r1, r0, #1
	ldr r0, _02262188 ; =0x00000612
	strb r1, [r4, r0]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp]
	str r0, [sp, #8]
	ldrh r1, [r5]
	ldr r0, [r4, #0]
	bl ov70_0225C8D8
	cmp r0, #1
	bne _0226212C
	b _02261E94
_0226212C:
	ldr r0, [sp, #0xc]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #0x23
	bhs _0226213A
	b _02261E5E
_0226213A:
	mov r0, #0xa
	mov r7, #0
	lsl r0, r0, #0xe
	ldr r6, _022621A4 ; =0x0226D920
	str r7, [sp, #0x28]
	str r0, [sp, #0x30]
	str r7, [sp, #0x2c]
	add r5, r4, #0
_0226214A:
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	ldr r0, [r4, #4]
	add r3, sp, #0x28
	bl ov70_02260E20
	mov r1, #0x82
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov70_02260F38
	add r7, r7, #1
	add r6, r6, #4
	add r5, r5, #4
	cmp r7, #9
	blt _0226214A
	ldr r0, _022621A8 ; =0x00000613
	mov r1, #9
	strb r1, [r4, r0]
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226217C: .word 0x00000614
_02262180: .word 0x0226D944
_02262184: .word 0x000004E8
_02262188: .word 0x00000612
_0226218C: .word 0x00000608
_02262190: .word 0x0000FFA4
_02262194: .word 0x00000609
_02262198: .word 0x0000060A
_0226219C: .word 0x00000488
_022621A0: .word 0x0000060B
_022621A4: .word 0x0226D920
_022621A8: .word 0x00000613
	thumb_func_end ov70_02261E10

	thumb_func_start ov70_022621AC
ov70_022621AC: ; 0x022621AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02262208 ; =0x00000613
	mov r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _022621D2
	ldr r7, _02262208 ; =0x00000613
	add r4, r5, #0
_022621BE:
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02260E8C
	ldrb r0, [r5, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _022621BE
_022621D2:
	ldr r0, _0226220C ; =0x00000612
	mov r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _022621F2
	ldr r7, _0226220C ; =0x00000612
	add r4, r5, #0
_022621E0:
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	bl ov70_02261058
	ldrb r0, [r5, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _022621E0
_022621F2:
	ldr r0, [r5, #4]
	bl ov70_02260D80
	ldr r0, [r5, #4]
	bl ov70_02260BB8
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02262208: .word 0x00000613
_0226220C: .word 0x00000612
	thumb_func_end ov70_022621AC

	thumb_func_start ov70_02262210
ov70_02262210: ; 0x02262210
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02262288 ; =0x00000608
	mov r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _02262238
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r7, _02262288 ; =0x00000608
	add r4, r5, r0
_02262226:
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl ov70_02262A04
	ldrb r0, [r5, r7]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02262226
_02262238:
	ldr r0, _0226228C ; =0x00000609
	mov r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _0226225C
	mov r0, #0xda
	lsl r0, r0, #2
	ldr r7, _0226228C ; =0x00000609
	add r4, r5, r0
_0226224A:
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl ov70_02262BEC
	ldrb r0, [r5, r7]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _0226224A
_0226225C:
	ldr r0, _02262290 ; =0x0000060B
	mov r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _0226227E
	ldr r0, _02262294 ; =0x000004E8
	ldr r7, _02262290 ; =0x0000060B
	add r4, r5, r0
_0226226C:
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl ov70_02262C94
	ldrb r0, [r5, r7]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _0226226C
_0226227E:
	ldr r0, [r5, #4]
	bl ov70_02260BE8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02262288: .word 0x00000608
_0226228C: .word 0x00000609
_02262290: .word 0x0000060B
_02262294: .word 0x000004E8
	thumb_func_end ov70_02262210

	thumb_func_start ov70_02262298
ov70_02262298: ; 0x02262298
	ldr r3, _022622A0 ; =ov70_02260C50
	ldr r0, [r0, #4]
	bx r3
	nop
_022622A0: .word ov70_02260C50
	thumb_func_end ov70_02262298

	thumb_func_start ov70_022622A4
ov70_022622A4: ; 0x022622A4
	ldr r3, _022622AC ; =ov70_02260CE0
	ldr r0, [r0, #4]
	bx r3
	nop
_022622AC: .word ov70_02260CE0
	thumb_func_end ov70_022622A4

	thumb_func_start ov70_022622B0
ov70_022622B0: ; 0x022622B0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _022622E8 ; =0x00000613
	add r4, r1, #0
	ldrb r0, [r5, r0]
	add r6, r2, #0
	cmp r0, r4
	bhi _022622C6
	bl sub_02022974
_022622C6:
	mov r0, #0xa
	lsl r0, r0, #0xe
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #4]
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x82
	str r6, [sp]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl ov70_02260EA0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_022622E8: .word 0x00000613
	thumb_func_end ov70_022622B0

	thumb_func_start ov70_022622EC
ov70_022622EC: ; 0x022622EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02262314 ; =0x00000613
	add r4, r1, #0
	ldrb r0, [r5, r0]
	add r6, r2, #0
	cmp r0, r4
	bhi _02262300
	bl sub_02022974
_02262300:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl ov70_02260EE4
	pop {r4, r5, r6, pc}
	nop
_02262314: .word 0x00000613
	thumb_func_end ov70_022622EC

	thumb_func_start ov70_02262318
ov70_02262318: ; 0x02262318
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02262368 ; =0x00000613
	add r6, r1, #0
	ldrb r0, [r5, r0]
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, r6
	bhi _0226232E
	bl sub_02022974
_0226232E:
	cmp r7, #3
	blo _02262336
	bl sub_02022974
_02262336:
	lsl r0, r6, #2
	add r1, r5, r0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl ov70_02260F28
	ldr r1, _0226236C ; =0x0226D914
	lsl r0, r7, #2
	ldrsh r1, [r1, r0]
	ldr r2, [r4, #0]
	lsl r1, r1, #0xc
	add r1, r2, r1
	str r1, [r4, #0]
	ldr r1, _02262370 ; =0x0226D916
	ldr r2, [r4, #8]
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	add r0, r2, r0
	str r0, [r4, #8]
	mov r0, #0xa
	lsl r0, r0, #0xe
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02262368: .word 0x00000613
_0226236C: .word 0x0226D914
_02262370: .word 0x0226D916
	thumb_func_end ov70_02262318

	thumb_func_start ov70_02262374
ov70_02262374: ; 0x02262374
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02262398 ; =0x00000613
	add r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, r4
	bhi _02262386
	bl sub_02022974
_02262386:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov70_02260F44
	pop {r3, r4, r5, pc}
	nop
_02262398: .word 0x00000613
	thumb_func_end ov70_02262374

	thumb_func_start ov70_0226239C
ov70_0226239C: ; 0x0226239C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _022623C0 ; =0x00000613
	add r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, r4
	bhi _022623AE
	bl sub_02022974
_022623AE:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov70_02260F5C
	pop {r3, r4, r5, pc}
	nop
_022623C0: .word 0x00000613
	thumb_func_end ov70_0226239C

	thumb_func_start ov70_022623C4
ov70_022623C4: ; 0x022623C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _022623EC ; =0x00000613
	add r4, r1, #0
	ldrb r0, [r5, r0]
	add r6, r2, #0
	cmp r0, r4
	bhi _022623D8
	bl sub_02022974
_022623D8:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl ov70_02260F38
	pop {r4, r5, r6, pc}
	nop
_022623EC: .word 0x00000613
	thumb_func_end ov70_022623C4

	thumb_func_start ov70_022623F0
ov70_022623F0: ; 0x022623F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02262418 ; =0x00000613
	add r4, r1, #0
	ldrb r0, [r5, r0]
	add r6, r2, #0
	cmp r0, r4
	bhi _02262404
	bl sub_02022974
_02262404:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl ov70_02260F74
	pop {r4, r5, r6, pc}
	nop
_02262418: .word 0x00000613
	thumb_func_end ov70_022623F0

	thumb_func_start ov70_0226241C
ov70_0226241C: ; 0x0226241C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02262440 ; =0x00000613
	add r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, r4
	bhi _0226242E
	bl sub_02022974
_0226242E:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov70_02260F80
	pop {r3, r4, r5, pc}
	nop
_02262440: .word 0x00000613
	thumb_func_end ov70_0226241C

	thumb_func_start ov70_02262444
ov70_02262444: ; 0x02262444
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02262468 ; =0x00000613
	add r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, r4
	bhi _02262456
	bl sub_02022974
_02262456:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov70_02260F88
	pop {r3, r4, r5, pc}
	nop
_02262468: .word 0x00000613
	thumb_func_end ov70_02262444

	thumb_func_start ov70_0226246C
ov70_0226246C: ; 0x0226246C
	ldr r3, _02262474 ; =ov70_02260DC8
	ldr r0, [r0, #4]
	bx r3
	nop
_02262474: .word ov70_02260DC8
	thumb_func_end ov70_0226246C

	thumb_func_start ov70_02262478
ov70_02262478: ; 0x02262478
	ldr r3, _02262480 ; =ov70_02260DF4
	ldr r0, [r0, #4]
	bx r3
	nop
_02262480: .word ov70_02260DF4
	thumb_func_end ov70_02262478

	thumb_func_start ov70_02262484
ov70_02262484: ; 0x02262484
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _02262514 ; =0x00000612
	str r1, [sp]
	ldrb r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _0226250E
	ldr r1, [sp]
	sub r0, r2, #1
	sub r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	add r4, r5, #0
	str r1, [sp, #4]
	lsr r7, r0, #0x18
_022624A8:
	ldr r0, [r4, #8]
	ldr r1, [sp, #4]
	add r2, r7, #0
	bl ov70_022628C8
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	ldr r1, [sp]
	add r2, r7, #0
	bl ov70_022628C8
	ldr r1, [sp, #8]
	cmp r1, #1
	beq _022624C8
	cmp r0, #1
	bne _02262502
_022624C8:
	ldr r0, [r4, #8]
	bl ov70_022610B8
	cmp r0, #4
	bhi _02262502
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022624DE: ; jump table
	.short _02262502 - _022624DE - 2 ; case 0
	.short _022624E8 - _022624DE - 2 ; case 1
	.short _022624E8 - _022624DE - 2 ; case 2
	.short _022624E8 - _022624DE - 2 ; case 3
	.short _022624E8 - _022624DE - 2 ; case 4
_022624E8:
	ldr r0, _02262518 ; =0x00000611
	ldrb r0, [r5, r0]
	cmp r0, #4
	bne _022624FA
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov70_022629AC
	b _02262502
_022624FA:
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov70_02262968
_02262502:
	ldr r0, _02262514 ; =0x00000612
	add r6, r6, #1
	ldrb r0, [r5, r0]
	add r4, r4, #4
	cmp r6, r0
	blt _022624A8
_0226250E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02262514: .word 0x00000612
_02262518: .word 0x00000611
	thumb_func_end ov70_02262484

	thumb_func_start ov70_0226251C
ov70_0226251C: ; 0x0226251C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _022625D4 ; =0x00000612
	add r7, r1, #0
	ldrb r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _022625D2
	add r4, r5, #0
_0226252E:
	ldr r0, [r4, #8]
	bl ov70_022610B8
	cmp r0, #4
	bhi _0226254E
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02262544: ; jump table
	.short _022625C6 - _02262544 - 2 ; case 0
	.short _02262554 - _02262544 - 2 ; case 1
	.short _02262554 - _02262544 - 2 ; case 2
	.short _02262554 - _02262544 - 2 ; case 3
	.short _02262554 - _02262544 - 2 ; case 4
_0226254E:
	cmp r0, #0xf
	beq _02262564
	b _022625C6
_02262554:
	cmp r7, #1
	bne _022625C6
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	mov r2, #1
	bl ov70_02261398
	b _022625C6
_02262564:
	cmp r7, #1
	bne _022625A0
	mov r1, #2
	ldr r0, [r4, #8]
	lsl r1, r1, #0xa
	bl ov70_022613C0
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	mov r2, #0
	mov r3, #6
	bl ov70_0226110C
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	mov r2, #1
	mov r3, #6
	bl ov70_0226110C
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	mov r2, #2
	mov r3, #6
	bl ov70_0226110C
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov70_0226138C
	b _022625C6
_022625A0:
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	mov r2, #0
	bl ov70_02261220
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	mov r2, #1
	bl ov70_02261220
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	mov r2, #2
	bl ov70_02261220
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov70_0226138C
_022625C6:
	ldr r0, _022625D4 ; =0x00000612
	add r6, r6, #1
	ldrb r0, [r5, r0]
	add r4, r4, #4
	cmp r6, r0
	blt _0226252E
_022625D2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022625D4: .word 0x00000612
	thumb_func_end ov70_0226251C

	thumb_func_start ov70_022625D8
ov70_022625D8: ; 0x022625D8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02262604 ; =0x0000060B
	add r7, r1, #0
	ldrb r0, [r6, r0]
	mov r4, #0
	cmp r0, #0
	ble _02262600
	ldr r0, _02262608 ; =0x000004E8
	add r5, r6, r0
_022625EC:
	add r0, r5, #0
	add r1, r7, #0
	bl ov70_02262BD0
	ldr r0, _02262604 ; =0x0000060B
	add r4, r4, #1
	ldrb r0, [r6, r0]
	add r5, #0xc
	cmp r4, r0
	blt _022625EC
_02262600:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02262604: .word 0x0000060B
_02262608: .word 0x000004E8
	thumb_func_end ov70_022625D8

	thumb_func_start ov70_0226260C
ov70_0226260C: ; 0x0226260C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02262654 ; =0x00000612
	mov r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _02262652
	ldr r7, _02262654 ; =0x00000612
	add r4, r5, #0
_0226261E:
	ldr r0, [r4, #8]
	bl ov70_022610B8
	cmp r0, #4
	bhi _02262648
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02262634: ; jump table
	.short _02262648 - _02262634 - 2 ; case 0
	.short _0226263E - _02262634 - 2 ; case 1
	.short _0226263E - _02262634 - 2 ; case 2
	.short _0226263E - _02262634 - 2 ; case 3
	.short _0226263E - _02262634 - 2 ; case 4
_0226263E:
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	mov r2, #1
	bl ov70_02261398
_02262648:
	ldrb r0, [r5, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0226261E
_02262652:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02262654: .word 0x00000612
	thumb_func_end ov70_0226260C

	thumb_func_start ov70_02262658
ov70_02262658: ; 0x02262658
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _02262710 ; =0x00000612
	add r7, r1, #0
	ldrb r0, [r4, r0]
	mov r6, #0
	cmp r0, #0
	ble _0226270E
	add r5, r4, #0
_0226266A:
	ldr r0, [r5, #8]
	bl ov70_022610B8
	cmp r0, #0xb
	beq _02262678
	cmp r0, #0xc
	bne _02262702
_02262678:
	cmp r7, #3
	bhi _02262702
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02262688: ; jump table
	.short _02262690 - _02262688 - 2 ; case 0
	.short _022626A6 - _02262688 - 2 ; case 1
	.short _022626C0 - _02262688 - 2 ; case 2
	.short _022626E4 - _02262688 - 2 ; case 3
_02262690:
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	mov r2, #0
	mov r3, #2
	bl ov70_0226110C
	mov r0, #0x91
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _02262702
_022626A6:
	ldr r0, _02262714 ; =ov70_02262908
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	mov r3, #1
	bl ov70_0226111C
	mov r0, #0x91
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _02262702
_022626C0:
	ldr r0, _02262718 ; =ov70_02262938
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	mov r3, #4
	bl ov70_0226111C
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	mov r2, #1
	bl ov70_02261220
	mov r0, #0x91
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _02262702
_022626E4:
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	mov r2, #1
	mov r3, #0
	bl ov70_0226110C
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	mov r2, #0
	bl ov70_02261220
	mov r0, #0x91
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
_02262702:
	ldr r0, _02262710 ; =0x00000612
	add r6, r6, #1
	ldrb r0, [r4, r0]
	add r5, r5, #4
	cmp r6, r0
	blt _0226266A
_0226270E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02262710: .word 0x00000612
_02262714: .word ov70_02262908
_02262718: .word ov70_02262938
	thumb_func_end ov70_02262658

	thumb_func_start ov70_0226271C
ov70_0226271C: ; 0x0226271C
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov70_0226271C

	thumb_func_start ov70_02262724
ov70_02262724: ; 0x02262724
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02262750 ; =0x00000608
	add r6, r1, #0
	ldrb r0, [r5, r0]
	add r7, r2, #0
	mov r4, #0
	cmp r0, #0
	ble _0226274C
_02262736:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov70_02262754
	ldr r0, _02262750 ; =0x00000608
	add r4, r4, #1
	ldrb r0, [r5, r0]
	cmp r4, r0
	blt _02262736
_0226274C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02262750: .word 0x00000608
	thumb_func_end ov70_02262724

	thumb_func_start ov70_02262754
ov70_02262754: ; 0x02262754
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02262788 ; =0x00000608
	ldrb r0, [r4, r0]
	cmp r1, r0
	bhs _02262784
	mov r0, #0x92
	lsl r0, r0, #2
	add r5, r4, r0
	mov r0, #0xc
	mul r0, r1
	cmp r2, #0
	beq _0226277A
	ldr r1, [r4, #4]
	add r0, r5, r0
	add r2, r3, #0
	bl ov70_02262A50
	b _02262780
_0226277A:
	add r0, r5, r0
	bl ov70_02262A80
_02262780:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02262784:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02262788: .word 0x00000608
	thumb_func_end ov70_02262754

	thumb_func_start ov70_0226278C
ov70_0226278C: ; 0x0226278C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _022627B8 ; =0x00000609
	add r7, r1, #0
	ldrb r0, [r6, r0]
	mov r4, #0
	cmp r0, #0
	ble _022627B6
	mov r0, #0xda
	lsl r0, r0, #2
	add r5, r6, r0
_022627A2:
	add r0, r5, #0
	add r1, r7, #0
	bl ov70_02262BD0
	ldr r0, _022627B8 ; =0x00000609
	add r4, r4, #1
	ldrb r0, [r6, r0]
	add r5, #0xc
	cmp r4, r0
	blt _022627A2
_022627B6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022627B8: .word 0x00000609
	thumb_func_end ov70_0226278C

	thumb_func_start ov70_022627BC
ov70_022627BC: ; 0x022627BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r1, r5, r0
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r6, [r1, r0]
	add r0, #0xc
	ldr r7, [r1, r0]
	ldr r0, [sp, #0x18]
	add r4, r2, #0
	cmp r0, #1
	beq _022627DA
	cmp r3, #1
	bne _0226288A
_022627DA:
	add r0, r6, #0
	mov r1, #1
	bl ov70_02261348
	cmp r0, #0
	bne _022627F2
	ldr r0, [r5, #4]
	add r1, r6, #0
	mov r2, #1
	mov r3, #0
	bl ov70_0226110C
_022627F2:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _02262830
	add r0, r4, #4
	lsl r1, r0, #2
	beq _02262810
	lsl r0, r0, #0xe
	bl sub_020E17FC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226281E
_02262810:
	lsl r0, r0, #0xe
	bl sub_020E17FC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226281E:
	bl sub_020E1740
	add r3, r0, #0
	ldr r0, [r5, #4]
	add r1, r7, #0
	mov r2, #0
	bl ov70_022612F0
	pop {r3, r4, r5, r6, r7, pc}
_02262830:
	ldr r0, _022628C4 ; =0x0000060C
	mov r1, #0x1c
	ldr r0, [r5, r0]
	add r0, r0, #1
	bl sub_020E2178
	ldr r0, _022628C4 ; =0x0000060C
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	cmp r0, #0xe
	bhs _0226287C
	lsl r0, r4, #2
	beq _0226285C
	lsl r0, r4, #0xe
	bl sub_020E17FC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226286A
_0226285C:
	lsl r0, r4, #0xe
	bl sub_020E17FC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226286A:
	bl sub_020E1740
	add r3, r0, #0
	ldr r0, [r5, #4]
	add r1, r7, #0
	mov r2, #0
	bl ov70_022612F0
	pop {r3, r4, r5, r6, r7, pc}
_0226287C:
	mov r2, #0
	ldr r0, [r5, #4]
	add r1, r7, #0
	add r3, r2, #0
	bl ov70_022612F0
	pop {r3, r4, r5, r6, r7, pc}
_0226288A:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ldr r0, [r5, #4]
	beq _022628AC
	add r1, r6, #0
	bl ov70_0226128C
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl ov70_0226128C
	ldr r0, [r5, #4]
	add r1, r6, #0
	mov r2, #1
	bl ov70_02261398
	pop {r3, r4, r5, r6, r7, pc}
_022628AC:
	add r1, r6, #0
	mov r2, #1
	bl ov70_02261220
	mov r2, #0
	ldr r0, [r5, #4]
	add r1, r7, #0
	add r3, r2, #0
	bl ov70_022612F0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022628C4: .word 0x0000060C
	thumb_func_end ov70_022627BC

	thumb_func_start ov70_022628C8
ov70_022628C8: ; 0x022628C8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	lsl r1, r2, #0x14
	asr r4, r1, #0x10
	bl ov70_022610E4
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #4
	ldrsh r2, [r1, r0]
	lsl r0, r5, #0x14
	asr r0, r0, #0x10
	cmp r2, r0
	bne _02262900
	mov r0, #6
	ldrsh r0, [r1, r0]
	cmp r0, r4
	bne _02262900
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_02262900:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_022628C8

	thumb_func_start ov70_02262908
ov70_02262908: ; 0x02262908
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl ov70_022610B8
	add r4, r0, #0
	cmp r4, #0xb
	beq _02262922
	cmp r4, #0xc
	beq _02262922
	bl sub_02022974
_02262922:
	sub r4, #0xb
	cmp r4, #1
	bhi _02262934
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	mov r3, #0
	bl ov70_0226110C
_02262934:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_02262908

	thumb_func_start ov70_02262938
ov70_02262938: ; 0x02262938
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl ov70_022610B8
	add r4, r0, #0
	cmp r4, #0xb
	beq _02262952
	cmp r4, #0xc
	beq _02262952
	bl sub_02022974
_02262952:
	sub r4, #0xb
	cmp r4, #1
	bhi _02262964
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	mov r3, #2
	bl ov70_0226110C
_02262964:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_02262938

	thumb_func_start ov70_02262968
ov70_02262968: ; 0x02262968
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	ldr r0, [r6, #4]
	add r2, r4, #0
	add r5, r1, #0
	bl ov70_022612B4
	cmp r0, #0
	bne _02262980
	mov r4, #1
	b _02262992
_02262980:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02261368
	mov r1, #2
	lsl r1, r1, #0xc
	cmp r0, r1
	ble _02262992
	mov r4, #1
_02262992:
	cmp r4, #1
	bne _022629A4
	add r0, r6, #0
	add r1, r5, #0
	bl ov70_022629DC
	ldr r0, _022629A8 ; =0x000005A5
	bl sub_02005748
_022629A4:
	pop {r4, r5, r6, pc}
	nop
_022629A8: .word 0x000005A5
	thumb_func_end ov70_02262968

	thumb_func_start ov70_022629AC
ov70_022629AC: ; 0x022629AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	ldr r0, [r5, #4]
	add r2, r4, #0
	add r6, r1, #0
	bl ov70_022612B4
	cmp r0, #0
	bne _022629C2
	mov r4, #1
_022629C2:
	cmp r4, #1
	bne _022629D4
	add r0, r5, #0
	add r1, r6, #0
	bl ov70_022629DC
	ldr r0, _022629D8 ; =0x000005A9
	bl sub_02005748
_022629D4:
	pop {r4, r5, r6, pc}
	nop
_022629D8: .word 0x000005A9
	thumb_func_end ov70_022629AC

	thumb_func_start ov70_022629DC
ov70_022629DC: ; 0x022629DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	mov r7, #1
_022629E6:
	ldr r0, [r5, #4]
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov70_0226110C
	add r4, r4, #1
	cmp r4, #3
	blt _022629E6
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_022629DC

	thumb_func_start ov70_022629FC
ov70_022629FC: ; 0x022629FC
	str r1, [r0, #0]
	mov r1, #0
	strh r1, [r0, #4]
	bx lr
	thumb_func_end ov70_022629FC

	thumb_func_start ov70_02262A04
ov70_02262A04: ; 0x02262A04
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r2, [r4, #4]
	add r5, r1, #0
	cmp r2, #4
	bhi _02262A4E
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02262A1C: ; jump table
	.short _02262A4E - _02262A1C - 2 ; case 0
	.short _02262A26 - _02262A1C - 2 ; case 1
	.short _02262A4E - _02262A1C - 2 ; case 2
	.short _02262A30 - _02262A1C - 2 ; case 3
	.short _02262A3A - _02262A1C - 2 ; case 4
_02262A26:
	bl ov70_02262AA4
	mov r0, #2
	strh r0, [r4, #4]
	pop {r3, r4, r5, pc}
_02262A30:
	bl ov70_02262B24
	mov r0, #4
	strh r0, [r4, #4]
	pop {r3, r4, r5, pc}
_02262A3A:
	bl ov70_02262B2C
	cmp r0, #1
	bne _02262A4E
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02262AE0
	mov r0, #0
	strh r0, [r4, #4]
_02262A4E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02262A04

	thumb_func_start ov70_02262A50
ov70_02262A50: ; 0x02262A50
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	ldrh r2, [r5, #4]
	ldr r3, _02262A7C ; =0x0000FFFF
	add r6, r2, r3
	lsl r6, r6, #0x10
	lsr r6, r6, #0x10
	cmp r6, #1
	bls _02262A7A
	sub r3, r3, #2
	add r2, r2, r3
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r2, #1
	bhi _02262A74
	bl ov70_02262AE0
_02262A74:
	mov r0, #1
	strh r0, [r5, #4]
	str r4, [r5, #8]
_02262A7A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02262A7C: .word 0x0000FFFF
	thumb_func_end ov70_02262A50

	thumb_func_start ov70_02262A80
ov70_02262A80: ; 0x02262A80
	ldrh r2, [r0, #4]
	ldr r1, _02262AA0 ; =0x0000FFFD
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #1
	bls _02262A9C
	cmp r2, #1
	bhi _02262A98
	mov r1, #0
	strh r1, [r0, #4]
	bx lr
_02262A98:
	mov r1, #3
	strh r1, [r0, #4]
_02262A9C:
	bx lr
	nop
_02262AA0: .word 0x0000FFFD
	thumb_func_end ov70_02262A80

	thumb_func_start ov70_02262AA4
ov70_02262AA4: ; 0x02262AA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5, #0]
	ldr r1, [r5, #8]
	bl ov70_022613C0
	mov r2, #0
	ldr r1, [r5, #0]
	add r0, r4, #0
	add r3, r2, #0
	bl ov70_0226110C
	ldr r1, [r5, #0]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl ov70_0226110C
	ldr r1, [r5, #0]
	add r0, r4, #0
	mov r2, #2
	mov r3, #0
	bl ov70_0226110C
	ldr r0, [r5, #0]
	mov r1, #1
	bl ov70_0226138C
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02262AA4

	thumb_func_start ov70_02262AE0
ov70_02262AE0: ; 0x02262AE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	add r0, r4, #0
	mov r2, #0
	bl ov70_02261220
	ldr r1, [r5, #0]
	add r0, r4, #0
	mov r2, #1
	bl ov70_02261220
	ldr r1, [r5, #0]
	add r0, r4, #0
	mov r2, #2
	bl ov70_02261220
	ldr r0, [r5, #0]
	mov r1, #0
	bl ov70_0226138C
	ldr r0, [r5, #0]
	bl ov70_022613E0
	mov r1, #1
	lsl r1, r1, #0xc
	ldr r0, [r5, #0]
	add r2, r1, #0
	add r3, r1, #0
	bl ov70_022613E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_02262AE0

	thumb_func_start ov70_02262B24
ov70_02262B24: ; 0x02262B24
	mov r1, #0
	strh r1, [r0, #6]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02262B24

	thumb_func_start ov70_02262B2C
ov70_02262B2C: ; 0x02262B2C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #6
	ldrsh r1, [r4, r0]
	cmp r1, #0xa
	bge _02262BC8
	add r1, r1, #1
	strh r1, [r4, #6]
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #8]
	lsl r0, r0, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #0xa
	lsl r1, r1, #0xc
	bl sub_020BCFD0
	add r2, r0, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0]
	add r1, r2, r1
	bl ov70_022613C0
	mov r0, #6
	ldrsh r1, [r4, r0]
	mov r0, #0x1f
	mul r0, r1
	mov r1, #0xa
	bl sub_020E1F6C
	mov r2, #0x1f
	sub r1, r2, r0
	lsl r1, r1, #0x18
	ldr r0, [r4, #0]
	lsr r1, r1, #0x18
	bl ov70_022613C8
	mov r0, #6
	ldrsh r0, [r4, r0]
	ldr r2, _02262BCC ; =0x000002E1
	mov r3, #0
	lsl r0, r0, #0xc
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #0xa
	lsl r1, r1, #0xc
	bl sub_020BCFD0
	mov r3, #1
	add r5, r0, #0
	lsl r3, r3, #0xc
	add r1, r5, r3
	ldr r0, [r4, #0]
	add r2, r1, #0
	add r3, r5, r3
	bl ov70_022613E8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02262BC8:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02262BCC: .word 0x000002E1
	thumb_func_end ov70_02262B2C

	thumb_func_start ov70_02262BD0
ov70_02262BD0: ; 0x02262BD0
	ldrh r3, [r0, #4]
	ldr r2, _02262BE8 ; =0x0000FFFF
	add r2, r3, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r2, #1
	bls _02262BE4
	mov r2, #1
	strh r2, [r0, #4]
	str r1, [r0, #8]
_02262BE4:
	bx lr
	nop
_02262BE8: .word 0x0000FFFF
	thumb_func_end ov70_02262BD0

	thumb_func_start ov70_02262BEC
ov70_02262BEC: ; 0x02262BEC
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #4]
	cmp r2, #4
	bhi _02262C5E
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02262C02: ; jump table
	.short _02262C62 - _02262C02 - 2 ; case 0
	.short _02262C0C - _02262C02 - 2 ; case 1
	.short _02262C16 - _02262C02 - 2 ; case 2
	.short _02262C2A - _02262C02 - 2 ; case 3
	.short _02262C34 - _02262C02 - 2 ; case 4
_02262C0C:
	bl ov70_02262C64
	mov r0, #2
	strh r0, [r4, #4]
	pop {r4, pc}
_02262C16:
	add r0, r1, #0
	ldr r1, [r4, #0]
	mov r2, #0
	bl ov70_022612B4
	cmp r0, #0
	bne _02262C62
	mov r0, #3
	strh r0, [r4, #4]
	pop {r4, pc}
_02262C2A:
	bl ov70_02262B24
	mov r0, #4
	strh r0, [r4, #4]
	pop {r4, pc}
_02262C34:
	bl ov70_02262B2C
	cmp r0, #1
	bne _02262C62
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov70_0226138C
	ldr r0, [r4, #0]
	bl ov70_022613E0
	mov r1, #1
	lsl r1, r1, #0xc
	ldr r0, [r4, #0]
	add r2, r1, #0
	add r3, r1, #0
	bl ov70_022613E8
	mov r0, #0
	strh r0, [r4, #4]
	pop {r4, pc}
_02262C5E:
	bl sub_02022974
_02262C62:
	pop {r4, pc}
	thumb_func_end ov70_02262BEC

	thumb_func_start ov70_02262C64
ov70_02262C64: ; 0x02262C64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5, #0]
	ldr r1, [r5, #8]
	bl ov70_022613C0
	ldr r1, [r5, #0]
	add r0, r4, #0
	mov r2, #0
	mov r3, #1
	bl ov70_0226110C
	mov r2, #1
	ldr r1, [r5, #0]
	add r0, r4, #0
	add r3, r2, #0
	bl ov70_0226110C
	ldr r0, [r5, #0]
	mov r1, #1
	bl ov70_0226138C
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02262C64

	thumb_func_start ov70_02262C94
ov70_02262C94: ; 0x02262C94
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #4]
	cmp r2, #4
	bhi _02262D06
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02262CAA: ; jump table
	.short _02262D0A - _02262CAA - 2 ; case 0
	.short _02262CB4 - _02262CAA - 2 ; case 1
	.short _02262CBE - _02262CAA - 2 ; case 2
	.short _02262CD2 - _02262CAA - 2 ; case 3
	.short _02262CDC - _02262CAA - 2 ; case 4
_02262CB4:
	bl ov70_02262D0C
	mov r0, #2
	strh r0, [r4, #4]
	pop {r4, pc}
_02262CBE:
	add r0, r1, #0
	ldr r1, [r4, #0]
	mov r2, #0
	bl ov70_022612B4
	cmp r0, #0
	bne _02262D0A
	mov r0, #3
	strh r0, [r4, #4]
	pop {r4, pc}
_02262CD2:
	bl ov70_02262B24
	mov r0, #4
	strh r0, [r4, #4]
	pop {r4, pc}
_02262CDC:
	bl ov70_02262B2C
	cmp r0, #1
	bne _02262D0A
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov70_0226138C
	ldr r0, [r4, #0]
	bl ov70_022613E0
	mov r1, #1
	lsl r1, r1, #0xc
	ldr r0, [r4, #0]
	add r2, r1, #0
	add r3, r1, #0
	bl ov70_022613E8
	mov r0, #0
	strh r0, [r4, #4]
	pop {r4, pc}
_02262D06:
	bl sub_02022974
_02262D0A:
	pop {r4, pc}
	thumb_func_end ov70_02262C94

	thumb_func_start ov70_02262D0C
ov70_02262D0C: ; 0x02262D0C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5, #0]
	ldr r1, [r5, #8]
	bl ov70_022613C0
	ldr r1, [r5, #0]
	add r0, r4, #0
	mov r2, #0
	mov r3, #1
	bl ov70_0226110C
	mov r2, #1
	ldr r1, [r5, #0]
	add r0, r4, #0
	add r3, r2, #0
	bl ov70_0226110C
	ldr r1, [r5, #0]
	add r0, r4, #0
	mov r2, #2
	mov r3, #1
	bl ov70_0226110C
	ldr r0, [r5, #0]
	mov r1, #1
	bl ov70_0226138C
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02262D0C

	thumb_func_start ov70_02262D48
ov70_02262D48: ; 0x02262D48
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x5c
	beq _02262D5C
	cmp r4, #0x5d
	beq _02262D5C
	bl sub_02022974
_02262D5C:
	add r0, r5, #0
	bl ov70_022610E4
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	sub r4, #0x5c
	lsl r2, r4, #2
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #4
	ldrsh r3, [r1, r0]
	ldr r0, _02262DA4 ; =0x0226D90C
	ldr r0, [r0, r2]
	add r0, r3, r0
	strh r0, [r1, #4]
	mov r0, #6
	ldrsh r0, [r1, r0]
	mov r3, sp
	sub r3, r3, #4
	sub r0, #0xa
	strh r0, [r1, #6]
	ldrh r2, [r1, #4]
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov70_022610BC
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02262DA4: .word 0x0226D90C
	thumb_func_end ov70_02262D48

	thumb_func_start ov70_02262DA8
ov70_02262DA8: ; 0x02262DA8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0xbf
	add r4, r0, #0
	add r0, r6, #0
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0xbf
	mov r1, #0
	lsl r2, r2, #2
	add r7, r0, #0
	bl sub_020D5124
	str r6, [r7, #0]
	add r5, r7, #0
	str r4, [r7, #4]
	mov r4, #0
	add r5, #8
_02262DCE:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov70_02262F64
	add r4, r4, #1
	add r5, #0x24
	cmp r4, #0x14
	blt _02262DCE
	mov r0, #0xb6
	lsl r0, r0, #2
	add r0, r7, r0
	mov r1, #0
	add r2, r6, #0
	bl ov70_02262F64
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02262DA8

	thumb_func_start ov70_02262DF4
ov70_02262DF4: ; 0x02262DF4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r4, #0
	add r5, #8
_02262DFE:
	add r0, r5, #0
	bl ov70_02262F70
	add r4, r4, #1
	add r5, #0x24
	cmp r4, #0x14
	blt _02262DFE
	mov r0, #0xb6
	lsl r0, r0, #2
	add r0, r6, r0
	bl ov70_02262F70
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_02262DF4

	thumb_func_start ov70_02262E20
ov70_02262E20: ; 0x02262E20
	ldr r3, _02262E28 ; =ov70_02262F14
	mov r1, #0
	bx r3
	nop
_02262E28: .word ov70_02262F14
	thumb_func_end ov70_02262E20

	thumb_func_start ov70_02262E2C
ov70_02262E2C: ; 0x02262E2C
	ldr r3, _02262E34 ; =ov70_02262F14
	mov r1, #1
	bx r3
	nop
_02262E34: .word ov70_02262F14
	thumb_func_end ov70_02262E2C

	thumb_func_start ov70_02262E38
ov70_02262E38: ; 0x02262E38
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov70_02262E38

	thumb_func_start ov70_02262E3C
ov70_02262E3C: ; 0x02262E3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	cmp r0, #0
	beq _02262E4C
	bl sub_02022974
_02262E4C:
	ldrh r0, [r5]
	add r1, r4, #0
	bl sub_02018144
	mov r1, #0
	add r2, r4, #0
	str r0, [r5, #8]
	bl sub_020D5124
	ldr r0, [r5, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_02262E3C

	thumb_func_start ov70_02262E64
ov70_02262E64: ; 0x02262E64
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02262E72
	bl sub_02022974
_02262E72:
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02262E64

	thumb_func_start ov70_02262E80
ov70_02262E80: ; 0x02262E80
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end ov70_02262E80

	thumb_func_start ov70_02262E84
ov70_02262E84: ; 0x02262E84
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov70_02262E84

	thumb_func_start ov70_02262E88
ov70_02262E88: ; 0x02262E88
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end ov70_02262E88

	thumb_func_start ov70_02262E8C
ov70_02262E8C: ; 0x02262E8C
	ldr r1, [r0, #0x10]
	add r1, r1, #1
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end ov70_02262E8C

	thumb_func_start ov70_02262E94
ov70_02262E94: ; 0x02262E94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _02262EA6
	bl sub_02022974
_02262EA6:
	cmp r4, #0x14
	blo _02262EAE
	bl sub_02022974
_02262EAE:
	mov r0, #0x24
	add r5, #8
	mul r0, r4
	add r0, r5, r0
	add r1, r6, #0
	add r2, r7, #0
	bl ov70_02262FD4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02262E94

	thumb_func_start ov70_02262EC0
ov70_02262EC0: ; 0x02262EC0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _02262ED2
	bl sub_02022974
_02262ED2:
	cmp r4, #0x14
	blo _02262EDA
	bl sub_02022974
_02262EDA:
	mov r0, #0x24
	add r5, #8
	mul r0, r4
	add r0, r5, r0
	add r1, r6, #0
	add r2, r7, #0
	bl ov70_0226300C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02262EC0

	thumb_func_start ov70_02262EEC
ov70_02262EEC: ; 0x02262EEC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0
	bne _02262EFC
	bl sub_02022974
_02262EFC:
	cmp r4, #0x14
	blo _02262F04
	bl sub_02022974
_02262F04:
	mov r0, #0x24
	add r5, #8
	mul r0, r4
	add r0, r5, r0
	add r1, r6, #0
	bl ov70_02263008
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_02262EEC

	thumb_func_start ov70_02262F14
ov70_02262F14: ; 0x02262F14
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0xb6
	lsl r0, r0, #2
	add r0, r7, r0
	str r1, [sp]
	bl ov70_0226307C
	cmp r0, #1
	bne _02262F3A
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r2, [sp]
	add r0, r7, r0
	add r1, r7, #0
	mov r3, #0
	bl ov70_02262F94
	pop {r3, r4, r5, r6, r7, pc}
_02262F3A:
	add r6, r7, #0
	add r6, #8
	mov r4, #0
	add r5, r6, #0
_02262F42:
	add r0, r6, #0
	bl ov70_0226307C
	cmp r0, #1
	bne _02262F58
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r3, r4, #0
	bl ov70_02262F94
_02262F58:
	add r4, r4, #1
	add r6, #0x24
	add r5, #0x24
	cmp r4, #0x14
	blt _02262F42
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02262F14

	thumb_func_start ov70_02262F64
ov70_02262F64: ; 0x02262F64
	strh r2, [r0]
	mov r2, #1
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02262F64

	thumb_func_start ov70_02262F70
ov70_02262F70: ; 0x02262F70
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02262F7E
	bl sub_020181C4
_02262F7E:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02262F88
	bl sub_020181C4
_02262F88:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x24
	bl sub_020D5124
	pop {r4, pc}
	thumb_func_end ov70_02262F70

	thumb_func_start ov70_02262F94
ov70_02262F94: ; 0x02262F94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #2]
	add r6, r1, #0
	add r7, r3, #0
	cmp r0, #0
	beq _02262FD2
	cmp r2, #0
	beq _02262FAC
	cmp r2, #1
	beq _02262FB2
	b _02262FB8
_02262FAC:
	ldr r0, [r5, #4]
	ldr r4, [r0, #0]
	b _02262FBC
_02262FB2:
	ldr r0, [r5, #4]
	ldr r4, [r0, #4]
	b _02262FBC
_02262FB8:
	bl sub_02022974
_02262FBC:
	cmp r4, #0
	beq _02262FD2
	ldr r1, [r6, #4]
	add r0, r5, #0
	add r2, r7, #0
	blx r4
	cmp r0, #1
	bne _02262FD2
	add r0, r5, #0
	bl ov70_02263044
_02262FD2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02262F94

	thumb_func_start ov70_02262FD4
ov70_02262FD4: ; 0x02262FD4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov70_0226306C
	cmp r0, #1
	beq _02262FEA
	bl sub_02022974
_02262FEA:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02262FF4
	bl sub_02022974
_02262FF4:
	mov r3, #0
	add r0, r5, #4
	add r1, r4, #0
	add r2, r6, #0
	str r3, [sp]
	bl ov70_0226308C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_02262FD4

	thumb_func_start ov70_02263008
ov70_02263008: ; 0x02263008
	strb r1, [r0, #2]
	bx lr
	thumb_func_end ov70_02263008

	thumb_func_start ov70_0226300C
ov70_0226300C: ; 0x0226300C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov70_0226306C
	cmp r0, #1
	beq _02263022
	bl sub_02022974
_02263022:
	add r2, r5, #0
	add r3, r5, #4
	add r2, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r3, #0
	add r0, r5, #4
	add r1, r4, #0
	add r2, r6, #0
	str r3, [sp]
	bl ov70_0226308C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_0226300C

	thumb_func_start ov70_02263044
ov70_02263044: ; 0x02263044
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02263052
	bl sub_02022974
_02263052:
	add r3, r4, #0
	add r3, #0x14
	add r2, r4, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r4, #0x14
	add r0, r4, #0
	bl ov70_02263098
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02263044

	thumb_func_start ov70_0226306C
ov70_0226306C: ; 0x0226306C
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _02263076
	mov r0, #1
	bx lr
_02263076:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0226306C

	thumb_func_start ov70_0226307C
ov70_0226307C: ; 0x0226307C
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02263086
	mov r0, #1
	bx lr
_02263086:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0226307C

	thumb_func_start ov70_0226308C
ov70_0226308C: ; 0x0226308C
	str r1, [r0, #0]
	ldr r1, [sp]
	str r3, [r0, #0xc]
	str r1, [r0, #4]
	str r2, [r0, #8]
	bx lr
	thumb_func_end ov70_0226308C

	thumb_func_start ov70_02263098
ov70_02263098: ; 0x02263098
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #0xc]
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	thumb_func_end ov70_02263098

	thumb_func_start ov70_022630A4
ov70_022630A4: ; 0x022630A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov70_0225DEEC
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_0225DF10
	add r7, r0, #0
	add r0, r5, #0
	bl ov70_0225DF2C
	add r6, r0, #0
	add r0, r5, #0
	bl ov70_0225DEE8
	mov r1, #1
	bl FUN_0222E3E4
	ldrh r0, [r4, #6]
	cmp r0, #4
	blo _022630D4
	bl sub_02022974
_022630D4:
	ldrh r2, [r4, #6]
	ldr r3, _022630E8 ; =0x0226DA78
	add r0, r7, #0
	lsl r2, r2, #3
	add r2, r3, r2
	add r1, r6, #0
	mov r3, #0
	bl ov70_02262E94
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022630E8: .word 0x0226DA78
	thumb_func_end ov70_022630A4

	thumb_func_start ov70_022630EC
ov70_022630EC: ; 0x022630EC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl ov70_0225DF2C
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_0225DF10
	ldr r7, _0226311C ; =0x0226DA10
	add r6, r0, #0
	mov r4, #0
_02263102:
	cmp r5, r4
	beq _02263112
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #0
	bl ov70_02262E94
_02263112:
	add r4, r4, #1
	cmp r4, #0x14
	blt _02263102
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226311C: .word 0x0226DA10
	thumb_func_end ov70_022630EC

	thumb_func_start ov70_02263120
ov70_02263120: ; 0x02263120
	cmp r0, #3
	bhi _02263146
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263130: ; jump table
	.short _02263138 - _02263130 - 2 ; case 0
	.short _0226313C - _02263130 - 2 ; case 1
	.short _02263140 - _02263130 - 2 ; case 2
	.short _02263144 - _02263130 - 2 ; case 3
_02263138:
	mov r1, #0x40
	b _02263146
_0226313C:
	mov r1, #0x80
	b _02263146
_02263140:
	mov r1, #0x20
	b _02263146
_02263144:
	mov r1, #0x10
_02263146:
	ldr r0, _02263158 ; =0x021BF67C
	ldr r0, [r0, #0x44]
	tst r0, r1
	beq _02263152
	mov r0, #1
	bx lr
_02263152:
	mov r0, #0
	bx lr
	nop
_02263158: .word 0x021BF67C
	thumb_func_end ov70_02263120

	thumb_func_start ov70_0226315C
ov70_0226315C: ; 0x0226315C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	add r7, r0, #0
	str r2, [sp, #4]
	add r4, r3, #0
	ldr r5, [sp, #0x28]
	bl ov70_02262E80
	str r0, [sp, #0xc]
	ldr r0, [sp]
	bl ov70_0225DF10
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	mov r2, #0
	cmp r0, #3
	beq _022631F0
	add r6, r4, #0
	add r1, r2, #0
_02263184:
	add r3, r1, #0
_02263186:
	ldrb r0, [r6, r3]
	cmp r0, #0xff
	beq _022631E6
	cmp r5, r0
	bne _022631E0
	mov r0, #0x18
	add r5, r2, #0
	mul r5, r0
	add r6, r4, r5
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _022631A6
	cmp r0, #1
	beq _022631BE
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_022631A6:
	add r0, r7, #0
	bl ov70_02262E64
	add r2, r6, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, #0xc
	mov r3, #0
	bl ov70_02262E94
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_022631BE:
	ldr r7, [r6, #0x14]
	cmp r7, #0
	beq _022631CE
	ldrb r3, [r3, r6]
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	blx r7
_022631CE:
	add r2, r4, r5
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, #0xc
	mov r3, #0
	bl ov70_02262EC0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_022631E0:
	add r3, r3, #1
	cmp r3, #8
	blt _02263186
_022631E6:
	add r6, #0x18
	ldr r0, [r6, #8]
	add r2, r2, #1
	cmp r0, #3
	bne _02263184
_022631F0:
	bl sub_02022974
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226315C

	thumb_func_start ov70_022631F8
ov70_022631F8: ; 0x022631F8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl ov70_0225DEF0
	add r1, r4, #0
	bl ov70_0225CB28
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_0225DF08
	add r5, r0, #0
	add r0, r4, #0
	add r1, sp, #0
	bl ov70_0225D054
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl ov70_02260B20
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_022631F8

	thumb_func_start ov70_02263230
ov70_02263230: ; 0x02263230
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	bl ov70_0225DEF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_0225DF08
	str r0, [sp, #4]
	ldr r3, [sp]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov70_0225CB5C
	add r5, r0, #0
	ldr r3, [sp, #0x20]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov70_0225CD7C
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl ov70_02260B38
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02263230

	thumb_func_start ov70_02263270
ov70_02263270: ; 0x02263270
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0]
	strb r0, [r4, #4]
	mov r0, #1
	strb r0, [r4, #5]
	bl sub_0201D35C
	mov r1, #3
	and r0, r1
	strb r0, [r4, #6]
	mov r0, #1
	strb r0, [r4, #7]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02263270

	thumb_func_start ov70_02263290
ov70_02263290: ; 0x02263290
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _022632A4
	cmp r0, #1
	beq _022632AA
	cmp r0, #2
	beq _022632BC
	b _0226331E
_022632A4:
	mov r0, #0
	str r0, [r4, #0]
	b _0226331E
_022632AA:
	ldrb r0, [r4, #6]
	sub r0, r0, #1
	cmp r0, #0
	ble _022632B6
	strb r0, [r4, #6]
	b _0226331E
_022632B6:
	mov r0, #2
	strb r0, [r4, #5]
	b _0226331E
_022632BC:
	mov r0, #4
	ldrsb r1, [r4, r0]
	mov r3, #0
	add r1, r1, #1
	strb r1, [r4, #4]
	ldrsb r1, [r4, r0]
	ldr r0, _02263324 ; =0x00007FFF
	add r2, r1, #0
	mul r2, r0
	asr r0, r2, #1
	lsr r0, r0, #0x1e
	add r0, r2, r0
	lsl r0, r0, #0xe
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02263328 ; =0x020F983C
	mov r2, #6
	ldrsh r0, [r0, r1]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #0]
	mov r0, #4
	ldrsb r0, [r4, r0]
	cmp r0, #4
	blt _0226331E
	ldrb r0, [r4, #7]
	cmp r0, #1
	bne _0226331C
	strb r3, [r4, #4]
	mov r0, #1
	strb r0, [r4, #5]
	bl sub_0201D35C
	mov r1, #3
	and r0, r1
	strb r0, [r4, #6]
	b _0226331E
_0226331C:
	strb r3, [r4, #5]
_0226331E:
	ldr r0, [r4, #0]
	pop {r4, pc}
	nop
_02263324: .word 0x00007FFF
_02263328: .word 0x020F983C
	thumb_func_end ov70_02263290

	thumb_func_start ov70_0226332C
ov70_0226332C: ; 0x0226332C
	mov r1, #0
	strb r1, [r0, #7]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0226332C

	thumb_func_start ov70_02263334
ov70_02263334: ; 0x02263334
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _0226333E
	mov r0, #1
	bx lr
_0226333E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02263334

	thumb_func_start ov70_02263344
ov70_02263344: ; 0x02263344
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	add r0, r5, #0
	bl ov70_0225DEF0
	add r1, r4, #0
	add r7, r0, #0
	bl ov70_0225CC70
	str r0, [sp]
	add r0, r5, #0
	bl ov70_0225DEE8
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _0226337A
	cmp r0, #1
	beq _0226339E
	cmp r0, #2
	beq _022633B4
	b _0226340C
_0226337A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0225E46C
	add r0, r6, #0
	mov r1, #1
	bl ov70_02262E88
	ldr r0, [sp, #4]
	bl FUN_0222E338
	cmp r4, r0
	bne _0226340C
	add r0, r5, #0
	mov r1, #0
	bl ov70_0225E43C
	b _0226340C
_0226339E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0225E4AC
	cmp r0, #1
	bne _0226340C
	add r0, r6, #0
	mov r1, #2
	bl ov70_02262E88
	b _0226340C
_022633B4:
	ldr r0, [sp, #4]
	bl FUN_0222E338
	cmp r4, r0
	bne _022633CA
	ldr r1, [sp]
	add r0, r7, #0
	mov r2, #1
	bl ov70_0225CDEC
	b _02263400
_022633CA:
	add r0, r5, #0
	bl ov70_0225E3F0
	cmp r0, #1
	bne _022633EA
	add r0, r5, #0
	bl ov70_0225E3E0
	cmp r4, r0
	beq _022633F4
	ldr r1, [sp]
	add r0, r7, #0
	mov r2, #2
	bl ov70_0225CDEC
	b _022633F4
_022633EA:
	ldr r1, [sp]
	add r0, r7, #0
	mov r2, #2
	bl ov70_0225CDEC
_022633F4:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov70_0225DF4C
_02263400:
	add r0, r5, #0
	bl ov70_0225E44C
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226340C:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02263344

	thumb_func_start ov70_02263414
ov70_02263414: ; 0x02263414
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	str r2, [sp]
	bl ov70_0225DEE8
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov70_0225DEF0
	str r0, [sp, #8]
	bl ov70_0225CCAC
	add r7, r0, #0
	add r0, r6, #0
	bl ov70_02262E80
	add r4, r0, #0
	add r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0x16
	bhi _022634FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263452: ; jump table
	.short _02263480 - _02263452 - 2 ; case 0
	.short _022634C0 - _02263452 - 2 ; case 1
	.short _022634F6 - _02263452 - 2 ; case 2
	.short _02263510 - _02263452 - 2 ; case 3
	.short _0226352A - _02263452 - 2 ; case 4
	.short _02263544 - _02263452 - 2 ; case 5
	.short _0226355E - _02263452 - 2 ; case 6
	.short _02263578 - _02263452 - 2 ; case 7
	.short _0226358E - _02263452 - 2 ; case 8
	.short _022635AE - _02263452 - 2 ; case 9
	.short _022635E0 - _02263452 - 2 ; case 10
	.short _02263654 - _02263452 - 2 ; case 11
	.short _0226369A - _02263452 - 2 ; case 12
	.short _022636CC - _02263452 - 2 ; case 13
	.short _022638F6 - _02263452 - 2 ; case 14
	.short _02263740 - _02263452 - 2 ; case 15
	.short _02263786 - _02263452 - 2 ; case 16
	.short _022637DE - _02263452 - 2 ; case 17
	.short _022637FE - _02263452 - 2 ; case 18
	.short _0226384C - _02263452 - 2 ; case 19
	.short _02263876 - _02263452 - 2 ; case 20
	.short _022638AA - _02263452 - 2 ; case 21
	.short _022638BE - _02263452 - 2 ; case 22
_02263480:
	add r0, r6, #0
	mov r1, #0x2c
	bl ov70_02262E3C
	add r1, r5, #0
	add r4, r0, #0
	bl ov70_022653DC
	ldr r0, [sp, #4]
	bl FUN_0222E2CC
	ldr r0, [sp, #4]
	bl FUN_0222F0DC
	strh r0, [r4, #2]
	ldrh r1, [r4, #2]
	ldr r0, [sp, #4]
	bl FUN_0222E528
	ldr r1, [sp]
	add r0, r5, #0
	bl ov70_022631F8
	add r1, r0, #0
	ldr r0, [sp, #8]
	mov r2, #4
	bl ov70_0225CDEC
	add r0, r6, #0
	bl ov70_02262E8C
	b _022638F6
_022634C0:
	add r0, r5, #0
	bl ov70_0225DF30
	cmp r0, #0
	bne _022634FE
	add r0, r7, #0
	bl ov70_0225CE38
	cmp r0, #1
	bne _022634FE
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #0
	bl ov70_0225CDEC
	add r0, r5, #0
	bl ov70_0225DF08
	add r1, r7, #0
	bl ov70_02260B38
	mov r0, #0x10
	str r0, [r4, #4]
	add r0, r6, #0
	bl ov70_02262E8C
	b _022638F6
_022634F6:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	beq _02263500
_022634FE:
	b _022638F6
_02263500:
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225DF18
	add r0, r6, #0
	bl ov70_02262E8C
	b _022638F6
_02263510:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #2
	mov r3, #0
	bl ov70_0225CD7C
	mov r0, #4
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #7
	bl ov70_02262E88
	b _022638F6
_0226352A:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #2
	mov r3, #0
	bl ov70_0225CD7C
	mov r0, #5
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #7
	bl ov70_02262E88
	b _022638F6
_02263544:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #1
	mov r3, #3
	bl ov70_0225CD7C
	mov r0, #6
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #7
	bl ov70_02262E88
	b _022638F6
_0226355E:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #2
	mov r3, #3
	bl ov70_0225CD7C
	mov r0, #8
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #7
	bl ov70_02262E88
	b _022638F6
_02263578:
	add r0, r7, #0
	mov r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _02263662
	ldrh r1, [r4]
	add r0, r6, #0
	bl ov70_02262E88
	b _022638F6
_0226358E:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x10
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov70_02262E88
	b _022638F6
_022635AE:
	add r0, r5, #0
	mov r1, #1
	mov r2, #5
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r4, #8
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov70_0225E074
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E0F4
	add r0, r6, #0
	mov r1, #0xa
	bl ov70_02262E88
	b _022638F6
_022635E0:
	add r0, r5, #0
	mov r7, #0
	bl ov70_0225E0D4
	add r2, r0, #0
	beq _02263600
	sub r0, r7, #2
	cmp r2, r0
	beq _022635FA
	add r0, r0, #1
	cmp r2, r0
	beq _02263614
	b _02263608
_022635FA:
	ldr r0, _022638FC ; =0x000005DC
	bl sub_02005748
_02263600:
	mov r0, #0
	strh r0, [r4, #0x28]
	mov r7, #1
	b _02263614
_02263608:
	add r0, r5, #0
	mov r1, #0
	strh r2, [r4, #0x28]
	mov r7, #1
	bl ov70_0225E30C
_02263614:
	cmp r7, #1
	bne _02263662
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	ldrh r0, [r4, #0x28]
	cmp r0, #0
	beq _0226364A
	add r0, r5, #0
	mov r1, #1
	mov r2, #8
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225E164
	add r0, r6, #0
	mov r1, #0xb
	bl ov70_02262E88
	b _022638F6
_0226364A:
	add r0, r6, #0
	mov r1, #0x11
	bl ov70_02262E88
	b _022638F6
_02263654:
	add r0, r5, #0
	bl ov70_0225E1C4
	cmp r0, #0
	beq _02263664
	cmp r0, #1
	beq _0226368A
_02263662:
	b _022638F6
_02263664:
	add r0, r5, #0
	bl ov70_0225E1F8
	add r0, r6, #0
	mov r1, #0xc
	bl ov70_02262E88
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	ldr r0, [sp, #4]
	bl FUN_0222E56C
	add r0, r5, #0
	bl ov70_0225E390
	ldr r0, _02263900 ; =0x000005E5
	bl sub_02005748
	b _022638F6
_0226368A:
	add r0, r5, #0
	bl ov70_0225E1F8
	add r0, r6, #0
	mov r1, #9
	bl ov70_02262E88
	b _022638F6
_0226369A:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xa
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r4, #8
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov70_0225E074
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E0F4
	add r0, r6, #0
	mov r1, #0xd
	bl ov70_02262E88
	b _022638F6
_022636CC:
	add r0, r5, #0
	mov r7, #0
	bl ov70_0225E0D4
	add r2, r0, #0
	beq _022636EC
	sub r0, r7, #2
	cmp r2, r0
	beq _022636E6
	add r0, r0, #1
	cmp r2, r0
	beq _02263700
	b _022636F4
_022636E6:
	ldr r0, _022638FC ; =0x000005DC
	bl sub_02005748
_022636EC:
	mov r0, #0
	strh r0, [r4, #0x2a]
	mov r7, #1
	b _02263700
_022636F4:
	add r0, r5, #0
	mov r1, #0
	strh r2, [r4, #0x2a]
	mov r7, #1
	bl ov70_0225E30C
_02263700:
	cmp r7, #1
	bne _0226374E
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _02263736
	add r0, r5, #0
	mov r1, #1
	mov r2, #8
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225E164
	add r0, r6, #0
	mov r1, #0xf
	bl ov70_02262E88
	b _022638F6
_02263736:
	add r0, r6, #0
	mov r1, #0x13
	bl ov70_02262E88
	b _022638F6
_02263740:
	add r0, r5, #0
	bl ov70_0225E1C4
	cmp r0, #0
	beq _02263750
	cmp r0, #1
	beq _02263776
_0226374E:
	b _022638F6
_02263750:
	add r0, r5, #0
	bl ov70_0225E1F8
	add r0, r6, #0
	mov r1, #0x14
	bl ov70_02262E88
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	ldr r0, [sp, #4]
	bl FUN_0222E56C
	add r0, r5, #0
	bl ov70_0225E390
	ldr r0, _02263900 ; =0x000005E5
	bl sub_02005748
	b _022638F6
_02263776:
	add r0, r5, #0
	bl ov70_0225E1F8
	add r0, r6, #0
	mov r1, #0xc
	bl ov70_02262E88
	b _022638F6
_02263786:
	ldr r0, _02263904 ; =0x000005A8
	bl sub_02005748
	add r0, r5, #0
	bl ov70_0225E430
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrh r1, [r4, #2]
	add r0, r5, #0
	mov r2, #1
	bl ov70_0225E29C
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl FUN_0222E924
	cmp r0, #0
	bne _022637BE
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E20C
	b _022637C8
_022637BE:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x7c
	bl ov70_0225E20C
_022637C8:
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x12
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov70_02262E88
	b _022638F6
_022637DE:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x16
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov70_02262E88
	b _022638F6
_022637FE:
	ldr r0, _02263904 ; =0x000005A8
	bl sub_020057D4
	cmp r0, #0
	bne _022638F6
	ldr r0, _02263908 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _022638F6
	ldr r0, _022638FC ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	mov r1, #1
	mov r2, #4
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #9
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov70_02262E88
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	ldr r0, [sp, #4]
	bl FUN_0222E56C
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E328
	b _022638F6
_0226384C:
	ldrh r2, [r4, #0x28]
	add r0, r5, #0
	mov r1, #0
	bl ov70_0225E30C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xc
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x11
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov70_02262E88
	b _022638F6
_02263876:
	ldrh r2, [r4, #0x28]
	add r0, r5, #0
	mov r1, #0
	bl ov70_0225E30C
	ldrh r2, [r4, #0x2a]
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E30C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xb
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x11
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov70_02262E88
	b _022638F6
_022638AA:
	add r0, r5, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _022638F6
	ldrh r1, [r4]
	add r0, r6, #0
	bl ov70_02262E88
	b _022638F6
_022638BE:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r5, #0
	bl ov70_0225DFEC
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02265450
	add r0, r6, #0
	bl ov70_02262E64
	add r0, r5, #0
	bl ov70_0225DF10
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_0225DF2C
	add r1, r0, #0
	ldr r2, _0226390C ; =0x0226D9D0
	add r0, r4, #0
	mov r3, #0
	bl ov70_02262E94
_022638F6:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022638FC: .word 0x000005DC
_02263900: .word 0x000005E5
_02263904: .word 0x000005A8
_02263908: .word 0x021BF67C
_0226390C: .word 0x0226D9D0
	thumb_func_end ov70_02263414

	thumb_func_start ov70_02263910
ov70_02263910: ; 0x02263910
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r2, [sp, #4]
	bl ov70_0225DEE8
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov70_0225DEEC
	add r6, r0, #0
	add r0, r4, #0
	bl ov70_0225DEF0
	str r0, [sp, #0xc]
	bl ov70_0225CCAC
	add r7, r0, #0
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #5
	bls _02263944
	b _02263A4E
_02263944:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263950: ; jump table
	.short _0226395C - _02263950 - 2 ; case 0
	.short _02263988 - _02263950 - 2 ; case 1
	.short _022639BE - _02263950 - 2 ; case 2
	.short _022639EE - _02263950 - 2 ; case 3
	.short _02263A12 - _02263950 - 2 ; case 4
	.short _02263A2A - _02263950 - 2 ; case 5
_0226395C:
	mov r0, #1
	str r0, [sp]
	ldrh r2, [r6]
	ldrh r3, [r6, #2]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov70_02263230
	bl FUN_02231760
	cmp r0, #0
	bne _02263978
	bl FUN_02232AA4
_02263978:
	ldr r0, [sp, #8]
	mov r1, #0
	bl FUN_0222E31C
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263A4E
_02263988:
	bl FUN_02231760
	cmp r0, #0
	bne _02263998
	bl FUN_02232AD4
	cmp r0, #0
	beq _02263A4E
_02263998:
	add r0, r4, #0
	bl ov70_0225DEEC
	add r6, r0, #0
	add r0, r4, #0
	bl ov70_0225DF30
	cmp r0, #0
	bne _02263A4E
	add r0, r5, #0
	bl ov70_02262E8C
	ldrh r3, [r6, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #2
	bl ov70_0225CDAC
	b _02263A4E
_022639BE:
	add r0, r7, #0
	mov r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _02263A4E
	add r0, r4, #0
	mov r1, #1
	bl ov70_0225DF18
	ldr r0, [sp, #8]
	bl FUN_0222E2B4
	cmp r0, #1
	bne _022639E4
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263A4E
_022639E4:
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _02263A4E
_022639EE:
	ldrh r1, [r6, #8]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x15
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263A4E
_02263A12:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _02263A4E
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263A4E
_02263A2A:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r4, #0
	bl ov70_0225DF10
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_0225DF2C
	add r1, r0, #0
	ldr r2, _02263A54 ; =0x0226D9D0
	add r0, r5, #0
	mov r3, #0
	bl ov70_02262E94
_02263A4E:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02263A54: .word 0x0226D9D0
	thumb_func_end ov70_02263910

	thumb_func_start ov70_02263A58
ov70_02263A58: ; 0x02263A58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r2, [sp, #4]
	bl ov70_0225DF10
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov70_0225DEF0
	str r0, [sp, #0xc]
	bl ov70_0225CCAC
	add r7, r0, #0
	add r0, r4, #0
	bl ov70_0225DEE8
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl ov70_0225DEEC
	add r6, r0, #0
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #5
	bls _02263A94
	b _02263B96
_02263A94:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263AA0: ; jump table
	.short _02263AAC - _02263AA0 - 2 ; case 0
	.short _02263ADE - _02263AA0 - 2 ; case 1
	.short _02263B04 - _02263AA0 - 2 ; case 2
	.short _02263B36 - _02263AA0 - 2 ; case 3
	.short _02263B5A - _02263AA0 - 2 ; case 4
	.short _02263B72 - _02263AA0 - 2 ; case 5
_02263AAC:
	mov r0, #1
	str r0, [sp]
	ldrh r2, [r6]
	ldrh r3, [r6, #2]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov70_02263230
	add r0, r5, #0
	bl ov70_02262E8C
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	ldr r2, _02263B9C ; =0x0226DA00
	mov r3, #0
	bl ov70_02262EC0
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl FUN_0222E2C4
	ldr r0, [sp, #0x10]
	bl FUN_0222E2CC
	b _02263B96
_02263ADE:
	add r0, r4, #0
	bl ov70_0225DEEC
	add r6, r0, #0
	add r0, r4, #0
	bl ov70_0225DF30
	cmp r0, #0
	bne _02263B96
	add r0, r5, #0
	bl ov70_02262E8C
	ldrh r3, [r6, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #2
	bl ov70_0225CDAC
	b _02263B96
_02263B04:
	add r0, r7, #0
	mov r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _02263B96
	add r0, r4, #0
	mov r1, #1
	bl ov70_0225DF18
	ldr r0, [sp, #0x10]
	bl FUN_0222E220
	cmp r0, #1
	bne _02263B2C
	add r0, r5, #0
	mov r1, #3
	bl ov70_02262E88
	b _02263B96
_02263B2C:
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _02263B96
_02263B36:
	ldrh r1, [r6, #8]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #0
	mov r2, #8
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263B96
_02263B5A:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _02263B96
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263B96
_02263B72:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r4, #0
	bl ov70_0225DF10
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_0225DF2C
	add r1, r0, #0
	ldr r2, _02263BA0 ; =0x0226D9D0
	add r0, r5, #0
	mov r3, #0
	bl ov70_02262E94
_02263B96:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02263B9C: .word 0x0226DA00
_02263BA0: .word 0x0226D9D0
	thumb_func_end ov70_02263A58

	thumb_func_start ov70_02263BA4
ov70_02263BA4: ; 0x02263BA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r2, [sp, #4]
	bl ov70_0225DEE8
	add r7, r0, #0
	add r0, r4, #0
	bl ov70_0225DEEC
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov70_0225DEF0
	str r0, [sp, #0xc]
	bl ov70_0225CCAC
	add r6, r0, #0
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #5
	bhi _02263CBE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263BE2: ; jump table
	.short _02263BEE - _02263BE2 - 2 ; case 0
	.short _02263C12 - _02263BE2 - 2 ; case 1
	.short _02263C38 - _02263BE2 - 2 ; case 2
	.short _02263C68 - _02263BE2 - 2 ; case 3
	.short _02263C82 - _02263BE2 - 2 ; case 4
	.short _02263C9A - _02263BE2 - 2 ; case 5
_02263BEE:
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #8]
	ldrh r2, [r2]
	ldrh r3, [r3, #2]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov70_02263230
	add r0, r7, #0
	mov r1, #0
	bl FUN_0222E31C
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263CBE
_02263C12:
	add r0, r4, #0
	bl ov70_0225DEEC
	add r7, r0, #0
	add r0, r4, #0
	bl ov70_0225DF30
	cmp r0, #0
	bne _02263CBE
	add r0, r5, #0
	bl ov70_02262E8C
	ldrh r3, [r7, #4]
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	mov r2, #2
	bl ov70_0225CDAC
	b _02263CBE
_02263C38:
	add r0, r6, #0
	mov r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _02263CBE
	add r0, r4, #0
	mov r1, #1
	bl ov70_0225DF18
	add r0, r7, #0
	bl FUN_0222E2B4
	cmp r0, #1
	bne _02263C5E
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263CBE
_02263C5E:
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _02263CBE
_02263C68:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x5b
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263CBE
_02263C82:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _02263CBE
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r5, #0
	bl ov70_02262E8C
	b _02263CBE
_02263C9A:
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r4, #0
	bl ov70_0225DF10
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_0225DF2C
	add r1, r0, #0
	ldr r2, _02263CC4 ; =0x0226D9D0
	add r0, r5, #0
	mov r3, #0
	bl ov70_02262E94
_02263CBE:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02263CC4: .word 0x0226D9D0
	thumb_func_end ov70_02263BA4

	thumb_func_start ov70_02263CC8
ov70_02263CC8: ; 0x02263CC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	str r0, [sp, #4]
	add r5, r1, #0
	add r7, r2, #0
	bl ov70_02262E80
	str r0, [sp, #0x30]
	ldr r0, [sp, #4]
	bl ov70_02262E84
	cmp r0, #0
	beq _02263CE8
	cmp r0, #1
	beq _02263CF8
	b _02264106
_02263CE8:
	ldr r0, [sp, #4]
	mov r1, #4
	bl ov70_02262E3C
	ldr r0, [sp, #4]
	bl ov70_02262E8C
	b _02264106
_02263CF8:
	add r0, r5, #0
	mov r1, #0
	bl ov70_0225E43C
	add r0, r5, #0
	bl ov70_0225DF10
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl ov70_0225DEE8
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl ov70_0225DEF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_0225DF00
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ov70_0225DEF8
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl ov70_0225CCB0
	add r6, r0, #0
	beq _02263D7A
	ldr r0, [sp, #0x18]
	bl FUN_0222E12C
	cmp r0, #0
	bne _02263D66
	ldr r0, [sp, #0x18]
	bl FUN_0222E19C
	cmp r0, #1
	bne _02263D66
	ldr r0, [sp, #0x18]
	bl FUN_0222E0F4
	cmp r0, #0
	bne _02263D66
	add r0, r6, #0
	bl ov70_0225CE3C
	cmp r0, #9
	beq _02263D7A
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #9
	bl ov70_0225CDEC
	b _02263D7A
_02263D66:
	add r0, r6, #0
	bl ov70_0225CE3C
	cmp r0, #0
	beq _02263D7A
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0
	bl ov70_0225CDEC
_02263D7A:
	add r0, r4, #0
	bl ov70_0225CCAC
	str r0, [sp, #0x28]
	mov r1, #5
	bl ov70_0225CD60
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	mov r1, #6
	bl ov70_0225CD60
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	bl ov70_0225CD34
	add r1, sp, #0x40
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
	ldr r1, [sp, #8]
	strh r0, [r2, #2]
	ldr r0, [r2, #0]
	bl FUN_0222C078
	add r2, sp, #0x40
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #0xc
	strh r0, [r2, #8]
	ldrh r0, [r2, #2]
	strh r0, [r2, #0xa]
	ldrsh r1, [r2, r1]
	ldr r0, [sp, #0x1c]
	asr r3, r1, #3
	lsr r3, r3, #0x1c
	add r3, r1, r3
	lsl r1, r3, #0xc
	mov r3, #0xe
	ldrsh r2, [r2, r3]
	lsr r1, r1, #0x10
	asr r3, r2, #3
	lsr r3, r3, #0x1c
	add r3, r2, r3
	lsl r2, r3, #0xc
	lsr r2, r2, #0x10
	bl ov70_0225C8C4
	str r0, [sp, #0x24]
	add r0, sp, #0x40
	mov r1, #0xa
	ldrsh r2, [r0, r1]
	asr r1, r2, #3
	lsr r1, r1, #0x1c
	add r1, r2, r1
	asr r1, r1, #4
	str r1, [sp, #0x10]
	mov r1, #8
	ldrsh r1, [r0, r1]
	ldr r2, [sp, #0x10]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	ldr r0, [sp, #0x1c]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov70_0225C8C4
	add r6, r0, #0
	add r0, r5, #0
	bl ov70_0225E3E0
	add r1, r0, #0
	cmp r1, r7
	beq _02263E44
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov70_0225DF84
	cmp r0, #0
	beq _02263E44
	add r0, r5, #0
	bl ov70_0225E3D0
_02263E44:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _02263E90
	add r0, r5, #0
	bl ov70_0225E400
	cmp r0, #1
	bne _02263E5C
	ldr r0, [sp, #0x2c]
	sub r0, r0, #1
	cmp r0, #2
	bls _02263E5E
_02263E5C:
	b _02264106
_02263E5E:
	add r0, r5, #0
	bl ov70_0225E3E0
	add r1, r0, #0
	cmp r1, r7
	beq _02263E88
	add r0, r4, #0
	bl ov70_0225CC70
	add r6, r0, #0
	beq _02263E88
	bl ov70_0225CE3C
	cmp r0, #0
	bne _02263E88
	ldr r2, [sp, #0x30]
	add r0, r4, #0
	ldr r2, [r2, #0]
	add r1, r6, #0
	bl ov70_0225CDEC
_02263E88:
	add r0, r5, #0
	bl ov70_0225E3D0
	b _02264106
_02263E90:
	add r0, r5, #0
	mov r1, #0
	bl ov70_0225E43C
	ldr r0, [sp, #0x24]
	bl ov70_0225C930
	cmp r0, #1
	bne _02263ED6
	ldr r0, [sp, #0x24]
	ldr r3, _0226410C ; =0x0226DBB8
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r7, #0
	bl ov70_0226315C
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225CDEC
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov70_0225DF3C
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02263ED6:
	add r0, r5, #0
	bl ov70_0225E45C
	cmp r0, #1
	bne _02263F04
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225CDEC
	ldr r0, [sp, #0x14]
	ldr r2, _02264110 ; =0x0226DA18
	add r1, r7, #0
	mov r3, #0
	bl ov70_02262EC0
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02263F04:
	ldr r0, [sp, #0x18]
	bl FUN_0222EE08
	cmp r0, #0
	beq _02263F32
	ldr r0, [sp, #0x14]
	ldr r2, _02264114 ; =0x0226DA08
	add r1, r7, #0
	mov r3, #0
	bl ov70_02262EC0
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225CDEC
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02263F32:
	ldr r0, _02264118 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0226401C
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl ov70_0225CE40
	str r0, [sp, #0x34]
	cmp r0, #0
	beq _02263FA2
	mov r1, #5
	bl ov70_0225CD60
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	mov r1, #4
	bl ov70_0225CD60
	add r1, r0, #0
	cmp r1, #0xfe
	beq _02263FA2
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov70_0225DF64
	ldr r1, [sp, #0x38]
	cmp r1, #0
	bne _02263FA2
	cmp r0, #0
	bne _02263FA2
	ldr r0, [sp, #0x14]
	ldr r2, _0226411C ; =0x0226D9F8
	add r1, r7, #0
	mov r3, #0
	bl ov70_02262EC0
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225CDEC
	ldr r1, [sp, #0x34]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225CDEC
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02263FA2:
	add r0, r6, #0
	bl ov70_0225C990
	cmp r0, #1
	bne _02263FE2
	ldr r0, [sp, #0x28]
	mov r1, #6
	bl ov70_0225CD60
	cmp r0, #0
	bne _02263FE2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [sp, #0x20]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov70_02262484
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov70_0225DF3C
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02263FE2:
	add r0, r6, #0
	bl ov70_0225C970
	cmp r0, #1
	bne _0226401C
	ldr r0, [sp, #4]
	ldr r3, _02264120 ; =0x0226DB28
	add r1, r5, #0
	add r2, r7, #0
	str r6, [sp]
	bl ov70_0226315C
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225CDEC
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov70_0225DF3C
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0226401C:
	ldr r0, [sp, #8]
	bl ov70_02263120
	cmp r0, #1
	bne _022640BC
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _02264066
	add r0, r6, #0
	bl ov70_0225C950
	cmp r0, #1
	bne _02264066
	ldr r0, [sp, #4]
	ldr r3, _02264124 ; =0x0226DAF8
	add r1, r5, #0
	add r2, r7, #0
	str r6, [sp]
	bl ov70_0226315C
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225CDEC
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov70_0225DF3C
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02264066:
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl ov70_0225CE40
	str r0, [sp, #0x3c]
	cmp r0, #0
	beq _022640BC
	mov r1, #4
	bl ov70_0225CD60
	add r6, r0, #0
	cmp r6, #0xfe
	beq _022640BC
	add r0, r5, #0
	bl ov70_0225E3F0
	cmp r0, #0
	bne _022640BC
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov70_0225DF84
	cmp r0, #0
	bne _022640BC
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov70_0225E328
	ldr r0, [sp, #0x3c]
	bl ov70_0225CE3C
	ldr r1, [sp, #0x30]
	mov r2, #0
	str r0, [r1, #0]
	ldr r1, [sp, #0x3c]
	add r0, r4, #0
	bl ov70_0225CDEC
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022640BC:
	ldr r0, _02264118 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	lsl r0, r0, #0xa
	tst r0, r1
	beq _02264106
	add r0, r5, #0
	bl ov70_0225E3F0
	cmp r0, #0
	bne _022640EA
	ldr r0, [sp, #0x18]
	bl FUN_0222E338
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E328
	ldr r0, _02264128 ; =0x000005DC
	bl sub_02005748
	b _02264100
_022640EA:
	add r0, r5, #0
	bl ov70_0225E3E0
	cmp r0, r7
	bne _02264100
	add r0, r5, #0
	bl ov70_0225E3D0
	ldr r0, _02264128 ; =0x000005DC
	bl sub_02005748
_02264100:
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02264106:
	mov r0, #0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226410C: .word 0x0226DBB8
_02264110: .word 0x0226DA18
_02264114: .word 0x0226DA08
_02264118: .word 0x021BF67C
_0226411C: .word 0x0226D9F8
_02264120: .word 0x0226DB28
_02264124: .word 0x0226DAF8
_02264128: .word 0x000005DC
	thumb_func_end ov70_02263CC8

	thumb_func_start ov70_0226412C
ov70_0226412C: ; 0x0226412C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov70_0225DEF0
	bl ov70_0225CCAC
	mov r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	beq _0226414C
	add r0, r4, #0
	mov r1, #1
	bl ov70_0225E43C
_0226414C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov70_0226412C

	thumb_func_start ov70_02264150
ov70_02264150: ; 0x02264150
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl ov70_02262E84
	cmp r0, #9
	bhi _022641F8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226416C: ; jump table
	.short _02264180 - _0226416C - 2 ; case 0
	.short _022641C2 - _0226416C - 2 ; case 1
	.short _022641D4 - _0226416C - 2 ; case 2
	.short _022641EE - _0226416C - 2 ; case 3
	.short _02264202 - _0226416C - 2 ; case 4
	.short _02264210 - _0226416C - 2 ; case 5
	.short _0226424C - _0226416C - 2 ; case 6
	.short _02264280 - _0226416C - 2 ; case 7
	.short _022642B2 - _0226416C - 2 ; case 8
	.short _022642D2 - _0226416C - 2 ; case 9
_02264180:
	add r0, r4, #0
	bl ov70_0225DEF0
	add r6, r0, #0
	bl ov70_0225CCAC
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0
	bl ov70_0225CDEC
	add r0, r4, #0
	bl ov70_0225DEE8
	mov r1, #0xb
	bl FUN_0222E3E4
	ldr r0, _0226431C ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x41
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264316
_022641C2:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _022641F8
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264316
_022641D4:
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x19
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264316
_022641EE:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	beq _022641FA
_022641F8:
	b _02264316
_022641FA:
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264316
_02264202:
	add r0, r4, #0
	bl ov70_0225E194
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264316
_02264210:
	add r0, r4, #0
	mov r6, #0
	bl ov70_0225E1C4
	cmp r0, #0
	beq _02264224
	cmp r0, #1
	beq _02264230
	cmp r0, #2
	b _0226423A
_02264224:
	add r0, r5, #0
	mov r1, #6
	bl ov70_02262E88
	mov r6, #1
	b _0226423A
_02264230:
	add r0, r5, #0
	mov r1, #8
	bl ov70_02262E88
	mov r6, #1
_0226423A:
	cmp r6, #1
	bne _02264316
	add r0, r4, #0
	bl ov70_0225E1F8
	add r0, r4, #0
	bl ov70_0225DFEC
	b _02264316
_0226424C:
	add r0, r4, #0
	mov r1, #0
	bl ov70_0225DF18
	add r0, r4, #0
	bl ov70_0225DEF0
	add r6, r0, #0
	bl ov70_0225CCAC
	add r7, r0, #0
	add r0, r4, #0
	bl ov70_0225DF08
	bl ov70_02260B3C
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #3
	bl ov70_0225CDEC
	add r0, r5, #0
	mov r1, #7
	bl ov70_02262E88
	b _02264316
_02264280:
	add r0, r4, #0
	bl ov70_0225DEF0
	bl ov70_0225CCAC
	bl ov70_0225CE38
	cmp r0, #1
	bne _02264316
	add r0, r4, #0
	mov r1, #1
	bl ov70_0225DF34
	add r0, r4, #0
	mov r1, #0
	bl ov70_0225DF38
	add r0, r4, #0
	bl ov70_0225DEE8
	mov r1, #0xb
	bl FUN_0222E3E4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022642B2:
	add r0, r4, #0
	bl ov70_0225DEF0
	add r4, r0, #0
	bl ov70_0225CCAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #2
	mov r3, #0
	bl ov70_0225CDAC
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264316
_022642D2:
	add r0, r4, #0
	bl ov70_0225DEE8
	mov r1, #1
	bl FUN_0222E3E4
	add r0, r4, #0
	bl ov70_0225DEF0
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_0225DF10
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_0225CCAC
	mov r1, #5
	add r6, r0, #0
	bl ov70_0225CD60
	cmp r0, #0
	bne _02264316
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov70_0225CDEC
	ldr r2, _02264320 ; =0x0226D9D0
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0
	bl ov70_02262E94
_02264316:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226431C: .word 0x000005DD
_02264320: .word 0x0226D9D0
	thumb_func_end ov70_02264150

	thumb_func_start ov70_02264324
ov70_02264324: ; 0x02264324
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r1, #0
	add r5, r0, #0
	str r2, [sp, #0x10]
	add r0, r4, #0
	bl ov70_0225DEF0
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x28]
	bl ov70_0225CC70
	add r7, r0, #0
	add r0, r4, #0
	bl ov70_0225DF40
	str r0, [sp, #0x20]
	add r0, r5, #0
	bl ov70_02262E80
	add r6, r0, #0
	add r0, r4, #0
	bl ov70_0225DEE8
	str r0, [sp, #0x24]
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #8
	bls _02264362
	b _022646BC
_02264362:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226436E: ; jump table
	.short _02264380 - _0226436E - 2 ; case 0
	.short _02264440 - _0226436E - 2 ; case 1
	.short _022644DE - _0226436E - 2 ; case 2
	.short _022645B4 - _0226436E - 2 ; case 3
	.short _02264606 - _0226436E - 2 ; case 4
	.short _0226461E - _0226436E - 2 ; case 5
	.short _02264644 - _0226436E - 2 ; case 6
	.short _0226465E - _0226436E - 2 ; case 7
	.short _0226468C - _0226436E - 2 ; case 8
_02264380:
	add r0, r5, #0
	mov r1, #0xc
	bl ov70_02262E3C
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	bl ov70_02264B64
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	bhi _022643C4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022643A4: ; jump table
	.short _022643AC - _022643A4 - 2 ; case 0
	.short _022643B2 - _022643A4 - 2 ; case 1
	.short _022643B8 - _022643A4 - 2 ; case 2
	.short _022643BE - _022643A4 - 2 ; case 3
_022643AC:
	mov r0, #3
	str r0, [r4, #8]
	b _022643CC
_022643B2:
	mov r0, #4
	str r0, [r4, #8]
	b _022643CC
_022643B8:
	mov r0, #5
	str r0, [r4, #8]
	b _022643CC
_022643BE:
	mov r0, #6
	str r0, [r4, #8]
	b _022643CC
_022643C4:
	bl sub_02022974
	mov r0, #5
	str r0, [r4, #8]
_022643CC:
	ldr r0, [sp, #0x24]
	bl FUN_0222E12C
	cmp r0, #1
	bne _022643E8
	mov r0, #0x16
	strh r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #6]
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _022646BC
_022643E8:
	ldr r0, [sp, #0x24]
	bl FUN_0222E004
	cmp r0, #1
	bne _02264404
	mov r0, #0x48
	strh r0, [r4, #4]
	mov r0, #1
	strh r0, [r4, #6]
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _022646BC
_02264404:
	ldr r0, [sp, #0x20]
	bl ov70_02264B64
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r6, #0
	bl FUN_02232B00
	cmp r0, #0
	bne _0226442A
	mov r0, #0x14
	strh r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #6]
	add r0, r5, #0
	mov r1, #3
	bl ov70_02262E88
	b _022646BC
_0226442A:
	add r0, r6, #0
	bl FUN_02232A48
	cmp r0, #0
	bne _02264438
	bl sub_02022974
_02264438:
	add r0, r5, #0
	bl ov70_02262E8C
	b _022646BC
_02264440:
	bl FUN_02232A84
	cmp r0, #1
	bne _022644C6
	add r0, r5, #0
	mov r1, #2
	bl ov70_02262E88
	add r1, sp, #0x40
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	add r0, r4, #0
	bl ov70_0225DEE8
	add r7, r0, #0
	bl FUN_0222E964
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	ldr r0, [r6, #8]
	sub r0, r0, #5
	cmp r0, #1
	bhi _022644A0
	mov r5, #0
	add r4, r5, #0
_0226447A:
	add r0, r7, #0
	add r1, r4, #0
	bl FUN_0222E974
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02264498
	cmp r5, #4
	bhs _02264492
	add r1, sp, #0x40
	strb r0, [r1, r5]
_02264492:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_02264498:
	add r4, r4, #1
	cmp r4, #4
	blt _0226447A
	b _022644A6
_022644A0:
	ldr r0, [sp, #0x10]
	add r1, sp, #0x38
	strb r0, [r1, #8]
_022644A6:
	add r3, sp, #0x38
	ldrb r0, [r3, #9]
	str r0, [sp]
	ldrb r0, [r3, #0xa]
	str r0, [sp, #4]
	ldrb r0, [r3, #0xb]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r3, #8]
	ldr r1, [r6, #8]
	ldr r2, [sp, #0x1c]
	add r0, r7, #0
	bl FUN_0222EA10
	b _022646BC
_022644C6:
	cmp r0, #2
	beq _022644CC
	b _022646BC
_022644CC:
	mov r0, #0x14
	strh r0, [r6, #4]
	mov r0, #0
	strh r0, [r6, #6]
	add r0, r5, #0
	mov r1, #3
	bl ov70_02262E88
	b _022646BC
_022644DE:
	ldr r0, [sp, #0x20]
	bl ov70_02264BCC
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	bl ov70_02264C34
	str r0, [sp, #0x30]
	add r0, r4, #0
	mov r1, #1
	bl ov70_0225DF34
	ldr r1, [sp, #0x2c]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov70_0225DF38
	add r0, r4, #0
	bl ov70_0225DEE8
	ldr r1, [sp, #0x30]
	bl FUN_0222E3E4
	ldr r0, [sp, #0x24]
	ldr r1, [r6, #8]
	bl FUN_0222EF94
	ldr r0, [r6, #8]
	cmp r0, #6
	bhi _02264548
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02264528: ; jump table
	.short _02264548 - _02264528 - 2 ; case 0
	.short _02264548 - _02264528 - 2 ; case 1
	.short _02264548 - _02264528 - 2 ; case 2
	.short _02264536 - _02264528 - 2 ; case 3
	.short _02264536 - _02264528 - 2 ; case 4
	.short _0226453C - _02264528 - 2 ; case 5
	.short _02264542 - _02264528 - 2 ; case 6
_02264536:
	mov r0, #5
	str r0, [sp, #0x18]
	b _0226454C
_0226453C:
	mov r0, #3
	str r0, [sp, #0x18]
	b _0226454C
_02264542:
	mov r0, #4
	str r0, [sp, #0x18]
	b _0226454C
_02264548:
	bl sub_02022974
_0226454C:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x18]
	bl FUN_0222F040
	add r0, r7, #0
	mov r1, #6
	bl ov70_0225CD60
	bl FUN_0222C0AC
	str r0, [sp, #0x34]
	add r0, r4, #0
	bl ov70_0225DEEC
	add r4, r0, #0
	add r0, r7, #0
	bl ov70_0225CD34
	add r1, sp, #0x38
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #1
	strh r0, [r4, #6]
	mov r0, #4
	ldrsh r2, [r1, r0]
	asr r0, r2, #3
	lsr r0, r0, #0x1c
	add r0, r2, r0
	asr r0, r0, #4
	strh r0, [r4]
	mov r0, #6
	ldrsh r1, [r1, r0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	strh r0, [r4, #2]
	ldr r0, [sp, #0x34]
	strh r0, [r4, #4]
	ldr r0, [r6, #8]
	strh r0, [r4, #8]
	add r0, r5, #0
	bl ov70_02262E64
	add sp, #0x44
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022645B4:
	add r0, r7, #0
	mov r1, #6
	bl ov70_0225CD60
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	bhi _022645F0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022645D0: ; jump table
	.short _022645D8 - _022645D0 - 2 ; case 0
	.short _022645DE - _022645D0 - 2 ; case 1
	.short _022645E4 - _022645D0 - 2 ; case 2
	.short _022645EA - _022645D0 - 2 ; case 3
_022645D8:
	mov r0, #6
	str r0, [sp, #0x14]
	b _022645F4
_022645DE:
	mov r0, #5
	str r0, [sp, #0x14]
	b _022645F4
_022645E4:
	mov r0, #8
	str r0, [sp, #0x14]
	b _022645F4
_022645EA:
	mov r0, #7
	str r0, [sp, #0x14]
	b _022645F4
_022645F0:
	bl sub_02022974
_022645F4:
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x14]
	add r1, r7, #0
	bl ov70_0225CDEC
	add r0, r5, #0
	bl ov70_02262E8C
	b _022646BC
_02264606:
	add r0, r7, #0
	bl ov70_0225CE38
	cmp r0, #1
	bne _022646BC
	mov r0, #8
	str r0, [r6, #0]
	add r0, r5, #0
	mov r1, #7
	bl ov70_02262E88
	b _022646BC
_0226461E:
	add r0, r7, #0
	mov r1, #6
	bl ov70_0225CD60
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl FUN_0222C0AC
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	mov r2, #2
	bl ov70_0225CDAC
	add r0, r5, #0
	bl ov70_02262E8C
	b _022646BC
_02264644:
	add r0, r7, #0
	mov r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _022646BC
	mov r0, #8
	str r0, [r6, #0]
	add r0, r5, #0
	mov r1, #7
	bl ov70_02262E88
	b _022646BC
_0226465E:
	ldr r0, [r6, #0]
	sub r0, r0, #1
	str r0, [r6, #0]
	cmp r0, #0
	bgt _022646BC
	ldr r1, [r6, #8]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225E27C
	ldrh r1, [r6, #6]
	ldrh r2, [r6, #4]
	add r0, r4, #0
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	bl ov70_02262E8C
	b _022646BC
_0226468C:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #0
	beq _022646BC
	add r0, r5, #0
	bl ov70_02262E64
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r4, #0
	bl ov70_0225DF10
	ldr r1, [sp, #0x10]
	ldr r2, _022646C4 ; =0x0226D9D0
	mov r3, #0
	bl ov70_02262E94
_022646BC:
	mov r0, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_022646C4: .word 0x0226D9D0
	thumb_func_end ov70_02264324

	thumb_func_start ov70_022646C8
ov70_022646C8: ; 0x022646C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r1, #0
	add r7, r0, #0
	str r2, [sp]
	bl ov70_02262E80
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_0225DF10
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov70_0225DEF0
	str r0, [sp, #0x18]
	bl ov70_0225CCAC
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl ov70_0225DEE8
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl ov70_02262E84
	cmp r0, #7
	bls _02264702
	b _02264966
_02264702:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226470E: ; jump table
	.short _0226471E - _0226470E - 2 ; case 0
	.short _02264792 - _0226470E - 2 ; case 1
	.short _022647AC - _0226470E - 2 ; case 2
	.short _0226486A - _0226470E - 2 ; case 3
	.short _0226488A - _0226470E - 2 ; case 4
	.short _0226489E - _0226470E - 2 ; case 5
	.short _02264922 - _0226470E - 2 ; case 6
	.short _0226493A - _0226470E - 2 ; case 7
_0226471E:
	add r0, r7, #0
	mov r1, #4
	bl ov70_02262E3C
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	mov r2, #0
	bl ov70_0225CDEC
	add r0, r7, #0
	bl ov70_02262E8C
	mov r0, #0
	strb r0, [r5]
	add r0, r4, #0
	bl ov70_0225DF40
	cmp r0, #0x1e
	beq _02264750
	cmp r0, #0x1f
	beq _0226475C
	cmp r0, #0x20
	beq _02264768
	b _02264774
_02264750:
	mov r0, #0
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #2
	strb r0, [r5, #3]
	b _02264778
_0226475C:
	mov r0, #1
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #3
	strb r0, [r5, #3]
	b _02264778
_02264768:
	mov r0, #2
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #4
	strb r0, [r5, #3]
	b _02264778
_02264774:
	bl sub_02022974
_02264778:
	add r0, r4, #0
	bl ov70_0225DEE8
	mov r1, #0xc
	bl FUN_0222E3E4
	ldr r0, [sp, #0x14]
	ldr r1, [sp]
	ldr r2, _0226496C ; =0x0226DA20
	add r3, r5, #0
	bl ov70_02262EC0
	b _02264966
_02264792:
	ldrb r0, [r5]
	cmp r0, #8
	bne _022647A2
	add r0, r7, #0
	mov r1, #2
	bl ov70_02262E88
	b _02264966
_022647A2:
	add r0, r7, #0
	mov r1, #3
	bl ov70_02262E88
	b _02264966
_022647AC:
	add r0, r4, #0
	bl ov70_0225DF40
	cmp r0, #0x1e
	beq _022647C0
	cmp r0, #0x1f
	beq _022647C8
	cmp r0, #0x20
	beq _022647D0
	b _022647D6
_022647C0:
	mov r0, #0
	mov r6, #3
	str r0, [sp, #8]
	b _022647D6
_022647C8:
	mov r0, #1
	mov r6, #4
	str r0, [sp, #8]
	b _022647D6
_022647D0:
	mov r0, #2
	mov r6, #5
	str r0, [sp, #8]
_022647D6:
	add r0, r4, #0
	mov r1, #1
	bl ov70_0225DF34
	lsl r1, r6, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov70_0225DF38
	ldrb r1, [r5, #2]
	ldr r0, [sp, #0xc]
	bl FUN_0222EF94
	ldr r0, [sp, #0xc]
	bl FUN_0222F030
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl FUN_0222F040
	ldr r0, [sp, #0x10]
	mov r1, #6
	bl ov70_0225CD60
	bl FUN_0222C0AC
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl ov70_0225DEEC
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	bl ov70_0225CD34
	add r1, sp, #0x20
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #2
	strh r0, [r6, #6]
	mov r0, #4
	ldrsh r0, [r1, r0]
	asr r2, r0, #3
	lsr r2, r2, #0x1c
	add r2, r0, r2
	asr r0, r2, #4
	strh r0, [r6]
	mov r0, #6
	ldrsh r1, [r1, r0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	strh r0, [r6, #2]
	ldr r0, [sp, #0x1c]
	strh r0, [r6, #4]
	ldrb r0, [r5, #2]
	strh r0, [r6, #8]
	add r0, r4, #0
	bl ov70_0225DEE8
	mov r1, #1
	bl FUN_0222E2C4
	add r0, r7, #0
	bl ov70_02262E64
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226486A:
	ldr r0, [sp, #0x10]
	mov r1, #6
	bl ov70_0225CD60
	bl FUN_0222C0AC
	add r3, r0, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	mov r2, #2
	bl ov70_0225CDAC
	add r0, r7, #0
	bl ov70_02262E8C
	b _02264966
_0226488A:
	ldr r0, [sp, #0x10]
	mov r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _02264966
	add r0, r7, #0
	bl ov70_02262E8C
	b _02264966
_0226489E:
	mov r0, #1
	str r0, [sp, #4]
	ldrb r0, [r5]
	cmp r0, #7
	bhi _022648F4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022648B4: ; jump table
	.short _022648C4 - _022648B4 - 2 ; case 0
	.short _022648D2 - _022648B4 - 2 ; case 1
	.short _022648D6 - _022648B4 - 2 ; case 2
	.short _022648E4 - _022648B4 - 2 ; case 3
	.short _022648E8 - _022648B4 - 2 ; case 4
	.short _022648F4 - _022648B4 - 2 ; case 5
	.short _022648EC - _022648B4 - 2 ; case 6
	.short _022648F0 - _022648B4 - 2 ; case 7
_022648C4:
	ldrb r1, [r5, #2]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225E27C
	mov r6, #4
	b _022648F8
_022648D2:
	mov r6, #5
	b _022648F8
_022648D6:
	ldrb r1, [r5, #2]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225E27C
	mov r6, #6
	b _022648F8
_022648E4:
	mov r6, #0x13
	b _022648F8
_022648E8:
	mov r6, #0x11
	b _022648F8
_022648EC:
	mov r6, #0x1d
	b _022648F8
_022648F0:
	mov r6, #7
	b _022648F8
_022648F4:
	mov r0, #0
	str r0, [sp, #4]
_022648F8:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02264918
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #0
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r7, #0
	bl ov70_02262E8C
	b _02264966
_02264918:
	add r0, r7, #0
	mov r1, #7
	bl ov70_02262E88
	b _02264966
_02264922:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _02264966
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r7, #0
	bl ov70_02262E8C
	b _02264966
_0226493A:
	add r0, r7, #0
	bl ov70_02262E64
	add r0, r4, #0
	bl ov70_0225DEE8
	mov r1, #1
	bl FUN_0222E3E4
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r4, #0
	bl ov70_0225DF10
	ldr r1, [sp]
	ldr r2, _02264970 ; =0x0226D9D0
	mov r3, #0
	bl ov70_02262E94
_02264966:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226496C: .word 0x0226DA20
_02264970: .word 0x0226D9D0
	thumb_func_end ov70_022646C8

	thumb_func_start ov70_02264974
ov70_02264974: ; 0x02264974
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	str r2, [sp]
	bl ov70_02262E80
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov70_0225DF10
	add r0, r4, #0
	bl ov70_0225DEF0
	str r0, [sp, #0xc]
	bl ov70_0225CCAC
	add r6, r0, #0
	add r0, r4, #0
	bl ov70_0225DEE8
	add r7, r0, #0
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #6
	bls _022649AC
	b _02264B56
_022649AC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022649B8: ; jump table
	.short _022649C6 - _022649B8 - 2 ; case 0
	.short _02264A2A - _022649B8 - 2 ; case 1
	.short _02264AC0 - _022649B8 - 2 ; case 2
	.short _02264AE0 - _022649B8 - 2 ; case 3
	.short _02264AF4 - _022649B8 - 2 ; case 4
	.short _02264B10 - _022649B8 - 2 ; case 5
	.short _02264B28 - _022649B8 - 2 ; case 6
_022649C6:
	add r0, r5, #0
	mov r1, #0xc
	bl ov70_02262E3C
	add r6, r0, #0
	add r0, r4, #0
	bl ov70_0225DEE8
	mov r1, #0xd
	bl FUN_0222E3E4
	add r0, r7, #0
	bl FUN_0222E12C
	cmp r0, #1
	bne _022649F4
	mov r0, #0x7a
	strh r0, [r6]
	add r0, r5, #0
	mov r1, #2
	bl ov70_02262E88
	b _02264B5A
_022649F4:
	add r0, r7, #0
	bl FUN_0222E19C
	cmp r0, #1
	bne _02264A04
	mov r0, #0xa
	strh r0, [r6, #2]
	b _02264A20
_02264A04:
	add r0, r7, #0
	bl FUN_0222E0DC
	cmp r0, #1
	bne _02264A1C
	mov r0, #0x62
	strh r0, [r6]
	add r0, r5, #0
	mov r1, #2
	bl ov70_02262E88
	b _02264B5A
_02264A1C:
	mov r0, #9
	strh r0, [r6, #2]
_02264A20:
	add r0, r5, #0
	mov r1, #1
	bl ov70_02262E88
	b _02264B5A
_02264A2A:
	ldr r0, [sp, #8]
	ldrh r0, [r0, #2]
	cmp r0, #9
	bne _02264A38
	mov r0, #9
	str r0, [sp, #4]
	b _02264A42
_02264A38:
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, r7, #0
	bl FUN_0222E10C
_02264A42:
	add r0, r4, #0
	mov r1, #1
	bl ov70_0225DF34
	ldr r1, [sp, #4]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov70_0225DF38
	mov r1, #0x17
	add r2, r1, #0
	add r0, r7, #0
	sub r2, #0x18
	bl FUN_0222E500
	add r0, r6, #0
	mov r1, #6
	bl ov70_0225CD60
	bl FUN_0222C0AC
	add r7, r0, #0
	add r0, r4, #0
	bl ov70_0225DEEC
	add r4, r0, #0
	add r0, r6, #0
	bl ov70_0225CD34
	add r1, sp, #0x10
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #3
	strh r0, [r4, #6]
	mov r0, #4
	ldrsh r2, [r1, r0]
	asr r0, r2, #3
	lsr r0, r0, #0x1c
	add r0, r2, r0
	asr r0, r0, #4
	strh r0, [r4]
	mov r0, #6
	ldrsh r1, [r1, r0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	strh r0, [r4, #2]
	strh r7, [r4, #4]
	mov r0, #0
	strh r0, [r4, #8]
	add r0, r5, #0
	bl ov70_02262E64
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02264AC0:
	add r0, r6, #0
	mov r1, #6
	bl ov70_0225CD60
	bl FUN_0222C0AC
	add r3, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	mov r2, #2
	bl ov70_0225CDAC
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264B5A
_02264AE0:
	add r0, r6, #0
	mov r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _02264B5A
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264B5A
_02264AF4:
	ldr r2, [sp, #8]
	add r0, r4, #0
	ldrh r2, [r2]
	mov r1, #1
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264B5A
_02264B10:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _02264B5A
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264B5A
_02264B28:
	add r0, r5, #0
	bl ov70_02262E64
	add r0, r4, #0
	bl ov70_0225DEE8
	mov r1, #1
	bl FUN_0222E3E4
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r4, #0
	bl ov70_0225DF10
	ldr r1, [sp]
	ldr r2, _02264B60 ; =0x0226D9D0
	mov r3, #0
	bl ov70_02262E94
	b _02264B5A
_02264B56:
	bl sub_02022974
_02264B5A:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02264B60: .word 0x0226D9D0
	thumb_func_end ov70_02264974

	thumb_func_start ov70_02264B64
ov70_02264B64: ; 0x02264B64
	push {r3, lr}
	cmp r0, #0x1d
	bhi _02264BC2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02264B76: ; jump table
	.short _02264BC2 - _02264B76 - 2 ; case 0
	.short _02264BC2 - _02264B76 - 2 ; case 1
	.short _02264BC2 - _02264B76 - 2 ; case 2
	.short _02264BC2 - _02264B76 - 2 ; case 3
	.short _02264BC2 - _02264B76 - 2 ; case 4
	.short _02264BC2 - _02264B76 - 2 ; case 5
	.short _02264BBA - _02264B76 - 2 ; case 6
	.short _02264BBA - _02264B76 - 2 ; case 7
	.short _02264BBA - _02264B76 - 2 ; case 8
	.short _02264BBA - _02264B76 - 2 ; case 9
	.short _02264BBA - _02264B76 - 2 ; case 10
	.short _02264BBA - _02264B76 - 2 ; case 11
	.short _02264BBA - _02264B76 - 2 ; case 12
	.short _02264BBA - _02264B76 - 2 ; case 13
	.short _02264BBE - _02264B76 - 2 ; case 14
	.short _02264BBE - _02264B76 - 2 ; case 15
	.short _02264BBE - _02264B76 - 2 ; case 16
	.short _02264BBE - _02264B76 - 2 ; case 17
	.short _02264BBE - _02264B76 - 2 ; case 18
	.short _02264BBE - _02264B76 - 2 ; case 19
	.short _02264BBE - _02264B76 - 2 ; case 20
	.short _02264BBE - _02264B76 - 2 ; case 21
	.short _02264BB2 - _02264B76 - 2 ; case 22
	.short _02264BB2 - _02264B76 - 2 ; case 23
	.short _02264BB2 - _02264B76 - 2 ; case 24
	.short _02264BB2 - _02264B76 - 2 ; case 25
	.short _02264BB6 - _02264B76 - 2 ; case 26
	.short _02264BB6 - _02264B76 - 2 ; case 27
	.short _02264BB6 - _02264B76 - 2 ; case 28
	.short _02264BB6 - _02264B76 - 2 ; case 29
_02264BB2:
	mov r0, #2
	pop {r3, pc}
_02264BB6:
	mov r0, #3
	pop {r3, pc}
_02264BBA:
	mov r0, #0
	pop {r3, pc}
_02264BBE:
	mov r0, #1
	pop {r3, pc}
_02264BC2:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_02264B64

	thumb_func_start ov70_02264BCC
ov70_02264BCC: ; 0x02264BCC
	push {r3, lr}
	cmp r0, #0x1d
	bhi _02264C2A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02264BDE: ; jump table
	.short _02264C2A - _02264BDE - 2 ; case 0
	.short _02264C2A - _02264BDE - 2 ; case 1
	.short _02264C2A - _02264BDE - 2 ; case 2
	.short _02264C2A - _02264BDE - 2 ; case 3
	.short _02264C2A - _02264BDE - 2 ; case 4
	.short _02264C2A - _02264BDE - 2 ; case 5
	.short _02264C22 - _02264BDE - 2 ; case 6
	.short _02264C22 - _02264BDE - 2 ; case 7
	.short _02264C22 - _02264BDE - 2 ; case 8
	.short _02264C22 - _02264BDE - 2 ; case 9
	.short _02264C22 - _02264BDE - 2 ; case 10
	.short _02264C22 - _02264BDE - 2 ; case 11
	.short _02264C22 - _02264BDE - 2 ; case 12
	.short _02264C22 - _02264BDE - 2 ; case 13
	.short _02264C26 - _02264BDE - 2 ; case 14
	.short _02264C26 - _02264BDE - 2 ; case 15
	.short _02264C26 - _02264BDE - 2 ; case 16
	.short _02264C26 - _02264BDE - 2 ; case 17
	.short _02264C26 - _02264BDE - 2 ; case 18
	.short _02264C26 - _02264BDE - 2 ; case 19
	.short _02264C26 - _02264BDE - 2 ; case 20
	.short _02264C26 - _02264BDE - 2 ; case 21
	.short _02264C1A - _02264BDE - 2 ; case 22
	.short _02264C1A - _02264BDE - 2 ; case 23
	.short _02264C1A - _02264BDE - 2 ; case 24
	.short _02264C1A - _02264BDE - 2 ; case 25
	.short _02264C1E - _02264BDE - 2 ; case 26
	.short _02264C1E - _02264BDE - 2 ; case 27
	.short _02264C1E - _02264BDE - 2 ; case 28
	.short _02264C1E - _02264BDE - 2 ; case 29
_02264C1A:
	mov r0, #1
	pop {r3, pc}
_02264C1E:
	mov r0, #2
	pop {r3, pc}
_02264C22:
	mov r0, #6
	pop {r3, pc}
_02264C26:
	mov r0, #7
	pop {r3, pc}
_02264C2A:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_02264BCC

	thumb_func_start ov70_02264C34
ov70_02264C34: ; 0x02264C34
	push {r3, lr}
	cmp r0, #0x1d
	bhi _02264C92
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02264C46: ; jump table
	.short _02264C92 - _02264C46 - 2 ; case 0
	.short _02264C92 - _02264C46 - 2 ; case 1
	.short _02264C92 - _02264C46 - 2 ; case 2
	.short _02264C92 - _02264C46 - 2 ; case 3
	.short _02264C92 - _02264C46 - 2 ; case 4
	.short _02264C92 - _02264C46 - 2 ; case 5
	.short _02264C8A - _02264C46 - 2 ; case 6
	.short _02264C8A - _02264C46 - 2 ; case 7
	.short _02264C8A - _02264C46 - 2 ; case 8
	.short _02264C8A - _02264C46 - 2 ; case 9
	.short _02264C8A - _02264C46 - 2 ; case 10
	.short _02264C8A - _02264C46 - 2 ; case 11
	.short _02264C8A - _02264C46 - 2 ; case 12
	.short _02264C8A - _02264C46 - 2 ; case 13
	.short _02264C8E - _02264C46 - 2 ; case 14
	.short _02264C8E - _02264C46 - 2 ; case 15
	.short _02264C8E - _02264C46 - 2 ; case 16
	.short _02264C8E - _02264C46 - 2 ; case 17
	.short _02264C8E - _02264C46 - 2 ; case 18
	.short _02264C8E - _02264C46 - 2 ; case 19
	.short _02264C8E - _02264C46 - 2 ; case 20
	.short _02264C8E - _02264C46 - 2 ; case 21
	.short _02264C82 - _02264C46 - 2 ; case 22
	.short _02264C82 - _02264C46 - 2 ; case 23
	.short _02264C82 - _02264C46 - 2 ; case 24
	.short _02264C82 - _02264C46 - 2 ; case 25
	.short _02264C86 - _02264C46 - 2 ; case 26
	.short _02264C86 - _02264C46 - 2 ; case 27
	.short _02264C86 - _02264C46 - 2 ; case 28
	.short _02264C86 - _02264C46 - 2 ; case 29
_02264C82:
	mov r0, #7
	pop {r3, pc}
_02264C86:
	mov r0, #8
	pop {r3, pc}
_02264C8A:
	mov r0, #5
	pop {r3, pc}
_02264C8E:
	mov r0, #6
	pop {r3, pc}
_02264C92:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_02264C34

	thumb_func_start ov70_02264C9C
ov70_02264C9C: ; 0x02264C9C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _02264CB0
	cmp r0, #1
	beq _02264D06
	b _02264D30
_02264CB0:
	add r0, r4, #0
	bl ov70_0225DEE8
	add r6, r0, #0
	bl FUN_0222E12C
	cmp r0, #1
	bne _02264CCE
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	bl ov70_0225E20C
	add r1, r0, #0
	b _02264CF2
_02264CCE:
	add r0, r6, #0
	bl FUN_0222E170
	cmp r0, #1
	bne _02264CE6
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4e
	bl ov70_0225E20C
	add r1, r0, #0
	b _02264CF2
_02264CE6:
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	bl ov70_0225E20C
	add r1, r0, #0
_02264CF2:
	add r0, r4, #0
	bl ov70_0225DF8C
	ldr r0, _02264D34 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov70_02262E8C
	b _02264D30
_02264D06:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #0
	beq _02264D30
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r4, #0
	bl ov70_0225DEF0
	add r4, r0, #0
	bl ov70_0225CCAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov70_0225CDEC
	mov r0, #1
	pop {r4, r5, r6, pc}
_02264D30:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02264D34: .word 0x000005DC
	thumb_func_end ov70_02264C9C

	thumb_func_start ov70_02264D38
ov70_02264D38: ; 0x02264D38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	str r2, [sp]
	bl ov70_0225DEF0
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov70_0225DEF8
	add r7, r0, #0
	add r0, r5, #0
	bl ov70_0225DF08
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov70_0225DEE8
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov70_02262E80
	add r4, r0, #0
	add r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0xf
	bls _02264D76
	b _022650D2
_02264D76:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02264D82: ; jump table
	.short _02264DA2 - _02264D82 - 2 ; case 0
	.short _02264DEA - _02264D82 - 2 ; case 1
	.short _02264E5E - _02264D82 - 2 ; case 2
	.short _02264EF4 - _02264D82 - 2 ; case 3
	.short _02264F28 - _02264D82 - 2 ; case 4
	.short _02264F58 - _02264D82 - 2 ; case 5
	.short _02264F94 - _02264D82 - 2 ; case 6
	.short _02264FAA - _02264D82 - 2 ; case 7
	.short _02264FC2 - _02264D82 - 2 ; case 8
	.short _02264FE2 - _02264D82 - 2 ; case 9
	.short _02265002 - _02264D82 - 2 ; case 10
	.short _02265022 - _02264D82 - 2 ; case 11
	.short _02265036 - _02264D82 - 2 ; case 12
	.short _02265046 - _02264D82 - 2 ; case 13
	.short _02265092 - _02264D82 - 2 ; case 14
	.short _022650A8 - _02264D82 - 2 ; case 15
_02264DA2:
	add r0, r6, #0
	mov r1, #0x18
	bl ov70_02262E3C
	add r4, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl ov70_0225CC70
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ov70_0225DF40
	cmp r0, #0x21
	beq _02264DCA
	cmp r0, #0x22
	beq _02264DD0
	cmp r0, #0x23
	beq _02264DD6
	b _02264DDC
_02264DCA:
	mov r0, #2
	strh r0, [r4, #6]
	b _02264DE0
_02264DD0:
	mov r0, #1
	strh r0, [r4, #6]
	b _02264DE0
_02264DD6:
	mov r0, #0
	strh r0, [r4, #6]
	b _02264DE0
_02264DDC:
	bl sub_02022974
_02264DE0:
	add r0, r6, #0
	mov r1, #1
	bl ov70_02262E88
	b _022650D2
_02264DEA:
	ldr r0, [sp, #4]
	bl FUN_0222E170
	cmp r0, #0
	bne _02264E02
	mov r0, #8
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #6
	bl ov70_02262E88
	b _022650D2
_02264E02:
	ldr r0, [sp, #4]
	bl FUN_0222E12C
	cmp r0, #1
	bne _02264E1A
	mov r0, #0xa
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #6
	bl ov70_02262E88
	b _022650D2
_02264E1A:
	ldrh r2, [r4, #6]
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl FUN_0222EBB4
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #0]
	cmp r0, r1
	beq _02264E50
	add r0, r6, #0
	mov r1, #2
	bl ov70_02262E88
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x1f
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225DFBC
	b _022650D2
_02264E50:
	mov r0, #9
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #6
	bl ov70_02262E88
	b _022650D2
_02264E5E:
	ldr r0, _022650D8 ; =0x021BF67C
	mov r1, #2
	ldr r0, [r0, #0x48]
	tst r1, r0
	bne _02264E6E
	mov r1, #0x80
	tst r0, r1
	beq _02264E8E
_02264E6E:
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl FUN_0222EBC4
	add r0, r5, #0
	bl ov70_0225DFCC
	mov r0, #6
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #0xc
	bl ov70_02262E88
	b _022650D2
_02264E8E:
	add r0, r4, #0
	add r1, r7, #0
	bl ov70_02265104
	cmp r0, #1
	beq _02264E9C
	b _022650D2
_02264E9C:
	add r0, r5, #0
	bl ov70_0225DFCC
	ldr r0, [sp, #4]
	bl FUN_0222EC40
	mov r0, #0
	strh r0, [r4, #8]
	add r0, r5, #0
	bl ov70_0225DEE8
	mov r1, #0xa
	bl FUN_0222E3E4
	add r0, r5, #0
	bl ov70_0225DF44
	ldr r0, [sp, #0xc]
	bl ov70_02260B3C
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov70_0225D030
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ov70_0225D06C
	ldr r0, _022650DC ; =0x000005AA
	bl sub_02005748
	add r0, r5, #0
	bl ov70_0225E410
	mov r0, #3
	strb r0, [r4, #0xa]
	add r0, r6, #0
	mov r1, #0xc
	bl ov70_02262E88
	ldr r0, [sp, #4]
	bl FUN_0222F000
	b _022650D2
_02264EF4:
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	bl ov70_02265144
	cmp r0, #1
	bne _02264FB6
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov70_0225D06C
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl ov70_0225D060
	ldr r0, [r4, #0xc]
	mov r1, #8
	bl ov70_0225D0B4
	add r0, r6, #0
	mov r1, #4
	bl ov70_02262E88
	mov r0, #0
	strh r0, [r4, #8]
	b _022650D2
_02264F28:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02265344
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl ov70_022650E4
	add r0, r4, #0
	add r1, r7, #0
	bl ov70_022652BC
	cmp r0, #1
	bne _02264FB6
	add r0, r6, #0
	mov r1, #5
	bl ov70_02262E88
	add r0, r5, #0
	mov r1, #0
	bl ov70_0225E43C
	b _022650D2
_02264F58:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02265344
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl ov70_022650E4
	ldr r0, [r4, #0xc]
	add r1, sp, #0x10
	bl ov70_0225D054
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02265370
	mov r0, #6
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _02264FB6
	mov r0, #0
	strb r0, [r4, #0xb]
	add r0, r6, #0
	mov r1, #0xd
	bl ov70_02262E88
	b _022650D2
_02264F94:
	ldr r0, [sp, #8]
	ldr r1, [r4, #0xc]
	mov r2, #2
	mov r3, #1
	bl ov70_0225CDAC
	add r0, r6, #0
	mov r1, #7
	bl ov70_02262E88
	b _022650D2
_02264FAA:
	ldr r0, [r4, #0xc]
	mov r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	beq _02264FB8
_02264FB6:
	b _022650D2
_02264FB8:
	ldrh r1, [r4, #4]
	add r0, r6, #0
	bl ov70_02262E88
	b _022650D2
_02264FC2:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x1e
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0xf
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #0xb
	bl ov70_02262E88
	b _022650D2
_02264FE2:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x20
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0xf
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #0xb
	bl ov70_02262E88
	b _022650D2
_02265002:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x21
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0xf
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #0xb
	bl ov70_02262E88
	b _022650D2
_02265022:
	add r0, r5, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _022650D2
	ldrh r1, [r4, #4]
	add r0, r6, #0
	bl ov70_02262E88
	b _022650D2
_02265036:
	add r0, r5, #0
	bl ov70_0225DFEC
	ldrb r1, [r4, #0xa]
	add r0, r6, #0
	bl ov70_02262E88
	b _022650D2
_02265046:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02265344
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02265370
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #0x78
	bls _022650D2
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225DF34
	add r0, r5, #0
	mov r1, #0
	bl ov70_0225DF38
	add r0, r5, #0
	bl ov70_0225DFEC
	add r0, r5, #0
	bl ov70_0225DEE8
	mov r1, #0xb
	bl FUN_0222E3E4
	add r0, r6, #0
	mov r1, #0xe
	bl ov70_02262E88
	b _022650D2
_02265092:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02265344
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02265370
	b _022650D2
_022650A8:
	add r0, r5, #0
	bl ov70_0225DF10
	add r7, r0, #0
	add r0, r5, #0
	bl ov70_0225DFEC
	ldr r0, [sp, #8]
	ldr r1, [r4, #0xc]
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r6, #0
	bl ov70_02262E64
	ldr r1, [sp]
	ldr r2, _022650E0 ; =0x0226D9D0
	add r0, r7, #0
	mov r3, #0
	bl ov70_02262E94
_022650D2:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022650D8: .word 0x021BF67C
_022650DC: .word 0x000005AA
_022650E0: .word 0x0226D9D0
	thumb_func_end ov70_02264D38

	thumb_func_start ov70_022650E4
ov70_022650E4: ; 0x022650E4
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	add r1, sp, #0
	bl ov70_0225D054
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl ov70_02260B18
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov70_022650E4

	thumb_func_start ov70_02265104
ov70_02265104: ; 0x02265104
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_0222EC04
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	add r3, sp, #8
	bl ov70_02262318
	ldr r0, [r5, #0xc]
	add r1, sp, #0x14
	bl ov70_0225D054
	mov r0, #1
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x10
	add r1, r1, r0
	ldr r0, [sp, #8]
	cmp r1, r0
	blt _0226513E
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, pc}
_0226513E:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02265104

	thumb_func_start ov70_02265144
ov70_02265144: ; 0x02265144
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #8
	add r6, r1, #0
	ldrsh r1, [r5, r0]
	add r7, r2, #0
	add r1, r1, #1
	strh r1, [r5, #8]
	ldrsh r0, [r5, r0]
	cmp r0, #0x18
	bge _02265160
	mov r4, #0
	b _02265166
_02265160:
	mov r0, #0x18
	strh r0, [r5, #8]
	mov r4, #1
_02265166:
	ldr r0, [r5, #0]
	add r1, sp, #0xc
	add r2, sp, #8
	bl FUN_0222EC04
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, r6, #0
	add r3, sp, #0x1c
	bl ov70_02262318
	ldr r0, [r5, #0xc]
	bl ov70_0225CD34
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r2, [r1]
	add r0, sp, #4
	strh r2, [r1, #4]
	ldrh r2, [r1, #2]
	strh r2, [r1, #6]
	add r1, sp, #0x28
	bl ov70_0225C700
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x2c]
	sub r6, r1, r0
	mov r0, #8
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _022651BE
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022651CC
_022651BE:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022651CC:
	bl sub_020E1740
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #6
	lsl r1, r1, #0xe
	bl sub_020BCFD0
	str r0, [sp, #0x14]
	mov r0, #8
	ldrsh r2, [r5, r0]
	cmp r2, #4
	blt _02265252
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x30]
	sub r6, r1, r0
	sub r0, r2, #4
	cmp r0, #0
	ble _0226521A
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02265228
_0226521A:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02265228:
	bl sub_020E1740
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #5
	lsl r1, r1, #0xe
	bl sub_020BCFD0
	str r0, [sp, #0x18]
	b _02265256
_02265252:
	mov r0, #0
	str r0, [sp, #0x18]
_02265256:
	add r0, sp, #0x10
	add r1, sp, #0x28
	add r2, r0, #0
	bl sub_020BD17C
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r0, r7, #0
	bl ov70_02260B18
	mov r0, #8
	ldrsh r1, [r5, r0]
	ldr r0, _022652B4 ; =0x00007FFF
	mul r0, r1
	mov r1, #0x18
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _022652B8 ; =0x020F983C
	ldr r1, [sp, #0x14]
	ldrsh r3, [r0, r2]
	asr r0, r3, #0x1f
	lsr r2, r3, #0x10
	lsl r0, r0, #0x10
	orr r0, r2
	mov r2, #2
	lsl r6, r3, #0x10
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r6, r2
	adc r0, r3
	lsl r0, r0, #0x14
	lsr r2, r2, #0xc
	orr r2, r0
	add r0, r1, r2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x10
	bl ov70_0225D048
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022652B4: .word 0x00007FFF
_022652B8: .word 0x020F983C
	thumb_func_end ov70_02265144

	thumb_func_start ov70_022652BC
ov70_022652BC: ; 0x022652BC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #8
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, #8]
	ldrsh r0, [r5, r0]
	cmp r0, #0x10
	bge _022652D4
	mov r6, #0
	b _022652DA
_022652D4:
	mov r0, #0x10
	strh r0, [r5, #8]
	mov r6, #1
_022652DA:
	mov r0, #8
	ldrsh r0, [r5, r0]
	mov r3, #0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r1, r2, r1
	ldr r0, _0226533C ; =0x00007FFF
	add r2, r1, #0
	mul r2, r0
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	lsl r0, r0, #0xd
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02265340 ; =0x020F983C
	mov r2, #3
	ldrsh r0, [r0, r1]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r4, r2, #0xc
	orr r4, r0
	ldr r0, [r5, #0xc]
	add r1, sp, #0
	bl ov70_0225D054
	ldr r0, [sp, #4]
	add r1, sp, #0
	add r0, r0, r4
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	bl ov70_0225D048
	add r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0226533C: .word 0x00007FFF
_02265340: .word 0x020F983C
	thumb_func_end ov70_022652BC

	thumb_func_start ov70_02265344
ov70_02265344: ; 0x02265344
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r1, sp, #0
	add r2, sp, #4
	bl FUN_0222EC04
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r3, sp, #8
	bl ov70_02262318
	ldr r0, [r5, #0xc]
	add r1, sp, #8
	bl ov70_0225D048
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_02265344

	thumb_func_start ov70_02265370
ov70_02265370: ; 0x02265370
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r2, #0
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_0222EC04
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov70_0225E420
	cmp r0, #1
	bne _022653A4
	add r0, r5, #0
	add r0, #0x10
	bl ov70_02263334
	cmp r0, #0
	bne _022653B8
	add r0, r5, #0
	add r0, #0x10
	bl ov70_02263270
	b _022653B8
_022653A4:
	add r0, r5, #0
	add r0, #0x10
	bl ov70_02263334
	cmp r0, #1
	bne _022653B8
	add r0, r5, #0
	add r0, #0x10
	bl ov70_0226332C
_022653B8:
	add r0, r5, #0
	add r0, #0x10
	bl ov70_02263290
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	add r1, sp, #8
	bl ov70_0225D054
	ldr r0, [sp, #0xc]
	add r1, sp, #8
	add r0, r0, r4
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	bl ov70_0225D048
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov70_02265370

	thumb_func_start ov70_022653DC
ov70_022653DC: ; 0x022653DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x12
	bl ov70_0225E00C
	mov r4, #1
	mov r6, #0
	add r7, r4, #0
_022653F0:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov70_0225E30C
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #6
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov70_0225E044
	add r4, r4, #1
	cmp r4, #0x12
	blt _022653F0
	add r0, r5, #0
	mov r1, #1
	mov r2, #7
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E044
	ldr r2, [sp]
	ldr r3, _0226544C ; =0x0226DA98
	add r2, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	bl ov70_0225E054
	ldr r1, [sp]
	str r0, [r1, #8]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226544C: .word 0x0226DA98
	thumb_func_end ov70_022653DC

	thumb_func_start ov70_02265450
ov70_02265450: ; 0x02265450
	ldr r3, _02265458 ; =ov70_0225E034
	add r0, r1, #0
	bx r3
	nop
_02265458: .word ov70_0225E034
	thumb_func_end ov70_02265450

	thumb_func_start ov70_0226545C
ov70_0226545C: ; 0x0226545C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov70_0225DEE8
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov70_0225DEF0
	add r1, r4, #0
	str r0, [sp, #0xc]
	bl ov70_0225CC70
	add r7, r0, #0
	add r0, r5, #0
	bl ov70_02262E80
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl ov70_0225DF10
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #5
	bhi _02265516
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022654A4: ; jump table
	.short _022654B0 - _022654A4 - 2 ; case 0
	.short _022654C0 - _022654A4 - 2 ; case 1
	.short _022654E4 - _022654A4 - 2 ; case 2
	.short _02265528 - _022654A4 - 2 ; case 3
	.short _022655DA - _022654A4 - 2 ; case 4
	.short _022655EC - _022654A4 - 2 ; case 5
_022654B0:
	add r0, r5, #0
	mov r1, #8
	bl ov70_02262E3C
	add r0, r5, #0
	mov r1, #1
	bl ov70_02262E88
_022654C0:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl FUN_0222E02C
	add r6, r0, #0
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl FUN_0222E34C
	cmp r6, #1
	beq _022654DA
	cmp r0, #1
	bne _02265516
_022654DA:
	add r0, r5, #0
	mov r1, #2
	bl ov70_02262E88
	b _02265620
_022654E4:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl FUN_0222E374
	add r6, r0, #0
	bne _022654FA
	add r0, r5, #0
	mov r1, #1
	bl ov70_02262E88
	b _02265620
_022654FA:
	bl FUN_0222E8D8
	cmp r0, #1
	bne _02265516
	add r0, r6, #0
	bl FUN_0222E858
	add r2, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	bl ov70_0225CBB8
	cmp r0, #0
	bne _02265518
_02265516:
	b _02265620
_02265518:
	mov r1, #0
	bl ov70_0225D0C0
	add r0, r5, #0
	mov r1, #3
	bl ov70_02262E88
	b _02265620
_02265528:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl FUN_0222E374
	cmp r0, #0
	bne _02265548
	cmp r7, #0
	beq _0226553E
	add r0, r7, #0
	bl ov70_0225CC54
_0226553E:
	add r0, r5, #0
	mov r1, #1
	bl ov70_02262E88
	b _02265620
_02265548:
	bl FUN_0222E71C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	add r2, r6, #0
	add r3, r7, #0
	bl ov70_02265CCC
	cmp r0, #0
	beq _022655A6
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #0
	bl ov70_0225CDEC
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF6C
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF4C
	add r0, r7, #0
	mov r1, #0
	bl ov70_0225D030
	ldr r0, [sp, #0x14]
	ldr r2, _02265628 ; =0x0226D9F0
	ldr r3, [sp, #0x10]
	add r1, r4, #0
	bl ov70_02262EC0
	b _02265620
_022655A6:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #4
	bl ov70_0225CDEC
	add r0, r5, #0
	mov r1, #4
	bl ov70_02262E88
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF4C
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF6C
	add r0, r7, #0
	mov r1, #1
	bl ov70_0225D0C0
	b _02265620
_022655DA:
	add r0, r7, #0
	bl ov70_0225CE38
	cmp r0, #1
	bne _02265620
	add r0, r5, #0
	bl ov70_02262E8C
	b _02265620
_022655EC:
	add r0, r5, #0
	bl ov70_02262E64
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #2
	bl ov70_0225CDEC
	ldr r0, [sp, #0x14]
	ldr r2, _0226562C ; =0x0226D9D8
	add r1, r4, #0
	mov r3, #0
	bl ov70_02262E94
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov70_0225DF4C
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov70_0225DF6C
_02265620:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265628: .word 0x0226D9F0
_0226562C: .word 0x0226D9D8
	thumb_func_end ov70_0226545C

	thumb_func_start ov70_02265630
ov70_02265630: ; 0x02265630
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r4, r2, #0
	bl ov70_0225DEE8
	add r6, r0, #0
	add r0, r5, #0
	bl ov70_0225DEF0
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ov70_0225DF10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	bl ov70_0225CC70
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	bl ov70_0225CCAC
	ldr r0, [sp, #8]
	bl ov70_02262E80
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	bl ov70_02262E84
	cmp r0, #0
	beq _0226567A
	cmp r0, #1
	beq _0226568C
	b _022657BA
_0226567A:
	ldr r0, [sp, #8]
	mov r1, #8
	bl ov70_02262E3C
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	mov r1, #1
	bl ov70_02262E88
_0226568C:
	add r0, r6, #0
	add r1, r4, #0
	bl FUN_0222E058
	cmp r0, #0
	beq _022656CE
	ldr r0, [sp, #8]
	bl ov70_02262E64
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	mov r2, #0
	bl ov70_0225CDEC
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF6C
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF4C
	ldr r0, [sp, #0xc]
	ldr r2, _022657C0 ; =0x0226D9E0
	add r1, r4, #0
	mov r3, #0
	bl ov70_02262E94
	b _022657BA
_022656CE:
	add r0, r6, #0
	add r1, r4, #0
	bl FUN_0222E09C
	add r0, r6, #0
	bl FUN_0222E170
	cmp r0, #1
	bne _0226572E
	add r0, r6, #0
	add r1, r4, #0
	bl FUN_0222EBA4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0226572E
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	mov r2, #0
	bl ov70_0225CDEC
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF6C
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF4C
	add r0, r7, #0
	mov r1, #0
	bl ov70_0225D030
	ldr r0, [sp, #8]
	bl ov70_02262E64
	ldr r0, [sp, #0xc]
	ldr r2, _022657C4 ; =0x0226D9E8
	ldr r3, [sp, #0x14]
	add r1, r4, #0
	bl ov70_02262E94
	b _022657BA
_0226572E:
	add r0, r6, #0
	add r1, r4, #0
	bl FUN_0222E374
	bl FUN_0222E71C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	add r2, r5, #0
	add r3, r7, #0
	bl ov70_02265CCC
	cmp r0, #0
	beq _0226578C
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	mov r2, #0
	bl ov70_0225CDEC
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF6C
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF4C
	add r0, r7, #0
	mov r1, #0
	bl ov70_0225D030
	ldr r0, [sp, #0xc]
	ldr r2, _022657C8 ; =0x0226D9F0
	ldr r3, [sp, #0x14]
	add r1, r4, #0
	bl ov70_02262EC0
	b _022657BA
_0226578C:
	add r0, r6, #0
	add r1, r4, #0
	bl FUN_0222EB54
	cmp r0, #1
	bne _022657BA
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	mov r2, #0
	bl ov70_0225CDEC
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF4C
	ldr r0, [sp, #0xc]
	ldr r2, _022657CC ; =0x0226DA18
	add r1, r4, #0
	mov r3, #0
	bl ov70_02262EC0
_022657BA:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022657C0: .word 0x0226D9E0
_022657C4: .word 0x0226D9E8
_022657C8: .word 0x0226D9F0
_022657CC: .word 0x0226DA18
	thumb_func_end ov70_02265630

	thumb_func_start ov70_022657D0
ov70_022657D0: ; 0x022657D0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	str r2, [sp]
	add r0, r6, #0
	bl ov70_0225DEF0
	ldr r1, [sp]
	add r7, r0, #0
	bl ov70_0225CC70
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _022657FC
	cmp r0, #1
	beq _0226580E
	cmp r0, #2
	beq _02265820
	b _02265836
_022657FC:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #3
	bl ov70_0225CDEC
	add r0, r5, #0
	bl ov70_02262E8C
	b _02265836
_0226580E:
	add r0, r4, #0
	bl ov70_0225CE38
	cmp r0, #0
	beq _02265836
	add r0, r5, #0
	bl ov70_02262E8C
	b _02265836
_02265820:
	add r0, r4, #0
	bl ov70_0225CC54
	add r0, r6, #0
	bl ov70_0225DF10
	ldr r1, [sp]
	ldr r2, _0226583C ; =0x0226DA10
	mov r3, #0
	bl ov70_02262E94
_02265836:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226583C: .word 0x0226DA10
	thumb_func_end ov70_022657D0

	thumb_func_start ov70_02265840
ov70_02265840: ; 0x02265840
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r7, r2, #0
	bl ov70_0225DEE8
	str r0, [sp]
	add r0, r6, #0
	bl ov70_0225DEF0
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov70_0225DEF8
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov70_02262E80
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #4
	bhi _022658DE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02265880: ; jump table
	.short _0226588A - _02265880 - 2 ; case 0
	.short _022658D4 - _02265880 - 2 ; case 1
	.short _0226593A - _02265880 - 2 ; case 2
	.short _022659E8 - _02265880 - 2 ; case 3
	.short _02265A58 - _02265880 - 2 ; case 4
_0226588A:
	add r0, r5, #0
	mov r1, #0x20
	bl ov70_02262E3C
	add r4, r0, #0
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl ov70_0225CC70
	str r0, [r4, #0]
	ldr r0, [sp]
	add r1, r7, #0
	bl FUN_0222EBA4
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #4]
	cmp r0, r1
	bne _022658B4
	bl sub_02022974
_022658B4:
	add r2, r4, #0
	ldr r0, [r4, #4]
	add r1, r4, #4
	add r2, #8
	bl FUN_0222EC04
	ldr r0, [sp, #8]
	ldr r1, [r4, #0]
	mov r2, #3
	bl ov70_0225CDEC
	add r0, r5, #0
	mov r1, #1
	bl ov70_02262E88
	b _02265A74
_022658D4:
	ldr r0, [r4, #0]
	bl ov70_0225CE38
	cmp r0, #0
	bne _022658E0
_022658DE:
	b _02265A74
_022658E0:
	ldr r0, [sp, #4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, sp, #0x34
	bl ov70_02262318
	mov r0, #1
	ldr r1, [sp, #0x34]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	add r1, sp, #0x34
	bl ov70_0225D054
	ldr r0, [sp, #0x38]
	mov r3, sp
	str r0, [r4, #0xc]
	mov r1, #0
	str r1, [r4, #0x14]
	add r0, sp, #0xc
	strh r1, [r0]
	strh r1, [r0, #2]
	add r1, sp, #0xc
	ldrh r2, [r1]
	ldr r0, [r4, #0]
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov70_0225CCB4
	ldr r0, _02265A7C ; =0x0000064F
	bl sub_02005748
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov70_0225D084
	add r0, r5, #0
	mov r1, #2
	bl ov70_02262E88
	b _02265A74
_0226593A:
	ldr r0, [r4, #0x14]
	mov r6, #0
	add r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #0x18
	blt _0226594C
	mov r0, #0x18
	str r0, [r4, #0x14]
	mov r6, #1
_0226594C:
	ldr r0, [sp, #4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, sp, #0x28
	bl ov70_02262318
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x2c]
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	sub r7, r1, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ble _0226597E
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226598C
_0226597E:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226598C:
	bl sub_020E1740
	asr r1, r0, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #6
	lsl r1, r1, #0xe
	bl sub_020BCFD0
	str r0, [sp, #0x20]
	ldr r1, [r4, #0xc]
	add r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, [r4, #0]
	add r1, sp, #0x1c
	bl ov70_0225D048
	cmp r6, #1
	bne _02265A74
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov70_0225D084
	ldr r0, [r4, #0]
	mov r1, #8
	bl ov70_0225D0B4
	ldr r0, [r4, #0]
	mov r1, #2
	bl ov70_0225D060
	add r0, r5, #0
	mov r1, #3
	bl ov70_02262E88
	b _02265A74
_022659E8:
	ldr r1, [r4, #4]
	add r0, r6, #0
	bl ov70_0225E420
	cmp r0, #1
	bne _02265A0A
	add r0, r4, #0
	add r0, #0x18
	bl ov70_02263334
	cmp r0, #0
	bne _02265A1E
	add r0, r4, #0
	add r0, #0x18
	bl ov70_02263270
	b _02265A1E
_02265A0A:
	add r0, r4, #0
	add r0, #0x18
	bl ov70_02263334
	cmp r0, #1
	bne _02265A1E
	add r0, r4, #0
	add r0, #0x18
	bl ov70_0226332C
_02265A1E:
	add r0, r4, #0
	add r0, #0x18
	bl ov70_02263290
	add r6, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, sp, #0x10
	bl ov70_02262318
	ldr r0, [sp, #0x14]
	add r1, sp, #0x10
	add r0, r0, r6
	str r0, [sp, #0x14]
	ldr r0, [r4, #0]
	bl ov70_0225D048
	ldr r0, [sp]
	ldr r1, [r4, #4]
	bl FUN_0222EB7C
	cmp r0, #2
	bne _02265A74
	add r0, r5, #0
	mov r1, #4
	bl ov70_02262E88
	b _02265A74
_02265A58:
	ldr r0, [r4, #0]
	bl ov70_0225CC54
	add r0, r5, #0
	bl ov70_02262E64
	add r0, r6, #0
	bl ov70_0225DF10
	ldr r2, _02265A80 ; =0x0226DA10
	add r1, r7, #0
	mov r3, #0
	bl ov70_02262E94
_02265A74:
	mov r0, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265A7C: .word 0x0000064F
_02265A80: .word 0x0226DA10
	thumb_func_end ov70_02265840

	thumb_func_start ov70_02265A84
ov70_02265A84: ; 0x02265A84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r1, [sp]
	add r7, r0, #0
	add r4, r2, #0
	bl ov70_02262E38
	add r6, r0, #0
	ldr r0, [sp]
	bl ov70_0225DEE8
	str r0, [sp, #8]
	ldr r0, [sp]
	bl ov70_0225DEF0
	str r0, [sp, #0xc]
	add r1, r4, #0
	bl ov70_0225CC70
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	bl ov70_0225CCAC
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl ov70_02262E84
	cmp r0, #0xa
	bhi _02265B68
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02265ACA: ; jump table
	.short _02265AE0 - _02265ACA - 2 ; case 0
	.short _02265AF8 - _02265ACA - 2 ; case 1
	.short _02265B0A - _02265ACA - 2 ; case 2
	.short _02265B1C - _02265ACA - 2 ; case 3
	.short _02265B5E - _02265ACA - 2 ; case 4
	.short _02265B94 - _02265ACA - 2 ; case 5
	.short _02265C3E - _02265ACA - 2 ; case 6
	.short _02265B0A - _02265ACA - 2 ; case 7
	.short _02265C50 - _02265ACA - 2 ; case 8
	.short _02265B0A - _02265ACA - 2 ; case 9
	.short _02265C9E - _02265ACA - 2 ; case 10
_02265AE0:
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _02265AEE
	add r0, r7, #0
	bl ov70_02262E8C
	b _02265CC6
_02265AEE:
	add r0, r7, #0
	mov r1, #3
	bl ov70_02262E88
	b _02265CC6
_02265AF8:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #3
	bl ov70_0225CDEC
	add r0, r7, #0
	bl ov70_02262E8C
	b _02265CC6
_02265B0A:
	add r0, r5, #0
	bl ov70_0225CE38
	cmp r0, #1
	bne _02265B68
	add r0, r7, #0
	bl ov70_02262E8C
	b _02265CC6
_02265B1C:
	add r0, r5, #0
	bl ov70_0225CD34
	add r2, sp, #0x14
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	add r1, sp, #0x1c
	strh r0, [r2, #8]
	ldrh r0, [r2, #2]
	strh r0, [r2, #0xa]
	add r0, r5, #0
	bl ov70_0225D03C
	add r0, r5, #0
	bl ov70_0225D0CC
	cmp r0, #0
	bne _02265B4C
	add r0, r5, #0
	mov r1, #1
	bl ov70_0225D0C0
_02265B4C:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #4
	bl ov70_0225CDEC
	add r0, r7, #0
	bl ov70_02262E8C
	b _02265CC6
_02265B5E:
	add r0, r5, #0
	bl ov70_0225CE38
	cmp r0, #1
	beq _02265B6A
_02265B68:
	b _02265CC6
_02265B6A:
	add r0, r7, #0
	bl ov70_02262E8C
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #0
	bl ov70_0225CDEC
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov70_0225DF4C
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov70_0225DF6C
	b _02265CC6
_02265B94:
	mov r0, #0
	str r0, [sp, #4]
	ldrb r0, [r6, #3]
	cmp r0, #1
	bne _02265BD4
	ldr r0, [sp, #8]
	bl FUN_0222EEAC
	cmp r0, #0
	bne _02265BD4
	ldr r0, [sp, #8]
	bl FUN_0222E3BC
	bl FUN_0222E71C
	cmp r0, #9
	bne _02265BD4
	ldr r0, [sp, #8]
	bl FUN_0222EEA0
	add r0, r5, #0
	mov r1, #6
	bl ov70_0225CD60
	bl FUN_0222C0AC
	add r3, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	mov r2, #0
	bl ov70_0225CDAC
_02265BD4:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl FUN_0222E374
	add r5, r0, #0
	bne _02265BE6
	mov r0, #1
	str r0, [sp, #4]
	b _02265C18
_02265BE6:
	ldrb r0, [r6, #3]
	cmp r0, #1
	bne _02265BFC
	ldr r0, [sp, #8]
	bl FUN_0222EDF4
	cmp r0, #0
	bne _02265BFC
	mov r0, #1
	str r0, [sp, #4]
	b _02265C18
_02265BFC:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl FUN_0222E09C
	cmp r0, #0
	beq _02265C18
	add r0, r5, #0
	bl FUN_0222E71C
	ldrb r1, [r6, #2]
	cmp r0, r1
	beq _02265C18
	mov r0, #1
	str r0, [sp, #4]
_02265C18:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02265CC6
	add r0, r7, #0
	bl ov70_02262E8C
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF4C
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov70_0225DF6C
	b _02265CC6
_02265C3E:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #3
	bl ov70_0225CDEC
	add r0, r7, #0
	bl ov70_02262E8C
	b _02265CC6
_02265C50:
	ldr r0, [sp, #0xc]
	bl ov70_0225CCAC
	ldrb r1, [r6]
	ldrb r2, [r6, #1]
	bl ov70_0225CEDC
	cmp r0, #0
	bne _02265CC6
	ldrb r0, [r6]
	mov r3, sp
	add r1, sp, #0x14
	lsl r0, r0, #4
	strh r0, [r1, #4]
	ldrb r0, [r6, #1]
	sub r3, r3, #4
	lsl r0, r0, #4
	strh r0, [r1, #6]
	ldrh r2, [r1, #4]
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov70_0225CCB4
	add r0, r5, #0
	add r1, sp, #0x18
	bl ov70_0225D03C
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #4
	bl ov70_0225CDEC
	add r0, r7, #0
	bl ov70_02262E8C
	b _02265CC6
_02265C9E:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #2
	bl ov70_0225CDEC
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov70_0225DF4C
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov70_0225DF6C
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02265CC6:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02265A84

	thumb_func_start ov70_02265CCC
ov70_02265CCC: ; 0x02265CCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r2, #0
	add r4, r0, #0
	add r0, r6, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r7, #0
	bl ov70_0225DEF0
	add r5, r0, #0
	bl ov70_0225CCAC
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl ov70_0225DF00
	add r6, r0, #0
	ldr r0, [sp, #8]
	mov r1, #4
	bl ov70_0225CD60
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x20]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x10]
	cmp r0, #0xe
	bhi _02265D44
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02265D12: ; jump table
	.short _02265E50 - _02265D12 - 2 ; case 0
	.short _02265E50 - _02265D12 - 2 ; case 1
	.short _02265D30 - _02265D12 - 2 ; case 2
	.short _02265D4C - _02265D12 - 2 ; case 3
	.short _02265D66 - _02265D12 - 2 ; case 4
	.short _02265D80 - _02265D12 - 2 ; case 5
	.short _02265D9E - _02265D12 - 2 ; case 6
	.short _02265DBC - _02265D12 - 2 ; case 7
	.short _02265DDA - _02265D12 - 2 ; case 8
	.short _02265DFE - _02265D12 - 2 ; case 9
	.short _02265DF8 - _02265D12 - 2 ; case 10
	.short _02265E50 - _02265D12 - 2 ; case 11
	.short _02265E50 - _02265D12 - 2 ; case 12
	.short _02265E50 - _02265D12 - 2 ; case 13
	.short _02265E50 - _02265D12 - 2 ; case 14
_02265D30:
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265EB4 ; =0x0226DA28
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov70_02265ED0
	cmp r0, #0
	beq _02265D46
_02265D44:
	b _02265E56
_02265D46:
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265D4C:
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265EB8 ; =0x0226DA58
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov70_02265ED0
	cmp r0, #0
	bne _02265E56
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265D66:
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265EBC ; =0x0226DA38
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov70_02265ED0
	cmp r0, #0
	bne _02265E56
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265D80:
	add r0, r7, #0
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265EC0 ; =0x0226DAB8
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #8
	bl ov70_02265ED0
	cmp r0, #0
	bne _02265E56
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265D9E:
	add r0, r7, #0
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265EC4 ; =0x0226DAD8
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #8
	bl ov70_02265ED0
	cmp r0, #0
	bne _02265E56
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265DBC:
	mov r0, #3
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265EC8 ; =0x0226DA48
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov70_02265ED0
	cmp r0, #0
	bne _02265E56
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265DDA:
	add r0, r7, #0
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265ECC ; =0x0226DA68
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov70_02265ED0
	cmp r0, #0
	bne _02265E56
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265DF8:
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265DFE:
	ldr r0, [sp, #4]
	bl FUN_0222EDF4
	cmp r0, #0
	bne _02265E0E
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265E0E:
	ldr r0, [sp, #4]
	bl FUN_0222EE08
	cmp r0, #0
	bne _02265E1E
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265E1E:
	ldr r0, [sp, #4]
	bl FUN_0222EE1C
	ldr r1, [sp, #0x10]
	cmp r1, r0
	beq _02265E30
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265E30:
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r2, sp, #0x20
	add r3, sp, #0x1c
	bl ov70_0225CF4C
	cmp r0, #1
	beq _02265E44
	bl sub_02022974
_02265E44:
	ldr r0, [sp, #0x20]
	bl FUN_0222C0AC
	str r0, [sp, #0x20]
	mov r7, #1
	b _02265E56
_02265E50:
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265E56:
	ldr r0, [sp, #8]
	bl ov70_0225CD34
	add r1, sp, #0x14
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	sub r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldrh r2, [r1, #8]
	ldr r0, [sp, #8]
	strh r2, [r3]
	ldrh r1, [r1, #0xa]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	ldr r2, [sp, #0x20]
	bl ov70_0225CD04
	add r1, sp, #0x14
	mov r0, #4
	ldrsh r2, [r1, r0]
	asr r0, r2, #3
	lsr r0, r0, #0x1c
	add r0, r2, r0
	asr r0, r0, #4
	strb r0, [r4]
	mov r0, #6
	ldrsh r1, [r1, r0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	strb r0, [r4, #1]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x10]
	strb r0, [r4, #2]
	ldr r0, [sp, #0x3c]
	strb r7, [r4, #3]
	strb r0, [r4, #4]
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02265EB4: .word 0x0226DA28
_02265EB8: .word 0x0226DA58
_02265EBC: .word 0x0226DA38
_02265EC0: .word 0x0226DAB8
_02265EC4: .word 0x0226DAD8
_02265EC8: .word 0x0226DA48
_02265ECC: .word 0x0226DA68
	thumb_func_end ov70_02265CCC

	thumb_func_start ov70_02265ED0
ov70_02265ED0: ; 0x02265ED0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	add r5, r2, #0
	str r1, [sp, #4]
	add r6, r3, #0
	str r0, [sp, #0x20]
	ldr r4, _02265F34 ; =0x00000000
	beq _02265F2C
_02265EE4:
	mov r0, #0
	str r0, [sp]
	add r2, sp, #8
	ldr r1, [r5, #0]
	add r0, r7, #0
	add r2, #2
	add r3, sp, #8
	bl ov70_0225C8D8
	cmp r0, #1
	bne _02265F24
	add r1, sp, #8
	add r2, sp, #8
	ldrh r1, [r1, #2]
	ldrh r2, [r2]
	ldr r0, [sp, #4]
	bl ov70_0225CE7C
	cmp r0, #0
	bne _02265F24
	add r1, sp, #8
	ldrh r0, [r1, #2]
	lsl r2, r0, #4
	ldr r0, [sp, #0x20]
	strh r2, [r0]
	ldrh r0, [r1]
	lsl r1, r0, #4
	ldr r0, [sp, #0x20]
	add sp, #0xc
	strh r1, [r0, #2]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02265F24:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blo _02265EE4
_02265F2C:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02265F34: .word 0x00000000
	thumb_func_end ov70_02265ED0

	thumb_func_start ov70_02265F38
ov70_02265F38: ; 0x02265F38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r7, r0, #0
	add r5, r1, #0
	str r2, [sp, #0x10]
	bl ov70_02262E38
	add r6, r0, #0
	add r0, r7, #0
	bl ov70_02262E80
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_0225DEE8
	str r0, [sp, #0x34]
	add r0, r7, #0
	bl ov70_02262E84
	cmp r0, #0x1b
	bhi _02266050
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02265F6E: ; jump table
	.short _02266050 - _02265F6E - 2 ; case 0
	.short _02266050 - _02265F6E - 2 ; case 1
	.short _02266050 - _02265F6E - 2 ; case 2
	.short _02266050 - _02265F6E - 2 ; case 3
	.short _02266050 - _02265F6E - 2 ; case 4
	.short _02266050 - _02265F6E - 2 ; case 5
	.short _02266050 - _02265F6E - 2 ; case 6
	.short _02266024 - _02265F6E - 2 ; case 7
	.short _02265FEE - _02265F6E - 2 ; case 8
	.short _02265FA6 - _02265F6E - 2 ; case 9
	.short _02265FA6 - _02265F6E - 2 ; case 10
	.short _02265FA6 - _02265F6E - 2 ; case 11
	.short _02265FA6 - _02265F6E - 2 ; case 12
	.short _02265FA6 - _02265F6E - 2 ; case 13
	.short _02265FA6 - _02265F6E - 2 ; case 14
	.short _02266050 - _02265F6E - 2 ; case 15
	.short _02266050 - _02265F6E - 2 ; case 16
	.short _02266024 - _02265F6E - 2 ; case 17
	.short _02266024 - _02265F6E - 2 ; case 18
	.short _02266024 - _02265F6E - 2 ; case 19
	.short _02266024 - _02265F6E - 2 ; case 20
	.short _02266024 - _02265F6E - 2 ; case 21
	.short _02266024 - _02265F6E - 2 ; case 22
	.short _02266050 - _02265F6E - 2 ; case 23
	.short _02266050 - _02265F6E - 2 ; case 24
	.short _02266050 - _02265F6E - 2 ; case 25
	.short _02265FA6 - _02265F6E - 2 ; case 26
	.short _02265FA6 - _02265F6E - 2 ; case 27
_02265FA6:
	ldrb r0, [r6, #1]
	bl FUN_02233224
	ldrh r1, [r4, #8]
	cmp r1, r0
	bls _02265FC0
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02266050
_02265FC0:
	bl sub_02035E18
	ldrh r1, [r4, #8]
	cmp r1, r0
	ble _02265FD8
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02266050
_02265FD8:
	bl sub_020388AC
	cmp r0, #0
	bne _02265FEE
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02266050
_02265FEE:
	bl FUN_02233374
	cmp r0, #1
	bne _0226600E
	ldrb r0, [r6, #1]
	bl FUN_02233224
	cmp r0, #1
	bhi _0226600E
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02266050
_0226600E:
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	bpl _02266024
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02266050
_02266024:
	bl sub_020380E4
	cmp r0, #5
	bhi _02266050
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02266038: ; jump table
	.short _02266050 - _02266038 - 2 ; case 0
	.short _02266050 - _02266038 - 2 ; case 1
	.short _02266044 - _02266038 - 2 ; case 2
	.short _02266044 - _02266038 - 2 ; case 3
	.short _02266044 - _02266038 - 2 ; case 4
	.short _02266044 - _02266038 - 2 ; case 5
_02266044:
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
_02266050:
	add r0, r7, #0
	bl ov70_02262E84
	cmp r0, #0x1c
	bls _0226605E
	bl _022669AC
_0226605E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226606A: ; jump table
	.short _022660A4 - _0226606A - 2 ; case 0
	.short _022660B6 - _0226606A - 2 ; case 1
	.short _022660FA - _0226606A - 2 ; case 2
	.short _02266118 - _0226606A - 2 ; case 3
	.short _0226613E - _0226606A - 2 ; case 4
	.short _022661AC - _0226606A - 2 ; case 5
	.short _022661CA - _0226606A - 2 ; case 6
	.short _022662B4 - _0226606A - 2 ; case 7
	.short _02266472 - _0226606A - 2 ; case 8
	.short _022664FA - _0226606A - 2 ; case 9
	.short _0226654E - _0226606A - 2 ; case 10
	.short _0226657A - _0226606A - 2 ; case 11
	.short _022665F2 - _0226606A - 2 ; case 12
	.short _02266620 - _0226606A - 2 ; case 13
	.short _0226665A - _0226606A - 2 ; case 14
	.short _02266700 - _0226606A - 2 ; case 15
	.short _02266750 - _0226606A - 2 ; case 16
	.short _02266776 - _0226606A - 2 ; case 17
	.short _0226679E - _0226606A - 2 ; case 18
	.short _022667AE - _0226606A - 2 ; case 19
	.short _02266806 - _0226606A - 2 ; case 20
	.short _02266866 - _0226606A - 2 ; case 21
	.short _022668B8 - _0226606A - 2 ; case 22
	.short _02266902 - _0226606A - 2 ; case 23
	.short _02266914 - _0226606A - 2 ; case 24
	.short _02266926 - _0226606A - 2 ; case 25
	.short _0226693A - _0226606A - 2 ; case 26
	.short _0226695E - _0226606A - 2 ; case 27
	.short _02266988 - _0226606A - 2 ; case 28
_022660A4:
	add r0, r7, #0
	mov r1, #0x44
	bl ov70_02262E3C
	add r0, r7, #0
	bl ov70_02262E8C
	bl _022669AC
_022660B6:
	ldr r0, [sp, #0x34]
	bl FUN_0222E210
	cmp r0, #0
	beq _022660D0
	mov r0, #7
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x1c
	bl ov70_02262E88
	bl _022669AC
_022660D0:
	ldr r0, [sp, #0x34]
	bl FUN_0222E190
	cmp r0, #0
	beq _022660EA
	mov r0, #2
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x1c
	bl ov70_02262E88
	bl _022669AC
_022660EA:
	ldr r0, _022663C4 ; =0x000005DD
	bl sub_02005748
	add r0, r7, #0
	bl ov70_02262E8C
	bl _022669AC
_022660FA:
	ldrb r1, [r6, #2]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E27C
	mov r0, #3
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #0
	bl ov70_02266AF0
	bl _022669AC
_02266118:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	mov r3, #1
	bl ov70_02266B30
	add r4, #0x18
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov70_0225E074
	add r0, r7, #0
	mov r1, #4
	bl ov70_02262E88
	bl _022669AC
_0226613E:
	mov r0, #0
	str r0, [sp, #0x30]
	add r0, r5, #0
	bl ov70_0225E0D4
	cmp r0, #2
	bhi _0226615A
	cmp r0, #0
	beq _02266182
	cmp r0, #1
	beq _02266174
	cmp r0, #2
	beq _02266162
	b _0226618E
_0226615A:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _0226618E
_02266162:
	mov r0, #5
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x1c
	bl ov70_02262E88
	mov r0, #1
	str r0, [sp, #0x30]
	b _0226618E
_02266174:
	add r0, r7, #0
	mov r1, #5
	bl ov70_02262E88
	mov r0, #1
	str r0, [sp, #0x30]
	b _0226618E
_02266182:
	add r0, r7, #0
	mov r1, #6
	bl ov70_02262E88
	mov r0, #1
	str r0, [sp, #0x30]
_0226618E:
	ldr r0, [sp, #0x30]
	cmp r0, #1
	beq _02266198
	bl _022669AC
_02266198:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02266BA0
	b _022669AC
_022661AC:
	ldrb r1, [r6, #2]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E27C
	mov r0, #2
	str r0, [sp]
	ldrb r3, [r6, #2]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	add r3, #0x22
	bl ov70_02266AF0
	b _022669AC
_022661CA:
	ldr r0, [sp, #0x34]
	bl FUN_0222E190
	cmp r0, #0
	beq _022661E2
	mov r0, #2
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x1c
	bl ov70_02262E88
	b _022669AC
_022661E2:
	ldrb r0, [r6, #1]
	bl FUN_02233184
	cmp r0, #1
	bne _02266226
	ldrb r0, [r6, #1]
	bl FUN_022331E4
	cmp r0, #0
	beq _02266200
	ldrb r0, [r6, #1]
	bl FUN_022331A4
	cmp r0, #0
	bne _0226620E
_02266200:
	mov r0, #1
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x1c
	bl ov70_02262E88
	b _022669AC
_0226620E:
	ldrb r0, [r6, #1]
	bl FUN_022332F8
	cmp r0, #0
	bne _02266226
	mov r0, #7
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x1c
	bl ov70_02262E88
	b _022669AC
_02266226:
	ldrb r0, [r6, #1]
	bl FUN_022332F8
	strh r0, [r4]
	mov r0, #0xe1
	lsl r0, r0, #2
	str r0, [r4, #0x10]
	mov r1, #0
	ldrsh r2, [r4, r1]
	ldr r0, _022663C8 ; =0x0000014A
	cmp r2, r0
	ble _02266248
	add r0, r5, #0
	mov r2, #0xa
	bl ov70_0225E20C
	b _02266254
_02266248:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r5, #0
	mov r2, #0xb
	bl ov70_0225E20C
_02266254:
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225DFBC
	ldrb r0, [r6, #1]
	bl sub_0203883C
	bl FUN_02233374
	cmp r0, #1
	bne _0226628A
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrb r1, [r6, #2]
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x10]
	mov r2, #1
	bl FUN_0222EA10
	mov r0, #1
	strb r0, [r4, #7]
_0226628A:
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r1, r5, #0
	mov r3, #1
	str r0, [sp]
	ldrb r2, [r6, #2]
	add r0, r4, #0
	add r0, #0x3c
	bl ov70_02266C68
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov70_02266CFC
	add r0, r7, #0
	mov r1, #7
	bl ov70_02262E88
	b _022669AC
_022662B4:
	bl sub_020388AC
	str r0, [sp, #0x2c]
	ldrb r0, [r6, #1]
	bl FUN_02233224
	str r0, [sp, #0x28]
	ldrb r0, [r6, #1]
	bl FUN_022332F8
	strh r0, [r4]
	mov r1, #0
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	add r0, #0x3c
	bl ov70_02266CCC
	mov r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, _022663C8 ; =0x0000014A
	cmp r1, r0
	bgt _02266308
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _02266308
	add r0, r5, #0
	bl ov70_0225DFCC
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xb
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225DFBC
_02266308:
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CF0
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _02266328
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _022669AC
_02266328:
	cmp r0, #2
	bne _0226637E
	mov r0, #8
	strb r0, [r6]
	ldr r0, [sp, #0x28]
	cmp r0, #4
	bne _0226633A
	mov r6, #0x10
	b _0226633C
_0226633A:
	mov r6, #0x12
_0226633C:
	add r0, r5, #0
	bl ov70_0225DFCC
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225DFBC
	add r0, r7, #0
	mov r1, #9
	bl ov70_02262E88
	ldr r0, [sp, #0x28]
	mov r1, #0
	strh r0, [r4, #8]
	add r0, r4, #0
	add r0, #0x3c
	bl ov70_02266CCC
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CF0
	b _022669AC
_0226637E:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _022663D4
	ldr r0, _022663CC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _022663D4
	ldr r0, _022663D0 ; =0x000005DC
	bl sub_02005748
	bl FUN_02233374
	cmp r0, #0
	bne _022663B0
	mov r0, #6
	strb r0, [r6]
	add r0, r5, #0
	bl ov70_0225DFCC
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _022669AC
_022663B0:
	mov r0, #6
	strb r0, [r6]
	add r0, r5, #0
	bl ov70_0225DFCC
	add r0, r7, #0
	mov r1, #0x10
	bl ov70_02262E88
	b _022669AC
	; .align 2, 0
_022663C4: .word 0x000005DD
_022663C8: .word 0x0000014A
_022663CC: .word 0x021BF67C
_022663D0: .word 0x000005DC
_022663D4:
	bl FUN_02233374
	cmp r0, #1
	bne _02266420
	ldrb r1, [r4, #7]
	ldr r0, [sp, #0x28]
	cmp r1, r0
	beq _02266400
	strb r0, [r4, #7]
	cmp r0, #4
	beq _02266400
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrb r1, [r6, #2]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x10]
	bl FUN_0222EA10
_02266400:
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _02266420
	ldrb r0, [r6, #1]
	bl FUN_02233224
	cmp r0, #1
	bhi _02266420
	mov r0, #3
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _022669AC
_02266420:
	ldrb r0, [r6, #1]
	bl FUN_02233184
	cmp r0, #1
	bne _02266442
	ldrb r0, [r6, #1]
	bl FUN_022331A4
	cmp r0, #0
	bne _02266442
	mov r0, #0
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _022669AC
_02266442:
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _022664EA
	add r0, r7, #0
	mov r1, #8
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x12
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225DFBC
	b _022669AC
_02266472:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov70_02266CCC
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CF0
	bl sub_020388AC
	add r5, r0, #0
	ldrb r0, [r6, #1]
	bl FUN_02233224
	str r0, [sp, #0x24]
	bl sub_020380E4
	cmp r0, #3
	beq _022664A2
	cmp r0, #4
	bne _022664AE
_022664A2:
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
_022664AE:
	cmp r5, #0
	bne _022664C0
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _022669AC
_022664C0:
	cmp r5, #2
	bne _022664D6
	mov r0, #8
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #9
	bl ov70_02262E88
	ldr r0, [sp, #0x24]
	strh r0, [r4, #8]
	b _022669AC
_022664D6:
	ldrb r0, [r6, #1]
	bl FUN_02233184
	cmp r0, #1
	bne _022664EA
	ldrb r0, [r6, #1]
	bl FUN_022331A4
	cmp r0, #0
	beq _022664EC
_022664EA:
	b _022669AC
_022664EC:
	mov r0, #0
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _022669AC
_022664FA:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov70_02266CCC
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CF0
	add r0, r5, #0
	bl ov70_0225DEE8
	ldrb r1, [r6, #3]
	bl FUN_0222E3E4
	bl sub_02038B40
	add r0, r5, #0
	bl ov70_0225DEE8
	bl FUN_0222E0C4
	mov r1, #0
	bl sub_020329E0
	ldr r0, [sp, #0x34]
	bl FUN_0222E918
	bl sub_020331F4
	mov r0, #0
	bl sub_0203632C
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0xa
	mov r3, #0x11
	bl ov70_02266B18
	b _022669AC
_0226654E:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov70_02266CCC
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CF0
	bl sub_02032AC0
	bl sub_0203608C
	bl sub_02032E1C
	add r0, r7, #0
	mov r1, #0xb
	bl ov70_02262E88
	b _022669AC
_0226657A:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov70_02266CCC
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CF0
	bl sub_02032E44
	cmp r0, #0xff
	beq _022665A4
_02266598:
	bl sub_02032E1C
	bl sub_02032E44
	cmp r0, #0xff
	bne _02266598
_022665A4:
	bl sub_02032E64
	add r5, r0, #0
	ldrb r0, [r6, #1]
	bl FUN_02233224
	cmp r5, r0
	blo _022665DC
	bl FUN_02233374
	cmp r0, #1
	bne _022665CA
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _022665CA
	bl FUN_022330CC
	mov r0, #1
	strh r0, [r4, #2]
_022665CA:
	bl FUN_02233128
	cmp r0, #1
	bne _0226664E
	add r0, r7, #0
	mov r1, #0xc
	bl ov70_02262E88
	b _022669AC
_022665DC:
	bl FUN_02233128
	cmp r0, #1
	bne _0226664E
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _022669AC
_022665F2:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov70_02266CCC
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CF0
	bl sub_020365F4
	ldr r0, [sp, #0x34]
	bl FUN_0222E238
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0xd
	mov r3, #0xe
	bl ov70_02266B18
	b _022669AC
_02266620:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov70_02266CCC
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CF0
	ldr r0, [sp, #0x34]
	bl FUN_0222E344
	str r0, [r4, #0xc]
	bl sub_0203608C
	add r4, #0xc
	add r1, r4, #0
	bl sub_02036614
	cmp r0, #1
	beq _02266650
_0226664E:
	b _022669AC
_02266650:
	add r0, r7, #0
	mov r1, #0xe
	bl ov70_02262E88
	b _022669AC
_0226665A:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov70_02266CCC
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CF0
	bl sub_02032E64
	str r0, [sp, #0x20]
	bl sub_0203608C
	mov r5, #0
	str r0, [sp, #0x1c]
	str r5, [sp, #0x18]
	bl FUN_02233340
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	add r4, r5, #0
	cmp r0, #0
	ble _022666DC
_0226668E:
	ldr r0, [sp, #0x1c]
	cmp r0, r4
	beq _022666BE
	add r0, r4, #0
	bl sub_0203664C
	str r0, [sp, #0x38]
	cmp r0, #0
	beq _022666D4
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x34]
	ldr r1, [r1, #0]
	add r2, r4, #0
	bl FUN_0222E24C
	ldr r0, [sp, #0x38]
	ldr r1, [r0, #0]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bne _022666BA
	mov r0, #1
	str r0, [sp, #0x18]
_022666BA:
	add r5, r5, #1
	b _022666D4
_022666BE:
	ldr r0, [sp, #0x34]
	add r1, r4, #0
	bl FUN_0222E27C
	bl FUN_02233374
	cmp r0, #1
	bne _022666D2
	mov r0, #1
	str r0, [sp, #0x18]
_022666D2:
	add r5, r5, #1
_022666D4:
	ldr r0, [sp, #0x20]
	add r4, r4, #1
	cmp r4, r0
	blt _0226668E
_022666DC:
	ldr r0, [sp, #0x20]
	cmp r5, r0
	bne _022667C0
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _022666F2
	add r0, r7, #0
	mov r1, #0xf
	bl ov70_02262E88
	b _022669AC
_022666F2:
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _022669AC
_02266700:
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	bl FUN_02233374
	cmp r0, #1
	bne _0226673C
	ldr r0, [sp, #0x34]
	add r1, sp, #0x3c
	bl FUN_0222E294
	ldrb r0, [r6, #1]
	bl FUN_02233224
	add r3, sp, #0x3c
	add r2, r0, #0
	ldrb r0, [r3, #1]
	str r0, [sp]
	ldrb r0, [r3, #2]
	str r0, [sp, #4]
	ldrb r0, [r3, #3]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldrb r1, [r6, #2]
	ldrb r3, [r3]
	ldr r0, [sp, #0x34]
	bl FUN_0222EA10
_0226673C:
	add r0, r5, #0
	bl ov70_0225DFCC
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0x1c
	mov r3, #0x12
	bl ov70_02266B18
	b _022669AC
_02266750:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x1a
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	add r0, r7, #0
	mov r1, #0x11
	bl ov70_02262E88
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02266CB0
	b _022669AC
_02266776:
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov70_02266BAC
	cmp r0, #0
	bne _022667C0
	add r0, r5, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _022667C0
	add r0, r7, #0
	mov r1, #0x12
	bl ov70_02262E88
	b _022669AC
_0226679E:
	add r0, r5, #0
	bl ov70_0225E194
	add r0, r7, #0
	mov r1, #0x13
	bl ov70_02262E88
	b _022669AC
_022667AE:
	add r0, r5, #0
	bl ov70_0225E1C4
	cmp r0, #0
	beq _022667C2
	cmp r0, #1
	beq _022667D8
	cmp r0, #2
	beq _022667E8
_022667C0:
	b _022669AC
_022667C2:
	add r0, r5, #0
	bl ov70_0225E1F8
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	ldr r0, [sp, #0x34]
	bl FUN_0222E200
	b _022669AC
_022667D8:
	add r0, r5, #0
	bl ov70_0225E1F8
	add r0, r7, #0
	mov r1, #0x14
	bl ov70_02262E88
	b _022669AC
_022667E8:
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov70_02266BAC
	cmp r0, #1
	beq _022667FE
	b _022669AC
_022667FE:
	add r0, r5, #0
	bl ov70_0225E1F8
	b _022669AC
_02266806:
	ldrb r0, [r6, #1]
	bl FUN_022332F8
	strh r0, [r4]
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r1, r5, #0
	mov r3, #1
	str r0, [sp]
	add r0, r4, #0
	ldrb r2, [r6, #2]
	add r0, #0x3c
	bl ov70_02266C68
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #1
	bl ov70_02266CFC
	mov r1, #0
	ldrsh r2, [r4, r1]
	ldr r0, _022669B4 ; =0x0000014A
	cmp r2, r0
	ble _02266842
	add r0, r5, #0
	mov r2, #0xa
	bl ov70_0225E20C
	b _0226684E
_02266842:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r5, #0
	mov r2, #0xb
	bl ov70_0225E20C
_0226684E:
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225DFBC
	add r0, r7, #0
	mov r1, #7
	bl ov70_02262E88
	b _022669AC
_02266866:
	ldrb r0, [r6, #1]
	bl FUN_02233224
	mov r1, #8
	strb r1, [r6]
	cmp r0, #4
	bne _02266878
	mov r2, #0x10
	b _0226687A
_02266878:
	mov r2, #0x12
_0226687A:
	add r0, r5, #0
	mov r1, #0
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225DFBC
	add r0, r7, #0
	mov r1, #9
	bl ov70_02262E88
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	ldrb r2, [r6, #2]
	add r0, #0x3c
	add r1, r5, #0
	mov r3, #1
	bl ov70_02266C68
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov70_02266CFC
	b _022669AC
_022668B8:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x12
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225DFBC
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	ldrb r2, [r6, #2]
	add r0, #0x3c
	add r1, r5, #0
	mov r3, #1
	bl ov70_02266C68
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov70_02266CCC
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov70_02266CF0
	add r0, r7, #0
	mov r1, #8
	bl ov70_02262E88
	b _022669AC
_02266902:
	bl sub_02032A70
	bl sub_0203888C
	add r0, r7, #0
	mov r1, #0x18
	bl ov70_02262E88
	b _022669AC
_02266914:
	bl sub_020388AC
	cmp r0, #0
	bne _022669AC
	add r0, r7, #0
	mov r1, #0x1c
	bl ov70_02262E88
	b _022669AC
_02266926:
	add r0, r5, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _022669AC
	ldrb r1, [r4, #4]
	add r0, r7, #0
	bl ov70_02262E88
	b _022669AC
_0226693A:
	mov r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _02266946
	sub r0, r0, #1
	strb r0, [r4, #5]
_02266946:
	mov r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _022669AC
	ldrb r0, [r4, #6]
	bl sub_020364F0
	add r0, r7, #0
	mov r1, #0x1b
	bl ov70_02262E88
	b _022669AC
_0226695E:
	ldrh r0, [r4, #0xa]
	add r0, r0, #1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	cmp r0, #0x96
	blo _02266974
	ldrb r0, [r4, #6]
	bl sub_020364F0
	mov r0, #0
	strh r0, [r4, #0xa]
_02266974:
	ldrb r0, [r4, #6]
	bl sub_02036540
	cmp r0, #0
	beq _022669AC
	ldrb r1, [r4, #4]
	add r0, r7, #0
	bl ov70_02262E88
	b _022669AC
_02266988:
	add r0, r5, #0
	bl ov70_0225DFEC
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02266BA0
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02266CB0
	add r0, r7, #0
	bl ov70_02262E64
	add sp, #0x40
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022669AC:
	mov r0, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022669B4: .word 0x0000014A
	thumb_func_end ov70_02265F38

	thumb_func_start ov70_022669B8
ov70_022669B8: ; 0x022669B8
	push {r4, lr}
	add r4, r0, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _022669CA
	cmp r0, #1
	beq _022669EC
	b _022669F8
_022669CA:
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
	bl sub_020382C0
	cmp r0, #0
	bne _022669E2
	bl sub_02032A70
	bl sub_0203888C
_022669E2:
	add r0, r4, #0
	mov r1, #1
	bl ov70_02262E88
	b _022669F8
_022669EC:
	bl sub_020382C0
	cmp r0, #1
	bne _022669F8
	mov r0, #1
	pop {r4, pc}
_022669F8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov70_022669B8

	thumb_func_start ov70_022669FC
ov70_022669FC: ; 0x022669FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	bl ov70_02262E80
	add r4, r0, #0
	add r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _02266A1A
	cmp r0, #1
	beq _02266A90
	b _02266AE6
_02266A1A:
	add r0, r6, #0
	mov r1, #8
	bl ov70_02262E3C
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov70_0225DF40
	cmp r0, #0x27
	beq _02266A38
	cmp r0, #0x28
	beq _02266A3E
	cmp r0, #0x29
	beq _02266A44
	b _02266A4A
_02266A38:
	mov r7, #0x2a
	mov r4, #0
	b _02266A54
_02266A3E:
	mov r7, #0x29
	mov r4, #1
	b _02266A54
_02266A44:
	mov r7, #0x2b
	mov r4, #2
	b _02266A54
_02266A4A:
	bl sub_02022974
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02266A54:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_0225E27C
	add r0, r5, #0
	mov r1, #1
	add r2, r7, #0
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DFFC
	mov r3, #0
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	str r3, [sp]
	bl ov70_02266C68
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #1
	bl ov70_02266CFC
	add r0, r6, #0
	bl ov70_02262E8C
	b _02266AE6
_02266A90:
	ldr r0, _02266AEC ; =0x021BF67C
	mov r1, #1
	ldr r0, [r0, #0x48]
	tst r1, r0
	bne _02266AAC
	mov r1, #0x10
	tst r1, r0
	bne _02266AAC
	mov r1, #0x20
	tst r1, r0
	bne _02266AAC
	mov r1, #0x80
	tst r0, r1
	beq _02266ADC
_02266AAC:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02266CB0
	add r0, r5, #0
	bl ov70_0225DFEC
	add r0, r5, #0
	bl ov70_0225DEF0
	add r4, r0, #0
	bl ov70_0225CCAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r6, #0
	bl ov70_02262E64
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02266ADC:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CFC
_02266AE6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02266AEC: .word 0x021BF67C
	thumb_func_end ov70_022669FC

	thumb_func_start ov70_02266AF0
ov70_02266AF0: ; 0x02266AF0
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #0
	add r2, r3, #0
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r6, #0
	bl ov70_0225DF8C
	ldr r0, [sp, #0x10]
	mov r1, #0x19
	strb r0, [r5, #4]
	add r0, r4, #0
	bl ov70_02262E88
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_02266AF0

	thumb_func_start ov70_02266B18
ov70_02266B18: ; 0x02266B18
	strb r2, [r0, #4]
	strb r3, [r0, #6]
	mov r2, #0
	strb r2, [r0, #5]
	strh r2, [r0, #0xa]
	add r0, r1, #0
	ldr r3, _02266B2C ; =ov70_02262E88
	mov r1, #0x1a
	bx r3
	nop
_02266B2C: .word ov70_02262E88
	thumb_func_end ov70_02266B18

	thumb_func_start ov70_02266B30
ov70_02266B30: ; 0x02266B30
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r7, r3, #0
	bl ov70_0225E00C
	ldr r0, [sp]
	mov r4, #0
	str r6, [r0, #0x38]
	cmp r6, #0
	bls _02266B66
_02266B4C:
	add r0, r5, #0
	mov r1, #0
	add r2, r7, r4
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov70_0225E044
	add r4, r4, #1
	cmp r4, r6
	blo _02266B4C
_02266B66:
	ldr r2, [sp]
	ldr r3, _02266B9C ; =0x0226DC94
	add r2, #0x18
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [r0, #0x38]
	strh r1, [r0, #0x28]
	ldr r1, [r0, #0x38]
	ldrh r0, [r0, #0x2a]
	cmp r0, r1
	bls _02266B8E
	ldr r0, [sp]
	strh r1, [r0, #0x2a]
_02266B8E:
	add r0, r5, #0
	bl ov70_0225E054
	ldr r1, [sp]
	str r0, [r1, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02266B9C: .word 0x0226DC94
	thumb_func_end ov70_02266B30

	thumb_func_start ov70_02266BA0
ov70_02266BA0: ; 0x02266BA0
	ldr r3, _02266BA8 ; =ov70_0225E034
	add r0, r1, #0
	bx r3
	nop
_02266BA8: .word ov70_0225E034
	thumb_func_end ov70_02266BA0

	thumb_func_start ov70_02266BAC
ov70_02266BAC: ; 0x02266BAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	add r6, r3, #0
	bl ov70_0225DEE8
	str r0, [sp, #0x10]
	bl sub_020388AC
	add r7, r0, #0
	ldrb r0, [r4, #1]
	bl FUN_02233224
	add r2, r0, #0
	cmp r7, #0
	bne _02266BE2
	mov r0, #4
	strb r0, [r4]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02266BE2:
	cmp r7, #2
	bne _02266BF6
	add r0, r6, #0
	mov r1, #0x15
	strh r2, [r5, #8]
	bl ov70_02262E88
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02266BF6:
	ldrb r0, [r5, #7]
	cmp r0, r2
	beq _02266C16
	strb r2, [r5, #7]
	cmp r2, #4
	beq _02266C16
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrb r1, [r4, #2]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x28]
	bl FUN_0222EA10
_02266C16:
	ldrb r0, [r4, #1]
	bl FUN_022332F8
	strh r0, [r5]
	mov r0, #0
	ldrsh r2, [r5, r0]
	cmp r2, #0
	bne _02266C50
	ldrb r0, [r4, #1]
	bl FUN_02233224
	cmp r0, #1
	bhi _02266C42
	mov r0, #3
	strb r0, [r4]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02266C42:
	add r0, r6, #0
	mov r1, #0x16
	bl ov70_02262E88
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02266C50:
	ldr r1, _02266C64 ; =0x0000014A
	cmp r2, r1
	bgt _02266C60
	add r0, r6, #0
	mov r1, #0x14
	bl ov70_02262E88
	mov r0, #1
_02266C60:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02266C64: .word 0x0000014A
	thumb_func_end ov70_02266BAC

	thumb_func_start ov70_02266C68
ov70_02266C68: ; 0x02266C68
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	cmp r4, #2
	blo _02266C7A
	bl sub_02022974
_02266C7A:
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	strb r0, [r5, #3]
	strb r0, [r5, #4]
	strb r0, [r5, #5]
	strb r0, [r5, #6]
	strb r0, [r5, #7]
	strb r4, [r5, #6]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	strb r6, [r5, #3]
	bl ov70_02266CCC
	ldr r0, _02266CAC ; =0x0226DC90
	mov r1, #0x12
	ldrb r0, [r0, r4]
	mov r2, #3
	mov r3, #0xd
	str r0, [sp]
	add r0, r7, #0
	bl ov70_0225E104
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02266CAC: .word 0x0226DC90
	thumb_func_end ov70_02266C68

	thumb_func_start ov70_02266CB0
ov70_02266CB0: ; 0x02266CB0
	mov r2, #0
	strb r2, [r0]
	strb r2, [r0, #1]
	strb r2, [r0, #2]
	strb r2, [r0, #3]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	strb r2, [r0, #6]
	strb r2, [r0, #7]
	ldr r3, _02266CC8 ; =ov70_0225E12C
	add r0, r1, #0
	bx r3
	; .align 2, 0
_02266CC8: .word ov70_0225E12C
	thumb_func_end ov70_02266CB0

	thumb_func_start ov70_02266CCC
ov70_02266CCC: ; 0x02266CCC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #0x1e
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r1, r0
	beq _02266CEE
	strh r1, [r4, #4]
	ldrb r1, [r4, #7]
	mov r0, #8
	orr r0, r1
	strb r0, [r4, #7]
_02266CEE:
	pop {r4, pc}
	thumb_func_end ov70_02266CCC

	thumb_func_start ov70_02266CF0
ov70_02266CF0: ; 0x02266CF0
	push {r3, lr}
	mov r3, #0
	bl ov70_02266D08
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_02266CF0

	thumb_func_start ov70_02266CFC
ov70_02266CFC: ; 0x02266CFC
	push {r3, lr}
	mov r3, #1
	bl ov70_02266D08
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_02266CFC

	thumb_func_start ov70_02266D08
ov70_02266D08: ; 0x02266D08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	str r3, [sp, #4]
	cmp r2, #0
	beq _02266D1A
	mov r0, #0xff
	strb r0, [r5, #7]
_02266D1A:
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _02266D2A
	cmp r0, #1
	beq _02266D2E
	cmp r0, #2
	beq _02266D32
	b _02266D36
_02266D2A:
	mov r6, #0
	b _02266D3C
_02266D2E:
	mov r6, #1
	b _02266D3C
_02266D32:
	mov r6, #2
	b _02266D3C
_02266D36:
	bl sub_02022974
	mov r6, #2
_02266D3C:
	add r0, r6, #0
	bl FUN_02233184
	add r7, r0, #0
	ldrb r0, [r5]
	cmp r0, r7
	beq _02266D52
	ldrb r1, [r5, #7]
	mov r0, #4
	orr r0, r1
	strb r0, [r5, #7]
_02266D52:
	strb r7, [r5]
	add r0, r6, #0
	bl FUN_022331A4
	ldrb r1, [r5, #2]
	cmp r1, r0
	beq _02266D68
	ldrb r2, [r5, #7]
	mov r1, #4
	orr r1, r2
	strb r1, [r5, #7]
_02266D68:
	strb r0, [r5, #2]
	cmp r7, #1
	bne _02266D76
	add r0, r6, #0
	bl FUN_022331E4
	b _02266D78
_02266D76:
	mov r0, #4
_02266D78:
	ldrb r1, [r5, #1]
	cmp r1, r0
	beq _02266D86
	ldrb r2, [r5, #7]
	mov r1, #2
	orr r1, r2
	strb r1, [r5, #7]
_02266D86:
	strb r0, [r5, #1]
	ldrb r1, [r5, #7]
	mov r0, #1
	tst r0, r1
	beq _02266DC0
	mov r0, #0x10
	mov r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x68
	bl ov70_0225E14C
	ldrb r1, [r5, #3]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x36
	bl ov70_0225E20C
	mov r2, #0
	add r1, r0, #0
	add r0, r4, #0
	add r3, r2, #0
	bl ov70_0225E13C
_02266DC0:
	ldrb r1, [r5, #7]
	mov r0, #4
	tst r0, r1
	beq _02266DFE
	mov r2, #0x10
	add r0, r4, #0
	mov r1, #0x24
	mov r3, #0x68
	str r2, [sp]
	bl ov70_0225E14C
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02266DFE
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _02266DFE
	ldrb r0, [r5]
	cmp r0, #1
	bne _02266DFE
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x45
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x24
	mov r3, #0x10
	bl ov70_0225E13C
_02266DFE:
	ldrb r1, [r5, #7]
	mov r0, #2
	tst r0, r1
	beq _02266E4E
	mov r2, #0x20
	add r0, r4, #0
	mov r1, #0
	mov r3, #0x68
	str r2, [sp]
	bl ov70_0225E14C
	mov r0, #2
	str r0, [sp]
	mov r2, #1
	ldrb r1, [r5, #1]
	add r0, r4, #0
	add r3, r2, #0
	bl ov70_0225E21C
	mov r0, #2
	str r0, [sp]
	ldrb r2, [r5, #1]
	mov r1, #4
	add r0, r4, #0
	sub r1, r1, r2
	mov r2, #1
	mov r3, #0
	bl ov70_0225E21C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x44
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	mov r3, #0x20
	bl ov70_0225E13C
_02266E4E:
	ldrb r0, [r5, #6]
	cmp r0, #1
	bne _02266E92
	ldrb r1, [r5, #7]
	mov r0, #8
	tst r0, r1
	beq _02266E92
	mov r0, #0x10
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x40
	mov r3, #0x68
	bl ov70_0225E14C
	mov r2, #2
	str r2, [sp]
	mov r1, #4
	ldrsh r1, [r5, r1]
	add r0, r4, #0
	mov r3, #0
	bl ov70_0225E21C
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xf
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	mov r3, #0x40
	bl ov70_0225E13C
_02266E92:
	mov r0, #0
	strb r0, [r5, #7]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02266D08

	thumb_func_start ov70_02266E9C
ov70_02266E9C: ; 0x02266E9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	str r2, [sp, #0xc]
	bl ov70_0225DEE8
	add r7, r0, #0
	add r0, r5, #0
	bl ov70_0225DF10
	str r0, [sp, #0x24]
	add r0, r6, #0
	bl ov70_02262E80
	add r4, r0, #0
	add r0, r7, #0
	bl FUN_0222EE30
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl FUN_0222EE3C
	str r0, [sp, #0x1c]
	add r0, r7, #0
	bl FUN_0222EE68
	cmp r0, #0
	beq _02266EF4
	cmp r4, #0
	beq _02266EF4
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _02266EF4
	add r0, r6, #0
	mov r1, #0x20
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	mov r0, #0
	strh r0, [r4, #0xa]
_02266EF4:
	cmp r4, #0
	beq _02266F16
	add r0, r7, #0
	bl FUN_0222E3BC
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02266F12
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl FUN_0222E374
	str r0, [sp, #0x14]
	b _02266F16
_02266F12:
	mov r0, #0
	str r0, [sp, #0x14]
_02266F16:
	add r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _02266F3E
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _02266F3E
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02266F3E
	add r0, r6, #0
	mov r1, #0x20
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	mov r0, #0
	strh r0, [r4, #0xa]
_02266F3E:
	add r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0x26
	bls _02266F4C
	bl _02267A2E
_02266F4C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02266F58: ; jump table
	.short _02266FA6 - _02266F58 - 2 ; case 0
	.short _0226706C - _02266F58 - 2 ; case 1
	.short _02267090 - _02266F58 - 2 ; case 2
	.short _022670D8 - _02266F58 - 2 ; case 3
	.short _02267116 - _02266F58 - 2 ; case 4
	.short _02267146 - _02266F58 - 2 ; case 5
	.short _022671B8 - _02266F58 - 2 ; case 6
	.short _022671E6 - _02266F58 - 2 ; case 7
	.short _02267216 - _02266F58 - 2 ; case 8
	.short _0226724E - _02266F58 - 2 ; case 9
	.short _0226727C - _02266F58 - 2 ; case 10
	.short _022672AA - _02266F58 - 2 ; case 11
	.short _022672DA - _02266F58 - 2 ; case 12
	.short _02267356 - _02266F58 - 2 ; case 13
	.short _02267414 - _02266F58 - 2 ; case 14
	.short _02267444 - _02266F58 - 2 ; case 15
	.short _022674C4 - _02266F58 - 2 ; case 16
	.short _02267510 - _02266F58 - 2 ; case 17
	.short _02267520 - _02266F58 - 2 ; case 18
	.short _0226758E - _02266F58 - 2 ; case 19
	.short _022675A0 - _02266F58 - 2 ; case 20
	.short _022675E0 - _02266F58 - 2 ; case 21
	.short _02267622 - _02266F58 - 2 ; case 22
	.short _02267654 - _02266F58 - 2 ; case 23
	.short _02267682 - _02266F58 - 2 ; case 24
	.short _022676DA - _02266F58 - 2 ; case 25
	.short _02267720 - _02266F58 - 2 ; case 26
	.short _02267768 - _02266F58 - 2 ; case 27
	.short _022677AE - _02266F58 - 2 ; case 28
	.short _0226780C - _02266F58 - 2 ; case 29
	.short _02267874 - _02266F58 - 2 ; case 30
	.short _022678A2 - _02266F58 - 2 ; case 31
	.short _022678D0 - _02266F58 - 2 ; case 32
	.short _02267912 - _02266F58 - 2 ; case 33
	.short _02267944 - _02266F58 - 2 ; case 34
	.short _0226796C - _02266F58 - 2 ; case 35
	.short _022679A0 - _02266F58 - 2 ; case 36
	.short _022679AA - _02266F58 - 2 ; case 37
	.short _022679B6 - _02266F58 - 2 ; case 38
_02266FA6:
	add r0, r6, #0
	mov r1, #0x50
	bl ov70_02262E3C
	add r4, r0, #0
	mov r1, #0
	add r0, #0x44
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x46
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x38
	str r1, [r4, #0x48]
	bl ov70_02269114
	add r0, r5, #0
	bl ov70_0225DEF0
	str r0, [sp, #0x28]
	bl ov70_0225CCAC
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	bl ov70_0225CE40
	str r0, [sp, #0x30]
	cmp r0, #0
	bne _02266FF2
	mov r0, #0
	strh r0, [r4, #0xa]
	add r0, r6, #0
	mov r1, #0x26
	bl ov70_02262E88
	bl _02267A2E
_02266FF2:
	mov r1, #4
	bl ov70_0225CD60
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x2c]
	mov r1, #6
	bl ov70_0225CD60
	bl FUN_0222C0AC
	str r0, [sp, #0x38]
	add r0, r7, #0
	bl FUN_0222EC60
	ldr r2, [sp, #0x34]
	add r0, r4, #0
	add r1, r7, #0
	bl ov70_02268B50
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x30]
	mov r1, #0
	str r0, [r4, #0x10]
	bl ov70_0225D030
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x38]
	bl ov70_0225D060
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x34]
	mov r2, #0
	bl ov70_02262EEC
	ldr r0, _02267390 ; =0x000005E4
	bl sub_02005748
	add r0, r7, #0
	mov r1, #9
	bl FUN_0222E3E4
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne _02267060
	ldr r1, [sp, #0x34]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E328
	add r0, r6, #0
	mov r1, #1
	bl ov70_02262E88
	bl _02267A2E
_02267060:
	add r0, r6, #0
	mov r1, #0x22
	bl ov70_02262E88
	bl _02267A2E
_0226706C:
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl FUN_0222EC70
	cmp r0, #1
	bne _02267084
	add r0, r6, #0
	mov r1, #2
	bl ov70_02262E88
	bl _02267A2E
_02267084:
	add r0, r6, #0
	mov r1, #0x22
	bl ov70_02262E88
	bl _02267A2E
_02267090:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bhi _022670CC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022670A2: ; jump table
	.short _022670C0 - _022670A2 - 2 ; case 0
	.short _02267A2E - _022670A2 - 2 ; case 1
	.short _022670AC - _022670A2 - 2 ; case 2
	.short _022670CC - _022670A2 - 2 ; case 3
	.short _022670CC - _022670A2 - 2 ; case 4
_022670AC:
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl FUN_0222EEE4
	add r0, r6, #0
	mov r1, #3
	bl ov70_02262E88
	bl _02267A2E
_022670C0:
	add r0, r6, #0
	mov r1, #0x22
	bl ov70_02262E88
	bl _02267A2E
_022670CC:
	add r0, r6, #0
	mov r1, #0x20
	bl ov70_02262E88
	bl _02267A2E
_022670D8:
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl FUN_0222EEF4
	add r0, r7, #0
	bl FUN_0222F020
	add r0, r7, #0
	mov r1, #7
	bl FUN_0222F040
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r2, r5, #0
	str r0, [sp, #4]
	ldrb r3, [r4, #4]
	add r0, r4, #0
	bl ov70_02268BF4
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #4
	add r3, r6, #0
	bl ov70_02268BA4
	bl _02267A2E
_02267116:
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r2, r5, #0
	str r0, [sp, #4]
	ldrb r3, [r4, #5]
	add r0, r4, #0
	bl ov70_02268BF4
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #5
	add r3, r6, #0
	bl ov70_02268BA4
	add r0, r7, #0
	mov r1, #0
	bl FUN_0222ECD4
	bl _02267A2E
_02267146:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bhi _022671A6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02267158: ; jump table
	.short _022671A6 - _02267158 - 2 ; case 0
	.short _022671A6 - _02267158 - 2 ; case 1
	.short _02267162 - _02267158 - 2 ; case 2
	.short _0226718A - _02267158 - 2 ; case 3
	.short _022671A6 - _02267158 - 2 ; case 4
_02267162:
	add r0, r5, #0
	bl ov70_0225DFCC
	add r0, r7, #0
	bl FUN_0222EE24
	cmp r0, #0
	beq _0226717E
	add r0, r6, #0
	mov r1, #6
	bl ov70_02262E88
	bl _02267A2E
_0226717E:
	add r0, r6, #0
	mov r1, #8
	bl ov70_02262E88
	bl _02267A2E
_0226718A:
	add r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	bne _0226719A
	add r0, r5, #0
	bl ov70_0225DFBC
_0226719A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268D70
	bl _02267A2E
_022671A6:
	add r0, r6, #0
	mov r1, #0x20
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	bl _02267A2E
_022671B8:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02268CC8
	cmp r0, #1
	bne _022671DA
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #7
	add r3, r6, #0
	bl ov70_02268BA4
	bl _02267A2E
_022671DA:
	add r0, r6, #0
	mov r1, #7
	bl ov70_02262E88
	bl _02267A2E
_022671E6:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x28
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #9
	add r3, r6, #0
	bl ov70_02268BA4
	bl _02267A2E
_02267216:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrh r1, [r4, #8]
	add r0, r5, #0
	mov r2, #1
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	ldrh r2, [r4, #8]
	add r0, r5, #0
	bl ov70_02268AF8
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #9
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_0226724E:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2e
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xb
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_0226727C:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x36
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xb
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_022672AA:
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	ldr r3, _02267394 ; =0x00000203
	add r0, #0x14
	add r1, r5, #0
	mov r2, #3
	bl ov70_02268E44
	add r1, r4, #0
	mov r2, #0
	add r0, r5, #0
	add r1, #0x14
	add r3, r2, #0
	bl ov70_0225E074
	add r0, r4, #0
	bl ov70_02268DB8
	add r0, r6, #0
	mov r1, #0xc
	bl ov70_02262E88
	b _02267A2E
_022672DA:
	add r0, r5, #0
	bl ov70_0225E0D4
	cmp r0, #0
	beq _022672EE
	cmp r0, #1
	beq _022672FA
	cmp r0, #2
	beq _02267318
	b _0226732A
_022672EE:
	add r0, r6, #0
	mov r1, #0xd
	bl ov70_02262E88
	mov r0, #1
	b _02267334
_022672FA:
	add r0, r6, #0
	mov r1, #0x13
	bl ov70_02262E88
	ldr r0, [r4, #0x10]
	mov r1, #4
	bl ov70_0225CD60
	add r2, r0, #0
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl FUN_0222E990
	mov r0, #1
	b _02267334
_02267318:
	add r0, r7, #0
	bl FUN_0222ED7C
	add r0, r6, #0
	mov r1, #0x21
	bl ov70_02262E88
	mov r0, #1
	b _02267334
_0226732A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268DCC
	mov r0, #0
_02267334:
	cmp r0, #1
	beq _0226733A
	b _02267A2E
_0226733A:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl ov70_02269108
	add r0, r4, #0
	bl ov70_02268DC4
	b _02267A2E
_02267356:
	ldr r0, [sp, #0x18]
	bl FUN_0222E8C4
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x14]
	bl FUN_0222E8C4
	ldr r1, [sp, #0x40]
	cmp r1, r0
	bne _022673C4
	mov r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #1
	bl ov70_02268D38
	ldrb r1, [r4, #3]
	ldr r2, _02267398 ; =0x000001FB
	b _0226739C
	nop
_02267390: .word 0x000005E4
_02267394: .word 0x00000203
_02267398: .word 0x000001FB
_0226739C:
	add r0, r5, #0
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x12
	add r3, r6, #0
	bl ov70_02268BA4
	add r0, r7, #0
	mov r1, #4
	bl FUN_0222ECD4
	b _02267A2E
_022673C4:
	mov r2, #0
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	bl ov70_0225E234
	mov r3, #1
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	str r3, [sp]
	bl ov70_02268D38
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #2
	bl ov70_02268D38
	mov r2, #0x7f
	ldrb r1, [r4, #3]
	add r0, r5, #0
	lsl r2, r2, #2
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xe
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_02267414:
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	ldr r3, _02267750 ; =0x00000206
	add r0, #0x14
	add r1, r5, #0
	mov r2, #2
	bl ov70_02268E44
	add r1, r4, #0
	mov r2, #0
	add r0, r5, #0
	add r1, #0x14
	add r3, r2, #0
	bl ov70_0225E074
	add r0, r4, #0
	bl ov70_02268DB8
	add r0, r6, #0
	mov r1, #0xf
	bl ov70_02262E88
	b _02267A2E
_02267444:
	add r0, r5, #0
	bl ov70_0225E0D4
	cmp r0, #0
	beq _02267454
	cmp r0, #1
	beq _0226748C
	b _02267498
_02267454:
	add r0, r7, #0
	mov r1, #3
	bl FUN_0222ECD4
	add r0, r6, #0
	mov r1, #0x10
	bl ov70_02262E88
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl FUN_0222EF44
	ldr r0, [r4, #0x10]
	mov r1, #4
	bl ov70_0225CD60
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	bl FUN_0222E8C4
	add r3, r0, #0
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	add r2, r6, #0
	bl FUN_0222E9CC
	mov r0, #1
	b _022674A2
_0226748C:
	add r0, r6, #0
	mov r1, #0xa
	bl ov70_02262E88
	mov r0, #1
	b _022674A2
_02267498:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268DCC
	mov r0, #0
_022674A2:
	cmp r0, #1
	beq _022674A8
	b _02267A2E
_022674A8:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl ov70_02269108
	add r0, r4, #0
	bl ov70_02268DC4
	b _02267A2E
_022674C4:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #1
	bl ov70_02268D38
	ldrb r1, [r4, #3]
	ldr r2, _02267754 ; =0x000001FE
	add r0, r5, #0
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x11
	add r3, r6, #0
	bl ov70_02268BA4
	ldr r0, [sp, #0x14]
	bl FUN_0222E8C4
	add r1, r0, #0
	add r0, r7, #0
	bl FUN_0222E528
	b _02267A2E
_02267510:
	ldr r0, _02267758 ; =0x000005A8
	bl sub_02005748
	add r0, r6, #0
	mov r1, #0x12
	bl ov70_02262E88
	b _02267A2E
_02267520:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bhi _0226757E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02267532: ; jump table
	.short _0226757E - _02267532 - 2 ; case 0
	.short _0226757E - _02267532 - 2 ; case 1
	.short _0226753C - _02267532 - 2 ; case 2
	.short _02267564 - _02267532 - 2 ; case 3
	.short _0226757E - _02267532 - 2 ; case 4
_0226753C:
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	bl ov70_02268E20
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _02267554
	add r0, r6, #0
	mov r1, #0x21
	bl ov70_02262E88
	b _0226755C
_02267554:
	add r0, r6, #0
	mov r1, #0xa
	bl ov70_02262E88
_0226755C:
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02267A2E
_02267564:
	add r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	bne _02267574
	add r0, r5, #0
	bl ov70_0225DFBC
_02267574:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268D70
	b _02267A2E
_0226757E:
	add r0, r6, #0
	mov r1, #0x20
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02267A2E
_0226758E:
	add r0, r7, #0
	mov r1, #5
	bl FUN_0222ECD4
	add r0, r6, #0
	mov r1, #0x14
	bl ov70_02262E88
	b _02267A2E
_022675A0:
	ldr r0, _0226775C ; =0x00000207
	add r1, r5, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x14
	mov r2, #0x1e
	mov r3, #4
	bl ov70_02268EEC
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x17
	add r1, r4, #0
	mov r2, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, #0x14
	add r3, r2, #0
	bl ov70_0225E0A4
	add r0, r6, #0
	mov r1, #0x15
	bl ov70_02262E88
	add r0, r4, #0
	bl ov70_02268DB8
	b _02267A2E
_022675E0:
	add r0, r5, #0
	bl ov70_0225E0D4
	mov r1, #1
	mvn r1, r1
	str r0, [sp, #0x44]
	cmp r0, r1
	beq _022675F6
	add r1, r1, #1
	cmp r0, r1
	bne _02267600
_022675F6:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268DCC
	b _02267A2E
_02267600:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl ov70_02269108
	ldr r0, [sp, #0x44]
	mov r1, #0x16
	strb r0, [r4]
	add r0, r6, #0
	bl ov70_02262E88
	b _02267A2E
_02267622:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r3, [r4]
	ldr r2, _02267760 ; =0x000001DD
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, r3, r2
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x17
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_02267654:
	mov r0, #0
	str r0, [sp]
	ldrb r3, [r4]
	add r0, r4, #0
	add r0, #0x14
	lsl r3, r3, #2
	add r1, r5, #0
	mov r2, #4
	add r3, #0x73
	bl ov70_02268E44
	add r1, r4, #0
	mov r2, #0
	add r0, r5, #0
	add r1, #0x14
	add r3, r2, #0
	bl ov70_0225E074
	add r0, r6, #0
	mov r1, #0x18
	bl ov70_02262E88
	b _02267A2E
_02267682:
	add r0, r5, #0
	bl ov70_0225E0D4
	str r0, [sp, #0x48]
	cmp r0, #3
	bhi _022676D0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226769A: ; jump table
	.short _022676A2 - _0226769A - 2 ; case 0
	.short _022676A2 - _0226769A - 2 ; case 1
	.short _022676A2 - _0226769A - 2 ; case 2
	.short _022676A2 - _0226769A - 2 ; case 3
_022676A2:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl ov70_02269108
	add r0, r4, #0
	bl ov70_02268DC4
	ldrb r0, [r4]
	lsl r1, r0, #2
	ldr r0, [sp, #0x48]
	add r0, r0, r1
	strb r0, [r4, #1]
	add r0, r6, #0
	mov r1, #0x19
	bl ov70_02262E88
	b _02267A2E
_022676D0:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268DCC
	b _02267A2E
_022676DA:
	ldrb r2, [r4, #1]
	add r0, r4, #0
	add r0, #0x38
	add r2, r2, #6
	lsl r2, r2, #0x10
	add r1, r7, #0
	lsr r2, r2, #0x10
	mov r3, #2
	bl ov70_0226911C
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r3, [r4, #1]
	ldr r2, _02267764 ; =0x00000165
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, r3, r2
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1a
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_02267720:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r2, [r4]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, #0x55
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1b
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
	; .align 2, 0
_02267750: .word 0x00000206
_02267754: .word 0x000001FE
_02267758: .word 0x000005A8
_0226775C: .word 0x00000207
_02267760: .word 0x000001DD
_02267764: .word 0x00000165
_02267768:
	add r0, r4, #0
	add r0, #0x38
	bl ov70_02269178
	cmp r0, #1
	bne _0226779A
	add r0, r4, #0
	add r0, #0x38
	bl ov70_02269188
	cmp r0, #2
	bne _0226778A
	add r0, r6, #0
	mov r1, #0x1c
	bl ov70_02262E88
	b _02267A2E
_0226778A:
	add r0, r6, #0
	mov r1, #0x20
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02267A2E
_0226779A:
	add r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	beq _022677A6
	b _02267A2E
_022677A6:
	add r0, r5, #0
	bl ov70_0225DFBC
	b _02267A2E
_022677AE:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bhi _022677FC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022677C0: ; jump table
	.short _022677FC - _022677C0 - 2 ; case 0
	.short _022677FC - _022677C0 - 2 ; case 1
	.short _022677CA - _022677C0 - 2 ; case 2
	.short _022677E2 - _022677C0 - 2 ; case 3
	.short _022677FC - _022677C0 - 2 ; case 4
_022677CA:
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	bl ov70_02268E20
	add r0, r6, #0
	mov r1, #0x1d
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02267A2E
_022677E2:
	add r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	bne _022677F2
	add r0, r5, #0
	bl ov70_0225DFBC
_022677F2:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268D70
	b _02267A2E
_022677FC:
	add r0, r6, #0
	mov r1, #0x20
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02267A2E
_0226780C:
	ldr r0, [sp, #0x1c]
	sub r0, r0, #6
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	cmp r0, #0x7e
	bhs _02267820
	cmp r0, #6
	bhs _0226782A
_02267820:
	add r0, r6, #0
	mov r1, #0x23
	bl ov70_02262E88
	b _02267A2E
_0226782A:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldr r2, [sp, #0x10]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, #0xec
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	ldrb r1, [r4, #1]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	bne _02267862
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1e
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_02267862:
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1f
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_02267874:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x33
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xa
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_022678A2:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x32
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xa
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_022678D0:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl ov70_02269108
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2d
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0
	strh r0, [r4, #0xa]
	mov r0, #0x24
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x26
	add r3, r6, #0
	bl ov70_02268BA4
	add r0, r7, #0
	bl FUN_0222EDC0
	b _02267A2E
_02267912:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2b
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0
	strh r0, [r4, #0xa]
	mov r0, #0x24
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x26
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_02267944:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2a
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0
	strh r0, [r4, #0xa]
	mov r0, #0x24
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x26
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_0226796C:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	mov r2, #0x59
	ldrb r1, [r4, #3]
	add r0, r5, #0
	lsl r2, r2, #2
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0
	strh r0, [r4, #0xa]
	mov r0, #0x24
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x26
	add r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_022679A0:
	add r0, r4, #0
	add r1, r6, #0
	bl ov70_02268BBC
	b _02267A2E
_022679AA:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov70_02268BD8
	b _02267A2E
_022679B6:
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #1
	bne _022679CE
	add r1, r4, #0
	add r1, #0x46
	ldrh r1, [r1]
	ldr r2, [r4, #0x48]
	add r0, r7, #0
	bl FUN_0222E500
_022679CE:
	add r0, r7, #0
	bl FUN_0222EC60
	add r0, r5, #0
	bl ov70_0225DFEC
	add r0, r7, #0
	mov r1, #1
	bl FUN_0222E3E4
	add r0, r5, #0
	bl ov70_0225DEF0
	add r7, r0, #0
	bl ov70_0225CCAC
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #1
	bl ov70_0225CDEC
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02267A1C
	mov r1, #1
	bl ov70_0225D030
	ldr r0, [r4, #0x10]
	mov r1, #4
	bl ov70_0225CD60
	add r1, r0, #0
	ldr r0, [sp, #0x24]
	mov r2, #1
	bl ov70_02262EEC
	add r0, r5, #0
	bl ov70_0225E3D0
_02267A1C:
	add r0, r4, #0
	bl ov70_02268BA0
	add r0, r6, #0
	bl ov70_02262E64
	add sp, #0x4c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02267A2E:
	add r0, r4, #0
	bl ov70_02268E08
	add r4, #0x38
	add r0, r4, #0
	add r1, r7, #0
	bl ov70_02269144
	mov r0, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_02266E9C

	thumb_func_start ov70_02267A44
ov70_02267A44: ; 0x02267A44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	bl ov70_0225DEE8
	add r7, r0, #0
	add r0, r6, #0
	bl ov70_02262E80
	add r4, r0, #0
	add r0, r7, #0
	bl FUN_0222EE30
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl FUN_0222EE3C
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl FUN_0222EE68
	cmp r0, #0
	beq _02267A92
	cmp r4, #0
	beq _02267A92
	ldrh r0, [r4, #0xa]
	cmp r0, #1
	bne _02267A92
	add r0, r6, #0
	mov r1, #0x1a
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	mov r0, #0
	strh r0, [r4, #0xa]
_02267A92:
	cmp r4, #0
	beq _02267AA8
	add r0, r7, #0
	bl FUN_0222E3BC
	str r0, [sp, #0xc]
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl FUN_0222E374
	str r0, [sp, #8]
_02267AA8:
	add r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _02267AD0
	ldrh r0, [r4, #0xa]
	cmp r0, #1
	bne _02267AD0
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _02267AD0
	add r0, r6, #0
	mov r1, #0x1a
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	mov r0, #0
	strh r0, [r4, #0xa]
_02267AD0:
	add r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0x1f
	bhi _02267B96
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02267AE6: ; jump table
	.short _02267B26 - _02267AE6 - 2 ; case 0
	.short _02267B8C - _02267AE6 - 2 ; case 1
	.short _02267BBE - _02267AE6 - 2 ; case 2
	.short _02267BFA - _02267AE6 - 2 ; case 3
	.short _02267C6C - _02267AE6 - 2 ; case 4
	.short _02267C96 - _02267AE6 - 2 ; case 5
	.short _02267CC4 - _02267AE6 - 2 ; case 6
	.short _02267CFC - _02267AE6 - 2 ; case 7
	.short _02267D2A - _02267AE6 - 2 ; case 8
	.short _02267D58 - _02267AE6 - 2 ; case 9
	.short _02267E1E - _02267AE6 - 2 ; case 10
	.short _02267E5A - _02267AE6 - 2 ; case 11
	.short _02267EA0 - _02267AE6 - 2 ; case 12
	.short _02267EDC - _02267AE6 - 2 ; case 13
	.short _02267F2A - _02267AE6 - 2 ; case 14
	.short _02267F6E - _02267AE6 - 2 ; case 15
	.short _02267F9C - _02267AE6 - 2 ; case 16
	.short _02267FFC - _02267AE6 - 2 ; case 17
	.short _0226804A - _02267AE6 - 2 ; case 18
	.short _0226807A - _02267AE6 - 2 ; case 19
	.short _022680AA - _02267AE6 - 2 ; case 20
	.short _022680DC - _02267AE6 - 2 ; case 21
	.short _02268110 - _02267AE6 - 2 ; case 22
	.short _0226819E - _02267AE6 - 2 ; case 23
	.short _022681EA - _02267AE6 - 2 ; case 24
	.short _02268234 - _02267AE6 - 2 ; case 25
	.short _02268262 - _02267AE6 - 2 ; case 26
	.short _022682A4 - _02267AE6 - 2 ; case 27
	.short _022682D6 - _02267AE6 - 2 ; case 28
	.short _02268304 - _02267AE6 - 2 ; case 29
	.short _0226830E - _02267AE6 - 2 ; case 30
	.short _0226831A - _02267AE6 - 2 ; case 31
_02267B26:
	add r0, r6, #0
	mov r1, #0x50
	bl ov70_02262E3C
	add r4, r0, #0
	mov r1, #0
	add r0, #0x44
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x46
	strh r1, [r0]
	add r0, r7, #0
	str r1, [r4, #0x48]
	bl FUN_0222EE1C
	str r0, [sp, #0x18]
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	add r1, r7, #0
	bl ov70_02268B50
	str r0, [sp, #0x1c]
	ldr r0, _02267E98 ; =0x000005E4
	bl sub_02005748
	add r0, r7, #0
	mov r1, #9
	bl FUN_0222E3E4
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _02267B82
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E328
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	bl FUN_0222EEE4
	add r0, r6, #0
	mov r1, #1
	bl ov70_02262E88
	b _02268382
_02267B82:
	add r0, r6, #0
	mov r1, #0x1a
	bl ov70_02262E88
	b _02268382
_02267B8C:
	add r0, r7, #0
	bl FUN_0222EEAC
	cmp r0, #0
	bne _02267B98
_02267B96:
	b _02268382
_02267B98:
	ldr r0, [sp, #8]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r2, r5, #0
	str r0, [sp, #4]
	ldrb r3, [r4, #5]
	add r0, r4, #0
	bl ov70_02268BF4
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #2
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267BBE:
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl FUN_0222EEF4
	add r0, r7, #0
	bl FUN_0222F020
	add r0, r7, #0
	mov r1, #7
	bl FUN_0222F040
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	add r2, r5, #0
	str r0, [sp, #4]
	ldrb r3, [r4, #4]
	add r0, r4, #0
	bl ov70_02268BF4
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #3
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267BFA:
	ldr r0, [sp, #0x14]
	cmp r0, #4
	bhi _02267C5C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02267C0C: ; jump table
	.short _02267C5C - _02267C0C - 2 ; case 0
	.short _02267C5C - _02267C0C - 2 ; case 1
	.short _02267C42 - _02267C0C - 2 ; case 2
	.short _02267C16 - _02267C0C - 2 ; case 3
	.short _02267C5C - _02267C0C - 2 ; case 4
_02267C16:
	add r0, r5, #0
	bl ov70_0225DFCC
	add r0, r7, #0
	mov r1, #0
	bl FUN_0222ECD4
	add r0, r7, #0
	bl FUN_0222EE24
	cmp r0, #0
	beq _02267C38
	add r0, r6, #0
	mov r1, #4
	bl ov70_02262E88
	b _02268382
_02267C38:
	add r0, r6, #0
	mov r1, #6
	bl ov70_02262E88
	b _02268382
_02267C42:
	add r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	bne _02267C52
	add r0, r5, #0
	bl ov70_0225DFBC
_02267C52:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268D70
	b _02268382
_02267C5C:
	add r0, r6, #0
	mov r1, #0x1a
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02268382
_02267C6C:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02268CC8
	cmp r0, #1
	bne _02267C8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #5
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267C8C:
	add r0, r6, #0
	mov r1, #5
	bl ov70_02262E88
	b _02268382
_02267C96:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x28
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #7
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267CC4:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrh r1, [r4, #8]
	add r0, r5, #0
	mov r2, #1
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	ldrh r2, [r4, #8]
	add r0, r5, #0
	bl ov70_02268AF8
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #7
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267CFC:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2f
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #9
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267D2A:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x35
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #9
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267D58:
	ldr r0, [sp, #0x14]
	cmp r0, #4
	bhi _02267E0E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02267D6A: ; jump table
	.short _02267DFE - _02267D6A - 2 ; case 0
	.short _02267E0E - _02267D6A - 2 ; case 1
	.short _02267DE4 - _02267D6A - 2 ; case 2
	.short _02267D74 - _02267D6A - 2 ; case 3
	.short _02267E0E - _02267D6A - 2 ; case 4
_02267D74:
	ldr r0, [sp, #0x10]
	cmp r0, #3
	beq _02267D84
	cmp r0, #4
	beq _02267DA0
	cmp r0, #5
	beq _02267DBC
	b _02267DCE
_02267D84:
	add r0, r6, #0
	mov r1, #0xa
	bl ov70_02262E88
	add r0, r7, #0
	bl FUN_0222EEB8
	mov r0, #1
	str r0, [r4, #0x4c]
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl ov70_02268E20
	b _02267DDC
_02267DA0:
	add r0, r6, #0
	mov r1, #0xe
	bl ov70_02262E88
	add r0, r7, #0
	bl FUN_0222EEB8
	mov r0, #1
	str r0, [r4, #0x4c]
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl ov70_02268E20
	b _02267DDC
_02267DBC:
	add r0, r7, #0
	mov r1, #1
	bl FUN_0222ECD4
	add r0, r6, #0
	mov r1, #0xf
	bl ov70_02262E88
	b _02267DDC
_02267DCE:
	add r0, r6, #0
	mov r1, #0x1a
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
_02267DDC:
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02268382
_02267DE4:
	add r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	bne _02267DF4
	add r0, r5, #0
	bl ov70_0225DFBC
_02267DF4:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268D70
	b _02268382
_02267DFE:
	add r0, r6, #0
	mov r1, #0x1b
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02268382
_02267E0E:
	add r0, r6, #0
	mov r1, #0x1a
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02268382
_02267E1E:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	mov r3, #1
	str r3, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02268D38
	ldrb r1, [r4, #3]
	ldr r2, _02267E9C ; =0x000001FF
	add r0, r5, #0
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xb
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267E5A:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	mov r3, #1
	str r3, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02268D38
	mov r2, #2
	ldrb r1, [r4, #3]
	add r0, r5, #0
	lsl r2, r2, #8
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xc
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
	; .align 2, 0
_02267E98: .word 0x000005E4
_02267E9C: .word 0x000001FF
_02267EA0:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	mov r3, #1
	str r3, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02268D38
	ldrb r1, [r4, #3]
	ldr r2, _02268218 ; =0x00000201
	add r0, r5, #0
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xd
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267EDC:
	ldr r0, _0226821C ; =0x000005A8
	bl sub_02005748
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	ldr r2, _02268220 ; =0x00000202
	add r0, r5, #0
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #8
	add r3, r6, #0
	bl ov70_02268BA4
	add r0, r7, #0
	mov r1, #2
	bl FUN_0222ECD4
	add r0, r7, #0
	bl FUN_0222E3BC
	bl FUN_0222E8C4
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225E378
	b _02268382
_02267F2A:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	mov r3, #1
	str r3, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov70_02268D38
	ldrb r1, [r4, #3]
	ldr r2, _02268224 ; =0x000001FB
	add r0, r5, #0
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1b
	add r3, r6, #0
	bl ov70_02268BA4
	add r0, r7, #0
	mov r1, #2
	bl FUN_0222ECD4
	b _02268382
_02267F6E:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	ldr r2, _02268228 ; =0x000002AF
	add r0, r5, #0
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x10
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267F9C:
	ldr r0, [sp, #0x14]
	cmp r0, #4
	bhi _02267FEC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02267FAE: ; jump table
	.short _02267FEC - _02267FAE - 2 ; case 0
	.short _02267FEC - _02267FAE - 2 ; case 1
	.short _02267FD2 - _02267FAE - 2 ; case 2
	.short _02267FB8 - _02267FAE - 2 ; case 3
	.short _02267FEC - _02267FAE - 2 ; case 4
_02267FB8:
	add r0, r6, #0
	mov r1, #0x11
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	add r0, r7, #0
	bl FUN_0222EEB8
	mov r0, #1
	str r0, [r4, #0x4c]
	b _02268382
_02267FD2:
	add r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	bne _02267FE2
	add r0, r5, #0
	bl ov70_0225DFBC
_02267FE2:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268D70
	b _02268382
_02267FEC:
	add r0, r6, #0
	mov r1, #0x1a
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	b _02268382
_02267FFC:
	ldr r0, [sp, #0x10]
	cmp r0, #6
	blo _02268006
	cmp r0, #0x7e
	blo _02268010
_02268006:
	add r0, r6, #0
	mov r1, #0x1a
	bl ov70_02262E88
	b _02268382
_02268010:
	sub r0, r0, #6
	strb r0, [r4, #2]
	ldrb r0, [r4, #2]
	mov r2, #0
	lsr r0, r0, #2
	strb r0, [r4]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	bl ov70_0225E234
	ldrb r2, [r4]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, #0x37
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x12
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_0226804A:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r2, [r4]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, #0x55
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x13
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_0226807A:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r2, [r4, #2]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, #0xec
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x14
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_022680AA:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r3, [r4]
	ldr r2, _0226822C ; =0x000001DD
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, r3, r2
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x15
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_022680DC:
	mov r0, #2
	str r0, [sp]
	ldrb r3, [r4]
	add r0, r4, #0
	add r0, #0x14
	lsl r3, r3, #2
	add r1, r5, #0
	mov r2, #5
	add r3, #0x73
	bl ov70_02268E44
	add r1, r4, #0
	mov r2, #0
	add r0, r5, #0
	add r1, #0x14
	add r3, r2, #0
	bl ov70_0225E074
	add r0, r4, #0
	bl ov70_02268DB8
	add r0, r6, #0
	mov r1, #0x16
	bl ov70_02262E88
	b _02268382
_02268110:
	add r0, r5, #0
	bl ov70_0225E0D4
	cmp r0, #4
	bhi _0226816A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02268126: ; jump table
	.short _02268130 - _02268126 - 2 ; case 0
	.short _02268130 - _02268126 - 2 ; case 1
	.short _02268130 - _02268126 - 2 ; case 2
	.short _02268130 - _02268126 - 2 ; case 3
	.short _02268152 - _02268126 - 2 ; case 4
_02268130:
	ldrb r1, [r4]
	lsl r1, r1, #2
	add r0, r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	add r0, r7, #0
	add r1, r1, #6
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl FUN_0222ECD4
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	mov r0, #1
	b _02268174
_02268152:
	mov r0, #0x7e
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	add r0, r7, #0
	bl FUN_0222ECD4
	add r0, r6, #0
	mov r1, #0x1c
	bl ov70_02262E88
	mov r0, #1
	b _02268174
_0226816A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02268DCC
	mov r0, #0
_02268174:
	cmp r0, #0
	bne _0226817A
	b _02268382
_0226817A:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl ov70_02269108
	add r0, r4, #0
	bl ov70_02268DC4
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl ov70_02268E20
	b _02268382
_0226819E:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r3, [r4, #1]
	ldr r2, _02268230 ; =0x00000165
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, r3, r2
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	ldrb r1, [r4, #2]
	ldrb r0, [r4, #1]
	cmp r1, r0
	bne _022681D8
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x18
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_022681D8:
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x19
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_022681EA:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x33
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x19
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
	; .align 2, 0
_02268218: .word 0x00000201
_0226821C: .word 0x000005A8
_02268220: .word 0x00000202
_02268224: .word 0x000001FB
_02268228: .word 0x000002AF
_0226822C: .word 0x000001DD
_02268230: .word 0x00000165
_02268234:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x34
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #8
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02268262:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl ov70_02269108
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2d
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0
	strh r0, [r4, #0xa]
	mov r0, #0x1d
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1f
	add r3, r6, #0
	bl ov70_02268BA4
	add r0, r7, #0
	bl FUN_0222EDC0
	b _02268382
_022682A4:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2b
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0
	strh r0, [r4, #0xa]
	mov r0, #0x1d
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1f
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_022682D6:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x31
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1b
	add r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02268304:
	add r0, r4, #0
	add r1, r6, #0
	bl ov70_02268BBC
	b _02268382
_0226830E:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov70_02268BD8
	b _02268382
_0226831A:
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #1
	bne _02268332
	add r1, r4, #0
	add r1, #0x46
	ldrh r1, [r1]
	ldr r2, [r4, #0x48]
	add r0, r7, #0
	bl FUN_0222E500
_02268332:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _02268340
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl FUN_0222EED4
_02268340:
	add r0, r7, #0
	bl FUN_0222EC60
	add r0, r5, #0
	bl ov70_0225DFEC
	add r0, r4, #0
	bl ov70_02268BA0
	add r0, r6, #0
	bl ov70_02262E64
	add r0, r7, #0
	mov r1, #1
	bl FUN_0222E3E4
	add r0, r5, #0
	bl ov70_0225DEF0
	add r4, r0, #0
	bl ov70_0225CCAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r5, #0
	bl ov70_0225E3D0
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02268382:
	add r0, r4, #0
	bl ov70_02268E08
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02267A44

	thumb_func_start ov70_02268390
ov70_02268390: ; 0x02268390
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	bl ov70_02262E80
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_0225DEE8
	add r7, r0, #0
	add r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0x18
	bls _022683B2
	b _02268892
_022683B2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022683BE: ; jump table
	.short _022683F0 - _022683BE - 2 ; case 0
	.short _02268430 - _022683BE - 2 ; case 1
	.short _02268450 - _022683BE - 2 ; case 2
	.short _02268470 - _022683BE - 2 ; case 3
	.short _02268490 - _022683BE - 2 ; case 4
	.short _022684B0 - _022683BE - 2 ; case 5
	.short _022684DA - _022683BE - 2 ; case 6
	.short _02268588 - _022683BE - 2 ; case 7
	.short _022685A8 - _022683BE - 2 ; case 8
	.short _022685C6 - _022683BE - 2 ; case 9
	.short _0226863E - _022683BE - 2 ; case 10
	.short _02268668 - _022683BE - 2 ; case 11
	.short _02268692 - _022683BE - 2 ; case 12
	.short _022686BC - _022683BE - 2 ; case 13
	.short _022686DC - _022683BE - 2 ; case 14
	.short _022686FC - _022683BE - 2 ; case 15
	.short _0226871C - _022683BE - 2 ; case 16
	.short _02268740 - _022683BE - 2 ; case 17
	.short _022687B6 - _022683BE - 2 ; case 18
	.short _022687D6 - _022683BE - 2 ; case 19
	.short _022687F6 - _022683BE - 2 ; case 20
	.short _02268816 - _022683BE - 2 ; case 21
	.short _02268836 - _022683BE - 2 ; case 22
	.short _02268856 - _022683BE - 2 ; case 23
	.short _0226886A - _022683BE - 2 ; case 24
_022683F0:
	add r0, r6, #0
	mov r1, #0x28
	bl ov70_02262E3C
	ldr r0, _0226873C ; =0x000005DC
	bl sub_02005748
	add r0, r7, #0
	bl FUN_0222E12C
	cmp r0, #1
	bne _02268412
	add r0, r6, #0
	mov r1, #2
	bl ov70_02262E88
	b _02268892
_02268412:
	add r0, r7, #0
	bl FUN_0222E170
	cmp r0, #1
	bne _02268426
	add r0, r6, #0
	mov r1, #1
	bl ov70_02262E88
	b _02268892
_02268426:
	add r0, r6, #0
	mov r1, #3
	bl ov70_02262E88
	b _02268892
_02268430:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4e
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #0x18
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268450:
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #0x18
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268470:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xf
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268490:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x10
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #5
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_022684B0:
	add r0, r5, #4
	add r1, r4, #0
	bl ov70_02268FB8
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xf
	mov r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov70_0225E0A4
	add r0, r6, #0
	mov r1, #6
	bl ov70_02262E88
	b _02268892
_022684DA:
	add r0, r4, #0
	mov r7, #0
	bl ov70_0225E0D4
	cmp r0, #7
	bhi _02268502
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022684F2: ; jump table
	.short _0226850C - _022684F2 - 2 ; case 0
	.short _02268518 - _022684F2 - 2 ; case 1
	.short _02268524 - _022684F2 - 2 ; case 2
	.short _02268530 - _022684F2 - 2 ; case 3
	.short _0226853C - _022684F2 - 2 ; case 4
	.short _02268548 - _022684F2 - 2 ; case 5
	.short _02268554 - _022684F2 - 2 ; case 6
	.short _02268566 - _022684F2 - 2 ; case 7
_02268502:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _02268560
	b _02268570
_0226850C:
	add r0, r6, #0
	mov r1, #7
	bl ov70_02262E88
	mov r7, #1
	b _02268570
_02268518:
	add r0, r6, #0
	mov r1, #8
	bl ov70_02262E88
	mov r7, #1
	b _02268570
_02268524:
	add r0, r6, #0
	mov r1, #0xd
	bl ov70_02262E88
	mov r7, #1
	b _02268570
_02268530:
	add r0, r6, #0
	mov r1, #0xe
	bl ov70_02262E88
	mov r7, #1
	b _02268570
_0226853C:
	add r0, r6, #0
	mov r1, #0xf
	bl ov70_02262E88
	mov r7, #1
	b _02268570
_02268548:
	add r0, r6, #0
	mov r1, #0x15
	bl ov70_02262E88
	mov r7, #1
	b _02268570
_02268554:
	add r0, r6, #0
	mov r1, #0x10
	bl ov70_02262E88
	mov r7, #1
	b _02268570
_02268560:
	ldr r0, _0226873C ; =0x000005DC
	bl sub_02005748
_02268566:
	add r0, r6, #0
	mov r1, #0x16
	bl ov70_02262E88
	mov r7, #1
_02268570:
	cmp r7, #1
	bne _02268628
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r5, #4
	add r1, r4, #0
	bl ov70_02269108
	b _02268892
_02268588:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x17
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_022685A8:
	add r0, r5, #4
	add r1, r4, #0
	bl ov70_02269090
	mov r2, #0
	add r0, r4, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov70_0225E074
	add r0, r6, #0
	mov r1, #9
	bl ov70_02262E88
	b _02268892
_022685C6:
	add r0, r4, #0
	mov r7, #0
	bl ov70_0225E0D4
	cmp r0, #3
	bhi _022685E6
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022685DE: ; jump table
	.short _022685F0 - _022685DE - 2 ; case 0
	.short _022685FC - _022685DE - 2 ; case 1
	.short _02268608 - _022685DE - 2 ; case 2
	.short _0226861A - _022685DE - 2 ; case 3
_022685E6:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _02268614
	b _02268624
_022685F0:
	add r0, r6, #0
	mov r1, #0xa
	bl ov70_02262E88
	mov r7, #1
	b _02268624
_022685FC:
	add r0, r6, #0
	mov r1, #0xb
	bl ov70_02262E88
	mov r7, #1
	b _02268624
_02268608:
	add r0, r6, #0
	mov r1, #0xc
	bl ov70_02262E88
	mov r7, #1
	b _02268624
_02268614:
	ldr r0, _0226873C ; =0x000005DC
	bl sub_02005748
_0226861A:
	add r0, r6, #0
	mov r1, #4
	bl ov70_02262E88
	mov r7, #1
_02268624:
	cmp r7, #1
	beq _0226862A
_02268628:
	b _02268892
_0226862A:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r5, #4
	add r1, r4, #0
	bl ov70_02269108
	b _02268892
_0226863E:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x18
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268668:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x19
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268692:
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1a
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_022686BC:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x12
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_022686DC:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x13
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_022686FC:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x14
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_0226871C:
	add r0, r5, #4
	add r1, r4, #0
	bl ov70_02269018
	mov r2, #0
	add r0, r4, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov70_0225E074
	add r0, r6, #0
	mov r1, #0x11
	bl ov70_02262E88
	b _02268892
	nop
_0226873C: .word 0x000005DC
_02268740:
	add r0, r4, #0
	mov r7, #0
	bl ov70_0225E0D4
	cmp r0, #3
	bhi _02268760
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02268758: ; jump table
	.short _0226876A - _02268758 - 2 ; case 0
	.short _02268776 - _02268758 - 2 ; case 1
	.short _02268782 - _02268758 - 2 ; case 2
	.short _02268794 - _02268758 - 2 ; case 3
_02268760:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0226878E
	b _0226879E
_0226876A:
	add r0, r6, #0
	mov r1, #0x12
	bl ov70_02262E88
	mov r7, #1
	b _0226879E
_02268776:
	add r0, r6, #0
	mov r1, #0x13
	bl ov70_02262E88
	mov r7, #1
	b _0226879E
_02268782:
	add r0, r6, #0
	mov r1, #0x14
	bl ov70_02262E88
	mov r7, #1
	b _0226879E
_0226878E:
	ldr r0, _02268898 ; =0x000005DC
	bl sub_02005748
_02268794:
	add r0, r6, #0
	mov r1, #4
	bl ov70_02262E88
	mov r7, #1
_0226879E:
	cmp r7, #1
	bne _02268892
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r5, #4
	add r1, r4, #0
	bl ov70_02269108
	b _02268892
_022687B6:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1b
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_022687D6:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1c
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_022687F6:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1d
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268816:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1e
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #4
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268836:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x16
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	mov r0, #0x18
	str r0, [r5, #0]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268856:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #0
	beq _02268892
	ldr r1, [r5, #0]
	add r0, r6, #0
	bl ov70_02262E88
	b _02268892
_0226886A:
	add r0, r6, #0
	bl ov70_02262E64
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r4, #0
	bl ov70_0225DEF0
	add r4, r0, #0
	bl ov70_0225CCAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov70_0225CDEC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02268892:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02268898: .word 0x000005DC
	thumb_func_end ov70_02268390

	thumb_func_start ov70_0226889C
ov70_0226889C: ; 0x0226889C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl ov70_02262E80
	add r0, r4, #0
	bl ov70_0225DEE8
	add r6, r0, #0
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _022688C6
	cmp r0, #1
	bne _022688BE
	b _022689FE
_022688BE:
	cmp r0, #2
	bne _022688C4
	b _02268A12
_022688C4:
	b _02268A32
_022688C6:
	ldr r0, _02268A38 ; =0x000005DC
	bl sub_02005748
	add r0, r6, #0
	bl FUN_0222E12C
	cmp r0, #0
	bne _022688FC
	add r0, r6, #0
	bl FUN_0222E170
	cmp r0, #1
	bne _02268918
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4e
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	mov r1, #1
	bl ov70_02262E88
	b _02268A32
_022688FC:
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	mov r1, #1
	bl ov70_02262E88
	b _02268A32
_02268918:
	add r0, r6, #0
	bl FUN_0222F05C
	cmp r0, #8
	bhi _022689E2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226892E: ; jump table
	.short _02268940 - _0226892E - 2 ; case 0
	.short _02268958 - _0226892E - 2 ; case 1
	.short _02268970 - _0226892E - 2 ; case 2
	.short _02268988 - _0226892E - 2 ; case 3
	.short _022689A0 - _0226892E - 2 ; case 4
	.short _022689B8 - _0226892E - 2 ; case 5
	.short _022689C6 - _0226892E - 2 ; case 6
	.short _022689D4 - _0226892E - 2 ; case 7
	.short _022689E2 - _0226892E - 2 ; case 8
_02268940:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x49
	bl ov70_0225E20C
	add r1, r0, #0
	b _022689EE
_02268958:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x49
	bl ov70_0225E20C
	add r1, r0, #0
	b _022689EE
_02268970:
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x49
	bl ov70_0225E20C
	add r1, r0, #0
	b _022689EE
_02268988:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4d
	bl ov70_0225E20C
	add r1, r0, #0
	b _022689EE
_022689A0:
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4d
	bl ov70_0225E20C
	add r1, r0, #0
	b _022689EE
_022689B8:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4a
	bl ov70_0225E20C
	add r1, r0, #0
	b _022689EE
_022689C6:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4f
	bl ov70_0225E20C
	add r1, r0, #0
	b _022689EE
_022689D4:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4b
	bl ov70_0225E20C
	add r1, r0, #0
	b _022689EE
_022689E2:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4c
	bl ov70_0225E20C
	add r1, r0, #0
_022689EE:
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	mov r1, #1
	bl ov70_02262E88
	b _02268A32
_022689FE:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #0
	beq _02268A32
	add r0, r5, #0
	mov r1, #2
	bl ov70_02262E88
	b _02268A32
_02268A12:
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r4, #0
	bl ov70_0225DEF0
	add r4, r0, #0
	bl ov70_0225CCAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov70_0225CDEC
	mov r0, #1
	pop {r4, r5, r6, pc}
_02268A32:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02268A38: .word 0x000005DC
	thumb_func_end ov70_0226889C

	thumb_func_start ov70_02268A3C
ov70_02268A3C: ; 0x02268A3C
	push {r3, lr}
	sub sp, #8
	bl FUN_0222E7C4
	str r0, [sp]
	str r0, [sp, #4]
	add r0, sp, #0
	ldrb r0, [r0, #4]
	cmp r0, #0x18
	bhi _02268AA0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02268A5C: ; jump table
	.short _02268A9A - _02268A5C - 2 ; case 0
	.short _02268A9A - _02268A5C - 2 ; case 1
	.short _02268A9A - _02268A5C - 2 ; case 2
	.short _02268A9A - _02268A5C - 2 ; case 3
	.short _02268A8E - _02268A5C - 2 ; case 4
	.short _02268A8E - _02268A5C - 2 ; case 5
	.short _02268A8E - _02268A5C - 2 ; case 6
	.short _02268A8E - _02268A5C - 2 ; case 7
	.short _02268A8E - _02268A5C - 2 ; case 8
	.short _02268A8E - _02268A5C - 2 ; case 9
	.short _02268A8E - _02268A5C - 2 ; case 10
	.short _02268A94 - _02268A5C - 2 ; case 11
	.short _02268A94 - _02268A5C - 2 ; case 12
	.short _02268A94 - _02268A5C - 2 ; case 13
	.short _02268A94 - _02268A5C - 2 ; case 14
	.short _02268A94 - _02268A5C - 2 ; case 15
	.short _02268A94 - _02268A5C - 2 ; case 16
	.short _02268A94 - _02268A5C - 2 ; case 17
	.short _02268A94 - _02268A5C - 2 ; case 18
	.short _02268A9A - _02268A5C - 2 ; case 19
	.short _02268A9A - _02268A5C - 2 ; case 20
	.short _02268A9A - _02268A5C - 2 ; case 21
	.short _02268A9A - _02268A5C - 2 ; case 22
	.short _02268A9A - _02268A5C - 2 ; case 23
	.short _02268A9A - _02268A5C - 2 ; case 24
_02268A8E:
	add sp, #8
	mov r0, #0
	pop {r3, pc}
_02268A94:
	add sp, #8
	mov r0, #1
	pop {r3, pc}
_02268A9A:
	add sp, #8
	mov r0, #2
	pop {r3, pc}
_02268AA0:
	bl sub_02022974
	mov r0, #1
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_02268A3C

	thumb_func_start ov70_02268AAC
ov70_02268AAC: ; 0x02268AAC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	bl ov70_0225DEE8
	add r1, r6, #0
	bl FUN_0222E924
	cmp r0, #1
	bne _02268ADE
	ldr r3, _02268AEC ; =0x0226DD5C
	ldr r0, _02268AF0 ; =0x00000163
	mov r2, #0
_02268AC8:
	ldrh r1, [r3]
	cmp r4, r1
	bne _02268AD6
	ldr r0, _02268AF4 ; =0x0226DD5E
	lsl r1, r2, #2
	ldrh r4, [r0, r1]
	b _02268ADE
_02268AD6:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, r0
	blo _02268AC8
_02268ADE:
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	bl ov70_0225E20C
	pop {r4, r5, r6, pc}
	nop
_02268AEC: .word 0x0226DD5C
_02268AF0: .word 0x00000163
_02268AF4: .word 0x0226DD5E
	thumb_func_end ov70_02268AAC

	thumb_func_start ov70_02268AF8
ov70_02268AF8: ; 0x02268AF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r6, r2, #0
	bl ov70_0225DEE8
	add r7, r0, #0
	add r1, r5, #0
	bl FUN_0222E924
	add r5, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl FUN_0222E924
	mov r2, #0x29
	cmp r5, #1
	bne _02268B24
	cmp r0, #1
	bne _02268B24
	ldr r2, _02268B44 ; =0x000002AA
	b _02268B3A
_02268B24:
	cmp r5, #1
	bne _02268B30
	cmp r0, #0
	bne _02268B30
	ldr r2, _02268B48 ; =0x00000226
	b _02268B3A
_02268B30:
	cmp r5, #0
	bne _02268B3A
	cmp r0, #1
	bne _02268B3A
	ldr r2, _02268B4C ; =0x000002A9
_02268B3A:
	add r0, r4, #0
	mov r1, #3
	bl ov70_0225E20C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02268B44: .word 0x000002AA
_02268B48: .word 0x00000226
_02268B4C: .word 0x000002A9
	thumb_func_end ov70_02268AF8

	thumb_func_start ov70_02268B50
ov70_02268B50: ; 0x02268B50
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	add r6, r2, #0
	mvn r0, r0
	add r4, r1, #0
	cmp r6, r0
	bne _02268B64
	bl sub_02022974
_02268B64:
	strb r6, [r5, #3]
	add r0, r4, #0
	bl FUN_0222E338
	strh r0, [r5, #8]
	mov r0, #1
	strh r0, [r5, #0xa]
	add r0, r4, #0
	bl FUN_0222E3BC
	add r6, r0, #0
	ldrb r1, [r5, #3]
	add r0, r4, #0
	bl FUN_0222E374
	add r4, r0, #0
	bne _02268B8A
	mov r0, #0
	pop {r4, r5, r6, pc}
_02268B8A:
	add r0, r6, #0
	bl ov70_02268A3C
	strb r0, [r5, #4]
	add r0, r4, #0
	bl ov70_02268A3C
	strb r0, [r5, #5]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_02268B50

	thumb_func_start ov70_02268BA0
ov70_02268BA0: ; 0x02268BA0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02268BA0

	thumb_func_start ov70_02268BA4
ov70_02268BA4: ; 0x02268BA4
	strb r1, [r0, #6]
	ldr r1, _02268BB4 ; =0xFFFFFFF0
	strb r2, [r0, #7]
	add r0, r3, #0
	add r1, sp
	ldr r3, _02268BB8 ; =ov70_02262E88
	ldrb r1, [r1, #0x10]
	bx r3
	; .align 2, 0
_02268BB4: .word 0xFFFFFFF0
_02268BB8: .word ov70_02262E88
	thumb_func_end ov70_02268BA4

	thumb_func_start ov70_02268BBC
ov70_02268BBC: ; 0x02268BBC
	push {r3, lr}
	add r2, r0, #0
	ldrb r0, [r2, #6]
	cmp r0, #0
	beq _02268BCC
	sub r0, r0, #1
	strb r0, [r2, #6]
	pop {r3, pc}
_02268BCC:
	add r0, r1, #0
	ldrb r1, [r2, #7]
	bl ov70_02262E88
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_02268BBC

	thumb_func_start ov70_02268BD8
ov70_02268BD8: ; 0x02268BD8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl ov70_0225DFAC
	cmp r0, #0
	beq _02268BF0
	ldrb r1, [r5, #7]
	add r0, r4, #0
	bl ov70_02262E88
_02268BF0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_02268BD8

	thumb_func_start ov70_02268BF4
ov70_02268BF4: ; 0x02268BF4
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl ov70_02268C44
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl ov70_02268C44
	ldr r0, [sp, #0x10]
	bl FUN_0222E80C
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	bl FUN_0222E80C
	add r3, r0, #0
	ldr r2, _02268C40 ; =0x0226DCDC
	lsl r4, r4, #4
	lsl r3, r3, #1
	add r2, r2, r4
	ldrh r2, [r3, r2]
	add r0, r5, #0
	mov r1, #3
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	pop {r3, r4, r5, pc}
	nop
_02268C40: .word 0x0226DCDC
	thumb_func_end ov70_02268BF4

	thumb_func_start ov70_02268C44
ov70_02268C44: ; 0x02268C44
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	bl FUN_0222E80C
	cmp r0, #7
	bhi _02268CBA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02268C62: ; jump table
	.short _02268CBA - _02268C62 - 2 ; case 0
	.short _02268C72 - _02268C62 - 2 ; case 1
	.short _02268C7E - _02268C62 - 2 ; case 2
	.short _02268C8A - _02268C62 - 2 ; case 3
	.short _02268C96 - _02268C62 - 2 ; case 4
	.short _02268CA2 - _02268C62 - 2 ; case 5
	.short _02268CBA - _02268C62 - 2 ; case 6
	.short _02268CAE - _02268C62 - 2 ; case 7
_02268C72:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0225E2AC
	pop {r4, r5, r6, pc}
_02268C7E:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0225E2BC
	pop {r4, r5, r6, pc}
_02268C8A:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0225E2CC
	pop {r4, r5, r6, pc}
_02268C96:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0225E2DC
	pop {r4, r5, r6, pc}
_02268CA2:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0225E2EC
	pop {r4, r5, r6, pc}
_02268CAE:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0225E2FC
	pop {r4, r5, r6, pc}
_02268CBA:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0225E2BC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_02268C44

	thumb_func_start ov70_02268CC8
ov70_02268CC8: ; 0x02268CC8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r7, r2, #0
	bl FUN_0222E3BC
	str r0, [sp]
	ldrb r1, [r5, #3]
	add r0, r6, #0
	bl FUN_0222E374
	add r6, r0, #0
	ldr r0, [sp]
	bl FUN_0222E824
	cmp r0, #0
	bne _02268CF0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02268CF0:
	add r0, r6, #0
	bl FUN_0222E824
	cmp r0, #0
	bne _02268CFE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02268CFE:
	ldrb r1, [r5, #5]
	ldrb r0, [r5, #4]
	cmp r0, r1
	beq _02268D34
	cmp r1, #0
	beq _02268D14
	cmp r1, #1
	beq _02268D18
	cmp r1, #2
	beq _02268D1C
	b _02268D1E
_02268D14:
	mov r4, #0x27
	b _02268D1E
_02268D18:
	mov r4, #0x25
	b _02268D1E
_02268D1C:
	mov r4, #0x26
_02268D1E:
	add r0, r7, #0
	mov r1, #3
	add r2, r4, #0
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r7, #0
	bl ov70_0225DF8C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02268D34:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02268CC8

	thumb_func_start ov70_02268D38
ov70_02268D38: ; 0x02268D38
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	add r7, r3, #0
	bl FUN_0222E3BC
	str r0, [sp]
	ldrb r1, [r5, #3]
	add r0, r4, #0
	bl FUN_0222E374
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _02268D5E
	bl FUN_0222E8C4
	b _02268D64
_02268D5E:
	ldr r0, [sp]
	bl FUN_0222E8C4
_02268D64:
	add r1, r0, #0
	add r0, r6, #0
	add r2, r7, #0
	bl ov70_0225E29C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02268D38

	thumb_func_start ov70_02268D70
ov70_02268D70: ; 0x02268D70
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_0225DEE8
	bl FUN_0222EE90
	ldr r1, _02268DB4 ; =0x000001C2
	cmp r0, r1
	bne _02268DB0
	add r0, r4, #0
	bl ov70_0225DFCC
	ldrb r1, [r5, #3]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225E234
	mov r2, #0xab
	ldrb r1, [r5, #3]
	add r0, r4, #0
	lsl r2, r2, #2
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r4, #0
	bl ov70_0225DFBC
_02268DB0:
	pop {r3, r4, r5, pc}
	nop
_02268DB4: .word 0x000001C2
	thumb_func_end ov70_02268D70

	thumb_func_start ov70_02268DB8
ov70_02268DB8: ; 0x02268DB8
	mov r1, #0
	strh r1, [r0, #0xe]
	mov r1, #1
	strb r1, [r0, #0xd]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02268DB8

	thumb_func_start ov70_02268DC4
ov70_02268DC4: ; 0x02268DC4
	mov r1, #0
	strh r1, [r0, #0xe]
	strb r1, [r0, #0xd]
	bx lr
	thumb_func_end ov70_02268DC4

	thumb_func_start ov70_02268DCC
ov70_02268DCC: ; 0x02268DCC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xd]
	add r4, r1, #0
	cmp r0, #1
	bne _02268DFE
	mov r0, #0xe
	ldrsh r1, [r5, r0]
	ldr r0, _02268E00 ; =0x000001C2
	cmp r1, r0
	bne _02268DFE
	ldrb r1, [r5, #3]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225E234
	ldrb r1, [r5, #3]
	ldr r2, _02268E04 ; =0x000002AB
	add r0, r4, #0
	bl ov70_02268AAC
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_0225DF8C
_02268DFE:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02268E00: .word 0x000001C2
_02268E04: .word 0x000002AB
	thumb_func_end ov70_02268DCC

	thumb_func_start ov70_02268E08
ov70_02268E08: ; 0x02268E08
	ldrb r1, [r0, #0xd]
	cmp r1, #1
	bne _02268E1E
	mov r1, #0xe
	ldrsh r2, [r0, r1]
	mov r1, #0xe1
	lsl r1, r1, #2
	cmp r2, r1
	bgt _02268E1E
	add r1, r2, #1
	strh r1, [r0, #0xe]
_02268E1E:
	bx lr
	thumb_func_end ov70_02268E08

	thumb_func_start ov70_02268E20
ov70_02268E20: ; 0x02268E20
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl FUN_0222E7A0
	add r1, r5, #0
	mov r2, #1
	add r1, #0x44
	strh r2, [r1]
	add r1, r5, #0
	add r1, #0x46
	strh r0, [r1]
	add r0, r4, #0
	bl FUN_0222E798
	str r0, [r5, #0x48]
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02268E20

	thumb_func_start ov70_02268E44
ov70_02268E44: ; 0x02268E44
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r7, r2, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r7, #0
	str r3, [sp, #4]
	ldr r6, [sp, #0x20]
	bl ov70_0225E00C
	ldr r0, [sp]
	mov r4, #0
	str r7, [r0, #0x20]
	cmp r7, #0
	bls _02268EAE
	sub r0, r7, #1
	str r0, [sp, #8]
_02268E68:
	cmp r6, #0
	beq _02268E92
	ldr r0, [sp, #8]
	cmp r4, r0
	bne _02268E92
	cmp r6, #1
	bne _02268E84
	ldr r2, _02268EE4 ; =0x00000205
	add r0, r5, #0
	mov r1, #3
	bl ov70_0225E20C
	add r1, r0, #0
	b _02268EA0
_02268E84:
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xeb
	bl ov70_0225E20C
	add r1, r0, #0
	b _02268EA0
_02268E92:
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	add r2, r2, r4
	bl ov70_0225E20C
	add r1, r0, #0
_02268EA0:
	add r0, r5, #0
	add r2, r4, #0
	bl ov70_0225E044
	add r4, r4, #1
	cmp r4, r7
	blo _02268E68
_02268EAE:
	ldr r3, _02268EE8 ; =0x0226DCBC
	ldr r2, [sp]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [r0, #0x20]
	strh r1, [r0, #0x10]
	ldr r1, [r0, #0x20]
	ldrh r0, [r0, #0x12]
	cmp r0, r1
	bls _02268ED4
	ldr r0, [sp]
	strh r1, [r0, #0x12]
_02268ED4:
	add r0, r5, #0
	bl ov70_0225E054
	ldr r1, [sp]
	str r0, [r1, #0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02268EE4: .word 0x00000205
_02268EE8: .word 0x0226DCBC
	thumb_func_end ov70_02268E44

	thumb_func_start ov70_02268EEC
ov70_02268EEC: ; 0x02268EEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r5, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r3, [sp, #4]
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r1, r3, #0
	add r4, r2, #0
	bl ov70_0225E020
	ldr r1, [sp, #4]
	ldr r0, [sp]
	mov r7, #0
	str r1, [r0, #0x20]
	add r0, r1, #0
	beq _02268F7C
	sub r0, r0, #1
	str r0, [sp, #8]
_02268F18:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _02268F48
	ldr r0, [sp, #8]
	cmp r7, r0
	bne _02268F48
	ldr r0, [sp, #0x24]
	add r6, r4, #0
	cmp r0, #1
	bne _02268F3A
	ldr r2, _02268FB0 ; =0x00000205
	add r0, r5, #0
	mov r1, #3
	bl ov70_0225E20C
	add r1, r0, #0
	b _02268F6C
_02268F3A:
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xeb
	bl ov70_0225E20C
	add r1, r0, #0
	b _02268F6C
_02268F48:
	bl sub_0201D35C
	add r1, r4, #0
	bl sub_020E2178
	add r0, r5, #0
	add r6, r1, #0
	bl ov70_0225E064
	cmp r0, #1
	beq _02268F48
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r1, #3
	add r2, r2, r6
	bl ov70_0225E20C
	add r1, r0, #0
_02268F6C:
	add r0, r5, #0
	add r2, r6, #0
	bl ov70_0225E044
	ldr r0, [sp, #4]
	add r7, r7, #1
	cmp r7, r0
	blo _02268F18
_02268F7C:
	ldr r3, _02268FB4 ; =0x0226DCBC
	ldr r2, [sp]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [r0, #0x20]
	strh r1, [r0, #0x10]
	ldr r1, [r0, #0x20]
	ldrh r0, [r0, #0x12]
	cmp r0, r1
	bls _02268FA2
	ldr r0, [sp]
	strh r1, [r0, #0x12]
_02268FA2:
	add r0, r5, #0
	bl ov70_0225E054
	ldr r1, [sp]
	str r0, [r1, #0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02268FB0: .word 0x00000205
_02268FB4: .word 0x0226DCBC
	thumb_func_end ov70_02268EEC

	thumb_func_start ov70_02268FB8
ov70_02268FB8: ; 0x02268FB8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #8
	bl ov70_0225E00C
	mov r0, #8
	ldr r5, _02269010 ; =0x0226DCB4
	str r0, [r7, #0x20]
	mov r4, #0
_02268FCE:
	ldrb r2, [r5]
	add r0, r6, #0
	mov r1, #1
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r6, #0
	add r2, r4, #0
	bl ov70_0225E044
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #8
	blt _02268FCE
	ldr r3, _02269014 ; =0x0226DCBC
	add r2, r7, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r7, #0x20]
	strh r0, [r7, #0x10]
	ldr r0, [r7, #0x20]
	strh r0, [r7, #0x12]
	add r0, r6, #0
	bl ov70_0225E054
	str r0, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02269010: .word 0x0226DCB4
_02269014: .word 0x0226DCBC
	thumb_func_end ov70_02268FB8

	thumb_func_start ov70_02269018
ov70_02269018: ; 0x02269018
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl ov70_0225E00C
	mov r0, #4
	mov r4, #0
	str r0, [r6, #0x20]
	add r7, r4, #0
_0226902E:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov70_0225E28C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x27
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov70_0225E044
	add r4, r4, #1
	cmp r4, #3
	blt _0226902E
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x25
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #3
	bl ov70_0225E044
	ldr r3, _0226908C ; =0x0226DCBC
	add r2, r6, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x10]
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x12]
	add r0, r5, #0
	bl ov70_0225E054
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226908C: .word 0x0226DCBC
	thumb_func_end ov70_02269018

	thumb_func_start ov70_02269090
ov70_02269090: ; 0x02269090
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl ov70_0225E00C
	mov r0, #4
	mov r4, #0
	str r0, [r6, #0x20]
	add r7, r4, #0
_022690A6:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov70_0225E27C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x26
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov70_0225E044
	add r4, r4, #1
	cmp r4, #3
	blt _022690A6
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x25
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #3
	bl ov70_0225E044
	ldr r3, _02269104 ; =0x0226DCBC
	add r2, r6, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x10]
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x12]
	add r0, r5, #0
	bl ov70_0225E054
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02269104: .word 0x0226DCBC
	thumb_func_end ov70_02269090

	thumb_func_start ov70_02269108
ov70_02269108: ; 0x02269108
	ldr r3, _02269110 ; =ov70_0225E034
	add r0, r1, #0
	bx r3
	nop
_02269110: .word ov70_0225E034
	thumb_func_end ov70_02269108

	thumb_func_start ov70_02269114
ov70_02269114: ; 0x02269114
	mov r1, #0
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02269114

	thumb_func_start ov70_0226911C
ov70_0226911C: ; 0x0226911C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _02269130
	bl sub_02022974
_02269130:
	mov r0, #1
	strh r0, [r5]
	strh r4, [r5, #2]
	add r0, r7, #0
	strh r6, [r5, #4]
	bl FUN_0222EE30
	strh r0, [r5, #6]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226911C

	thumb_func_start ov70_02269144
ov70_02269144: ; 0x02269144
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	cmp r0, #0
	beq _02269176
	add r0, r4, #0
	bl FUN_0222EE30
	str r0, [r5, #8]
	ldrh r1, [r5, #4]
	cmp r0, r1
	bne _0226916C
	ldrh r1, [r5, #2]
	add r0, r4, #0
	bl FUN_0222ECD4
	mov r0, #0
	strh r0, [r5]
	pop {r3, r4, r5, pc}
_0226916C:
	ldrh r1, [r5, #6]
	cmp r0, r1
	beq _02269176
	mov r0, #0
	strh r0, [r5]
_02269176:
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02269144

	thumb_func_start ov70_02269178
ov70_02269178: ; 0x02269178
	ldrh r0, [r0]
	cmp r0, #1
	beq _02269182
	mov r0, #1
	bx lr
_02269182:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02269178

	thumb_func_start ov70_02269188
ov70_02269188: ; 0x02269188
	ldr r0, [r0, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end ov70_02269188

	thumb_func_start ov70_02269190
ov70_02269190: ; 0x02269190
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #0x20]
	ldr r1, _022691FC ; =0x0001082C
	str r2, [sp]
	str r3, [sp, #4]
	ldr r5, [sp, #0x24]
	bl sub_02018144
	ldr r2, _022691FC ; =0x0001082C
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, [sp, #4]
	str r6, [r4, #0]
	str r0, [r4, #4]
	ldr r0, [sp]
	ldr r1, [sp, #0x20]
	str r0, [r4, #8]
	mov r0, #0xba
	str r7, [r4, #0xc]
	bl sub_02006C24
	add r6, r0, #0
	ldr r0, _02269200 ; =0x0001081C
	add r1, r5, #0
	add r0, r4, r0
	mov r2, #4
	bl sub_020182CC
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov70_02269540
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov70_022695E0
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov70_0226965C
	add r0, r6, #0
	bl sub_02006CA8
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022691FC: .word 0x0001082C
_02269200: .word 0x0001081C
	thumb_func_end ov70_02269190

	thumb_func_start ov70_02269204
ov70_02269204: ; 0x02269204
	push {r4, lr}
	add r4, r0, #0
	bl ov70_022695C4
	add r0, r4, #0
	bl ov70_02269608
	add r0, r4, #0
	bl ov70_02269700
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov70_02269204

	thumb_func_start ov70_02269220
ov70_02269220: ; 0x02269220
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r7, #0xd1
	mov r4, #0
	add r5, #0x10
	lsl r7, r7, #4
_0226922E:
	add r0, r6, #0
	add r1, r5, #0
	bl ov70_0226978C
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #0x14
	blt _0226922E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02269220

	thumb_func_start ov70_02269240
ov70_02269240: ; 0x02269240
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #4]
	bl ov70_0225CCAC
	add r5, r6, #0
	mov r7, #0xd1
	mov r4, #0
	add r5, #0x10
	lsl r7, r7, #4
_02269254:
	add r0, r6, #0
	add r1, r5, #0
	bl ov70_022697C8
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #0x14
	blt _02269254
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02269240

	thumb_func_start ov70_02269268
ov70_02269268: ; 0x02269268
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x14
	blo _02269278
	bl sub_02022974
_02269278:
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ov70_0225CC70
	add r2, r0, #0
	beq _02269296
	mov r1, #0xd1
	lsl r1, r1, #4
	add r0, r5, #0
	add r5, #0x10
	mul r1, r4
	add r1, r5, r1
	add r3, r6, #0
	bl ov70_02269738
_02269296:
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_02269268

	thumb_func_start ov70_02269298
ov70_02269298: ; 0x02269298
	push {r3, lr}
	mov r2, #0xd1
	lsl r2, r2, #4
	add r0, #0x10
	mul r2, r1
	add r0, r0, r2
	bl ov70_02269800
	cmp r0, #1
	beq _022692B0
	mov r0, #1
	pop {r3, pc}
_022692B0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov70_02269298

	thumb_func_start ov70_022692B4
ov70_022692B4: ; 0x022692B4
	push {r3, r4}
	ldr r4, [sp, #0x14]
	sub r2, r2, r1
	str r4, [r0, #0]
	str r1, [r0, #4]
	str r2, [r0, #0x10]
	str r1, [r0, #0x14]
	ldr r1, [sp, #8]
	str r3, [r0, #8]
	sub r1, r1, r3
	str r1, [r0, #0x18]
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x10]
	str r3, [r0, #0x1c]
	str r2, [r0, #0xc]
	sub r1, r1, r2
	str r1, [r0, #0x20]
	str r2, [r0, #0x24]
	pop {r3, r4}
	bx lr
	thumb_func_end ov70_022692B4

	thumb_func_start ov70_022692DC
ov70_022692DC: ; 0x022692DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	mov r7, #0
	cmp r4, r0
	ble _022692F0
	add r4, r0, #0
	mov r7, #1
_022692F0:
	ldr r6, [r5, #0x10]
	cmp r6, #0
	beq _02269374
	cmp r0, #0
	ble _0226930E
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	str r0, [sp, #8]
	b _0226931E
_0226930E:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
	str r0, [sp, #8]
_0226931E:
	cmp r4, #0
	ble _02269334
	lsl r0, r4, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02269342
_02269334:
	lsl r0, r4, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02269342:
	bl sub_020E1740
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
	ldr r0, [sp, #8]
	bl sub_020E1740
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020BCFD0
	ldr r1, [r5, #0x14]
	add r0, r1, r0
	str r0, [r5, #4]
_02269374:
	ldr r6, [r5, #0x18]
	cmp r6, #0
	beq _022693FA
	ldr r0, [r5, #0]
	cmp r0, #0
	ble _02269394
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	str r0, [sp, #4]
	b _022693A4
_02269394:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
	str r0, [sp, #4]
_022693A4:
	cmp r4, #0
	ble _022693BA
	lsl r0, r4, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022693C8
_022693BA:
	lsl r0, r4, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022693C8:
	bl sub_020E1740
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
	ldr r0, [sp, #4]
	bl sub_020E1740
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020BCFD0
	ldr r1, [r5, #0x1c]
	add r0, r1, r0
	str r0, [r5, #8]
_022693FA:
	ldr r6, [r5, #0x20]
	cmp r6, #0
	beq _02269480
	ldr r0, [r5, #0]
	cmp r0, #0
	ble _0226941A
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	str r0, [sp]
	b _0226942A
_0226941A:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
	str r0, [sp]
_0226942A:
	cmp r4, #0
	ble _02269440
	lsl r0, r4, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226944E
_02269440:
	lsl r0, r4, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226944E:
	bl sub_020E1740
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r4, r2, #0xc
	orr r4, r0
	ldr r0, [sp]
	bl sub_020E1740
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020BCFD0
	ldr r1, [r5, #0x24]
	add r0, r1, r0
	str r0, [r5, #0xc]
_02269480:
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_022692DC

	thumb_func_start ov70_02269488
ov70_02269488: ; 0x02269488
	push {r3, r4}
	ldr r4, [r0, #4]
	str r4, [r1, #0]
	ldr r1, [r0, #8]
	str r1, [r2, #0]
	ldr r0, [r0, #0xc]
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02269488

	thumb_func_start ov70_0226949C
ov70_0226949C: ; 0x0226949C
	push {r4, lr}
	add r4, r0, #0
	strh r1, [r4]
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _022694CC ; =0x020F983C
	strh r2, [r4, #2]
	ldrsh r0, [r0, r1]
	add r2, r3, #0
	str r3, [r4, #4]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
_022694CC: .word 0x020F983C
	thumb_func_end ov70_0226949C

	thumb_func_start ov70_022694D0
ov70_022694D0: ; 0x022694D0
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldrh r0, [r4, #2]
	add r0, r1, r0
	strh r0, [r4]
	ldrh r0, [r4]
	ldr r2, [r4, #4]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02269504 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
_02269504: .word 0x020F983C
	thumb_func_end ov70_022694D0

	thumb_func_start ov70_02269508
ov70_02269508: ; 0x02269508
	ldr r0, [r0, #8]
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02269508

	thumb_func_start ov70_02269510
ov70_02269510: ; 0x02269510
	push {r3, r4, r5, lr}
	ldr r0, [r0, #4]
	ldr r4, [r1, #8]
	add r5, r2, #0
	bl ov70_0225CCAC
	cmp r4, r0
	bne _0226952C
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r1, #5
	bl sub_02005770
	pop {r3, r4, r5, pc}
_0226952C:
	add r0, r4, #0
	bl ov70_0225CE70
	cmp r0, #0
	bne _0226953E
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
_0226953E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02269510

	thumb_func_start ov70_02269540
ov70_02269540: ; 0x02269540
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
_0226954A:
	mov r0, #0
	add r1, r4, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, #0x81
	mov r2, #0
	add r3, r7, #0
	bl sub_0200723C
	ldr r1, _022695B4 ; =0x00010550
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	bl sub_020B3C0C
	ldr r1, _022695B8 ; =0x00010554
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _02269594
	add r0, r1, #0
	add r0, #8
	beq _02269588
	ldrb r2, [r1, #9]
	cmp r2, #0
	bls _02269588
	ldrh r2, [r1, #0xe]
	add r0, r0, r2
	add r0, r0, #4
	b _0226958A
_02269588:
	mov r0, #0
_0226958A:
	cmp r0, #0
	beq _02269594
	ldr r0, [r0, #0]
	add r1, r1, r0
	b _02269596
_02269594:
	mov r1, #0
_02269596:
	ldr r0, _022695BC ; =0x00010558
	str r1, [r5, r0]
	mov r1, #0
	add r0, r0, #4
	str r1, [r5, r0]
	ldr r0, _022695BC ; =0x00010558
	ldr r1, _022695C0 ; =0x00007FFF
	ldr r0, [r5, r0]
	bl sub_020B3624
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xf
	blt _0226954A
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022695B4: .word 0x00010550
_022695B8: .word 0x00010554
_022695BC: .word 0x00010558
_022695C0: .word 0x00007FFF
	thumb_func_end ov70_02269540

	thumb_func_start ov70_022695C4
ov70_022695C4: ; 0x022695C4
	push {r4, r5, r6, lr}
	ldr r6, _022695DC ; =0x00010550
	add r5, r0, #0
	mov r4, #0
_022695CC:
	ldr r0, [r5, r6]
	bl sub_020181C4
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xf
	blt _022695CC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022695DC: .word 0x00010550
	thumb_func_end ov70_022695C4

	thumb_func_start ov70_022695E0
ov70_022695E0: ; 0x022695E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, _02269604 ; =0x00010640
	add r7, r2, #0
	mov r4, #0
	add r5, r0, r1
_022695EC:
	add r2, r4, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, #0x90
	add r3, r7, #0
	bl ov70_0225C730
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x27
	blt _022695EC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02269604: .word 0x00010640
	thumb_func_end ov70_022695E0

	thumb_func_start ov70_02269608
ov70_02269608: ; 0x02269608
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _02269650 ; =0x02100DF0
	add r5, r0, #0
	mov r4, #0
_02269612:
	ldr r0, _02269654 ; =0x00010640
	ldr r0, [r5, r0]
	bl sub_020B3C1C
	add r1, sp, #4
	add r2, sp, #0
	add r6, r0, #0
	bl sub_020AE9B8
	ldr r0, [sp, #4]
	ldr r1, [r7, #0]
	blx r1
	ldr r0, [sp]
	ldr r1, [r7, #0]
	blx r1
	add r0, r6, #0
	bl sub_020AEA70
	ldr r1, _02269658 ; =0x02100DF8
	ldr r1, [r1, #0]
	blx r1
	ldr r0, _02269654 ; =0x00010640
	ldr r0, [r5, r0]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x27
	blt _02269612
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02269650: .word 0x02100DF0
_02269654: .word 0x00010640
_02269658: .word 0x02100DF8
	thumb_func_end ov70_02269608

	thumb_func_start ov70_0226965C
ov70_0226965C: ; 0x0226965C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0
	ldr r4, _022696E8 ; =0x0226E5A4
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
_0226966C:
	ldr r0, _022696EC ; =0x0001081C
	mov r6, #0
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, _022696F0 ; =0x000106DC
	add r0, r5, r0
	str r0, [sp, #0x18]
	ldr r0, _022696F4 ; =0x00010550
	add r0, r5, r0
	str r0, [sp, #0x1c]
_02269680:
	add r7, r4, r6
	ldrb r1, [r7, #2]
	cmp r1, #0x11
	beq _022696D2
	mov r0, #0x14
	mul r0, r1
	add r1, r5, r0
	ldr r0, _022696F0 ; =0x000106DC
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022696D2
	ldrb r0, [r4, #1]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _022696F8 ; =0x00010640
	ldr r0, [r1, r0]
	bl sub_020B3C1C
	ldrb r1, [r4]
	lsl r1, r1, #4
	add r2, r5, r1
	ldr r1, _022696FC ; =0x0001055C
	str r0, [r2, r1]
	ldrb r3, [r7, #2]
	ldr r0, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r1, r3, #0
	str r0, [sp, #4]
	mov r0, #0x14
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r3, #0xb7
	add r0, r0, r1
	ldrb r1, [r4]
	lsl r2, r1, #4
	ldr r1, [sp, #0x1c]
	add r1, r1, r2
	ldr r2, [sp, #8]
	bl sub_02017164
_022696D2:
	add r6, r6, #1
	cmp r6, #2
	blt _02269680
	ldr r0, [sp, #0x10]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x27
	blt _0226966C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022696E8: .word 0x0226E5A4
_022696EC: .word 0x0001081C
_022696F0: .word 0x000106DC
_022696F4: .word 0x00010550
_022696F8: .word 0x00010640
_022696FC: .word 0x0001055C
	thumb_func_end ov70_0226965C

	thumb_func_start ov70_02269700
ov70_02269700: ; 0x02269700
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02269730 ; =0x000106DC
	mov r6, #0
	add r4, r5, r0
	ldr r0, _02269734 ; =0x0001081C
	add r7, r5, r0
_0226970E:
	ldr r0, _02269730 ; =0x000106DC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02269724
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020171A0
	ldr r0, _02269730 ; =0x000106DC
	mov r1, #0
	str r1, [r5, r0]
_02269724:
	add r6, r6, #1
	add r5, #0x14
	add r4, #0x14
	cmp r6, #0x10
	blt _0226970E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02269730: .word 0x000106DC
_02269734: .word 0x0001081C
	thumb_func_end ov70_02269700

	thumb_func_start ov70_02269738
ov70_02269738: ; 0x02269738
	push {r3, r4, r5, r6, r7, lr}
	add r7, r3, #0
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r7, #0x1b
	blo _0226974A
	bl sub_02022974
_0226974A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_022697F0
	str r6, [r4, #8]
	add r0, r6, #0
	mov r1, #5
	strb r7, [r4]
	bl ov70_0225CD60
	add r0, #0x28
	str r0, [r4, #4]
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r3, r2, #2
	ldr r2, _02269784 ; =0x0226E43C
	ldr r2, [r2, r3]
	blx r2
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r3, r2, #2
	ldr r2, _02269788 ; =0x0226E4A8
	ldr r2, [r2, r3]
	bl ov70_02269510
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02269784: .word 0x0226E43C
_02269788: .word 0x0226E4A8
	thumb_func_end ov70_02269738

	thumb_func_start ov70_0226978C
ov70_0226978C: ; 0x0226978C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_02269800
	cmp r0, #0
	beq _022697C0
	ldrb r0, [r4]
	cmp r0, #0x1b
	blo _022697A6
	bl sub_02022974
_022697A6:
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r3, r2, #2
	ldr r2, _022697C4 ; =0x0226E3D0
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #1
	bne _022697C0
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_022697F0
_022697C0:
	pop {r3, r4, r5, pc}
	nop
_022697C4: .word 0x0226E3D0
	thumb_func_end ov70_0226978C

	thumb_func_start ov70_022697C8
ov70_022697C8: ; 0x022697C8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_02269800
	cmp r0, #0
	bne _022697DC
	mov r0, #0
	pop {r3, r4, r5, pc}
_022697DC:
	ldrb r0, [r4]
	cmp r0, #0x1b
	blo _022697E6
	bl sub_02022974
_022697E6:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0226A998
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_022697C8

	thumb_func_start ov70_022697F0
ov70_022697F0: ; 0x022697F0
	ldr r3, _022697FC ; =sub_020D5124
	mov r2, #0xd1
	add r0, r1, #0
	mov r1, #0
	lsl r2, r2, #4
	bx r3
	; .align 2, 0
_022697FC: .word sub_020D5124
	thumb_func_end ov70_022697F0

	thumb_func_start ov70_02269800
ov70_02269800: ; 0x02269800
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0226980A
	mov r0, #1
	bx lr
_0226980A:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02269800

	thumb_func_start ov70_02269810
ov70_02269810: ; 0x02269810
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _02269824 ; =0x0000087C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02269820
	mov r0, #1
	bx lr
_02269820:
	mov r0, #0
	bx lr
	; .align 2, 0
_02269824: .word 0x0000087C
	thumb_func_end ov70_02269810

	thumb_func_start ov70_02269828
ov70_02269828: ; 0x02269828
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	str r0, [sp]
	add r5, r1, #0
	add r6, r3, #0
	cmp r4, #0x12
	blo _0226983C
	bl sub_02022974
_0226983C:
	ldr r0, _02269870 ; =0x0000087C
	add r7, r5, r0
	lsl r0, r4, #2
	str r0, [sp, #4]
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _0226984E
	bl sub_02022974
_0226984E:
	ldr r0, [sp, #4]
	ldr r2, _02269874 ; =0x00010550
	ldr r1, [sp]
	str r6, [r7, r0]
	add r2, r1, r2
	ldrb r1, [r6]
	mov r0, #0x78
	add r5, #0xc
	mul r0, r4
	lsl r1, r1, #4
	add r0, r5, r0
	add r1, r2, r1
	bl sub_02017258
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02269870: .word 0x0000087C
_02269874: .word 0x00010550
	thumb_func_end ov70_02269828

	thumb_func_start ov70_02269878
ov70_02269878: ; 0x02269878
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r2, #0
	str r0, [sp]
	lsl r7, r5, #2
	add r0, r1, #0
	str r1, [sp, #4]
	add r1, r0, r7
	ldr r0, _022699AC ; =0x0000087C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02269894
	bl sub_02022974
_02269894:
	mov r0, #0x78
	add r6, r5, #0
	mul r6, r0
	ldr r0, [sp, #4]
	add r0, #0xc
	add r0, r0, r6
	bl sub_0201734C
	cmp r0, #0
	beq _022699A6
	ldr r0, [sp, #4]
	add r1, r0, r7
	ldr r0, _022699AC ; =0x0000087C
	ldr r2, [r1, r0]
	ldr r0, _022699B0 ; =0x00010550
	ldrb r3, [r2]
	ldr r1, [sp]
	add r1, r1, r0
	lsl r3, r3, #4
	add r1, r1, r3
	str r1, [sp, #0xc]
	ldrb r1, [r2, #1]
	add r0, #0xf0
	lsl r2, r1, #2
	ldr r1, [sp]
	add r1, r1, r2
	ldr r0, [r1, r0]
	bl sub_020B3C1C
	ldr r1, [sp, #0xc]
	mov r2, #0
	str r0, [r1, #0xc]
	add r0, r1, #0
	ldr r0, [r0, #8]
	ldr r1, [r1, #0xc]
	add r3, r2, #0
	bl sub_020AED78
	cmp r0, #0
	bne _022698E8
	bl sub_02022974
_022698E8:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	mov r2, #0
	ldr r0, [r0, #8]
	ldr r1, [r1, #0xc]
	add r3, r2, #0
	bl sub_020AF09C
	cmp r0, #0
	bne _02269900
	bl sub_02022974
_02269900:
	ldr r0, [sp, #4]
	lsl r1, r5, #3
	add r5, r0, r1
	add r0, r0, r7
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, _022699B4 ; =0x000106DC
	str r0, [sp, #0x10]
	add r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp]
	mov r4, #0
	add r7, r0, r1
_0226991A:
	ldr r1, [sp, #8]
	ldr r0, _022699AC ; =0x0000087C
	ldr r0, [r1, r0]
	add r0, r0, r4
	ldrb r1, [r0, #2]
	cmp r1, #0x11
	beq _0226994E
	mov r0, #0x14
	mul r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r0, r0, r6
	add r1, r7, r1
	bl sub_0201727C
	ldr r1, _022699B8 ; =0x000008C4
	ldr r0, [sp, #0x14]
	ldr r1, [r5, r1]
	add r0, r7, r0
	bl sub_02017240
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0226991A
_0226994E:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	ldr r0, [r0, #8]
	ldr r1, [r1, #4]
	bl sub_020B3724
	ldr r0, [sp, #4]
	add r0, #0xc
	str r0, [sp, #4]
	add r0, r0, r6
	bl sub_02017294
	ldr r1, _022699B4 ; =0x000106DC
	ldr r0, [sp]
	ldr r7, _022699AC ; =0x0000087C
	mov r4, #0
	add r5, r0, r1
_02269970:
	ldr r0, [sp, #8]
	ldr r0, [r0, r7]
	add r0, r0, r4
	ldrb r1, [r0, #2]
	cmp r1, #0x11
	beq _02269990
	ldr r0, [sp, #4]
	mov r2, #0x14
	mul r2, r1
	add r0, r0, r6
	add r1, r5, r2
	bl sub_02017288
	add r4, r4, #1
	cmp r4, #2
	blt _02269970
_02269990:
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	bl sub_020AEE28
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	bl sub_020AF164
	ldr r0, [sp, #0xc]
	mov r1, #0
	str r1, [r0, #0xc]
_022699A6:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022699AC: .word 0x0000087C
_022699B0: .word 0x00010550
_022699B4: .word 0x000106DC
_022699B8: .word 0x000008C4
	thumb_func_end ov70_02269878

	thumb_func_start ov70_022699BC
ov70_022699BC: ; 0x022699BC
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #2
	lsl r4, r4, #0xc
	str r4, [sp]
	bl ov70_022699E4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov70_022699BC

	thumb_func_start ov70_022699D0
ov70_022699D0: ; 0x022699D0
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #2
	lsl r4, r4, #0xc
	str r4, [sp]
	bl ov70_02269A3C
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov70_022699D0

	thumb_func_start ov70_022699E4
ov70_022699E4: ; 0x022699E4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, _02269A30 ; =0x000106DC
	add r6, r2, #0
	add r0, r0, r1
	lsl r1, r6, #2
	add r2, r4, r1
	ldr r1, _02269A34 ; =0x0000087C
	add r5, r3, #0
	ldr r1, [r2, r1]
	add r1, r1, r5
	ldrb r2, [r1, #2]
	mov r1, #0x14
	mul r1, r2
	add r0, r0, r1
	bl sub_0201724C
	add r1, r0, #0
	ldr r0, _02269A38 ; =0x000008C4
	lsl r2, r6, #3
	add r0, r4, r0
	add r4, r0, r2
	lsl r5, r5, #2
	ldr r2, [r4, r5]
	ldr r0, [sp, #0x10]
	add r0, r0, r2
	cmp r0, r1
	bge _02269A20
	str r0, [r4, r5]
	pop {r4, r5, r6, pc}
_02269A20:
	mov r0, #2
	lsl r0, r0, #0xc
	add r0, r2, r0
	bl sub_020E1F6C
	str r1, [r4, r5]
	pop {r4, r5, r6, pc}
	nop
_02269A30: .word 0x000106DC
_02269A34: .word 0x0000087C
_02269A38: .word 0x000008C4
	thumb_func_end ov70_022699E4

	thumb_func_start ov70_02269A3C
ov70_02269A3C: ; 0x02269A3C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _02269A84 ; =0x000106DC
	add r4, r2, #0
	add r0, r0, r1
	lsl r1, r4, #2
	add r2, r5, r1
	ldr r1, _02269A88 ; =0x0000087C
	add r6, r3, #0
	ldr r1, [r2, r1]
	add r1, r1, r6
	ldrb r2, [r1, #2]
	mov r1, #0x14
	mul r1, r2
	add r0, r0, r1
	bl sub_0201724C
	ldr r3, _02269A8C ; =0x000008C4
	lsl r1, r4, #3
	add r2, r5, r3
	add r2, r2, r1
	lsl r1, r6, #2
	ldr r5, [sp, #0x10]
	ldr r4, [r2, r1]
	add r4, r5, r4
	cmp r4, r0
	bge _02269A78
	str r4, [r2, r1]
	mov r0, #0
	pop {r4, r5, r6, pc}
_02269A78:
	sub r3, #0xc4
	sub r0, r0, r3
	str r0, [r2, r1]
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02269A84: .word 0x000106DC
_02269A88: .word 0x0000087C
_02269A8C: .word 0x000008C4
	thumb_func_end ov70_02269A3C

	thumb_func_start ov70_02269A90
ov70_02269A90: ; 0x02269A90
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _02269ADC ; =0x000106DC
	add r4, r2, #0
	add r0, r0, r1
	lsl r1, r4, #2
	add r2, r5, r1
	ldr r1, _02269AE0 ; =0x0000087C
	add r6, r3, #0
	ldr r1, [r2, r1]
	add r1, r1, r6
	ldrb r2, [r1, #2]
	mov r1, #0x14
	mul r1, r2
	add r0, r0, r1
	bl sub_0201724C
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bge _02269ACC
	mov r1, #2
	lsl r2, r4, #3
	lsl r1, r1, #0xa
	add r3, r5, r2
	lsl r2, r6, #2
	sub r0, r0, r1
	add r2, r3, r2
	add r1, #0xc4
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
_02269ACC:
	lsl r0, r4, #3
	add r2, r5, r0
	lsl r0, r6, #2
	add r2, r2, r0
	ldr r0, _02269AE4 ; =0x000008C4
	str r1, [r2, r0]
	pop {r4, r5, r6, pc}
	nop
_02269ADC: .word 0x000106DC
_02269AE0: .word 0x0000087C
_02269AE4: .word 0x000008C4
	thumb_func_end ov70_02269A90

	thumb_func_start ov70_02269AE8
ov70_02269AE8: ; 0x02269AE8
	push {r4, lr}
	lsl r2, r2, #2
	add r2, r1, r2
	ldr r1, _02269B08 ; =0x0000087C
	ldr r4, _02269B0C ; =0x000106DC
	ldr r1, [r2, r1]
	add r0, r0, r4
	add r1, r1, r3
	ldrb r2, [r1, #2]
	mov r1, #0x14
	mul r1, r2
	add r0, r0, r1
	bl sub_02017248
	pop {r4, pc}
	nop
_02269B08: .word 0x0000087C
_02269B0C: .word 0x000106DC
	thumb_func_end ov70_02269AE8

	thumb_func_start ov70_02269B10
ov70_02269B10: ; 0x02269B10
	ldr r3, _02269B18 ; =ov70_0226B92C
	mov r2, #1
	bx r3
	nop
_02269B18: .word ov70_0226B92C
	thumb_func_end ov70_02269B10

	thumb_func_start ov70_02269B1C
ov70_02269B1C: ; 0x02269B1C
	ldr r3, _02269B24 ; =ov70_0226B92C
	mov r2, #2
	bx r3
	nop
_02269B24: .word ov70_0226B92C
	thumb_func_end ov70_02269B1C

	thumb_func_start ov70_02269B28
ov70_02269B28: ; 0x02269B28
	ldr r3, _02269B30 ; =ov70_0226B92C
	mov r2, #3
	bx r3
	nop
_02269B30: .word ov70_0226B92C
	thumb_func_end ov70_02269B28

	thumb_func_start ov70_02269B34
ov70_02269B34: ; 0x02269B34
	ldr r3, _02269B3C ; =ov70_0226BAC8
	mov r2, #1
	bx r3
	nop
_02269B3C: .word ov70_0226BAC8
	thumb_func_end ov70_02269B34

	thumb_func_start ov70_02269B40
ov70_02269B40: ; 0x02269B40
	ldr r3, _02269B48 ; =ov70_0226BAC8
	mov r2, #2
	bx r3
	nop
_02269B48: .word ov70_0226BAC8
	thumb_func_end ov70_02269B40

	thumb_func_start ov70_02269B4C
ov70_02269B4C: ; 0x02269B4C
	ldr r3, _02269B54 ; =ov70_0226BAC8
	mov r2, #3
	bx r3
	nop
_02269B54: .word ov70_0226BAC8
	thumb_func_end ov70_02269B4C

	thumb_func_start ov70_02269B58
ov70_02269B58: ; 0x02269B58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	add r5, r7, #0
	str r0, [sp]
	mov r4, #0
	add r5, #0xc
_02269B66:
	add r3, r4, #3
	lsl r6, r3, #2
	ldr r3, _02269BB0 ; =0x0226E5A4
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	ldr r0, [r7, #8]
	add r1, sp, #4
	bl ov70_0225D054
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r2, r1, r0
	ldr r1, [sp, #4]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	str r2, [sp, #8]
	bl sub_02017350
	add r0, r5, #0
	mov r1, #0
	bl sub_02017348
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #3
	blt _02269B66
	ldr r0, _02269BB4 ; =0x00000954
	mov r1, #0xff
	str r1, [r7, r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02269BB0: .word 0x0226E5A4
_02269BB4: .word 0x00000954
	thumb_func_end ov70_02269B58

	thumb_func_start ov70_02269BB8
ov70_02269BB8: ; 0x02269BB8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _02269CE8 ; =0x0226E5C8
	mov r2, #1
	add r5, r0, #0
	add r4, r1, #0
	bl ov70_02269828
	ldr r3, _02269CEC ; =0x0226E5D4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_02269828
	add r0, r4, #0
	add r0, #0x84
	mov r1, #0
	bl sub_02017348
	ldr r0, [r4, #8]
	add r1, sp, #0xc
	bl ov70_0225D054
	mov r2, #1
	ldr r0, [sp, #0x10]
	lsl r2, r2, #0x10
	add r0, r0, r2
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	lsr r0, r2, #1
	add r0, r1, r0
	add r5, sp, #0xc
	str r0, [sp, #0xc]
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #8
	str r0, [r3, #0]
	ldr r0, [sp, #4]
	add r0, r0, r2
	str r0, [sp, #4]
	ldr r0, _02269CF0 ; =0x00000958
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov70_0225CD60
	cmp r0, #3
	bhi _02269CC8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02269C28: ; jump table
	.short _02269C30 - _02269C28 - 2 ; case 0
	.short _02269C50 - _02269C28 - 2 ; case 1
	.short _02269C72 - _02269C28 - 2 ; case 2
	.short _02269C9E - _02269C28 - 2 ; case 3
_02269C30:
	mov r0, #7
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	lsr r0, r0, #1
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02269CF4 ; =0x0000BFFF
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	b _02269CC8
_02269C50:
	mov r0, #6
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x14]
	mov r0, #0xb
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02269CF8 ; =0x00003FFF
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	b _02269CC8
_02269C72:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x84
	mov r1, #0
	mov r2, #1
	bl sub_02017388
	b _02269CC8
_02269C9E:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	mov r1, #2
	ldr r0, [sp, #8]
	lsl r1, r1, #0xe
	add r0, r0, r1
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x84
	sub r1, r1, #1
	mov r2, #1
	bl sub_02017388
_02269CC8:
	add r0, r4, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_02017350
	add r4, #0xc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl sub_02017350
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02269CE8: .word 0x0226E5C8
_02269CEC: .word 0x0226E5D4
_02269CF0: .word 0x00000958
_02269CF4: .word 0x0000BFFF
_02269CF8: .word 0x00003FFF
	thumb_func_end ov70_02269BB8

	thumb_func_start ov70_02269CFC
ov70_02269CFC: ; 0x02269CFC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _02269F00 ; =0x0226E5C8
	mov r2, #1
	add r5, r0, #0
	add r4, r1, #0
	bl ov70_02269828
	ldr r3, _02269F04 ; =0x0226E5D4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_02269828
	ldr r3, _02269F08 ; =0x0226E5CC
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov70_02269828
	add r0, r4, #0
	add r0, #0x84
	mov r1, #0
	bl sub_02017348
	ldr r0, [r4, #8]
	add r1, sp, #0xc
	bl ov70_0225D054
	mov r2, #1
	ldr r0, [sp, #0x10]
	lsl r2, r2, #0x10
	add r0, r0, r2
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	lsr r0, r2, #1
	add r0, r1, r0
	add r5, sp, #0xc
	str r0, [sp, #0xc]
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #8
	str r0, [r3, #0]
	ldr r0, [sp, #4]
	add r0, r0, r2
	str r0, [sp, #4]
	ldr r0, _02269F0C ; =0x00000958
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov70_0225CD60
	cmp r0, #3
	bls _02269D72
	b _02269EEE
_02269D72:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02269D7E: ; jump table
	.short _02269D86 - _02269D7E - 2 ; case 0
	.short _02269DDA - _02269D7E - 2 ; case 1
	.short _02269E30 - _02269D7E - 2 ; case 2
	.short _02269E90 - _02269D7E - 2 ; case 3
_02269D86:
	mov r0, #7
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	lsr r0, r0, #1
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02269F10 ; =0x0000A38D
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	add r0, r4, #0
	ldr r1, _02269F14 ; =0x0000DC70
	add r0, #0xfc
	mov r2, #1
	bl sub_02017388
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	add r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_02017350
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	sub r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0xfc
	bl sub_02017350
	b _02269EEE
_02269DDA:
	mov r0, #6
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x14]
	mov r0, #0xb
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02269F18 ; =0x0000238E
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	add r0, r4, #0
	ldr r1, _02269F1C ; =0x00005C71
	add r0, #0xfc
	mov r2, #1
	bl sub_02017388
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	sub r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_02017350
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	add r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0xfc
	bl sub_02017350
	b _02269EEE
_02269E30:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02269F20 ; =0x0000E38F
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	add r0, r4, #0
	ldr r1, _02269F24 ; =0x00001C71
	add r0, #0xfc
	mov r2, #1
	bl sub_02017388
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0x84
	sub r3, r5, r3
	bl sub_02017350
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0xfc
	add r3, r5, r3
	bl sub_02017350
	b _02269EEE
_02269E90:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02269F28 ; =0x0000638D
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	add r0, r4, #0
	ldr r1, _02269F2C ; =0x00009C71
	add r0, #0xfc
	mov r2, #1
	bl sub_02017388
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0x84
	add r3, r5, r3
	bl sub_02017350
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0xfc
	sub r3, r5, r3
	bl sub_02017350
_02269EEE:
	add r4, #0xc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl sub_02017350
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02269F00: .word 0x0226E5C8
_02269F04: .word 0x0226E5D4
_02269F08: .word 0x0226E5CC
_02269F0C: .word 0x00000958
_02269F10: .word 0x0000A38D
_02269F14: .word 0x0000DC70
_02269F18: .word 0x0000238E
_02269F1C: .word 0x00005C71
_02269F20: .word 0x0000E38F
_02269F24: .word 0x00001C71
_02269F28: .word 0x0000638D
_02269F2C: .word 0x00009C71
	thumb_func_end ov70_02269CFC

	thumb_func_start ov70_02269F30
ov70_02269F30: ; 0x02269F30
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _0226A1BC ; =0x0226E5C8
	mov r2, #1
	add r5, r0, #0
	add r4, r1, #0
	bl ov70_02269828
	ldr r3, _0226A1C0 ; =0x0226E5D4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_02269828
	ldr r3, _0226A1C4 ; =0x0226E5CC
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov70_02269828
	ldr r3, _0226A1C8 ; =0x0226E5D0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	bl ov70_02269828
	add r0, r4, #0
	add r0, #0x84
	mov r1, #0
	bl sub_02017348
	ldr r1, _0226A1CC ; =0x00000958
	mov r2, #8
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add r1, #8
	str r2, [r4, r1]
	ldr r0, [r4, #8]
	add r1, sp, #0xc
	bl ov70_0225D054
	mov r2, #1
	ldr r0, [sp, #0x10]
	lsl r2, r2, #0x10
	add r0, r0, r2
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	lsr r0, r2, #1
	add r0, r1, r0
	add r5, sp, #0xc
	str r0, [sp, #0xc]
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #6
	str r0, [r3, #0]
	ldr r0, [sp, #4]
	add r0, r0, r2
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	bl ov70_0225CD60
	cmp r0, #3
	bls _02269FB6
	b _0226A1AA
_02269FB6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02269FC2: ; jump table
	.short _02269FCA - _02269FC2 - 2 ; case 0
	.short _0226A03C - _02269FC2 - 2 ; case 1
	.short _0226A0B0 - _02269FC2 - 2 ; case 2
	.short _0226A12E - _02269FC2 - 2 ; case 3
_02269FCA:
	mov r0, #7
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	lsr r0, r0, #1
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _0226A1D0 ; =0x0000A38D
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	add r0, r4, #0
	ldr r1, _0226A1D4 ; =0x0000DC70
	add r0, #0xfc
	mov r2, #1
	bl sub_02017388
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, _0226A1D8 ; =0x0000BFFF
	add r0, r4, r0
	mov r2, #1
	bl sub_02017388
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	add r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_02017350
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	sub r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0xfc
	bl sub_02017350
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, r0
	bl sub_02017350
	b _0226A1AA
_0226A03C:
	mov r0, #6
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x14]
	mov r0, #0xb
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _0226A1DC ; =0x0000238E
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	add r0, r4, #0
	ldr r1, _0226A1E0 ; =0x00005C71
	add r0, #0xfc
	mov r2, #1
	bl sub_02017388
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, _0226A1E4 ; =0x00003FFF
	add r0, r4, r0
	mov r2, #1
	bl sub_02017388
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	sub r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_02017350
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	add r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0xfc
	bl sub_02017350
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, r0
	bl sub_02017350
	b _0226A1AA
_0226A0B0:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _0226A1E8 ; =0x0000E38F
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	add r0, r4, #0
	ldr r1, _0226A1EC ; =0x00001C71
	add r0, #0xfc
	mov r2, #1
	bl sub_02017388
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r2, #1
	bl sub_02017388
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0x84
	sub r3, r5, r3
	bl sub_02017350
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0xfc
	add r3, r5, r3
	bl sub_02017350
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, r0
	bl sub_02017350
	b _0226A1AA
_0226A12E:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _0226A1F0 ; =0x0000638D
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	add r0, r4, #0
	ldr r1, _0226A1F4 ; =0x00009C71
	add r0, #0xfc
	mov r2, #1
	bl sub_02017388
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, _0226A1F8 ; =0x00007FFF
	add r0, r4, r0
	mov r2, #1
	bl sub_02017388
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0x84
	add r3, r5, r3
	bl sub_02017350
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0xfc
	sub r3, r5, r3
	bl sub_02017350
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, r0
	bl sub_02017350
_0226A1AA:
	add r4, #0xc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl sub_02017350
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0226A1BC: .word 0x0226E5C8
_0226A1C0: .word 0x0226E5D4
_0226A1C4: .word 0x0226E5CC
_0226A1C8: .word 0x0226E5D0
_0226A1CC: .word 0x00000958
_0226A1D0: .word 0x0000A38D
_0226A1D4: .word 0x0000DC70
_0226A1D8: .word 0x0000BFFF
_0226A1DC: .word 0x0000238E
_0226A1E0: .word 0x00005C71
_0226A1E4: .word 0x00003FFF
_0226A1E8: .word 0x0000E38F
_0226A1EC: .word 0x00001C71
_0226A1F0: .word 0x0000638D
_0226A1F4: .word 0x00009C71
_0226A1F8: .word 0x00007FFF
	thumb_func_end ov70_02269F30

	thumb_func_start ov70_0226A1FC
ov70_0226A1FC: ; 0x0226A1FC
	ldr r3, _0226A204 ; =ov70_0226A9D0
	mov r2, #1
	bx r3
	nop
_0226A204: .word ov70_0226A9D0
	thumb_func_end ov70_0226A1FC

	thumb_func_start ov70_0226A208
ov70_0226A208: ; 0x0226A208
	ldr r3, _0226A210 ; =ov70_0226A9D0
	mov r2, #2
	bx r3
	nop
_0226A210: .word ov70_0226A9D0
	thumb_func_end ov70_0226A208

	thumb_func_start ov70_0226A214
ov70_0226A214: ; 0x0226A214
	ldr r3, _0226A21C ; =ov70_0226A9D0
	mov r2, #3
	bx r3
	nop
_0226A21C: .word ov70_0226A9D0
	thumb_func_end ov70_0226A214

	thumb_func_start ov70_0226A220
ov70_0226A220: ; 0x0226A220
	ldr r3, _0226A228 ; =ov70_0226B7B0
	mov r2, #1
	bx r3
	nop
_0226A228: .word ov70_0226B7B0
	thumb_func_end ov70_0226A220

	thumb_func_start ov70_0226A22C
ov70_0226A22C: ; 0x0226A22C
	ldr r3, _0226A234 ; =ov70_0226B7B0
	mov r2, #2
	bx r3
	nop
_0226A234: .word ov70_0226B7B0
	thumb_func_end ov70_0226A22C

	thumb_func_start ov70_0226A238
ov70_0226A238: ; 0x0226A238
	ldr r3, _0226A240 ; =ov70_0226B7B0
	mov r2, #4
	bx r3
	nop
_0226A240: .word ov70_0226B7B0
	thumb_func_end ov70_0226A238

	thumb_func_start ov70_0226A244
ov70_0226A244: ; 0x0226A244
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A284 ; =0x0226E640
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_0226A250:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226A288 ; =0x0226E5A4
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0226A250
	mov r0, #0
	str r0, [sp]
	ldr r0, _0226A28C ; =0x00000954
	ldr r1, _0226A290 ; =0x0226E2EC
	add r0, r7, r0
	mov r2, #2
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A284: .word 0x0226E640
_0226A288: .word 0x0226E5A4
_0226A28C: .word 0x00000954
_0226A290: .word 0x0226E2EC
	thumb_func_end ov70_0226A244

	thumb_func_start ov70_0226A294
ov70_0226A294: ; 0x0226A294
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A2D4 ; =0x0226E650
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_0226A2A0:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226A2D8 ; =0x0226E5A4
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0226A2A0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0226A2DC ; =0x00000954
	ldr r1, _0226A2E0 ; =0x0226E304
	add r0, r7, r0
	mov r2, #2
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A2D4: .word 0x0226E650
_0226A2D8: .word 0x0226E5A4
_0226A2DC: .word 0x00000954
_0226A2E0: .word 0x0226E304
	thumb_func_end ov70_0226A294

	thumb_func_start ov70_0226A2E4
ov70_0226A2E4: ; 0x0226A2E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A324 ; =0x0226E660
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_0226A2F0:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226A328 ; =0x0226E5A4
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0226A2F0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0226A32C ; =0x00000954
	ldr r1, _0226A330 ; =0x0226E34C
	add r0, r7, r0
	mov r2, #3
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A324: .word 0x0226E660
_0226A328: .word 0x0226E5A4
_0226A32C: .word 0x00000954
_0226A330: .word 0x0226E34C
	thumb_func_end ov70_0226A2E4

	thumb_func_start ov70_0226A334
ov70_0226A334: ; 0x0226A334
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A374 ; =0x0226E640
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_0226A340:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226A378 ; =0x0226E5A4
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0226A340
	mov r0, #1
	str r0, [sp]
	ldr r0, _0226A37C ; =0x00000954
	ldr r1, _0226A380 ; =0x0226E2FC
	add r0, r7, r0
	mov r2, #2
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A374: .word 0x0226E640
_0226A378: .word 0x0226E5A4
_0226A37C: .word 0x00000954
_0226A380: .word 0x0226E2FC
	thumb_func_end ov70_0226A334

	thumb_func_start ov70_0226A384
ov70_0226A384: ; 0x0226A384
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A3C4 ; =0x0226E650
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_0226A390:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226A3C8 ; =0x0226E5A4
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0226A390
	mov r0, #1
	str r0, [sp]
	ldr r0, _0226A3CC ; =0x00000954
	ldr r1, _0226A3D0 ; =0x0226E334
	add r0, r7, r0
	mov r2, #3
	mov r3, #0x29
	str r7, [sp, #4]
	bl ov70_0226BC40
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A3C4: .word 0x0226E650
_0226A3C8: .word 0x0226E5A4
_0226A3CC: .word 0x00000954
_0226A3D0: .word 0x0226E334
	thumb_func_end ov70_0226A384

	thumb_func_start ov70_0226A3D4
ov70_0226A3D4: ; 0x0226A3D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A414 ; =0x0226E660
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_0226A3E0:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226A418 ; =0x0226E5A4
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0226A3E0
	mov r0, #1
	str r0, [sp]
	ldr r0, _0226A41C ; =0x00000954
	ldr r1, _0226A420 ; =0x0226E358
	add r0, r7, r0
	mov r2, #3
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A414: .word 0x0226E660
_0226A418: .word 0x0226E5A4
_0226A41C: .word 0x00000954
_0226A420: .word 0x0226E358
	thumb_func_end ov70_0226A3D4

	thumb_func_start ov70_0226A424
ov70_0226A424: ; 0x0226A424
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A468 ; =0x0226E640
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_0226A430:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226A46C ; =0x0226E5A4
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0226A430
	ldr r0, _0226A470 ; =0x00000954
	mov r2, #2
	str r2, [sp]
	ldr r1, _0226A474 ; =0x0226E314
	add r0, r7, r0
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl ov70_0226BB34
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226A468: .word 0x0226E640
_0226A46C: .word 0x0226E5A4
_0226A470: .word 0x00000954
_0226A474: .word 0x0226E314
	thumb_func_end ov70_0226A424

	thumb_func_start ov70_0226A478
ov70_0226A478: ; 0x0226A478
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A4BC ; =0x0226E650
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_0226A484:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226A4C0 ; =0x0226E5A4
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0226A484
	ldr r0, _0226A4C4 ; =0x00000954
	mov r2, #2
	str r2, [sp]
	ldr r1, _0226A4C8 ; =0x0226E2F4
	add r0, r7, r0
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl ov70_0226BB34
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226A4BC: .word 0x0226E650
_0226A4C0: .word 0x0226E5A4
_0226A4C4: .word 0x00000954
_0226A4C8: .word 0x0226E2F4
	thumb_func_end ov70_0226A478

	thumb_func_start ov70_0226A4CC
ov70_0226A4CC: ; 0x0226A4CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A510 ; =0x0226E660
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_0226A4D8:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226A514 ; =0x0226E5A4
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0226A4D8
	ldr r0, _0226A518 ; =0x00000954
	mov r2, #2
	str r2, [sp]
	ldr r1, _0226A51C ; =0x0226E30C
	add r0, r7, r0
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl ov70_0226BB34
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226A510: .word 0x0226E660
_0226A514: .word 0x0226E5A4
_0226A518: .word 0x00000954
_0226A51C: .word 0x0226E30C
	thumb_func_end ov70_0226A4CC

	thumb_func_start ov70_0226A520
ov70_0226A520: ; 0x0226A520
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	add r5, r1, #0
	mov r0, #2
	ldrsh r0, [r5, r0]
	add r0, r0, #1
	cmp r0, #0x36
	bgt _0226A534
	strh r0, [r5, #2]
_0226A534:
	mov r0, #2
	ldrsh r1, [r5, r0]
	mov r0, #6
	mul r0, r1
	mov r1, #0x36
	bl sub_020E1F6C
	add r6, r0, #0
	ldr r0, _0226A5E8 ; =0x00000955
	ldrsb r4, [r5, r0]
	cmp r4, r6
	bhs _0226A572
	add r7, r5, #0
	add r7, #0xc
_0226A550:
	add r0, r4, #0
	mov r1, #3
	bl sub_020E1F6C
	ldr r0, _0226A5EC ; =0x00000954
	ldrsb r0, [r5, r0]
	cmp r1, r0
	bhs _0226A56C
	mov r0, #0x78
	mul r0, r1
	add r0, r7, r0
	mov r1, #1
	bl sub_02017348
_0226A56C:
	add r4, r4, #1
	cmp r4, r6
	blo _0226A550
_0226A572:
	ldr r1, _0226A5E8 ; =0x00000955
	mov r0, #1
	str r0, [sp, #8]
	strb r6, [r5, r1]
	sub r0, r1, #1
	ldrsb r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	ble _0226A5CC
	add r7, r5, #0
	add r7, #0xc
	add r6, r7, #0
_0226A58A:
	add r0, r7, #0
	bl sub_0201734C
	cmp r0, #1
	bne _0226A5BE
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov70_022699D0
	str r0, [sp, #8]
	cmp r0, #0
	beq _0226A5BE
	add r0, r6, #0
	mov r1, #0
	bl sub_02017348
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov70_02269A90
_0226A5BE:
	ldr r0, _0226A5EC ; =0x00000954
	add r4, r4, #1
	ldrsb r0, [r5, r0]
	add r7, #0x78
	add r6, #0x78
	cmp r4, r0
	blt _0226A58A
_0226A5CC:
	ldr r0, _0226A5E8 ; =0x00000955
	ldrsb r0, [r5, r0]
	cmp r0, #6
	blt _0226A5E0
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _0226A5E0
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0226A5E0:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A5E8: .word 0x00000955
_0226A5EC: .word 0x00000954
	thumb_func_end ov70_0226A520

	thumb_func_start ov70_0226A5F0
ov70_0226A5F0: ; 0x0226A5F0
	ldr r3, _0226A5F8 ; =ov70_0226B998
	mov r2, #0
	bx r3
	nop
_0226A5F8: .word ov70_0226B998
	thumb_func_end ov70_0226A5F0

	thumb_func_start ov70_0226A5FC
ov70_0226A5FC: ; 0x0226A5FC
	ldr r3, _0226A604 ; =ov70_0226B998
	mov r2, #1
	bx r3
	nop
_0226A604: .word ov70_0226B998
	thumb_func_end ov70_0226A5FC

	thumb_func_start ov70_0226A608
ov70_0226A608: ; 0x0226A608
	ldr r3, _0226A610 ; =ov70_0226B998
	mov r2, #2
	bx r3
	nop
_0226A610: .word ov70_0226B998
	thumb_func_end ov70_0226A608

	thumb_func_start ov70_0226A614
ov70_0226A614: ; 0x0226A614
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #2
	ldrsh r1, [r5, r0]
	lsl r0, r1, #1
	add r1, r1, r0
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r4, r0, #5
	ldr r0, _0226A6C0 ; =0x00000954
	ldrsh r1, [r5, r0]
	cmp r4, r1
	beq _0226A662
	strh r4, [r5, r0]
	add r0, r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, r4
	bls _0226A662
	cmp r4, #0
	beq _0226A652
	add r2, r5, #0
	sub r1, r4, #1
	mov r0, #0x78
	mul r0, r1
	add r2, #0xc
	add r0, r2, r0
	mov r1, #0
	bl sub_02017348
_0226A652:
	add r1, r5, #0
	mov r0, #0x78
	add r1, #0xc
	mul r0, r4
	add r0, r1, r0
	mov r1, #1
	bl sub_02017348
_0226A662:
	mov r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0x20
	bge _0226A66E
	add r0, r0, #1
	strh r0, [r5, #2]
_0226A66E:
	ldr r0, _0226A6C4 ; =0x00000956
	mov r4, #0
	ldrsh r0, [r5, r0]
	str r4, [sp]
	cmp r0, #0
	ble _0226A6BA
	add r6, r5, #0
	add r6, #0xc
_0226A67E:
	add r0, r6, #0
	bl sub_0201734C
	cmp r0, #0
	beq _0226A6AE
	ldr r0, _0226A6C4 ; =0x00000956
	ldrsh r0, [r5, r0]
	sub r0, r0, #1
	cmp r4, r0
	bne _0226A6A2
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov70_022699D0
	str r0, [sp]
	b _0226A6AE
_0226A6A2:
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov70_022699BC
_0226A6AE:
	ldr r0, _0226A6C4 ; =0x00000956
	add r4, r4, #1
	ldrsh r0, [r5, r0]
	add r6, #0x78
	cmp r4, r0
	blt _0226A67E
_0226A6BA:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226A6C0: .word 0x00000954
_0226A6C4: .word 0x00000956
	thumb_func_end ov70_0226A614

	thumb_func_start ov70_0226A6C8
ov70_0226A6C8: ; 0x0226A6C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r0, _0226A810 ; =0x0000087C
	add r5, r1, #0
	ldr r0, [r5, r0]
	ldrb r0, [r0, #2]
	cmp r0, #0x11
	bne _0226A6DE
	bl sub_02022974
_0226A6DE:
	ldr r0, _0226A814 ; =0x00000954
	ldr r1, [r5, r0]
	cmp r1, #0
	ble _0226A6F6
	sub r1, r1, #1
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0xc
	mov r1, #0
	bl sub_02017348
	b _0226A752
_0226A6F6:
	mov r0, #2
	ldrsh r1, [r5, r0]
	cmp r1, #3
	bge _0226A752
	add r0, r5, #0
	add r1, r1, #1
	bl ov70_02269810
	cmp r0, #1
	bne _0226A752
	add r0, r5, #0
	add r0, #0xc
	mov r1, #1
	bl sub_02017348
	mov r2, #0
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r3, r2, #0
	bl ov70_022699D0
	cmp r0, #1
	bne _0226A752
	mov r1, #2
	ldrsh r0, [r5, r1]
	mov r2, #3
	add r0, r0, #1
	strh r0, [r5, #2]
	ldr r0, _0226A814 ; =0x00000954
	str r2, [r5, r0]
	ldrsh r0, [r5, r1]
	cmp r0, #3
	bge _0226A748
	mov r2, #0
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r3, r2, #0
	str r2, [sp]
	bl ov70_02269A90
	b _0226A752
_0226A748:
	add r0, r5, #0
	add r0, #0xc
	mov r1, #0
	bl sub_02017348
_0226A752:
	add r7, r5, #0
	mov r4, #1
	add r7, #0xc
	str r4, [sp, #8]
	add r7, #0x78
	add r6, r5, #4
_0226A75E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02269810
	cmp r0, #1
	bne _0226A7FE
	mov r0, #2
	ldrsh r1, [r5, r0]
	sub r0, r4, #1
	cmp r1, r0
	ble _0226A7FA
	add r0, r7, #0
	mov r1, #1
	bl sub_02017348
	mov r0, #0xa
	lsl r0, r0, #0xa
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov70_02269A3C
	cmp r0, #0
	bne _0226A798
	mov r0, #0
	str r0, [sp, #8]
	b _0226A7FE
_0226A798:
	sub r0, r4, #1
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0226A818 ; =0x00000958
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0226A7C6
	add r0, r7, #0
	mov r1, #0
	bl sub_02017348
	ldr r0, _0226A810 ; =0x0000087C
	ldr r0, [r6, r0]
	ldrb r0, [r0]
	lsl r1, r0, #4
	ldr r0, [sp, #4]
	add r1, r0, r1
	ldr r0, _0226A81C ; =0x00010558
	ldr r0, [r1, r0]
	mov r1, #0x1f
	bl sub_020B3764
	b _0226A7FE
_0226A7C6:
	ldr r0, _0226A818 ; =0x00000958
	ldr r0, [r1, r0]
	sub r2, r0, #1
	ldr r0, _0226A818 ; =0x00000958
	str r2, [r1, r0]
	sub r0, #0xdc
	ldr r0, [r6, r0]
	ldrb r0, [r0]
	lsl r2, r0, #4
	ldr r0, [sp, #4]
	add r2, r0, r2
	ldr r0, _0226A81C ; =0x00010558
	ldr r0, [r2, r0]
	ldr r2, _0226A818 ; =0x00000958
	ldr r1, [r1, r2]
	mov r2, #0x14
	mul r2, r1
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r1, r1, #3
	bl sub_020B3764
	mov r0, #0
	str r0, [sp, #8]
	b _0226A7FE
_0226A7FA:
	mov r0, #0
	str r0, [sp, #8]
_0226A7FE:
	add r4, r4, #1
	add r7, #0x78
	add r6, r6, #4
	cmp r4, #3
	ble _0226A75E
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A810: .word 0x0000087C
_0226A814: .word 0x00000954
_0226A818: .word 0x00000958
_0226A81C: .word 0x00010558
	thumb_func_end ov70_0226A6C8

	thumb_func_start ov70_0226A820
ov70_0226A820: ; 0x0226A820
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r2, [r4, #1]
	add r5, r0, #0
	cmp r2, #0
	beq _0226A832
	cmp r2, #1
	beq _0226A848
	b _0226A854
_0226A832:
	bl ov70_0226AC08
	cmp r0, #0
	beq _0226A854
	mov r0, #1
	strb r0, [r4, #1]
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0226ADA0
	b _0226A854
_0226A848:
	bl ov70_0226AF60
	cmp r0, #0
	beq _0226A854
	mov r0, #1
	pop {r3, r4, r5, pc}
_0226A854:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0226A820

	thumb_func_start ov70_0226A858
ov70_0226A858: ; 0x0226A858
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, _0226A924 ; =0x00000955
	str r0, [sp]
	add r0, r1, #1
	ldrsb r2, [r5, r1]
	ldrb r0, [r5, r0]
	cmp r2, r0
	bge _0226A8C4
	sub r0, r1, #1
	ldrsb r0, [r5, r0]
	add r2, r0, #1
	sub r0, r1, #1
	strb r2, [r5, r0]
	ldrsb r0, [r5, r0]
	cmp r0, #8
	blt _0226A888
	mov r2, #0
	sub r0, r1, #1
	strb r2, [r5, r0]
	ldrsb r0, [r5, r1]
	add r0, r0, #1
	strb r0, [r5, r1]
_0226A888:
	ldr r0, _0226A928 ; =0x00000954
	ldrsb r1, [r5, r0]
	lsl r2, r1, #2
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r2, r1, #3
	add r1, r0, #1
	ldrsb r1, [r5, r1]
	add r0, r0, #3
	ldrb r6, [r5, r0]
	lsl r1, r1, #2
	add r7, r2, r1
	cmp r6, r7
	bhs _0226A8C0
	add r1, r5, #0
	mov r0, #0x78
	add r1, #0xc
	mul r0, r6
	add r4, r1, r0
_0226A8B0:
	add r0, r4, #0
	mov r1, #1
	bl sub_02017348
	add r6, r6, #1
	add r4, #0x78
	cmp r6, r7
	blo _0226A8B0
_0226A8C0:
	ldr r0, _0226A92C ; =0x00000957
	strb r7, [r5, r0]
_0226A8C4:
	ldr r0, _0226A92C ; =0x00000957
	mov r4, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _0226A904
	add r7, r5, #0
	add r7, #0xc
	add r6, r7, #0
_0226A8D4:
	add r0, r7, #0
	bl sub_0201734C
	cmp r0, #1
	bne _0226A8F6
	ldr r0, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl ov70_0226B8C4
	str r0, [sp, #4]
	cmp r0, #1
	bne _0226A8F6
	add r0, r6, #0
	mov r1, #0
	bl sub_02017348
_0226A8F6:
	ldr r0, _0226A92C ; =0x00000957
	add r4, r4, #1
	ldrb r0, [r5, r0]
	add r7, #0x78
	add r6, #0x78
	cmp r4, r0
	blt _0226A8D4
_0226A904:
	ldr r0, _0226A924 ; =0x00000955
	ldrsb r1, [r5, r0]
	add r0, r0, #1
	ldrb r0, [r5, r0]
	cmp r1, r0
	bne _0226A91C
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _0226A91C
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226A91C:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226A924: .word 0x00000955
_0226A928: .word 0x00000954
_0226A92C: .word 0x00000957
	thumb_func_end ov70_0226A858

	thumb_func_start ov70_0226A930
ov70_0226A930: ; 0x0226A930
	push {r4, lr}
	add r4, r1, #0
	mov r1, #2
	ldr r0, _0226A954 ; =0x00000954
	ldrsh r1, [r4, r1]
	add r0, r4, r0
	bl ov70_0226BCC0
	mov r1, #2
	ldrsh r1, [r4, r1]
	add r1, r1, #1
	strh r1, [r4, #2]
	cmp r0, #2
	bne _0226A950
	mov r0, #1
	pop {r4, pc}
_0226A950:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0226A954: .word 0x00000954
	thumb_func_end ov70_0226A930

	thumb_func_start ov70_0226A958
ov70_0226A958: ; 0x0226A958
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #2
	add r6, r0, #0
	ldr r0, _0226A994 ; =0x00000954
	ldrsh r1, [r5, r1]
	add r0, r5, r0
	bl ov70_0226BCC0
	add r4, r0, #0
	mov r0, #2
	ldrsh r0, [r5, r0]
	add r0, r0, #1
	strh r0, [r5, #2]
	cmp r4, #1
	bne _0226A980
	add r0, r6, #0
	add r1, r5, #0
	bl ov70_0226BBA8
_0226A980:
	add r0, r6, #0
	add r1, r5, #0
	bl ov70_0226BBDC
	cmp r4, #2
	bne _0226A990
	mov r0, #1
	pop {r4, r5, r6, pc}
_0226A990:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0226A994: .word 0x00000954
	thumb_func_end ov70_0226A958

	thumb_func_start ov70_0226A998
ov70_0226A998: ; 0x0226A998
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #8]
	bl ov70_0225CE70
	cmp r0, #1
	bne _0226A9AC
	mov r0, #0
	pop {r4, r5, r6, pc}
_0226A9AC:
	mov r4, #0
_0226A9AE:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02269810
	cmp r0, #1
	bne _0226A9C4
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov70_02269878
_0226A9C4:
	add r4, r4, #1
	cmp r4, #0x12
	blt _0226A9AE
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_0226A998

	thumb_func_start ov70_0226A9D0
ov70_0226A9D0: ; 0x0226A9D0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	bl ov70_0225CCAC
	ldr r1, [r4, #8]
	cmp r1, r0
	bne _0226A9EC
	ldr r0, [r5, #8]
	bl ov70_02260B3C
_0226A9EC:
	ldr r0, [r4, #8]
	bl ov70_0225CD34
	add r2, sp, #0
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #4
	strh r0, [r2, #4]
	ldrh r0, [r2, #2]
	strh r0, [r2, #6]
	ldrsh r1, [r2, r1]
	ldr r0, [r5, #0xc]
	asr r3, r1, #3
	lsr r3, r3, #0x1c
	add r3, r1, r3
	lsl r1, r3, #0xc
	mov r3, #6
	ldrsh r2, [r2, r3]
	lsr r1, r1, #0x10
	asr r3, r2, #3
	lsr r3, r3, #0x1c
	add r3, r2, r3
	lsl r2, r3, #0xc
	lsr r2, r2, #0x10
	bl ov70_0225C8C4
	cmp r0, #0x2a
	bne _0226AA2C
	mov r1, #1
	b _0226AA2E
_0226AA2C:
	mov r1, #0
_0226AA2E:
	ldr r0, _0226AB00 ; =0x00000965
	cmp r6, #1
	strb r1, [r4, r0]
	beq _0226AA3E
	cmp r6, #2
	beq _0226AA58
	cmp r6, #3
	b _0226AA8A
_0226AA3E:
	ldr r3, _0226AB04 ; =0x0226E5E4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_02269828
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov70_0226B714
	b _0226AAD2
_0226AA58:
	ldr r3, _0226AB04 ; =0x0226E5E4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_02269828
	ldr r3, _0226AB08 ; =0x0226E5E8
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov70_02269828
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #2
	bl ov70_0226B714
	mov r2, #1
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov70_0226B714
	b _0226AAD2
_0226AA8A:
	ldr r3, _0226AB04 ; =0x0226E5E4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_02269828
	ldr r3, _0226AB08 ; =0x0226E5E8
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov70_02269828
	ldr r3, _0226AB0C ; =0x0226E5EC
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov70_02269828
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov70_0226B714
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov70_0226B714
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	mov r3, #1
	bl ov70_0226B714
_0226AAD2:
	ldr r0, _0226AB10 ; =0x00000955
	mov r1, #0
	strb r6, [r4, r0]
	ldr r0, [r4, #8]
	bl ov70_0225D030
	ldr r0, _0226AB00 ; =0x00000965
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0226AAF2
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0226AB14
	add sp, #8
	pop {r4, r5, r6, pc}
_0226AAF2:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0226ABAC
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0226AB00: .word 0x00000965
_0226AB04: .word 0x0226E5E4
_0226AB08: .word 0x0226E5E8
_0226AB0C: .word 0x0226E5EC
_0226AB10: .word 0x00000955
	thumb_func_end ov70_0226A9D0

	thumb_func_start ov70_0226AB14
ov70_0226AB14: ; 0x0226AB14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	ldr r0, [r5, #8]
	add r1, sp, #0x10
	bl ov70_0225D054
	ldr r0, _0226AB94 ; =0x00000955
	ldrsb r0, [r5, r0]
	sub r1, r0, #1
	ldr r0, _0226AB98 ; =0x0226E2E8
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _0226AB42
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226AB50
_0226AB42:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226AB50:
	ldr r6, [sp, #0x14]
	ldr r4, [sp, #0x18]
	ldr r7, [sp, #0x10]
	bl sub_020E1740
	add r0, r6, r0
	str r0, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r0, #0x6c
	str r0, [sp, #0xc]
	ldr r0, _0226AB9C ; =0x00000A04
	add r1, r7, #0
	add r0, r5, r0
	add r2, r7, #0
	add r3, r6, #0
	bl ov70_022692B4
	ldr r0, _0226ABA0 ; =0x00000A2C
	mov r3, #2
	ldr r2, _0226ABA4 ; =0x0000071C
	add r0, r5, r0
	mov r1, #0
	lsl r3, r3, #0xe
	bl ov70_0226949C
	add r0, r5, #0
	bl ov70_0226B324
	ldr r0, _0226ABA8 ; =0x00000956
	mov r1, #0
	strh r1, [r5, r0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226AB94: .word 0x00000955
_0226AB98: .word 0x0226E2E8
_0226AB9C: .word 0x00000A04
_0226ABA0: .word 0x00000A2C
_0226ABA4: .word 0x0000071C
_0226ABA8: .word 0x00000956
	thumb_func_end ov70_0226AB14

	thumb_func_start ov70_0226ABAC
ov70_0226ABAC: ; 0x0226ABAC
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r1, #0
	ldr r0, [r4, #8]
	add r1, sp, #0x10
	bl ov70_0225D054
	mov r0, #2
	ldr r3, [sp, #0x14]
	lsl r0, r0, #0xc
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x10]
	add r0, r3, r0
	str r0, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, _0226ABF8 ; =0x00000A04
	add r2, r1, #0
	add r0, r4, r0
	bl ov70_022692B4
	ldr r0, _0226ABFC ; =0x00000A2C
	mov r1, #0
	ldr r2, _0226AC00 ; =0x0000071C
	add r0, r4, r0
	add r3, r1, #0
	bl ov70_0226949C
	add r0, r4, #0
	bl ov70_0226B51C
	ldr r0, _0226AC04 ; =0x00000956
	mov r1, #0
	strh r1, [r4, r0]
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
_0226ABF8: .word 0x00000A04
_0226ABFC: .word 0x00000A2C
_0226AC00: .word 0x0000071C
_0226AC04: .word 0x00000956
	thumb_func_end ov70_0226ABAC

	thumb_func_start ov70_0226AC08
ov70_0226AC08: ; 0x0226AC08
	push {r3, lr}
	ldr r2, _0226AC20 ; =0x00000965
	ldrb r2, [r1, r2]
	cmp r2, #0
	bne _0226AC18
	bl ov70_0226AC24
	pop {r3, pc}
_0226AC18:
	bl ov70_0226AD20
	pop {r3, pc}
	nop
_0226AC20: .word 0x00000965
	thumb_func_end ov70_0226AC08

	thumb_func_start ov70_0226AC24
ov70_0226AC24: ; 0x0226AC24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r1, _0226AD0C ; =0x00000A04
	add r6, r0, #0
	add r0, r5, r1
	sub r1, #0xae
	ldrsh r1, [r5, r1]
	bl ov70_022692DC
	str r0, [sp]
	ldr r0, _0226AD10 ; =0x00000A2C
	add r0, r5, r0
	bl ov70_022694D0
	ldr r0, _0226AD14 ; =0x00000956
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, r0]
	ldr r0, [r5, #8]
	add r1, sp, #0xc
	bl ov70_0225D054
	ldr r0, _0226AD0C ; =0x00000A04
	add r1, sp, #0xc
	add r0, r5, r0
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl ov70_02269488
	ldr r0, _0226AD10 ; =0x00000A2C
	add r1, sp, #8
	add r0, r5, r0
	bl ov70_02269508
	ldr r0, [sp]
	cmp r0, #0
	bne _0226AC78
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #0xc]
_0226AC78:
	ldr r0, [r5, #8]
	add r1, sp, #0xc
	bl ov70_0225D048
	add r0, r5, #0
	bl ov70_0226B324
	ldr r0, _0226AD18 ; =0x00000955
	mov r4, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _0226ACA4
	ldr r7, _0226AD18 ; =0x00000955
_0226AC92:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov70_0226B744
	ldrsb r0, [r5, r7]
	add r4, r4, #1
	cmp r4, r0
	blt _0226AC92
_0226ACA4:
	ldr r0, [r6, #4]
	ldr r7, [r5, #8]
	bl ov70_0225CCAC
	cmp r7, r0
	bne _0226AD06
	ldr r0, _0226AD1C ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	mov r4, #4
	tst r1, r0
	beq _0226ACBE
	mov r4, #0
_0226ACBE:
	mov r1, #0x80
	tst r1, r0
	beq _0226ACC6
	mov r4, #1
_0226ACC6:
	mov r1, #0x10
	tst r1, r0
	beq _0226ACCE
	mov r4, #3
_0226ACCE:
	mov r1, #0x20
	tst r0, r1
	beq _0226ACD6
	mov r4, #2
_0226ACD6:
	cmp r4, #4
	beq _0226AD06
	add r0, r7, #0
	add r1, r4, #0
	bl ov70_0225D060
	ldr r0, [r5, #8]
	bl ov70_0225CD34
	add r1, sp, #4
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	mov r3, sp
	ldrh r2, [r1]
	ldr r0, [r5, #8]
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #2]
	add r2, r4, #0
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov70_0225CD04
_0226AD06:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226AD0C: .word 0x00000A04
_0226AD10: .word 0x00000A2C
_0226AD14: .word 0x00000956
_0226AD18: .word 0x00000955
_0226AD1C: .word 0x021BF67C
	thumb_func_end ov70_0226AC24

	thumb_func_start ov70_0226AD20
ov70_0226AD20: ; 0x0226AD20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r1, _0226AD90 ; =0x00000A04
	add r6, r0, #0
	add r0, r5, r1
	sub r1, #0xae
	ldrsh r1, [r5, r1]
	bl ov70_022692DC
	str r0, [sp]
	ldr r0, _0226AD94 ; =0x00000A2C
	add r0, r5, r0
	bl ov70_022694D0
	ldr r0, _0226AD98 ; =0x00000956
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, r0]
	ldr r0, [r5, #8]
	add r1, sp, #4
	bl ov70_0225D054
	ldr r0, _0226AD90 ; =0x00000A04
	add r1, sp, #4
	add r0, r5, r0
	add r2, sp, #8
	add r3, sp, #0xc
	bl ov70_02269488
	ldr r0, [r5, #8]
	add r1, sp, #4
	bl ov70_0225D048
	add r0, r5, #0
	bl ov70_0226B51C
	ldr r0, _0226AD9C ; =0x00000955
	mov r4, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _0226AD88
	ldr r7, _0226AD9C ; =0x00000955
_0226AD76:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov70_0226B744
	ldrsb r0, [r5, r7]
	add r4, r4, #1
	cmp r4, r0
	blt _0226AD76
_0226AD88:
	ldr r0, [sp]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226AD90: .word 0x00000A04
_0226AD94: .word 0x00000A2C
_0226AD98: .word 0x00000956
_0226AD9C: .word 0x00000955
	thumb_func_end ov70_0226AD20

	thumb_func_start ov70_0226ADA0
ov70_0226ADA0: ; 0x0226ADA0
	push {r3, lr}
	ldr r2, _0226ADB8 ; =0x00000965
	ldrb r2, [r1, r2]
	cmp r2, #0
	bne _0226ADB0
	bl ov70_0226ADBC
	pop {r3, pc}
_0226ADB0:
	bl ov70_0226AF1C
	pop {r3, pc}
	nop
_0226ADB8: .word 0x00000965
	thumb_func_end ov70_0226ADA0

	thumb_func_start ov70_0226ADBC
ov70_0226ADBC: ; 0x0226ADBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r1, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, sp, #0x24
	bl ov70_0225D054
	ldr r0, _0226AF04 ; =0x00000955
	ldrsb r0, [r5, r0]
	sub r1, r0, #1
	ldr r0, _0226AF08 ; =0x0226E2E8
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _0226ADEC
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226ADFA
_0226ADEC:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226ADFA:
	ldr r6, [sp, #0x28]
	ldr r4, [sp, #0x2c]
	ldr r7, [sp, #0x24]
	bl sub_020E1740
	sub r0, r6, r0
	str r0, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r0, _0226AF0C ; =0x00000A04
	add r1, r7, #0
	add r0, r5, r0
	add r2, r7, #0
	add r3, r6, #0
	bl ov70_022692B4
	ldr r1, _0226AF10 ; =0x00000956
	mov r4, #0
	strh r4, [r5, r1]
	sub r0, r1, #2
	strb r4, [r5, r0]
	sub r0, r1, #1
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _0226AEFA
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0xc
	str r0, [sp, #0x14]
	add r0, r1, #0
	add r0, #0x36
	add r1, #0x12
	add r7, r5, r0
	add r6, r5, r1
_0226AE42:
	ldr r0, [sp, #0x14]
	add r1, sp, #0x24
	add r2, sp, #0x28
	add r3, sp, #0x2c
	bl sub_02017358
	mov r0, #0x96
	add r1, r5, r4
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0226AE64
	cmp r0, #1
	beq _0226AE7E
	cmp r0, #2
	beq _0226AE98
	b _0226AEB0
_0226AE64:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x20]
	mov r0, #1
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x1c]
	mov r0, #1
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #0x12
	sub r0, r1, r0
	str r0, [sp, #0x18]
	b _0226AEB0
_0226AE7E:
	mov r0, #1
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x20]
	mov r0, #1
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x18]
	b _0226AEB0
_0226AE98:
	mov r0, #1
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x12
	sub r0, r1, r0
	str r0, [sp, #0x20]
	mov r0, #1
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x18]
_0226AEB0:
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0x1a
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x28]
	add r0, r7, #0
	bl ov70_022692B4
	mov r3, #6
	ldr r2, _0226AF14 ; =0x00000AAA
	add r0, r6, #0
	mov r1, #0
	lsl r3, r3, #0xc
	bl ov70_0226949C
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #3
	bl ov70_0226B714
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	add r0, #0x78
	str r0, [sp, #0x14]
	ldr r0, _0226AF04 ; =0x00000955
	add r7, #0x28
	ldrsb r0, [r5, r0]
	add r6, #0xc
	cmp r4, r0
	blt _0226AE42
_0226AEFA:
	ldr r0, _0226AF18 ; =0x00000964
	mov r1, #0
	strb r1, [r5, r0]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226AF04: .word 0x00000955
_0226AF08: .word 0x0226E2E8
_0226AF0C: .word 0x00000A04
_0226AF10: .word 0x00000956
_0226AF14: .word 0x00000AAA
_0226AF18: .word 0x00000964
	thumb_func_end ov70_0226ADBC

	thumb_func_start ov70_0226AF1C
ov70_0226AF1C: ; 0x0226AF1C
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r1, #0
	ldr r0, [r4, #8]
	add r1, sp, #0x10
	bl ov70_0225D054
	mov r0, #2
	ldr r3, [sp, #0x14]
	lsl r0, r0, #0xc
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x10]
	sub r0, r3, r0
	str r0, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, _0226AF58 ; =0x00000A04
	add r2, r1, #0
	add r0, r4, r0
	bl ov70_022692B4
	ldr r0, _0226AF5C ; =0x00000956
	mov r1, #0
	strh r1, [r4, r0]
	sub r0, r0, #2
	strb r1, [r4, r0]
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
_0226AF58: .word 0x00000A04
_0226AF5C: .word 0x00000956
	thumb_func_end ov70_0226AF1C

	thumb_func_start ov70_0226AF60
ov70_0226AF60: ; 0x0226AF60
	push {r3, lr}
	ldr r2, _0226AF78 ; =0x00000965
	ldrb r2, [r1, r2]
	cmp r2, #0
	bne _0226AF70
	bl ov70_0226AF7C
	pop {r3, pc}
_0226AF70:
	bl ov70_0226B1D0
	pop {r3, pc}
	nop
_0226AF78: .word 0x00000965
	thumb_func_end ov70_0226AF60

	thumb_func_start ov70_0226AF7C
ov70_0226AF7C: ; 0x0226AF7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r1, #0
	ldr r1, _0226B1A8 ; =0x00000954
	add r6, r0, #0
	ldrsb r0, [r4, r1]
	cmp r0, #4
	bhi _0226AFB2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226AF98: ; jump table
	.short _0226AFA2 - _0226AF98 - 2 ; case 0
	.short _0226AFBA - _0226AF98 - 2 ; case 1
	.short _0226AFD0 - _0226AF98 - 2 ; case 2
	.short _0226B006 - _0226AF98 - 2 ; case 3
	.short _0226B05E - _0226AF98 - 2 ; case 4
_0226AFA2:
	add r0, r1, #2
	ldrsh r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #8
	bge _0226AFB4
_0226AFB2:
	b _0226B0D8
_0226AFB4:
	mov r0, #1
	strb r0, [r4, r1]
	b _0226B0D8
_0226AFBA:
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov70_0225D09C
	ldr r0, _0226B1AC ; =0x00000956
	mov r1, #0x10
	strh r1, [r4, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r4, r0]
	b _0226B0D8
_0226AFD0:
	add r0, r1, #2
	ldrsh r0, [r4, r0]
	sub r2, r0, #1
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _0226B0D8
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov70_0225D09C
	ldr r0, _0226B1A8 ; =0x00000954
	mov r1, #3
	strb r1, [r4, r0]
	mov r1, #0
	add r0, r0, #2
	strh r1, [r4, r0]
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov70_0225CD60
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov70_0225D060
	b _0226B0D8
_0226B006:
	add r0, r1, #0
	add r1, r1, #2
	add r0, #0xb0
	ldrsh r1, [r4, r1]
	add r0, r4, r0
	bl ov70_022692DC
	add r5, r0, #0
	ldr r0, _0226B1AC ; =0x00000956
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldr r0, [r4, #8]
	add r1, sp, #0x30
	bl ov70_0225D054
	ldr r0, _0226B1B0 ; =0x00000A04
	add r1, sp, #0x30
	add r0, r4, r0
	add r2, sp, #0x34
	add r3, sp, #0x38
	bl ov70_02269488
	ldr r0, [r4, #8]
	add r1, sp, #0x30
	bl ov70_0225D048
	cmp r5, #1
	bne _0226B0D8
	ldr r0, _0226B1A8 ; =0x00000954
	mov r1, #4
	strb r1, [r4, r0]
	add r1, r0, #2
	mov r2, #0
	strh r2, [r4, r1]
	ldr r1, [sp, #0x34]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r2, _0226B1B4 ; =0x000005AB
	add r0, r6, #0
	add r1, r4, #0
	bl ov70_02269510
	b _0226B0D8
_0226B05E:
	add r0, r1, #2
	ldrsh r1, [r4, r0]
	ldr r0, _0226B1B8 ; =0x00007FFF
	mul r0, r1
	mov r1, #0xa
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _0226B1BC ; =0x020F983C
	ldrsh r2, [r0, r1]
	asr r0, r2, #0x1f
	lsr r1, r2, #0x11
	lsl r0, r0, #0xf
	orr r0, r1
	mov r1, #2
	lsl r3, r2, #0xf
	mov r2, #0
	lsl r1, r1, #0xa
	add r1, r3, r1
	adc r0, r2
	lsr r5, r1, #0xc
	lsl r0, r0, #0x14
	orr r5, r0
	ldr r0, [r4, #8]
	add r1, sp, #0x24
	bl ov70_0225D054
	ldr r0, _0226B1C0 ; =0x00000958
	add r1, sp, #0x24
	ldr r0, [r4, r0]
	add r0, r0, r5
	str r0, [sp, #0x28]
	ldr r0, [r4, #8]
	bl ov70_0225D048
	ldr r0, _0226B1AC ; =0x00000956
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	cmp r1, #0xa
	ble _0226B0D6
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov70_0225D030
	ldr r0, [r6, #4]
	ldr r4, [r4, #8]
	bl ov70_0225CCAC
	cmp r4, r0
	bne _0226B0D0
	ldr r0, [r6, #8]
	add r1, r4, #0
	bl ov70_02260B38
_0226B0D0:
	add sp, #0x3c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0226B0D6:
	strh r1, [r4, r0]
_0226B0D8:
	ldr r1, _0226B1C4 ; =0x00000964
	mov r5, #0
	ldrb r0, [r4, r1]
	add r0, r0, #1
	strb r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0xf
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _0226B1A0
	add r0, r1, #0
	add r0, #0x28
	add r7, r4, r0
	add r0, r1, #4
	add r0, r4, r0
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r0, [sp, #0xc]
	add r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r7, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	str r0, [sp]
_0226B10A:
	ldr r1, _0226B1C4 ; =0x00000964
	add r0, r7, #0
	ldrb r1, [r4, r1]
	bl ov70_022692DC
	cmp r0, #0
	bne _0226B152
	ldr r0, [sp, #0x10]
	bl ov70_022694D0
	ldr r0, [sp, #0xc]
	add r1, sp, #0x18
	add r2, sp, #0x1c
	add r3, sp, #0x20
	bl sub_02017358
	ldr r0, [sp, #8]
	add r1, sp, #0x18
	add r2, sp, #0x1c
	add r3, sp, #0x20
	bl ov70_02269488
	ldr r0, [sp, #4]
	add r1, sp, #0x14
	bl ov70_02269508
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x1c]
	add r1, r1, r0
	ldr r0, [sp]
	ldr r3, [sp, #0x20]
	str r1, [sp, #0x18]
	bl sub_02017350
	b _0226B16C
_0226B152:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	mov r3, #4
	bl ov70_0226B714
	cmp r0, #1
	bne _0226B16C
	ldr r2, _0226B1C8 ; =0x00000591
	add r0, r6, #0
	add r1, r4, #0
	bl ov70_02269510
_0226B16C:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov70_0226B744
	ldr r0, [sp, #0x10]
	add r5, r5, #1
	add r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r7, #0x28
	add r0, #0x78
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, #0x28
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, #0x78
	str r0, [sp]
	ldr r0, _0226B1CC ; =0x00000955
	ldrsb r0, [r4, r0]
	cmp r5, r0
	blt _0226B10A
_0226B1A0:
	mov r0, #0
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0226B1A8: .word 0x00000954
_0226B1AC: .word 0x00000956
_0226B1B0: .word 0x00000A04
_0226B1B4: .word 0x000005AB
_0226B1B8: .word 0x00007FFF
_0226B1BC: .word 0x020F983C
_0226B1C0: .word 0x00000958
_0226B1C4: .word 0x00000964
_0226B1C8: .word 0x00000591
_0226B1CC: .word 0x00000955
	thumb_func_end ov70_0226AF7C

	thumb_func_start ov70_0226B1D0
ov70_0226B1D0: ; 0x0226B1D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, _0226B30C ; =0x00000955
	add r4, r1, #0
	ldrsb r0, [r4, r0]
	mov r5, #0
	cmp r0, #0
	ble _0226B1F6
	ldr r7, _0226B30C ; =0x00000955
_0226B1E4:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov70_0226B744
	ldrsb r0, [r4, r7]
	add r5, r5, #1
	cmp r5, r0
	blt _0226B1E4
_0226B1F6:
	ldr r1, _0226B310 ; =0x00000954
	ldrsb r0, [r4, r1]
	cmp r0, #3
	bls _0226B200
	b _0226B304
_0226B200:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226B20C: ; jump table
	.short _0226B214 - _0226B20C - 2 ; case 0
	.short _0226B246 - _0226B20C - 2 ; case 1
	.short _0226B25C - _0226B20C - 2 ; case 2
	.short _0226B292 - _0226B20C - 2 ; case 3
_0226B214:
	ldr r2, _0226B314 ; =0x00000591
	add r0, r6, #0
	add r1, r4, #0
	bl ov70_02269510
	ldr r0, _0226B30C ; =0x00000955
	mov r5, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _0226B23E
	ldr r7, _0226B30C ; =0x00000955
_0226B22A:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	mov r3, #4
	bl ov70_0226B714
	ldrsb r0, [r4, r7]
	add r5, r5, #1
	cmp r5, r0
	blt _0226B22A
_0226B23E:
	ldr r0, _0226B310 ; =0x00000954
	mov r1, #1
	strb r1, [r4, r0]
	b _0226B304
_0226B246:
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov70_0225D09C
	ldr r0, _0226B318 ; =0x00000956
	mov r1, #8
	strh r1, [r4, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r4, r0]
	b _0226B304
_0226B25C:
	add r0, r1, #2
	ldrsh r0, [r4, r0]
	sub r2, r0, #1
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _0226B304
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov70_0225D09C
	ldr r0, _0226B310 ; =0x00000954
	mov r1, #3
	strb r1, [r4, r0]
	mov r1, #0
	add r0, r0, #2
	strh r1, [r4, r0]
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov70_0225CD60
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov70_0225D060
	b _0226B304
_0226B292:
	add r0, r1, #0
	add r1, r1, #2
	add r0, #0xb0
	ldrsh r1, [r4, r1]
	add r0, r4, r0
	bl ov70_022692DC
	add r5, r0, #0
	ldr r0, _0226B318 ; =0x00000956
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl ov70_0225D054
	ldr r0, _0226B31C ; =0x00000A04
	add r1, sp, #0
	add r0, r4, r0
	add r2, sp, #4
	add r3, sp, #8
	bl ov70_02269488
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl ov70_0225D048
	cmp r5, #1
	bne _0226B304
	ldr r0, _0226B318 ; =0x00000956
	mov r1, #0
	strh r1, [r4, r0]
	ldr r1, [sp, #4]
	add r0, r0, #2
	str r1, [r4, r0]
	ldr r2, _0226B320 ; =0x000005AB
	add r0, r6, #0
	add r1, r4, #0
	bl ov70_02269510
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov70_0225D030
	ldr r0, [r6, #4]
	ldr r4, [r4, #8]
	bl ov70_0225CCAC
	cmp r4, r0
	bne _0226B2FE
	ldr r0, [r6, #8]
	add r1, r4, #0
	bl ov70_02260B38
_0226B2FE:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0226B304:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226B30C: .word 0x00000955
_0226B310: .word 0x00000954
_0226B314: .word 0x00000591
_0226B318: .word 0x00000956
_0226B31C: .word 0x00000A04
_0226B320: .word 0x000005AB
	thumb_func_end ov70_0226B1D0

	thumb_func_start ov70_0226B324
ov70_0226B324: ; 0x0226B324
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r1, sp, #0
	bl ov70_0225D054
	ldr r0, _0226B518 ; =0x00000955
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _0226B342
	cmp r0, #2
	beq _0226B392
	cmp r0, #3
	b _0226B42E
_0226B342:
	mov r0, #0xf
	lsl r0, r0, #0xe
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	bl sub_020E1740
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020E1740
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r0, #0
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #1
	add r5, #0xc
	ldr r4, [sp, #8]
	lsl r3, r3, #0xc
	add r0, r5, #0
	add r3, r4, r3
	bl sub_02017350
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0226B392:
	mov r0, #0xe
	lsl r0, r0, #0xe
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	bl sub_020E1740
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020E1740
	ldr r1, [sp]
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #1
	add r0, r5, #0
	ldr r4, [sp, #8]
	lsl r3, r3, #0xc
	add r0, #0xc
	add r3, r4, r3
	bl sub_02017350
	mov r0, #0xe
	lsl r0, r0, #0xe
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	add r6, r0, #0
	mov r0, #0xe
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	bl sub_020E1740
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020E1740
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r0, #0
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #1
	add r5, #0x84
	ldr r4, [sp, #8]
	lsl r3, r3, #0xc
	add r0, r5, #0
	add r3, r4, r3
	bl sub_02017350
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0226B42E:
	mov r0, #0xf
	lsl r0, r0, #0xe
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	bl sub_020E1740
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020E1740
	ldr r1, [sp]
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #1
	add r0, r5, #0
	ldr r4, [sp, #8]
	lsl r3, r3, #0xc
	add r0, #0xc
	add r3, r4, r3
	bl sub_02017350
	mov r0, #0xe
	lsl r0, r0, #0xe
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	bl sub_020E1740
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020E1740
	ldr r1, [sp]
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #1
	add r0, r5, #0
	ldr r4, [sp, #8]
	lsl r3, r3, #0xc
	add r0, #0x84
	add r3, r4, r3
	bl sub_02017350
	mov r0, #0xe
	lsl r0, r0, #0xe
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	add r6, r0, #0
	mov r0, #0xe
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	bl sub_020E1740
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020E1740
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r0, #0
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #1
	add r5, #0xfc
	ldr r4, [sp, #8]
	lsl r3, r3, #0xc
	add r0, r5, #0
	add r3, r4, r3
	bl sub_02017350
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0226B518: .word 0x00000955
	thumb_func_end ov70_0226B324

	thumb_func_start ov70_0226B51C
ov70_0226B51C: ; 0x0226B51C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r1, sp, #0
	bl ov70_0225D054
	ldr r0, _0226B710 ; =0x00000955
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _0226B53A
	cmp r0, #2
	beq _0226B58A
	cmp r0, #3
	b _0226B626
_0226B53A:
	mov r0, #3
	lsl r0, r0, #0x10
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	bl sub_020E1740
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020E1740
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r0, #0
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #2
	add r5, #0xc
	ldr r4, [sp, #8]
	lsl r3, r3, #0xe
	add r0, r5, #0
	sub r3, r4, r3
	bl sub_02017350
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0226B58A:
	mov r0, #0xb
	lsl r0, r0, #0xe
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	bl sub_020E1740
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020E1740
	ldr r1, [sp]
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #2
	add r0, r5, #0
	ldr r4, [sp, #8]
	lsl r3, r3, #0xe
	add r0, #0xc
	sub r3, r4, r3
	bl sub_02017350
	mov r0, #0xb
	lsl r0, r0, #0xe
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	add r6, r0, #0
	mov r0, #0xe
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	bl sub_020E1740
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020E1740
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r0, #0
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #2
	add r5, #0x84
	ldr r4, [sp, #8]
	lsl r3, r3, #0xe
	add r0, r5, #0
	sub r3, r4, r3
	bl sub_02017350
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0226B626:
	mov r0, #3
	lsl r0, r0, #0x10
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	bl sub_020E1740
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020E1740
	ldr r1, [sp]
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #2
	add r0, r5, #0
	ldr r4, [sp, #8]
	lsl r3, r3, #0xe
	add r0, #0xc
	sub r3, r4, r3
	bl sub_02017350
	mov r0, #0xb
	lsl r0, r0, #0xe
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	bl sub_020E1740
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020E1740
	ldr r1, [sp]
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #2
	add r0, r5, #0
	ldr r4, [sp, #8]
	lsl r3, r3, #0xe
	add r0, #0x84
	sub r3, r4, r3
	bl sub_02017350
	mov r0, #0xb
	lsl r0, r0, #0xe
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	add r6, r0, #0
	mov r0, #0xe
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	bl sub_020E1740
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020E1740
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r0, #0
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #2
	add r5, #0xfc
	ldr r4, [sp, #8]
	lsl r3, r3, #0xe
	add r0, r5, #0
	sub r3, r4, r3
	bl sub_02017350
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0226B710: .word 0x00000955
	thumb_func_end ov70_0226B51C

	thumb_func_start ov70_0226B714
ov70_0226B714: ; 0x0226B714
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r6, #0x96
	lsl r6, r6, #4
	add r5, r1, r6
	add r4, r3, #0
	ldrb r3, [r5, r2]
	cmp r4, r3
	beq _0226B73E
	strb r4, [r5, r2]
	mov r3, #0
	add r5, r1, r2
	sub r6, r6, #4
	strb r3, [r5, r6]
	lsl r4, r4, #0xd
	str r4, [sp]
	bl ov70_02269A90
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0226B73E:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov70_0226B714

	thumb_func_start ov70_0226B744
ov70_0226B744: ; 0x0226B744
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r3, #0x96
	add r7, r1, #0
	add r5, r2, #0
	add r4, r7, r5
	lsl r3, r3, #4
	ldrb r6, [r4, r3]
	sub r3, r3, #4
	add r4, r7, r3
	ldrb r3, [r4, r5]
	str r0, [sp, #4]
	cmp r3, #0
	bne _0226B7A4
	mov r3, #0
	bl ov70_02269AE8
	lsl r1, r6, #0xd
	str r0, [sp, #8]
	cmp r0, r1
	bne _0226B778
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	b _0226B790
_0226B778:
	cmp r6, #4
	beq _0226B780
	str r1, [sp, #8]
	b _0226B790
_0226B780:
	add r1, r7, #0
	mov r0, #0x78
	add r1, #0xc
	mul r0, r5
	add r0, r1, r0
	mov r1, #0
	bl sub_02017348
_0226B790:
	ldr r0, [sp, #8]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	add r2, r5, #0
	mov r3, #0
	bl ov70_02269A90
	mov r0, #8
	strb r0, [r4, r5]
_0226B7A4:
	ldrb r0, [r4, r5]
	sub r0, r0, #1
	strb r0, [r4, r5]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226B744

	thumb_func_start ov70_0226B7B0
ov70_0226B7B0: ; 0x0226B7B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r0, [sp, #0x10]
	add r0, r1, #0
	str r1, [sp, #0x14]
	ldr r0, [r0, #8]
	add r1, sp, #0x50
	str r2, [sp, #0x18]
	bl ov70_0225D054
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bls _0226B88E
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x1c]
_0226B7D2:
	ldr r1, [sp, #0x20]
	add r1, #0xd
	cmp r1, #0xf
	bls _0226B7DC
	mov r1, #0xf
_0226B7DC:
	ldr r0, _0226B8AC ; =0x0226E370
	ldr r7, _0226B8B0 ; =0x0226E3A0
	str r0, [sp, #0x34]
	lsl r0, r1, #2
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	ldr r1, _0226B8B4 ; =0x00000968
	str r0, [sp, #0x28]
	add r0, #0xc
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x14]
	mov r4, #0
	add r0, r0, r1
	str r0, [sp, #0x30]
_0226B7F8:
	ldr r0, [sp, #0x1c]
	ldr r6, _0226B8B8 ; =0x0226E5A4
	add r5, r4, r0
	ldr r3, [sp, #0x24]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, r5, #0
	add r3, r6, r3
	bl ov70_02269828
	ldr r1, [sp, #0x34]
	add r0, sp, #0x50
	add r2, sp, #0x44
	bl sub_020BD17C
	add r0, sp, #0x44
	add r1, r7, #0
	add r2, sp, #0x38
	bl sub_020BD17C
	mov r0, #0x78
	mul r0, r5
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	add r0, r1, r0
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	bl sub_02017350
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	add r0, r1, r0
	mov r1, #0
	bl sub_02017348
	ldr r0, [sp, #0x14]
	mov r1, #0
	add r2, r0, r5
	ldr r0, _0226B8BC ; =0x00000958
	strb r1, [r2, r0]
	ldr r0, [sp, #0x3c]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x28
	mul r1, r0
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x38]
	add r0, r0, r1
	ldr r1, [sp, #0x44]
	ldr r3, [sp, #0x48]
	bl ov70_022692B4
	ldr r0, [sp, #0x34]
	add r4, r4, #1
	add r0, #0xc
	add r7, #0xc
	str r0, [sp, #0x34]
	cmp r4, #4
	blt _0226B7F8
	ldr r0, [sp, #0x1c]
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x20]
	cmp r1, r0
	blo _0226B7D2
_0226B88E:
	ldr r2, _0226B8C0 ; =0x00000956
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	sub r3, r2, #1
	strb r1, [r0, r2]
	ldr r1, [sp, #0x14]
	mov r0, #0
	strb r0, [r1, r3]
	sub r3, r2, #2
	strb r0, [r1, r3]
	add r2, r2, #1
	strb r0, [r1, r2]
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_0226B8AC: .word 0x0226E370
_0226B8B0: .word 0x0226E3A0
_0226B8B4: .word 0x00000968
_0226B8B8: .word 0x0226E5A4
_0226B8BC: .word 0x00000958
_0226B8C0: .word 0x00000956
	thumb_func_end ov70_0226B7B0

	thumb_func_start ov70_0226B8C4
ov70_0226B8C4: ; 0x0226B8C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r2, #0
	ldr r2, _0226B924 ; =0x00000958
	add r5, r1, #0
	add r1, r5, r2
	add r7, r0, #0
	ldrsb r0, [r1, r4]
	add r6, r4, #0
	add r2, #0x10
	add r0, r0, #1
	strb r0, [r1, r4]
	mov r0, #0x28
	mul r6, r0
	add r0, r5, r2
	ldrsb r1, [r1, r4]
	add r0, r0, r6
	bl ov70_022692DC
	str r0, [sp]
	ldr r0, _0226B928 ; =0x00000968
	add r1, sp, #4
	add r0, r5, r0
	add r0, r0, r6
	add r2, sp, #8
	add r3, sp, #0xc
	bl ov70_02269488
	add r1, r5, #0
	mov r0, #0x78
	add r1, #0xc
	mul r0, r4
	add r0, r1, r0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_02017350
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov70_022699BC
	ldr r0, [sp]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226B924: .word 0x00000958
_0226B928: .word 0x00000968
	thumb_func_end ov70_0226B8C4

	thumb_func_start ov70_0226B92C
ov70_0226B92C: ; 0x0226B92C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r7, r1, #0
	mov r6, #0
	str r2, [sp, #4]
	add r0, r2, #0
	beq _0226B986
	add r5, r7, #0
	ldr r4, _0226B990 ; =0x0226E5A4
	add r5, #0xc
_0226B942:
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov70_02269828
	ldr r0, [r7, #8]
	add r1, sp, #8
	bl ov70_0225D054
	mov r0, #2
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xe
	add r2, r1, r0
	mov r0, #6
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	add r3, r1, r0
	ldr r1, [sp, #8]
	add r0, r5, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_02017350
	add r0, r5, #0
	mov r1, #0
	bl sub_02017348
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x78
	cmp r6, r0
	blo _0226B942
_0226B986:
	ldr r1, _0226B994 ; =0x00000954
	ldr r0, [sp, #4]
	strb r0, [r7, r1]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226B990: .word 0x0226E5A4
_0226B994: .word 0x00000954
	thumb_func_end ov70_0226B92C

	thumb_func_start ov70_0226B998
ov70_0226B998: ; 0x0226B998
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	add r5, r1, #0
	mov r0, #2
	ldrsh r1, [r5, r0]
	mov r0, #0xc
	add r6, r2, #0
	mul r0, r1
	mov r1, #0x30
	bl sub_020E1F6C
	add r4, r0, #0
	ldr r0, _0226BABC ; =0x00000954
	ldr r1, [r5, r0]
	cmp r4, r1
	beq _0226BA9C
	str r4, [r5, r0]
	cmp r4, #0
	beq _0226B9EA
	mov r0, #0x30
	add r2, r6, #0
	mul r2, r0
	ldr r0, _0226BAC0 ; =0x0226E510
	lsl r1, r4, #2
	add r0, r0, r2
	add r2, r1, r0
	ldrh r0, [r1, r0]
	add r1, sp, #8
	strh r0, [r1, #4]
	ldrh r0, [r2, #2]
	strh r0, [r1, #6]
	ldrh r2, [r1, #4]
	add r0, r5, #0
	mov r1, #0x78
	add r0, #0xc
	mul r1, r2
	add r0, r0, r1
	mov r1, #0
	bl sub_02017348
_0226B9EA:
	mov r0, #0x30
	add r2, r6, #0
	mul r2, r0
	ldr r0, _0226BAC4 ; =0x0226E514
	lsl r1, r4, #2
	add r0, r0, r2
	add r2, r1, r0
	ldrh r1, [r1, r0]
	add r0, sp, #8
	strh r1, [r0]
	ldrh r4, [r2, #2]
	strh r4, [r0, #2]
	cmp r4, #0
	beq _0226BA8A
	beq _0226BA1C
	lsl r7, r4, #0xc
	add r0, r7, #0
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226BA2C
_0226BA1C:
	lsl r7, r4, #0xc
	add r0, r7, #0
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226BA2C:
	add r1, sp, #8
	ldrh r6, [r1]
	bl sub_020E1740
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov70_02269A90
	cmp r4, #0
	beq _0226BA58
	add r0, r7, #0
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226BA66
_0226BA58:
	add r0, r7, #0
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226BA66:
	bl sub_020E1740
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl ov70_02269A90
	add r1, r5, #0
	mov r0, #0x78
	add r1, #0xc
	mul r0, r6
	add r0, r1, r0
	mov r1, #1
	bl sub_02017348
	b _0226BA9C
_0226BA8A:
	ldrh r1, [r0]
	add r2, r5, #0
	mov r0, #0x78
	mul r0, r1
	add r2, #0xc
	add r0, r2, r0
	mov r1, #0
	bl sub_02017348
_0226BA9C:
	mov r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0x30
	bge _0226BAA8
	add r0, r0, #1
	strh r0, [r5, #2]
_0226BAA8:
	mov r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0x30
	blt _0226BAB6
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226BAB6:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226BABC: .word 0x00000954
_0226BAC0: .word 0x0226E510
_0226BAC4: .word 0x0226E514
	thumb_func_end ov70_0226B998

	thumb_func_start ov70_0226BAC8
ov70_0226BAC8: ; 0x0226BAC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r7, r1, #0
	mov r4, #0
	str r2, [sp, #4]
	add r0, r2, #0
	beq _0226BB1C
	add r5, r7, #0
	add r5, #0xc
_0226BADC:
	add r3, r4, #6
	lsl r6, r3, #2
	ldr r3, _0226BB2C ; =0x0226E5A4
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	ldr r0, [r7, #8]
	add r1, sp, #8
	bl ov70_0225D054
	mov r0, #2
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xe
	add r2, r1, r0
	ldr r1, [sp, #8]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	str r2, [sp, #0xc]
	bl sub_02017350
	add r0, r5, #0
	mov r1, #0
	bl sub_02017348
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r5, #0x78
	cmp r4, r0
	blo _0226BADC
_0226BB1C:
	ldr r0, _0226BB30 ; =0x00000954
	mov r1, #0xff
	strh r1, [r7, r0]
	add r1, r0, #2
	ldr r0, [sp, #4]
	strh r0, [r7, r1]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226BB2C: .word 0x0226E5A4
_0226BB30: .word 0x00000954
	thumb_func_end ov70_0226BAC8

	thumb_func_start ov70_0226BB34
ov70_0226BB34: ; 0x0226BB34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r0, [r1, #8]
	str r1, [sp, #4]
	add r1, sp, #8
	bl ov70_0225D054
	mov r0, #0xa
	ldr r7, [sp, #4]
	mov r4, #0
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x10]
	mov r0, #1
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	str r1, [sp, #8]
	ldr r1, [sp, #0xc]
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0xc]
	add r5, r4, #0
	add r7, #0xc
_0226BB68:
	add r3, r4, #0
	add r3, #0x25
	lsl r6, r3, #2
	ldr r3, _0226BBA4 ; =0x0226E5A4
	add r2, r4, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, #0x10
	add r3, r3, r6
	bl ov70_02269828
	add r1, r4, #0
	add r1, #0x10
	mov r0, #0x78
	mul r0, r1
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r7, r0
	add r1, r1, r5
	bl sub_02017350
	mov r0, #6
	lsl r0, r0, #0xe
	add r4, r4, #1
	add r5, r5, r0
	cmp r4, #2
	blt _0226BB68
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226BBA4: .word 0x0226E5A4
	thumb_func_end ov70_0226BB34

	thumb_func_start ov70_0226BBA8
ov70_0226BBA8: ; 0x0226BBA8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0226BBD8 ; =0x00000D0C
	mov r2, #1
	strh r2, [r1, r0]
	add r4, r1, #0
	mov r5, #0
	add r0, r0, #2
	strh r5, [r1, r0]
	add r4, #0xc
	add r7, r2, #0
	mov r6, #0x78
_0226BBBE:
	add r0, r5, #0
	add r0, #0x10
	add r1, r0, #0
	mul r1, r6
	add r0, r4, r1
	add r1, r7, #0
	bl sub_02017348
	add r5, r5, #1
	cmp r5, #2
	blt _0226BBBE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226BBD8: .word 0x00000D0C
	thumb_func_end ov70_0226BBA8

	thumb_func_start ov70_0226BBDC
ov70_0226BBDC: ; 0x0226BBDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _0226BC38 ; =0x00000D0C
	add r7, r0, #0
	ldrh r0, [r5, r1]
	cmp r0, #0
	beq _0226BC36
	add r0, r1, #2
	ldrh r0, [r5, r0]
	cmp r0, #0xd
	bhs _0226BBFE
	add r0, r1, #2
	ldrh r0, [r5, r0]
	add r2, r0, #1
	add r0, r1, #2
	strh r2, [r5, r0]
	b _0226BC02
_0226BBFE:
	mov r0, #0
	strh r0, [r5, r1]
_0226BC02:
	add r6, r5, #0
	mov r4, #0
	add r6, #0xc
_0226BC08:
	ldr r0, _0226BC3C ; =0x00000D0E
	ldrh r0, [r5, r0]
	cmp r0, #0xd
	bhs _0226BC20
	add r2, r4, #0
	add r0, r7, #0
	add r1, r5, #0
	add r2, #0x10
	mov r3, #0
	bl ov70_022699BC
	b _0226BC30
_0226BC20:
	add r1, r4, #0
	add r1, #0x10
	mov r0, #0x78
	mul r0, r1
	add r0, r6, r0
	mov r1, #0
	bl sub_02017348
_0226BC30:
	add r4, r4, #1
	cmp r4, #2
	blt _0226BC08
_0226BC36:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226BC38: .word 0x00000D0C
_0226BC3C: .word 0x00000D0E
	thumb_func_end ov70_0226BBDC

	thumb_func_start ov70_0226BC40
ov70_0226BC40: ; 0x0226BC40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [sp, #0x30]
	mov r7, #2
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	mov r6, #1
	str r0, [sp, #0x34]
	mov r0, #0x3b
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r1, r0, #4
	ldr r4, [sp, #0x34]
	strh r2, [r5, r1]
	add r0, r0, #6
	strh r3, [r5, r0]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r4, #0xc
	str r0, [sp, #0xc]
_0226BC70:
	ldr r1, [sp, #0x10]
	mov r0, #0x78
	mul r0, r1
	add r0, r4, r0
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0xc]
	ldr r0, [r0, #8]
	mov r1, #0x78
	mul r1, r2
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	mov r2, #0x78
	mov r3, #0x78
	mul r2, r6
	mul r3, r7
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, r1
	add r2, r4, r2
	add r3, r4, r3
	bl ov70_0226BD64
	ldr r0, [sp, #0x10]
	add r7, r7, #4
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r6, r6, #4
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r5, #0xec
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _0226BC70
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226BC40

	thumb_func_start ov70_0226BCC0
ov70_0226BCC0: ; 0x0226BCC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xed
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	str r1, [sp]
	cmp r0, #0
	ble _0226BD2E
	ldr r4, [sp, #8]
	add r6, sp, #0x10
_0226BCDC:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r0, r4
	ldrh r0, [r0, r4]
	strh r0, [r6]
	ldrh r0, [r1, #2]
	strh r0, [r6, #2]
	ldrh r1, [r6]
	ldr r0, [sp]
	cmp r1, r0
	bne _0226BD1A
	ldrb r7, [r6, #2]
	cmp r7, #4
	blo _0226BCFE
	bl sub_02022974
_0226BCFE:
	ldrb r0, [r6, #3]
	str r0, [sp, #4]
	cmp r0, #4
	bls _0226BD0A
	bl sub_02022974
_0226BD0A:
	mov r0, #0xec
	mul r0, r7
	ldr r1, [sp, #4]
	add r0, r5, r0
	bl ov70_0226BDA0
	mov r0, #1
	str r0, [sp, #8]
_0226BD1A:
	ldr r0, [sp, #0xc]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0xc]
	mov r0, #0xed
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _0226BCDC
_0226BD2E:
	mov r7, #1
	mov r6, #0
	add r4, r5, #0
_0226BD34:
	add r0, r4, #0
	bl ov70_0226BDE8
	cmp r0, #0
	bne _0226BD40
	mov r7, #0
_0226BD40:
	add r6, r6, #1
	add r4, #0xec
	cmp r6, #4
	blt _0226BD34
	ldr r0, _0226BD60 ; =0x000003B6
	ldrh r1, [r5, r0]
	ldr r0, [sp]
	cmp r1, r0
	bhi _0226BD5A
	cmp r7, #1
	bne _0226BD5A
	mov r0, #2
	str r0, [sp, #8]
_0226BD5A:
	ldr r0, [sp, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226BD60: .word 0x000003B6
	thumb_func_end ov70_0226BCC0

	thumb_func_start ov70_0226BD64
ov70_0226BD64: ; 0x0226BD64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #3
	blo _0226BD78
	bl sub_02022974
_0226BD78:
	add r0, r5, #0
	add r0, #0xd8
	str r4, [r0, #0]
	add r0, r5, #0
	add r0, #0xdc
	str r6, [r0, #0]
	add r0, r5, #0
	add r0, #0xe0
	str r7, [r0, #0]
	add r0, r5, #0
	ldr r1, [sp, #0x18]
	add r0, #0xe4
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [sp, #0x1c]
	add r0, #0xe8
	str r1, [r0, #0]
	ldr r0, [sp, #0x20]
	strh r0, [r5, #2]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226BD64

	thumb_func_start ov70_0226BDA0
ov70_0226BDA0: ; 0x0226BDA0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	ldr r4, _0226BDE0 ; =0x00000000
	beq _0226BDC0
	add r5, r7, #0
_0226BDAC:
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02017348
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blo _0226BDAC
_0226BDC0:
	mov r0, #0
	strh r0, [r7]
	mov r0, #1
	strb r0, [r7, #6]
	strh r6, [r7, #4]
	ldrh r2, [r7, #2]
	add r1, r7, #0
	add r1, #0xe8
	lsl r3, r2, #2
	ldr r2, _0226BDE4 ; =0x0226E364
	ldr r1, [r1, #0]
	ldr r2, [r2, r3]
	add r0, r7, #0
	blx r2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226BDE0: .word 0x00000000
_0226BDE4: .word 0x0226E364
	thumb_func_end ov70_0226BDA0

	thumb_func_start ov70_0226BDE8
ov70_0226BDE8: ; 0x0226BDE8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r1, [r5, #6]
	cmp r1, #0
	bne _0226BDF6
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226BDF6:
	ldrh r1, [r5, #2]
	lsl r2, r1, #2
	ldr r1, _0226BE38 ; =0x0226E31C
	ldr r1, [r1, r2]
	blx r1
	mov r6, #0
	str r0, [sp]
	ldrsh r0, [r5, r6]
	add r0, r0, #1
	strh r0, [r5]
	ldr r0, [sp]
	cmp r0, #1
	bne _0226BE34
	ldrh r0, [r5, #4]
	cmp r0, #0
	ble _0226BE30
	add r4, r5, #0
	add r7, r6, #0
_0226BE1A:
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	add r1, r7, #0
	bl sub_02017348
	ldrh r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0226BE1A
_0226BE30:
	mov r0, #0
	strb r0, [r5, #6]
_0226BE34:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226BE38: .word 0x0226E31C
	thumb_func_end ov70_0226BDE8

	thumb_func_start ov70_0226BE3C
ov70_0226BE3C: ; 0x0226BE3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0x10]
	add r0, r1, #0
	add r1, sp, #0x24
	bl ov70_0225D054
	mov r1, #2
	ldr r0, [sp, #0x24]
	lsl r1, r1, #0xe
	add r0, r0, r1
	str r0, [sp, #0x24]
	ldr r2, [sp, #0x28]
	lsl r0, r1, #1
	add r0, r2, r0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	mov r4, #0
	sub r0, r0, r1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r0, #0
	ble _0226BF50
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x1c]
	add r0, #8
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x18]
	add r0, #0xa8
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x14]
_0226BE80:
	cmp r4, #3
	bhi _0226BEFE
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226BE90: ; jump table
	.short _0226BE98 - _0226BE90 - 2 ; case 0
	.short _0226BEB0 - _0226BE90 - 2 ; case 1
	.short _0226BEC8 - _0226BE90 - 2 ; case 2
	.short _0226BEE4 - _0226BE90 - 2 ; case 3
_0226BE98:
	mov r0, #3
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0xe
	sub r7, r1, r0
	mov r0, #1
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0x10
	add r6, r1, r0
	ldr r5, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x20]
	b _0226BEFE
_0226BEB0:
	mov r0, #3
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0xe
	add r7, r1, r0
	mov r0, #1
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0x10
	add r6, r1, r0
	ldr r5, [sp, #0x2c]
	ldr r0, _0226BF54 ; =0x00007FFF
	str r0, [sp, #0x20]
	b _0226BEFE
_0226BEC8:
	mov r0, #2
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0xe
	sub r7, r1, r0
	ldr r1, [sp, #0x28]
	lsl r0, r0, #1
	add r6, r1, r0
	mov r0, #6
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #0xc
	sub r5, r1, r0
	ldr r0, _0226BF54 ; =0x00007FFF
	str r0, [sp, #0x20]
	b _0226BEFE
_0226BEE4:
	mov r0, #2
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0xe
	add r7, r1, r0
	ldr r1, [sp, #0x28]
	lsl r0, r0, #1
	add r6, r1, r0
	mov r0, #6
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #0xc
	sub r5, r1, r0
	mov r0, #0
	str r0, [sp, #0x20]
_0226BEFE:
	str r6, [sp]
	ldr r0, [sp, #0x2c]
	add r2, r7, #0
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl ov70_022692B4
	mov r3, #6
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	ldr r2, _0226BF58 ; =0x00000CCC
	lsl r3, r3, #0xc
	bl ov70_0226949C
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x24]
	add r0, #0xd8
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	bl sub_02017350
	ldr r0, [sp, #0x1c]
	add r4, r4, #1
	add r0, #0x28
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, #0xc
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r4, r0
	blt _0226BE80
_0226BF50:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226BF54: .word 0x00007FFF
_0226BF58: .word 0x00000CCC
	thumb_func_end ov70_0226BE3C

	thumb_func_start ov70_0226BF5C
ov70_0226BF5C: ; 0x0226BF5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	cmp r0, #0
	ble _0226BFDC
	ldr r0, [sp]
	ldr r6, [sp]
	str r0, [sp, #4]
	add r0, #0xa8
	add r6, #8
	ldr r5, [sp]
	str r0, [sp, #4]
	add r4, r0, #0
	add r7, r6, #0
_0226BF80:
	ldr r0, [sp, #4]
	bl ov70_022694D0
	ldr r2, [sp]
	mov r1, #0
	ldrsh r1, [r2, r1]
	add r0, r6, #0
	bl ov70_022692DC
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0x10
	bl ov70_02269508
	add r0, r7, #0
	add r1, sp, #0x14
	add r2, sp, #0x18
	add r3, sp, #0x1c
	bl ov70_02269488
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x18]
	add r1, r1, r0
	add r0, r5, #0
	str r1, [sp, #0x14]
	add r0, #0xd8
	ldr r0, [r0, #0]
	ldr r3, [sp, #0x1c]
	bl sub_02017350
	ldr r0, [sp, #4]
	add r6, #0x28
	add r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r4, #0xc
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r7, #0x28
	ldrh r1, [r0, #4]
	ldr r0, [sp, #0xc]
	add r5, r5, #4
	cmp r0, r1
	blt _0226BF80
_0226BFDC:
	ldr r0, [sp, #8]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226BF5C

	thumb_func_start ov70_0226BFE4
ov70_0226BFE4: ; 0x0226BFE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x10]
	add r0, r1, #0
	add r1, sp, #0x1c
	bl ov70_0225D054
	mov r0, #2
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	mov r4, #0
	add r1, r1, r0
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x24]
	sub r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r0, #0
	ble _0226C0C6
	ldr r1, [sp, #0x10]
	str r1, [sp, #0x18]
	add r1, #8
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, #0xa8
	str r1, [sp, #0x14]
_0226C022:
	cmp r4, #3
	bhi _0226C08A
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226C032: ; jump table
	.short _0226C03A - _0226C032 - 2 ; case 0
	.short _0226C04A - _0226C032 - 2 ; case 1
	.short _0226C05A - _0226C032 - 2 ; case 2
	.short _0226C07C - _0226C032 - 2 ; case 3
_0226C03A:
	mov r0, #1
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	sub r7, r1, r0
	ldr r1, [sp, #0x24]
	ldr r6, [sp, #0x20]
	add r5, r1, r0
	b _0226C08A
_0226C04A:
	mov r0, #1
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	add r7, r1, r0
	ldr r1, [sp, #0x24]
	ldr r6, [sp, #0x20]
	add r5, r1, r0
	b _0226C08A
_0226C05A:
	cmp r0, #3
	bne _0226C06C
	mov r0, #2
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x10
	ldr r7, [sp, #0x1c]
	ldr r6, [sp, #0x20]
	sub r5, r1, r0
	b _0226C08A
_0226C06C:
	mov r0, #1
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	sub r7, r1, r0
	ldr r1, [sp, #0x24]
	ldr r6, [sp, #0x20]
	sub r5, r1, r0
	b _0226C08A
_0226C07C:
	mov r0, #1
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	add r7, r1, r0
	ldr r1, [sp, #0x24]
	ldr r6, [sp, #0x20]
	sub r5, r1, r0
_0226C08A:
	str r6, [sp]
	ldr r0, [sp, #0x24]
	add r2, r7, #0
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #0x13
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	bl ov70_022692B4
	mov r3, #2
	ldr r0, [sp, #0x14]
	ldr r1, _0226C0D0 ; =0x00001555
	ldr r2, _0226C0D4 ; =0x0000071C
	lsl r3, r3, #0x10
	bl ov70_0226949C
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	add r0, #0x28
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r4, r0
	blt _0226C022
_0226C0C6:
	ldr r0, [sp, #0x10]
	bl ov70_0226C0D8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226C0D0: .word 0x00001555
_0226C0D4: .word 0x0000071C
	thumb_func_end ov70_0226BFE4

	thumb_func_start ov70_0226C0D8
ov70_0226C0D8: ; 0x0226C0D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	ldrh r0, [r5, #4]
	cmp r0, #0
	ble _0226C16A
	add r4, r5, #0
	add r0, r5, #0
	add r4, #0xa8
	str r0, [sp, #4]
	add r0, #8
	str r0, [sp, #4]
	str r4, [sp]
	add r6, r0, #0
	add r7, r5, #0
_0226C0FA:
	mov r0, #0
	ldrsh r0, [r5, r0]
	cmp r0, #0xe
	bne _0226C112
	mov r3, #3
	ldr r2, _0226C178 ; =0x00000E38
	add r0, r4, #0
	mov r1, #0
	lsl r3, r3, #0xe
	bl ov70_0226949C
	b _0226C118
_0226C112:
	add r0, r4, #0
	bl ov70_022694D0
_0226C118:
	mov r1, #0
	ldrsh r1, [r5, r1]
	ldr r0, [sp, #4]
	bl ov70_022692DC
	ldr r0, [sp]
	add r1, sp, #0xc
	bl ov70_02269508
	add r0, r6, #0
	add r1, sp, #0x10
	add r2, sp, #0x14
	add r3, sp, #0x18
	bl ov70_02269488
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x18]
	add r2, r1, r0
	add r0, r7, #0
	str r2, [sp, #0x14]
	add r0, #0xd8
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x10]
	bl sub_02017350
	ldr r0, [sp, #4]
	ldrh r1, [r5, #4]
	add r0, #0x28
	str r0, [sp, #4]
	ldr r0, [sp]
	add r4, #0xc
	add r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #8]
	add r6, #0x28
	add r0, r0, #1
	add r7, r7, #4
	str r0, [sp, #8]
	cmp r0, r1
	blt _0226C0FA
_0226C16A:
	mov r0, #0
	ldrsh r1, [r5, r0]
	cmp r1, #0x16
	blt _0226C174
	mov r0, #1
_0226C174:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226C178: .word 0x00000E38
	thumb_func_end ov70_0226C0D8

	thumb_func_start ov70_0226C17C
ov70_0226C17C: ; 0x0226C17C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, r1, #0
	add r1, sp, #0x10
	bl ov70_0225D054
	mov r1, #2
	ldr r0, [sp, #0x10]
	lsl r1, r1, #0xe
	add r0, r0, r1
	str r0, [sp, #0x10]
	mov r0, #5
	ldr r2, [sp, #0x14]
	lsl r0, r0, #0xe
	add r0, r2, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r4, #0
	sub r0, r0, r1
	str r0, [sp, #0x18]
	ldrh r0, [r5, #4]
	cmp r0, #0
	ble _0226C1D8
	mov r6, #5
	mov r7, #7
	lsl r6, r6, #0xc
	lsl r7, r7, #0xc
_0226C1B4:
	str r6, [sp]
	mov r0, #0xe
	mov r3, #0xd
	str r7, [sp, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x10
	lsl r3, r3, #0xc
	bl ov70_0226C2A4
	ldrh r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _0226C1B4
_0226C1D8:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226C17C

	thumb_func_start ov70_0226C1DC
ov70_0226C1DC: ; 0x0226C1DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldrh r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0226C27E
	add r4, r5, #0
	str r4, [sp, #0x10]
	add r4, #8
	str r4, [sp, #0x10]
	add r7, r5, #0
_0226C1F4:
	mov r1, #0
	ldrsh r1, [r5, r1]
	ldr r0, [sp, #0x10]
	bl ov70_022692DC
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, sp, #0x18
	add r2, sp, #0x1c
	add r3, sp, #0x20
	bl ov70_02269488
	add r0, r7, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	bl sub_02017350
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0226C26C
	ldrb r0, [r5, #7]
	add r2, sp, #0x18
	cmp r0, #0
	bne _0226C24A
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [sp]
	ldr r0, _0226C2A0 ; =0xFFFFD000
	ldr r3, _0226C2A0 ; =0xFFFFD000
	str r0, [sp, #4]
	mov r0, #3
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl ov70_0226C2A4
	b _0226C26C
_0226C24A:
	mov r0, #5
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0xa
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #4
	mov r3, #0xa
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	lsl r3, r3, #0xc
	bl ov70_0226C2A4
_0226C26C:
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r0, #0x28
	str r0, [sp, #0x10]
	ldrh r0, [r5, #4]
	add r4, #0x28
	add r7, r7, #4
	cmp r6, r0
	blt _0226C1F4
_0226C27E:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0226C29A
	ldrb r0, [r5, #7]
	add r0, r0, #1
	cmp r0, #3
	bge _0226C294
	strb r0, [r5, #7]
	mov r0, #0
	strh r0, [r5]
	b _0226C29A
_0226C294:
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0226C29A:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226C2A0: .word 0xFFFFD000
	thumb_func_end ov70_0226C1DC

	thumb_func_start ov70_0226C2A4
ov70_0226C2A4: ; 0x0226C2A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r5, #3
	bhi _0226C302
	add r3, r5, r5
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0226C2C0: ; jump table
	.short _0226C2C8 - _0226C2C0 - 2 ; case 0
	.short _0226C2D6 - _0226C2C0 - 2 ; case 1
	.short _0226C2E4 - _0226C2C0 - 2 ; case 2
	.short _0226C2F4 - _0226C2C0 - 2 ; case 3
_0226C2C8:
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	sub r2, r0, r6
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	ldr r1, [r4, #8]
	b _0226C302
_0226C2D6:
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, r0, r6
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	ldr r1, [r4, #8]
	b _0226C302
_0226C2E4:
	ldr r1, [r4, #0]
	ldr r0, [sp, #0x2c]
	sub r2, r1, r0
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x30]
	add r0, r1, r0
	ldr r1, [r4, #8]
	b _0226C302
_0226C2F4:
	ldr r1, [r4, #0]
	ldr r0, [sp, #0x2c]
	add r2, r1, r0
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x30]
	add r0, r1, r0
	ldr r1, [r4, #8]
_0226C302:
	str r0, [sp]
	ldr r0, [r4, #8]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x34]
	add r1, r7, #0
	str r0, [sp, #0xc]
	mov r0, #0x28
	add r1, #8
	mul r0, r5
	add r0, r1, r0
	ldr r1, [r4, #0]
	ldr r3, [r4, #4]
	bl ov70_022692B4
	lsl r0, r5, #2
	add r0, r7, r0
	add r0, #0xd8
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	bl sub_02017350
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226C2A4

	thumb_func_start ov70_0226C338
ov70_0226C338: ; 0x0226C338
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x60
	add r6, r2, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x60
	add r4, r0, #0
	bl sub_020D5124
	mov r1, #0xa
	ldr r2, _0226C394 ; =0x0226E678
	mul r1, r5
	add r0, r4, #0
	add r1, r2, r1
	bl ov70_0226C568
	ldr r2, _0226C398 ; =0x0226E670
	lsl r1, r6, #1
	add r0, r4, #0
	add r1, r2, r1
	bl ov70_0226C58C
	mov r1, #0
	add r2, r4, #0
	mov r0, #0x3c
_0226C36E:
	add r1, r1, #1
	str r0, [r2, #0x48]
	add r2, r2, #4
	cmp r1, #2
	blt _0226C36E
	mov r2, #0
	add r1, r4, #0
	mov r0, #0x3c
_0226C37E:
	add r2, r2, #1
	str r0, [r1, #0x50]
	add r1, r1, #4
	cmp r2, #4
	blt _0226C37E
	add r0, r4, #0
	bl ov70_0226C598
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0226C394: .word 0x0226E678
_0226C398: .word 0x0226E670
	thumb_func_end ov70_0226C338

	thumb_func_start ov70_0226C39C
ov70_0226C39C: ; 0x0226C39C
	ldr r3, _0226C3A0 ; =sub_020181C4
	bx r3
	; .align 2, 0
_0226C3A0: .word sub_020181C4
	thumb_func_end ov70_0226C39C

	thumb_func_start ov70_0226C3A4
ov70_0226C3A4: ; 0x0226C3A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r4, [sp, #4]
	mov r0, #0
	add r6, r4, #0
	add r5, r4, #0
	add r7, r0, #0
	add r6, #0x30
	add r5, #0x18
_0226C3B8:
	ldr r1, [r4, #0x48]
	add r1, r1, #1
	cmp r1, #0x3c
	bgt _0226C3D4
	str r1, [r4, #0x48]
	mov r0, #0x3c
	str r0, [sp]
	ldr r3, [r4, #0x48]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov70_0226C50C
	mov r0, #1
_0226C3D4:
	add r7, r7, #1
	add r4, r4, #4
	add r6, r6, #4
	add r5, r5, #4
	cmp r7, #2
	blt _0226C3B8
	ldr r4, [sp, #4]
	mov r1, #0
	add r7, r4, #0
	add r6, r4, #0
	add r5, r4, #0
	str r1, [sp, #8]
	add r7, #8
	add r6, #0x38
	add r5, #0x20
_0226C3F2:
	ldr r1, [r4, #0x50]
	add r1, r1, #1
	cmp r1, #0x3c
	bgt _0226C40E
	str r1, [r4, #0x50]
	mov r0, #0x3c
	str r0, [sp]
	ldr r3, [r4, #0x50]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov70_0226C50C
	mov r0, #1
_0226C40E:
	ldr r1, [sp, #8]
	add r4, r4, #4
	add r1, r1, #1
	add r7, r7, #4
	add r6, r6, #4
	add r5, r5, #4
	str r1, [sp, #8]
	cmp r1, #4
	blt _0226C3F2
	cmp r0, #0
	beq _0226C42A
	ldr r0, [sp, #4]
	bl ov70_0226C598
_0226C42A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226C3A4

	thumb_func_start ov70_0226C430
ov70_0226C430: ; 0x0226C430
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5]
	ldr r2, _0226C49C ; =0x0226E678
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #1]
	strb r0, [r5, #0x19]
	ldrb r0, [r5, #2]
	strb r0, [r5, #0x1a]
	ldrb r0, [r5, #3]
	strb r0, [r5, #0x1b]
	mov r0, #0
	str r0, [r5, #0x48]
	mov r0, #0xa
	mul r0, r1
	add r4, r2, r0
	add r0, r5, #0
	add r0, #0x30
	add r1, r4, #0
	bl ov70_0226C4E8
	add r6, r4, #2
	add r4, r5, #0
	mov r7, #0
	add r4, #0x38
_0226C462:
	ldrb r1, [r5, #8]
	add r0, r5, #0
	add r0, #0x20
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r5, #9]
	add r0, #0x21
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r5, #0xa]
	add r0, #0x22
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r5, #0xb]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0
	str r0, [r5, #0x50]
	add r0, r4, #0
	add r1, r6, #0
	bl ov70_0226C4E8
	add r7, r7, #1
	add r5, r5, #4
	add r6, r6, #2
	add r4, r4, #4
	cmp r7, #4
	blt _0226C462
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226C49C: .word 0x0226E678
	thumb_func_end ov70_0226C430

	thumb_func_start ov70_0226C4A0
ov70_0226C4A0: ; 0x0226C4A0
	ldrb r2, [r0, #4]
	ldr r3, _0226C4C0 ; =ov70_0226C4E8
	lsl r1, r1, #1
	strb r2, [r0, #0x1c]
	ldrb r2, [r0, #5]
	strb r2, [r0, #0x1d]
	ldrb r2, [r0, #6]
	strb r2, [r0, #0x1e]
	ldrb r2, [r0, #7]
	strb r2, [r0, #0x1f]
	mov r2, #0
	str r2, [r0, #0x4c]
	ldr r2, _0226C4C4 ; =0x0226E670
	add r0, #0x34
	add r1, r2, r1
	bx r3
	; .align 2, 0
_0226C4C0: .word ov70_0226C4E8
_0226C4C4: .word 0x0226E670
	thumb_func_end ov70_0226C4A0

	thumb_func_start ov70_0226C4C8
ov70_0226C4C8: ; 0x0226C4C8
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0226C4C8

	thumb_func_start ov70_0226C4CC
ov70_0226C4CC: ; 0x0226C4CC
	push {r3, r4}
	mov r3, #0
	mov r2, #2
	ldrsb r4, [r0, r3]
	ldrsb r2, [r0, r2]
	mov r3, #1
	ldrsb r0, [r0, r3]
	lsl r2, r2, #0xa
	lsl r0, r0, #5
	orr r0, r4
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4}
	bx lr
	thumb_func_end ov70_0226C4CC

	thumb_func_start ov70_0226C4E8
ov70_0226C4E8: ; 0x0226C4E8
	push {r3, r4}
	ldrh r3, [r1]
	mov r2, #0x1f
	and r3, r2
	strb r3, [r0]
	ldrh r4, [r1]
	lsl r3, r2, #5
	and r3, r4
	asr r3, r3, #5
	strb r3, [r0, #1]
	ldrh r3, [r1]
	lsl r1, r2, #0xa
	and r1, r3
	asr r1, r1, #0xa
	strb r1, [r0, #2]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0226C4E8

	thumb_func_start ov70_0226C50C
ov70_0226C50C: ; 0x0226C50C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #1
	add r4, r2, #0
	ldrsb r2, [r1, r0]
	ldrsb r0, [r5, r0]
	add r6, r3, #0
	sub r0, r2, r0
	str r0, [sp, #4]
	mov r0, #2
	ldrsb r2, [r1, r0]
	ldrsb r0, [r5, r0]
	sub r0, r2, r0
	str r0, [sp]
	mov r0, #0
	ldrsb r7, [r5, r0]
	ldrsb r0, [r1, r0]
	ldr r1, [sp, #0x20]
	sub r0, r0, r7
	mul r0, r6
	bl sub_020E1F6C
	add r0, r7, r0
	strb r0, [r4]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	mul r0, r6
	bl sub_020E1F6C
	mov r1, #1
	ldrsb r1, [r5, r1]
	add r0, r1, r0
	strb r0, [r4, #1]
	ldr r0, [sp]
	ldr r1, [sp, #0x20]
	mul r0, r6
	bl sub_020E1F6C
	mov r1, #2
	ldrsb r1, [r5, r1]
	add r0, r1, r0
	strb r0, [r4, #2]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226C50C

	thumb_func_start ov70_0226C568
ov70_0226C568: ; 0x0226C568
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov70_0226C4E8
	mov r6, #0
	add r4, r4, #2
	add r5, #8
_0226C578:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0226C4E8
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r6, #4
	blt _0226C578
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0226C568

	thumb_func_start ov70_0226C58C
ov70_0226C58C: ; 0x0226C58C
	ldr r3, _0226C594 ; =ov70_0226C4E8
	add r0, r0, #4
	bx r3
	nop
_0226C594: .word ov70_0226C4E8
	thumb_func_end ov70_0226C58C

	thumb_func_start ov70_0226C598
ov70_0226C598: ; 0x0226C598
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, sp, #4
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	add r7, #2
	add r6, sp, #4
_0226C5A8:
	add r0, r5, #0
	add r1, r7, #0
	bl ov70_0226C4CC
	ldrh r1, [r6, #2]
	add r0, r4, #0
	bl sub_020AF558
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0226C5A8
	ldr r0, [sp]
	add r1, sp, #4
	add r0, #8
	add r1, #2
	bl ov70_0226C4CC
	ldr r0, [sp]
	add r1, sp, #4
	add r0, #0xc
	bl ov70_0226C4CC
	add r1, sp, #4
	ldrh r0, [r1, #2]
	ldrh r1, [r1]
	mov r2, #0
	bl sub_020AF56C
	ldr r0, [sp]
	add r1, sp, #4
	add r0, #0x10
	add r1, #2
	bl ov70_0226C4CC
	ldr r0, [sp]
	add r1, sp, #4
	add r0, #0x14
	str r0, [sp]
	bl ov70_0226C4CC
	add r1, sp, #4
	ldrh r0, [r1, #2]
	ldrh r1, [r1]
	mov r2, #0
	bl sub_020AF590
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226C598

	thumb_func_start ov70_0226C60C
ov70_0226C60C: ; 0x0226C60C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0x1c
	add r6, r0, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x1c
	mov r0, #0
_0226C622:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0226C622
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov70_0225DEE8
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov70_0225DEF8
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov70_0225DEF0
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	bl FUN_0222E1B8
	bl ov70_0226C81C
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl FUN_0222E1D0
	bl ov70_0226C848
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	bl FUN_0222E1E8
	bl ov70_0226C87C
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	bl ov70_0226C338
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	bl ov70_0226CE54
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	add r2, r6, #0
	bl ov70_0226C8B4
	str r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	add r1, r7, #0
	bl ov70_0225CAEC
	ldr r0, [r4, #4]
	bl FUN_0222E158
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl FUN_0222E120
	ldr r0, [r4, #4]
	bl FUN_0222E170
	str r0, [sp]
	ldr r0, [r4, #4]
	bl FUN_0222E19C
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl FUN_0222E12C
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl FUN_0222E190
	cmp r5, #2
	bne _0226C6C8
	ldr r0, [r4, #8]
	bl ov70_0226260C
_0226C6C8:
	cmp r5, #1
	beq _0226C6DC
	cmp r5, #0
	bne _0226C6DC
	cmp r7, #1
	bne _0226C6DC
	ldr r0, [r4, #8]
	mov r1, #3
	bl ov70_02262658
_0226C6DC:
	ldr r0, [sp]
	cmp r0, #1
	bne _0226C6E8
	ldr r0, [r4, #8]
	bl ov70_0226246C
_0226C6E8:
	cmp r6, #1
	bne _0226C6F2
	add r0, r4, #0
	bl ov70_0226C8A8
_0226C6F2:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226C60C

	thumb_func_start ov70_0226C6F8
ov70_0226C6F8: ; 0x0226C6F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ov70_0226C914
	ldr r0, [r4, #0x14]
	bl ov70_0226CF38
	ldr r0, [r4, #0x10]
	bl ov70_0226C39C
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0226C6F8

	thumb_func_start ov70_0226C718
ov70_0226C718: ; 0x0226C718
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r1, #1
	bl FUN_0222E084
	cmp r0, #0
	beq _0226C744
	ldr r0, [r5, #4]
	bl FUN_0222E1B8
	bl ov70_0226C81C
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl ov70_0226C430
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl ov70_0225CB08
_0226C744:
	ldr r0, [r5, #4]
	mov r1, #2
	bl FUN_0222E084
	cmp r0, #0
	beq _0226C762
	ldr r0, [r5, #4]
	bl FUN_0222E1D0
	bl ov70_0226C848
	add r1, r0, #0
	ldr r0, [r5, #0x10]
	bl ov70_0226C4A0
_0226C762:
	ldr r0, [r5, #4]
	mov r1, #3
	bl FUN_0222E084
	cmp r0, #0
	beq _0226C780
	ldr r0, [r5, #4]
	bl FUN_0222E1E8
	bl ov70_0226C87C
	add r1, r0, #0
	ldr r0, [r5, #0x10]
	bl ov70_0226C4C8
_0226C780:
	ldr r0, [r5, #4]
	bl FUN_0222E19C
	cmp r0, #1
	bne _0226C7A6
	ldr r0, [r5, #4]
	bl FUN_0222E158
	cmp r0, #0
	bne _0226C7A6
	ldr r0, [r5, #8]
	bl ov70_0226271C
	cmp r0, #0
	bne _0226C7A6
	ldr r0, [r5, #8]
	mov r1, #1
	bl ov70_02262658
_0226C7A6:
	ldr r0, [r5, #4]
	mov r1, #5
	bl FUN_0222E084
	cmp r0, #0
	beq _0226C7CA
	ldr r0, [r5, #4]
	bl FUN_0222E158
	cmp r0, #1
	bne _0226C7CA
	ldr r0, [r5, #8]
	bl ov70_0226260C
	ldr r0, [r5, #8]
	mov r1, #2
	bl ov70_02262658
_0226C7CA:
	ldr r0, [r5, #4]
	mov r1, #6
	bl FUN_0222E084
	cmp r0, #0
	beq _0226C7E6
	ldr r0, [r5, #4]
	bl FUN_0222E170
	cmp r0, #1
	bne _0226C7E6
	ldr r0, [r5, #8]
	bl ov70_0226246C
_0226C7E6:
	ldr r0, [r5, #4]
	bl FUN_0222E12C
	cmp r0, #1
	bne _0226C7FC
	ldr r0, [r5, #8]
	bl ov70_02262478
	add r0, r5, #0
	bl ov70_0226C8A8
_0226C7FC:
	ldr r0, [r5, #0x10]
	bl ov70_0226C3A4
	ldr r0, [r5, #0x14]
	bl ov70_0226CF40
	ldr r0, [r5, #0x18]
	bl ov70_0226C924
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0226C718

	thumb_func_start ov70_0226C810
ov70_0226C810: ; 0x0226C810
	ldr r3, _0226C818 ; =ov70_0226CFFC
	ldr r0, [r0, #0x14]
	bx r3
	nop
_0226C818: .word ov70_0226CFFC
	thumb_func_end ov70_0226C810

	thumb_func_start ov70_0226C81C
ov70_0226C81C: ; 0x0226C81C
	push {r3, lr}
	cmp r0, #6
	bhi _0226C840
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226C82E: ; jump table
	.short _0226C840 - _0226C82E - 2 ; case 0
	.short _0226C83C - _0226C82E - 2 ; case 1
	.short _0226C83C - _0226C82E - 2 ; case 2
	.short _0226C83C - _0226C82E - 2 ; case 3
	.short _0226C83C - _0226C82E - 2 ; case 4
	.short _0226C83C - _0226C82E - 2 ; case 5
	.short _0226C83C - _0226C82E - 2 ; case 6
_0226C83C:
	sub r0, r0, #1
	pop {r3, pc}
_0226C840:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov70_0226C81C

	thumb_func_start ov70_0226C848
ov70_0226C848: ; 0x0226C848
	push {r3, lr}
	cmp r0, #0xa
	bhi _0226C874
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226C85A: ; jump table
	.short _0226C874 - _0226C85A - 2 ; case 0
	.short _0226C874 - _0226C85A - 2 ; case 1
	.short _0226C874 - _0226C85A - 2 ; case 2
	.short _0226C874 - _0226C85A - 2 ; case 3
	.short _0226C874 - _0226C85A - 2 ; case 4
	.short _0226C874 - _0226C85A - 2 ; case 5
	.short _0226C874 - _0226C85A - 2 ; case 6
	.short _0226C870 - _0226C85A - 2 ; case 7
	.short _0226C870 - _0226C85A - 2 ; case 8
	.short _0226C870 - _0226C85A - 2 ; case 9
	.short _0226C870 - _0226C85A - 2 ; case 10
_0226C870:
	sub r0, r0, #7
	pop {r3, pc}
_0226C874:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov70_0226C848

	thumb_func_start ov70_0226C87C
ov70_0226C87C: ; 0x0226C87C
	push {r3, lr}
	add r1, r0, #0
	sub r1, #0xb
	cmp r1, #3
	bhi _0226C89E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226C892: ; jump table
	.short _0226C89A - _0226C892 - 2 ; case 0
	.short _0226C89A - _0226C892 - 2 ; case 1
	.short _0226C89A - _0226C892 - 2 ; case 2
	.short _0226C89A - _0226C892 - 2 ; case 3
_0226C89A:
	sub r0, #0xb
	pop {r3, pc}
_0226C89E:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_0226C87C

	thumb_func_start ov70_0226C8A8
ov70_0226C8A8: ; 0x0226C8A8
	ldr r3, _0226C8B0 ; =sub_020AF558
	mov r0, #2
	mov r1, #0
	bx r3
	; .align 2, 0
_0226C8B0: .word sub_020AF558
	thumb_func_end ov70_0226C8A8

	thumb_func_start ov70_0226C8B4
ov70_0226C8B4: ; 0x0226C8B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_0226C8CA:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0226C8CA
	str r5, [r4, #0]
	add r0, r5, #0
	str r6, [r4, #4]
	bl FUN_0222F104
	add r7, r0, #0
	add r0, r5, #0
	bl FUN_0222E158
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _0226C90E
	cmp r7, #0
	beq _0226C90E
	add r0, r6, #0
	mov r1, #1
	bl ov70_0226251C
	add r0, r4, #0
	bl ov70_0226CC3C
	add r0, r5, #0
	bl FUN_0222F114
	add r2, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov70_0226CB1C
_0226C90E:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226C8B4

	thumb_func_start ov70_0226C914
ov70_0226C914: ; 0x0226C914
	push {r4, lr}
	add r4, r0, #0
	bl ov70_0226CC58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov70_0226C914

	thumb_func_start ov70_0226C924
ov70_0226C924: ; 0x0226C924
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl FUN_0222F104
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl FUN_0222F114
	add r7, r0, #0
	ldr r0, [r5, #0]
	bl FUN_0222E158
	add r6, r0, #0
	ldrh r0, [r5, #0xa]
	cmp r0, r6
	beq _0226C964
	strh r6, [r5, #0xa]
	cmp r6, #1
	bne _0226C964
	ldr r0, [r5, #4]
	mov r1, #1
	bl ov70_0226251C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov70_0226CB1C
	add r0, r5, #0
	bl ov70_0226CC3C
_0226C964:
	cmp r6, #0
	beq _0226C982
	ldrb r0, [r5, #8]
	cmp r0, r4
	beq _0226C978
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov70_0226CB1C
_0226C978:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov70_0226C984
_0226C982:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226C924

	thumb_func_start ov70_0226C984
ov70_0226C984: ; 0x0226C984
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #6
	blo _0226C994
	bl sub_02022974
_0226C994:
	cmp r4, #6
	bhs _0226C9A4
	ldr r2, _0226C9A8 ; =0x0226E6E4
	lsl r3, r4, #2
	ldr r2, [r2, r3]
	add r0, r5, #0
	add r1, r6, #0
	blx r2
_0226C9A4:
	pop {r4, r5, r6, pc}
	nop
_0226C9A8: .word 0x0226E6E4
	thumb_func_end ov70_0226C984

	thumb_func_start ov70_0226C9AC
ov70_0226C9AC: ; 0x0226C9AC
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0226C9AC

	thumb_func_start ov70_0226C9B0
ov70_0226C9B0: ; 0x0226C9B0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0226C9B0

	thumb_func_start ov70_0226C9B4
ov70_0226C9B4: ; 0x0226C9B4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r1, #0
	mov r1, #0xe
	bl sub_020E2178
	cmp r1, #0
	bne _0226CA2E
	ldr r5, _0226CA30 ; =0x0226E74C
	mov r4, #0
_0226C9C8:
	ldr r0, [r7, #0xc]
	add r1, r4, #0
	lsl r2, r0, #3
	ldr r0, _0226CA34 ; =0x0226E72C
	mov r6, #0
	add r3, r0, r2
	mov r0, #3
	and r1, r0
	ldr r0, _0226CA34 ; =0x0226E72C
	ldr r0, [r0, r2]
	cmp r1, r0
	bne _0226C9E8
	mov r0, #1
	str r0, [sp]
	add r6, r0, #0
	b _0226C9F4
_0226C9E8:
	ldr r0, [r3, #4]
	cmp r1, r0
	bne _0226C9F4
	add r0, r6, #0
	str r0, [sp]
	mov r6, #1
_0226C9F4:
	cmp r6, #1
	bne _0226CA1A
	cmp r4, #0x11
	bhs _0226CA16
	ldrb r1, [r5]
	mov r3, #1
	ldr r0, [r7, #4]
	ldr r2, [sp]
	lsl r3, r3, #0xc
	bl ov70_02262754
	add r6, r0, #0
	cmp r6, #1
	beq _0226CA1C
	bl sub_02022974
	b _0226CA1C
_0226CA16:
	mov r6, #0
	b _0226CA1C
_0226CA1A:
	mov r6, #1
_0226CA1C:
	add r5, r5, #1
	add r4, r4, #1
	cmp r6, #1
	beq _0226C9C8
	ldr r0, [r7, #0xc]
	add r1, r0, #1
	mov r0, #3
	and r0, r1
	str r0, [r7, #0xc]
_0226CA2E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226CA30: .word 0x0226E74C
_0226CA34: .word 0x0226E72C
	thumb_func_end ov70_0226C9B4

	thumb_func_start ov70_0226CA38
ov70_0226CA38: ; 0x0226CA38
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #6
	bl sub_020E2178
	cmp r1, #0
	bne _0226CAC8
	ldr r0, [r5, #0xc]
	lsl r1, r0, #1
	ldr r0, _0226CACC ; =0x0226E6D4
	ldrb r0, [r0, r1]
	str r0, [sp]
	ldr r0, _0226CAD0 ; =0x0226E6D5
	ldrb r0, [r0, r1]
	add r1, sp, #4
	bl ov70_0226CBB4
	ldr r0, [sp, #8]
	mov r4, #0
	cmp r0, #0
	bls _0226CA8A
	mov r7, #1
	add r6, r4, #0
	lsl r7, r7, #0xc
_0226CA6C:
	ldr r1, [sp, #4]
	ldr r0, [r5, #4]
	ldrb r1, [r1, r4]
	add r2, r6, #0
	add r3, r7, #0
	bl ov70_02262754
	cmp r0, #1
	beq _0226CA82
	bl sub_02022974
_0226CA82:
	ldr r0, [sp, #8]
	add r4, r4, #1
	cmp r4, r0
	blo _0226CA6C
_0226CA8A:
	ldr r0, [sp]
	add r1, sp, #4
	bl ov70_0226CBB4
	ldr r0, [sp, #8]
	mov r4, #0
	cmp r0, #0
	bls _0226CABC
	mov r6, #1
	lsl r7, r6, #0xc
_0226CA9E:
	ldr r1, [sp, #4]
	ldr r0, [r5, #4]
	ldrb r1, [r1, r4]
	add r2, r6, #0
	add r3, r7, #0
	bl ov70_02262754
	cmp r0, #1
	beq _0226CAB4
	bl sub_02022974
_0226CAB4:
	ldr r0, [sp, #8]
	add r4, r4, #1
	cmp r4, r0
	blo _0226CA9E
_0226CABC:
	ldr r0, [r5, #0xc]
	mov r1, #7
	add r0, r0, #1
	bl sub_020E2178
	str r1, [r5, #0xc]
_0226CAC8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226CACC: .word 0x0226E6D4
_0226CAD0: .word 0x0226E6D5
	thumb_func_end ov70_0226CA38

	thumb_func_start ov70_0226CAD4
ov70_0226CAD4: ; 0x0226CAD4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #3
	bhs _0226CB0C
	lsl r2, r0, #3
	ldr r0, _0226CB10 ; =0x0226E6FC
	ldr r0, [r0, r2]
	cmp r0, r1
	bhs _0226CB0C
	ldr r1, _0226CB14 ; =0x0226E700
	ldr r0, [r4, #4]
	ldr r1, [r1, r2]
	bl ov70_0226278C
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #4]
	lsl r2, r1, #3
	ldr r1, _0226CB14 ; =0x0226E700
	ldr r1, [r1, r2]
	bl ov70_022625D8
	ldr r0, _0226CB18 ; =0x0000059D
	bl sub_02005748
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_0226CB0C:
	pop {r4, pc}
	nop
_0226CB10: .word 0x0226E6FC
_0226CB14: .word 0x0226E700
_0226CB18: .word 0x0000059D
	thumb_func_end ov70_0226CAD4

	thumb_func_start ov70_0226CB1C
ov70_0226CB1C: ; 0x0226CB1C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #6
	blo _0226CB2C
	bl sub_02022974
_0226CB2C:
	cmp r4, #6
	bhs _0226CB4C
	add r1, r5, #0
	mov r0, #0
	add r1, #0xc
	strb r0, [r5, #0xc]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	ldr r2, _0226CB50 ; =0x0226E714
	lsl r3, r4, #2
	ldr r2, [r2, r3]
	add r0, r5, #0
	add r1, r6, #0
	blx r2
	strb r4, [r5, #8]
_0226CB4C:
	pop {r4, r5, r6, pc}
	nop
_0226CB50: .word 0x0226E714
	thumb_func_end ov70_0226CB1C

	thumb_func_start ov70_0226CB54
ov70_0226CB54: ; 0x0226CB54
	ldr r3, _0226CB60 ; =ov70_02262724
	mov r2, #1
	ldr r0, [r0, #4]
	mov r1, #0
	lsl r2, r2, #0xc
	bx r3
	; .align 2, 0
_0226CB60: .word ov70_02262724
	thumb_func_end ov70_0226CB54

	thumb_func_start ov70_0226CB64
ov70_0226CB64: ; 0x0226CB64
	ldr r3, _0226CB70 ; =ov70_02262724
	mov r1, #1
	ldr r0, [r0, #4]
	lsl r2, r1, #0xc
	bx r3
	nop
_0226CB70: .word ov70_02262724
	thumb_func_end ov70_0226CB64

	thumb_func_start ov70_0226CB74
ov70_0226CB74: ; 0x0226CB74
	ldr r3, _0226CB80 ; =ov70_02262724
	mov r2, #1
	ldr r0, [r0, #4]
	mov r1, #0
	lsl r2, r2, #0xc
	bx r3
	; .align 2, 0
_0226CB80: .word ov70_02262724
	thumb_func_end ov70_0226CB74

	thumb_func_start ov70_0226CB84
ov70_0226CB84: ; 0x0226CB84
	ldr r3, _0226CB90 ; =ov70_02262724
	mov r2, #1
	ldr r0, [r0, #4]
	mov r1, #0
	lsl r2, r2, #0xc
	bx r3
	; .align 2, 0
_0226CB90: .word ov70_02262724
	thumb_func_end ov70_0226CB84

	thumb_func_start ov70_0226CB94
ov70_0226CB94: ; 0x0226CB94
	push {r4, lr}
	add r4, r0, #0
	bl ov70_0226CC58
	mov r2, #1
	ldr r0, [r4, #4]
	mov r1, #0
	lsl r2, r2, #0xc
	bl ov70_02262724
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov70_0226251C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0226CB94

	thumb_func_start ov70_0226CBB4
ov70_0226CBB4: ; 0x0226CBB4
	push {r3, lr}
	cmp r0, #6
	bhi _0226CC1A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226CBC6: ; jump table
	.short _0226CBD4 - _0226CBC6 - 2 ; case 0
	.short _0226CBDE - _0226CBC6 - 2 ; case 1
	.short _0226CBE8 - _0226CBC6 - 2 ; case 2
	.short _0226CBF2 - _0226CBC6 - 2 ; case 3
	.short _0226CBFC - _0226CBC6 - 2 ; case 4
	.short _0226CC06 - _0226CBC6 - 2 ; case 5
	.short _0226CC10 - _0226CBC6 - 2 ; case 6
_0226CBD4:
	mov r0, #6
	str r0, [r1, #4]
	ldr r0, _0226CC20 ; =0x0226E6CC
	str r0, [r1, #0]
	pop {r3, pc}
_0226CBDE:
	mov r0, #2
	str r0, [r1, #4]
	ldr r0, _0226CC24 ; =0x0226E6C4
	str r0, [r1, #0]
	pop {r3, pc}
_0226CBE8:
	mov r0, #2
	str r0, [r1, #4]
	ldr r0, _0226CC28 ; =0x0226E6BC
	str r0, [r1, #0]
	pop {r3, pc}
_0226CBF2:
	mov r0, #1
	str r0, [r1, #4]
	ldr r0, _0226CC2C ; =0x0226E6B4
	str r0, [r1, #0]
	pop {r3, pc}
_0226CBFC:
	mov r0, #1
	str r0, [r1, #4]
	ldr r0, _0226CC30 ; =0x0226E6B8
	str r0, [r1, #0]
	pop {r3, pc}
_0226CC06:
	mov r0, #2
	str r0, [r1, #4]
	ldr r0, _0226CC34 ; =0x0226E6C0
	str r0, [r1, #0]
	pop {r3, pc}
_0226CC10:
	mov r0, #3
	str r0, [r1, #4]
	ldr r0, _0226CC38 ; =0x0226E6C8
	str r0, [r1, #0]
	pop {r3, pc}
_0226CC1A:
	bl sub_02022974
	pop {r3, pc}
	; .align 2, 0
_0226CC20: .word 0x0226E6CC
_0226CC24: .word 0x0226E6C4
_0226CC28: .word 0x0226E6BC
_0226CC2C: .word 0x0226E6B4
_0226CC30: .word 0x0226E6B8
_0226CC34: .word 0x0226E6C0
_0226CC38: .word 0x0226E6C8
	thumb_func_end ov70_0226CBB4

	thumb_func_start ov70_0226CC3C
ov70_0226CC3C: ; 0x0226CC3C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0226CC50
	ldr r0, _0226CC54 ; =0x0000059E
	bl sub_02005748
	mov r0, #1
	strb r0, [r4, #9]
_0226CC50:
	pop {r4, pc}
	nop
_0226CC54: .word 0x0000059E
	thumb_func_end ov70_0226CC3C

	thumb_func_start ov70_0226CC58
ov70_0226CC58: ; 0x0226CC58
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0226CC6E
	ldr r0, _0226CC70 ; =0x0000059E
	mov r1, #0
	bl sub_020057A4
	mov r0, #0
	strb r0, [r4, #9]
_0226CC6E:
	pop {r4, pc}
	; .align 2, 0
_0226CC70: .word 0x0000059E
	thumb_func_end ov70_0226CC58

	thumb_func_start ov70_0226CC74
ov70_0226CC74: ; 0x0226CC74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	bl ov70_02262E80
	add r6, r0, #0
	add r0, r4, #0
	bl ov70_0225DEE8
	str r0, [sp]
	add r0, r4, #0
	bl ov70_0225DEF0
	str r0, [sp, #4]
	bl ov70_0225CCB0
	add r7, r0, #0
	ldr r0, [sp, #4]
	bl ov70_0225CCAC
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #5
	bls _0226CCAC
	b _0226CE46
_0226CCAC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226CCB8: ; jump table
	.short _0226CCC4 - _0226CCB8 - 2 ; case 0
	.short _0226CD9A - _0226CCB8 - 2 ; case 1
	.short _0226CDAA - _0226CCB8 - 2 ; case 2
	.short _0226CDDC - _0226CCB8 - 2 ; case 3
	.short _0226CDFC - _0226CCB8 - 2 ; case 4
	.short _0226CE32 - _0226CCB8 - 2 ; case 5
_0226CCC4:
	add r0, r5, #0
	mov r1, #4
	bl ov70_02262E3C
	add r6, r0, #0
	ldr r0, _0226CE50 ; =0x000005DC
	bl sub_02005748
	ldr r0, [sp, #8]
	mov r1, #6
	bl ov70_0225CD60
	bl FUN_0222C0AC
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	add r1, r7, #0
	mov r2, #0
	bl ov70_0225CDEC
	add r0, r7, #0
	mov r1, #0
	bl ov70_0225D030
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl ov70_0225D060
	ldr r0, [sp]
	bl FUN_0222E12C
	cmp r0, #0
	beq _0226CD26
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	bl ov70_0225E20C
	add r1, r0, #0
	mov r0, #4
	str r0, [r6, #0]
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _0226CE4A
_0226CD26:
	ldr r0, [sp]
	bl FUN_0222E19C
	cmp r0, #1
	bne _0226CD50
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x58
	bl ov70_0225E20C
	add r1, r0, #0
	mov r0, #4
	str r0, [r6, #0]
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _0226CE4A
_0226CD50:
	ldr r0, [sp]
	bl FUN_0222E0DC
	cmp r0, #1
	bne _0226CD7A
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x57
	bl ov70_0225E20C
	add r1, r0, #0
	mov r0, #4
	str r0, [r6, #0]
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _0226CE4A
_0226CD7A:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x51
	bl ov70_0225E20C
	add r1, r0, #0
	mov r0, #1
	str r0, [r6, #0]
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _0226CE4A
_0226CD9A:
	add r0, r4, #0
	bl ov70_0225E164
	add r0, r5, #0
	mov r1, #2
	bl ov70_02262E88
	b _0226CE4A
_0226CDAA:
	add r0, r4, #0
	bl ov70_0225E1C4
	cmp r0, #0
	beq _0226CDBC
	cmp r0, #1
	beq _0226CDCC
	cmp r0, #2
	b _0226CE4A
_0226CDBC:
	add r0, r5, #0
	mov r1, #3
	bl ov70_02262E88
	add r0, r4, #0
	bl ov70_0225E1F8
	b _0226CE4A
_0226CDCC:
	add r0, r5, #0
	mov r1, #4
	bl ov70_02262E88
	add r0, r4, #0
	bl ov70_0225E1F8
	b _0226CE4A
_0226CDDC:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x55
	bl ov70_0225E20C
	add r1, r0, #0
	mov r0, #4
	str r0, [r6, #0]
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _0226CE4A
_0226CDFC:
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r4, #0
	bl ov70_0225E1F8
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r5, #0
	bl ov70_02262E64
	add r0, r7, #0
	mov r1, #1
	bl ov70_0225D030
	ldr r0, [sp, #4]
	add r1, r7, #0
	mov r2, #0
	mov r3, #1
	bl ov70_0225CDAC
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226CE32:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _0226CE4A
	ldr r1, [r6, #0]
	add r0, r5, #0
	bl ov70_02262E88
	b _0226CE4A
_0226CE46:
	bl sub_02022974
_0226CE4A:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226CE50: .word 0x000005DC
	thumb_func_end ov70_0226CC74

	thumb_func_start ov70_0226CE54
ov70_0226CE54: ; 0x0226CE54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0xc4
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xc4
	bl sub_020D5124
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov70_0225DEE8
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov70_0225DEF8
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov70_0225DF00
	str r0, [r4, #0xc]
	bl ov70_0225C8A8
	add r1, r0, #6
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xbc
	ldr r1, [r0, #0]
	mov r0, #7
	mvn r0, r0
	sub r1, r0, r1
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	ldr r6, _0226CF34 ; =0x0226E760
	lsl r1, r0, #0x10
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	mov r7, #0
	lsl r1, r0, #0x10
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0, #0]
	add r5, r4, #0
_0226CEC6:
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r6]
	add r2, sp, #4
	ldr r0, [r4, #0xc]
	add r2, #2
	add r3, sp, #4
	bl ov70_0225C8D8
	add r0, sp, #4
	ldrh r0, [r0, #2]
	add r7, r7, #1
	add r6, r6, #1
	lsl r1, r0, #4
	add r0, r5, #0
	add r0, #0xaa
	strh r1, [r0]
	add r0, sp, #4
	ldrh r0, [r0]
	lsl r1, r0, #4
	add r0, r5, #0
	add r0, #0xac
	add r5, r5, #4
	strh r1, [r0]
	cmp r7, #3
	blt _0226CEC6
	mov r5, #0
_0226CEFC:
	add r2, r4, #0
	add r2, #0xbc
	ldr r0, [r4, #8]
	ldr r2, [r2, #0]
	add r1, r5, #0
	bl ov70_022622B0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl FUN_0222EB7C
	cmp r0, #1
	bne _0226CF26
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_0226D020
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_0226D46C
_0226CF26:
	add r5, r5, #1
	cmp r5, #9
	blt _0226CEFC
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226CF34: .word 0x0226E760
	thumb_func_end ov70_0226CE54

	thumb_func_start ov70_0226CF38
ov70_0226CF38: ; 0x0226CF38
	ldr r3, _0226CF3C ; =sub_020181C4
	bx r3
	; .align 2, 0
_0226CF3C: .word sub_020181C4
	thumb_func_end ov70_0226CF38

	thumb_func_start ov70_0226CF40
ov70_0226CF40: ; 0x0226CF40
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl FUN_0222E338
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl FUN_0222EBA4
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #8]
	cmp r0, r1
	bne _0226CF62
	mov r6, #0
	b _0226CF6C
_0226CF62:
	add r1, sp, #8
	add r2, sp, #4
	bl FUN_0222EC04
	mov r6, #1
_0226CF6C:
	mov r4, #0
_0226CF6E:
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl FUN_0222EB7C
	cmp r0, #1
	ldr r0, [r5, #8]
	bne _0226CFB6
	add r1, r4, #0
	mov r2, #1
	bl ov70_022623C4
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0226D020
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0226D46C
	cmp r6, #0
	beq _0226CFA4
	ldr r0, [sp, #8]
	cmp r0, r4
	bne _0226CFA2
	mov r7, #1
	b _0226CFA4
_0226CFA2:
	mov r7, #0
_0226CFA4:
	ldr r0, [sp, #4]
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov70_0226D0E8
	b _0226CFBE
_0226CFB6:
	add r1, r4, #0
	mov r2, #0
	bl ov70_022623C4
_0226CFBE:
	add r4, r4, #1
	cmp r4, #9
	blt _0226CF6E
	add r7, r5, #0
	mov r6, #0
	add r4, r5, #0
	add r7, #0x2c
_0226CFCC:
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl ov70_0226241C
	strb r0, [r4, #0x10]
	ldr r1, [r5, #8]
	add r0, r7, #0
	add r2, r6, #0
	bl ov70_0226D2D8
	strb r0, [r4, #0x11]
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl ov70_02262444
	strb r0, [r4, #0x12]
	add r6, r6, #1
	add r4, r4, #3
	add r7, #0xe
	cmp r6, #9
	blt _0226CFCC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226CF40

	thumb_func_start ov70_0226CFFC
ov70_0226CFFC: ; 0x0226CFFC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	cmp r5, #9
	blo _0226D00C
	bl sub_02022974
_0226D00C:
	cmp r4, #3
	blt _0226D014
	bl sub_02022974
_0226D014:
	lsl r0, r5, #1
	add r0, r5, r0
	add r0, r6, r0
	add r0, r0, r4
	ldrb r0, [r0, #0x10]
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0226CFFC

	thumb_func_start ov70_0226D020
ov70_0226D020: ; 0x0226D020
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	str r1, [sp]
	bl FUN_0222EB8C
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl FUN_0222EB9C
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	mov r1, #2
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	bl sub_020BCFD0
	add r7, r0, #0
	cmp r6, #0
	ble _0226D05C
	lsl r0, r6, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226D06A
_0226D05C:
	lsl r0, r6, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226D06A:
	add r6, r0, #0
	cmp r4, #0
	ble _0226D082
	lsl r0, r4, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226D090
_0226D082:
	lsl r0, r4, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226D090:
	bl sub_020E1740
	asr r1, r0, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r4, r2, #0xc
	orr r4, r0
	add r0, r6, #0
	bl sub_020E1740
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020BCFD0
	asr r2, r0, #0x1f
	lsl r3, r2, #0xd
	lsr r1, r0, #0x13
	lsl r2, r0, #0xd
	mov r0, #2
	orr r3, r1
	mov r1, #0
	lsl r0, r0, #0xa
	add r2, r2, r0
	adc r3, r1
	lsl r0, r3, #0x14
	lsr r3, r2, #0xc
	orr r3, r0
	add r0, r5, #0
	add r0, #0xbc
	ldr r2, [r0, #0]
	ldr r0, [r5, #8]
	ldr r1, [sp]
	add r2, r3, r2
	bl ov70_022622B0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226D020

	thumb_func_start ov70_0226D0E8
ov70_0226D0E8: ; 0x0226D0E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	ldr r0, [sp, #0x30]
	str r1, [sp]
	str r0, [sp, #0x30]
	ldr r0, [r7, #4]
	str r2, [sp, #4]
	add r5, r3, #0
	bl FUN_0222EB38
	add r6, r0, #0
	ldr r0, [r7, #4]
	bl FUN_0222EB28
	ldr r0, [sp]
	mov r4, #0
	lsl r1, r0, #1
	add r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp]
	mov r1, #3
	bl sub_020E2178
	str r1, [sp, #8]
	mov r0, #0xc
	ldr r1, _0226D240 ; =0x0226E774
	mul r0, r6
	add r0, r1, r0
	str r0, [sp, #0xc]
	add r0, r7, #0
	str r0, [sp, #0x14]
	add r0, #0x2c
	str r0, [sp, #0x14]
	ldr r0, [sp]
	mov r1, #0xe
	mul r1, r0
	str r1, [sp, #0x18]
_0226D134:
	ldr r1, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r4, r1
	bl FUN_0222EBE4
	mov r6, #0
	cmp r5, #1
	bne _0226D14C
	ldr r1, [sp, #0x30]
	cmp r4, r1
	bne _0226D14C
	mov r6, #1
_0226D14C:
	cmp r0, #1
	bne _0226D232
	cmp r4, #0
	beq _0226D15E
	cmp r4, #1
	beq _0226D1C2
	cmp r4, #2
	beq _0226D1F8
	b _0226D232
_0226D15E:
	ldr r0, [r7, #8]
	ldr r1, [sp]
	bl ov70_02262374
	cmp r0, #1
	bne _0226D232
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _0226D194
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #4]
	ldrh r3, [r3, #2]
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0226D27C
	ldr r0, [sp, #0xc]
	ldrh r3, [r0, #8]
	ldr r0, _0226D244 ; =0x0000FFFE
	cmp r3, r0
	beq _0226D1B6
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0226D24C
	b _0226D1B6
_0226D194:
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #4]
	ldrh r3, [r3]
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0226D27C
	ldr r0, [sp, #0xc]
	ldrh r3, [r0, #4]
	ldr r0, _0226D244 ; =0x0000FFFE
	cmp r3, r0
	beq _0226D1B6
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0226D24C
_0226D1B6:
	ldr r1, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r4, r1
	bl FUN_0222EBF4
	b _0226D232
_0226D1C2:
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _0226D1CC
	mov r1, #1
	b _0226D1CE
_0226D1CC:
	mov r1, #0
_0226D1CE:
	ldr r2, [sp, #0x14]
	ldr r0, [sp, #0x18]
	ldr r3, [sp]
	add r0, r2, r0
	ldr r2, [r7, #8]
	bl ov70_0226D2A0
	cmp r0, #1
	bne _0226D232
	ldr r1, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r4, r1
	bl FUN_0222EBF4
	ldr r0, [sp, #4]
	ldr r3, _0226D248 ; =0x000005AF
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0226D24C
	b _0226D232
_0226D1F8:
	ldr r0, [r7, #8]
	ldr r1, [sp]
	bl ov70_0226239C
	cmp r0, #1
	bne _0226D232
	ldr r1, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r4, r1
	bl FUN_0222EBF4
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _0226D224
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #4]
	ldrh r3, [r3, #0xa]
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0226D24C
	b _0226D232
_0226D224:
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #4]
	ldrh r3, [r3, #6]
	add r1, r5, #0
	add r2, r6, #0
	bl ov70_0226D24C
_0226D232:
	add r4, r4, #1
	cmp r4, #3
	bge _0226D23A
	b _0226D134
_0226D23A:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0226D240: .word 0x0226E774
_0226D244: .word 0x0000FFFE
_0226D248: .word 0x000005AF
	thumb_func_end ov70_0226D0E8

	thumb_func_start ov70_0226D24C
ov70_0226D24C: ; 0x0226D24C
	push {r3, lr}
	cmp r0, #0
	beq _0226D270
	cmp r1, #0
	beq _0226D278
	cmp r2, #0
	beq _0226D266
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	mov r1, #5
	bl sub_02005770
	pop {r3, pc}
_0226D266:
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
	pop {r3, pc}
_0226D270:
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
_0226D278:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_0226D24C

	thumb_func_start ov70_0226D27C
ov70_0226D27C: ; 0x0226D27C
	push {r3, lr}
	cmp r0, #0
	beq _0226D292
	cmp r1, #0
	beq _0226D29C
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	bl sub_02005844
	pop {r3, pc}
_0226D292:
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	bl sub_02005844
_0226D29C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_0226D27C

	thumb_func_start ov70_0226D2A0
ov70_0226D2A0: ; 0x0226D2A0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #2
	blo _0226D2B2
	bl sub_02022974
_0226D2B2:
	ldrh r0, [r5]
	cmp r0, #1
	bne _0226D2BC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0226D2BC:
	ldr r3, _0226D2D4 ; =0x0226E76C
	strh r4, [r5, #2]
	lsl r4, r4, #2
	mov r0, #1
	strh r0, [r5]
	ldr r3, [r3, r4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	blx r3
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226D2D4: .word 0x0226E76C
	thumb_func_end ov70_0226D2A0

	thumb_func_start ov70_0226D2D8
ov70_0226D2D8: ; 0x0226D2D8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r3, [r4]
	cmp r3, #0
	beq _0226D312
	ldrh r3, [r4, #2]
	lsl r5, r3, #2
	ldr r3, _0226D318 ; =0x0226E764
	ldr r3, [r3, r5]
	blx r3
	cmp r0, #1
	bne _0226D30E
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
_0226D30E:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0226D312:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0226D318: .word 0x0226E764
	thumb_func_end ov70_0226D2D8

	thumb_func_start ov70_0226D31C
ov70_0226D31C: ; 0x0226D31C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4, #4]
	mov r0, #8
	strh r0, [r4, #6]
	mov r0, #5
	bl sub_0201D2A4
	strh r0, [r4, #8]
	mov r0, #2
	strh r0, [r4, #0xa]
	mov r0, #4
	strh r0, [r4, #0xc]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0226D31C

	thumb_func_start ov70_0226D33C
ov70_0226D33C: ; 0x0226D33C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4, #4]
	mov r0, #0x10
	strh r0, [r4, #6]
	mov r0, #0xa
	bl sub_0201D2A4
	strh r0, [r4, #8]
	mov r0, #4
	strh r0, [r4, #0xa]
	mov r0, #2
	strh r0, [r4, #0xc]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0226D33C

	thumb_func_start ov70_0226D35C
ov70_0226D35C: ; 0x0226D35C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, sp, #0x10
	mov r4, #0
	str r4, [r0, #0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	mov r0, #4
	ldrsh r0, [r5, r0]
	str r1, [sp]
	str r2, [sp, #4]
	add r1, r0, #1
	mov r0, #6
	ldrsh r0, [r5, r0]
	cmp r1, r0
	bge _0226D382
	strh r1, [r5, #4]
	b _0226D394
_0226D382:
	strh r4, [r5, #4]
	mov r0, #0xc
	ldrsh r0, [r5, r0]
	sub r0, r0, #1
	cmp r0, #0
	ble _0226D392
	strh r0, [r5, #0xc]
	b _0226D394
_0226D392:
	mov r4, #1
_0226D394:
	mov r0, #4
	ldrsh r1, [r5, r0]
	ldr r0, _0226D464 ; =0x0000FFFF
	mul r0, r1
	mov r1, #6
	ldrsh r1, [r5, r1]
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _0226D3C0
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226D3CE
_0226D3C0:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226D3CE:
	bl sub_020E1740
	add r2, r0, #0
	asr r0, r6, #4
	lsl r1, r0, #2
	ldr r0, _0226D468 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	str r0, [sp, #8]
	asr r0, r0, #0x1f
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	lsl r0, r1, #4
	lsr r6, r0, #0x10
	mov r0, #0xa
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0226D41A
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0226D428
_0226D41A:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0226D428:
	bl sub_020E1740
	add r2, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #0x14]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r6, #0
	bl ov70_022623F0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, sp, #0x10
	bl ov70_022622EC
	add r0, r4, #0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0226D464: .word 0x0000FFFF
_0226D468: .word 0x020F983C
	thumb_func_end ov70_0226D35C

	thumb_func_start ov70_0226D46C
ov70_0226D46C: ; 0x0226D46C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	str r1, [sp]
	add r0, r1, #0
	lsl r1, r0, #1
	ldr r0, [sp]
	mov r6, #0
	add r0, r0, r1
	str r0, [sp, #4]
_0226D480:
	ldr r1, [sp, #4]
	ldr r0, [r7, #4]
	add r1, r6, r1
	bl FUN_0222EC30
	add r4, r0, #0
	ldr r0, [r7, #8]
	ldr r1, [sp]
	add r2, r6, #0
	add r3, sp, #8
	bl ov70_02262318
	cmp r4, #3
	bge _0226D4C2
	lsl r0, r4, #2
	add r5, r7, r0
_0226D4A0:
	mov r0, #0xaa
	ldrsh r0, [r5, r0]
	add r0, #0x10
	lsl r1, r0, #0xc
	ldr r0, [sp, #8]
	cmp r1, r0
	ble _0226D4BA
	ldr r1, [sp, #4]
	ldr r0, [r7, #4]
	add r1, r6, r1
	add r2, r4, #0
	bl FUN_0222EC20
_0226D4BA:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0226D4A0
_0226D4C2:
	add r6, r6, #1
	cmp r6, #3
	blt _0226D480
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226D46C
	; 0x0226D4CC

	.incbin "data/overlay70.bin"
