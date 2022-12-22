	.include "macros/function.inc"
	.include "include/ov70_02261E10.inc"

	

	.text


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
	bl memset
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
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl GF_AssertFail
_0226232E:
	cmp r7, #3
	blo _02262336
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl _f_utof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0226281E
_02262810:
	lsl r0, r0, #0xe
	bl _f_utof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0226281E:
	bl _f_ftoi
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
	bl _u32_div_f
	ldr r0, _022628C4 ; =0x0000060C
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	cmp r0, #0xe
	bhs _0226287C
	lsl r0, r4, #2
	beq _0226285C
	lsl r0, r4, #0xe
	bl _f_utof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0226286A
_0226285C:
	lsl r0, r4, #0xe
	bl _f_utof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0226286A:
	bl _f_ftoi
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
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl _ull_mul
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
	bl FX_Div
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
	bl _s32_div_f
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
	bl _ull_mul
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
	bl FX_Div
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
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl GF_AssertFail
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

	.rodata


	.global Unk_ov70_0226D90C
Unk_ov70_0226D90C: ; 0x0226D90C
	.incbin "incbin/overlay70_rodata.bin", 0x440, 0x448 - 0x440

	.global Unk_ov70_0226D914
Unk_ov70_0226D914: ; 0x0226D914
	.incbin "incbin/overlay70_rodata.bin", 0x448, 0x454 - 0x448

	.global Unk_ov70_0226D920
Unk_ov70_0226D920: ; 0x0226D920
	.incbin "incbin/overlay70_rodata.bin", 0x454, 0x478 - 0x454

	.global Unk_ov70_0226D944
Unk_ov70_0226D944: ; 0x0226D944
	.incbin "incbin/overlay70_rodata.bin", 0x478, 0x8C

