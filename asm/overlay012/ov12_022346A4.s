	.include "macros/function.inc"
	.include "overlay012/ov12_022346A4.inc"

	

	.text


	thumb_func_start ov12_022346A4
ov12_022346A4: ; 0x022346A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r7, r1, #0
	add r4, r0, #0
	mov r1, #0xac
	add r6, r2, #0
	str r3, [sp]
	bl ov12_02235E50
	str r4, [r0, #0]
	str r0, [sp, #4]
	str r6, [r0, #0xc]
	add r0, r4, #0
	bl ov12_02220240
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02225964
	ldr r1, [sp, #4]
	str r0, [r1, #0x10]
	ldr r1, [r1, #0]
	add r0, sp, #8
	bl ov12_0222329C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov12_022258E0
	add r1, sp, #8
	strh r0, [r1]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov12_022258E0
	add r1, sp, #8
	ldr r5, [sp, #4]
	strh r0, [r1, #2]
	mov r4, #0
_022346F8:
	cmp r4, #0
	add r2, sp, #8
	bne _02234712
	ldr r0, [sp]
	mov r1, #0
	str r0, [r5, #0x14]
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #2
	ldrsh r2, [r3, r2]
	bl sub_0200D4C4
	b _0223471C
_02234712:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0200CE6C
	str r0, [r5, #0x14]
_0223471C:
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r5, #0x14]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl sub_0200D460
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _022346F8
	ldr r0, [sp, #4]
	ldr r1, _0223474C ; =ov12_02234750
	ldr r0, [r0, #0]
	ldr r2, [sp, #4]
	bl ov12_022201E8
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223474C: .word ov12_02234750
	thumb_func_end ov12_022346A4

	thumb_func_start ov12_02234750
ov12_02234750: ; 0x02234750
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	bhi _02234834
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02234768: ; jump table
	.short _02234772 - _02234768 - 2 ; case 0
	.short _0223479A - _02234768 - 2 ; case 1
	.short _022347BA - _02234768 - 2 ; case 2
	.short _022347EC - _02234768 - 2 ; case 3
	.short _02234812 - _02234768 - 2 ; case 4
_02234772:
	add r2, r4, #0
	ldr r0, [r4, #0x14]
	ldr r3, [r4, #0x10]
	add r1, #0x1c
	add r2, #0x64
	bl ov12_0223483C
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x1c
	add r2, #0x64
	bl ov12_0223489C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #8
	str r0, [r4, #8]
	b _02234834
_0223479A:
	ldr r0, [r4, #8]
	add r2, r4, #0
	sub r0, r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	add r1, #0x1c
	add r2, #0x64
	bl ov12_0223489C
	ldr r0, [r4, #8]
	cmp r0, #0
	bge _02234834
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02234834
_022347BA:
	add r2, r4, #0
	ldr r0, [r4, #0x18]
	ldr r3, [r4, #0x10]
	add r1, #0x40
	add r2, #0x88
	bl ov12_0223483C
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x18]
	add r1, #0x40
	add r2, #0x88
	bl ov12_0223489C
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x1c
	add r2, #0x64
	bl ov12_0223489C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02234834
_022347EC:
	add r2, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x1c
	add r2, #0x64
	bl ov12_0223489C
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x18]
	add r1, #0x40
	add r2, #0x88
	bl ov12_0223489C
	cmp r0, #0
	beq _02234834
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02234834
_02234812:
	mov r6, #0
	add r5, r4, #0
_02234816:
	ldr r0, [r5, #0x14]
	bl sub_0200D0F4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _02234816
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_02234834:
	ldr r0, [r4, #0xc]
	bl sub_0200C7EC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02234750

	thumb_func_start ov12_0223483C
ov12_0223483C: ; 0x0223483C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	mov r1, #2
	add r7, r2, #0
	add r4, r3, #0
	bl sub_0200D6A4
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D3F4
	add r1, sp, #8
	add r0, r5, #0
	add r1, #2
	add r2, sp, #8
	bl sub_0200D550
	add r1, sp, #8
	mov r0, #0
	ldrsh r3, [r1, r0]
	mov r0, #2
	ldrsh r1, [r1, r0]
	add r0, r3, #0
	sub r0, #0x20
	lsl r0, r0, #0x10
	lsl r2, r4, #4
	asr r0, r0, #0x10
	add r2, r1, r2
	str r0, [sp]
	mov r0, #0x20
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r6, #0
	asr r2, r2, #0x10
	bl ov12_02225BC8
	mov r0, #0x20
	mov r2, #0xa
	str r0, [sp]
	add r0, r7, #0
	mov r1, #2
	add r3, r2, #0
	bl ov12_02225E68
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_0223483C

	thumb_func_start ov12_0223489C
ov12_0223489C: ; 0x0223489C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r1, r5, #0
	bl ov12_02225C50
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022260A8
	cmp r0, #0
	beq _022348BA
	mov r0, #0
	pop {r3, r4, r5, pc}
_022348BA:
	add r0, r5, #0
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0223489C

	thumb_func_start ov12_022348C8
ov12_022348C8: ; 0x022348C8
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x3c
	add r6, r0, #0
	add r7, r2, #0
	add r5, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r6, [r4, #0]
	str r7, [r4, #0xc]
	str r5, [r4, #0x10]
	add r0, r5, #0
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #0x10]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r4, #0x10]
	bl sub_0200D43C
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	ldr r1, _02234914 ; =ov12_02234918
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02234914: .word ov12_02234918
	thumb_func_end ov12_022348C8

	thumb_func_start ov12_02234918
ov12_02234918: ; 0x02234918
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	bhi _02234A04
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02234932: ; jump table
	.short _0223493C - _02234932 - 2 ; case 0
	.short _0223496C - _02234932 - 2 ; case 1
	.short _02234992 - _02234932 - 2 ; case 2
	.short _022349D0 - _02234932 - 2 ; case 3
	.short _022349EC - _02234932 - 2 ; case 4
_0223493C:
	mov r0, #4
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x14
	mov r1, #0
	mov r2, #0x10
	mov r3, #0x14
	bl ov12_02226424
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #0x14
	bl ov12_02235780
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02234A04
_0223496C:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02226454
	cmp r0, #0
	beq _02234A04
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl sub_0200D390
	mov r1, #1
	ldr r0, [r4, #0x10]
	lsl r1, r1, #0xc
	bl sub_0200D3A4
	b _02234A04
_02234992:
	ldr r0, [r4, #0x10]
	bl sub_0200D3E0
	mov r1, #3
	bl _s32_div_f
	ldr r2, [r4, #8]
	ldr r0, [r4, #0x10]
	add r1, r2, r1
	bl sub_0200D430
	ldr r0, [r4, #0x10]
	bl sub_0200D3B8
	cmp r0, #0
	bne _02234A04
	ldr r0, [r4, #4]
	mov r1, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0x14
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x14
	mov r2, #0
	mov r3, #4
	bl ov12_02226424
	b _02234A04
_022349D0:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02226454
	cmp r0, #0
	beq _02234A04
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl sub_0200D3F4
	b _02234A04
_022349EC:
	ldr r0, [r4, #0x10]
	bl sub_0200D0F4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, pc}
_02234A04:
	ldr r0, [r4, #0xc]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02234918

	thumb_func_start ov12_02234A10
ov12_02234A10: ; 0x02234A10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #0x54
	add r5, r0, #0
	str r3, [sp, #0xc]
	bl ov12_02235E50
	ldr r1, [sp, #8]
	str r5, [r0, #0]
	str r0, [sp, #0x14]
	str r1, [r0, #8]
	ldr r0, [r0, #0]
	bl ov12_02220240
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02225964
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r1, [r1, #0]
	add r0, sp, #0x18
	bl ov12_0222329C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov12_022258E0
	add r1, sp, #0x18
	strh r0, [r1]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov12_022258E0
	ldr r7, [sp, #0x14]
	ldr r6, [sp, #0x14]
	ldr r5, [sp, #0x14]
	add r1, sp, #0x18
	add r7, #0x3c
	add r6, #0x24
	strh r0, [r1, #2]
	mov r4, #5
	add r5, #0x14
	add r7, #0x14
	add r6, #0x14
_02234A74:
	cmp r4, #5
	add r2, sp, #0x18
	bne _02234A8E
	ldr r0, [sp, #0xc]
	mov r1, #0
	str r0, [r5, #0xc]
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #2
	ldrsh r2, [r3, r2]
	bl sub_0200D4C4
	b _02234A98
_02234A8E:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl sub_0200CE6C
	str r0, [r5, #0xc]
_02234A98:
	ldr r0, [r5, #0xc]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl sub_0200D460
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [r5, #0xc]
	add r2, r7, #0
	add r3, r4, #0
	bl ov12_02234AE0
	sub r5, r5, #4
	sub r7, r7, #4
	sub r6, r6, #4
	sub r4, r4, #1
	bpl _02234A74
	ldr r0, [sp, #0x14]
	ldr r1, _02234ADC ; =ov12_02234B64
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x14]
	bl ov12_022201E8
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_02234ADC: .word ov12_02234B64
	thumb_func_end ov12_02234A10

	thumb_func_start ov12_02234AE0
ov12_02234AE0: ; 0x02234AE0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r6, r1, #0
	lsr r1, r4, #0x1f
	add r1, r4, r1
	asr r1, r1, #1
	add r5, r0, #0
	add r7, r2, #0
	bl sub_0200D364
	lsl r0, r4, #1
	str r0, [r7, #0]
	mov r0, #0x10
	add r1, sp, #0
	str r0, [r6, #0]
	add r0, r5, #0
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	mov r1, #2
	add r6, r1, #0
	add r2, sp, #0
	sub r6, #0xe
	mul r6, r4
	ldr r0, [sp, #0x18]
	ldrsh r3, [r2, r1]
	add r6, #0x28
	add r4, r0, #0
	mul r4, r6
	add r0, r3, r4
	mov r3, #0
	strh r0, [r2, #2]
	ldrsh r0, [r2, r3]
	add r0, #0x28
	strh r0, [r2]
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	add r0, r5, #0
	bl sub_0200D4C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02234AE0

	thumb_func_start ov12_02234B34
ov12_02234B34: ; 0x02234B34
	push {r3, lr}
	ldr r3, [r2, #0]
	cmp r3, #0
	ble _02234B4A
	sub r1, r3, #1
	str r1, [r2, #0]
	bne _02234B60
	mov r1, #1
	bl sub_0200D3F4
	b _02234B60
_02234B4A:
	ldr r2, [r1, #0]
	cmp r2, #0
	ble _02234B56
	sub r0, r2, #1
	str r0, [r1, #0]
	b _02234B60
_02234B56:
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #1
	pop {r3, pc}
_02234B60:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov12_02234B34

	thumb_func_start ov12_02234B64
ov12_02234B64: ; 0x02234B64
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r1, #4]
	str r1, [sp]
	cmp r0, #0
	beq _02234B76
	cmp r0, #1
	beq _02234BA8
	b _02234BCC
_02234B76:
	add r6, r1, #0
	add r4, r1, #0
	mov r7, #0
	add r6, #0x3c
	add r4, #0x24
	add r5, r1, #0
_02234B82:
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	add r2, r6, #0
	bl ov12_02234B34
	add r7, r7, #1
	add r6, r6, #4
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #6
	blt _02234B82
	cmp r0, #0
	beq _02234BCC
	ldr r0, [sp]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #4]
	b _02234BCC
_02234BA8:
	mov r5, #0
	add r4, r1, #0
_02234BAC:
	ldr r0, [r4, #0xc]
	bl sub_0200D0F4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _02234BAC
	ldr r0, [sp]
	add r1, r6, #0
	ldr r0, [r0, #0]
	bl ov12_02220220
	ldr r0, [sp]
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_02234BCC:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	bl sub_0200C7EC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02234B64

	thumb_func_start ov12_02234BD8
ov12_02234BD8: ; 0x02234BD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r7, #0
	add r6, r5, #0
	str r1, [sp, #0x10]
	add r6, #0x30
	add r4, r7, #0
_02234BE8:
	mov r0, #0
	str r0, [sp]
	mov r0, #0x32
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x30
	mov r1, #0
	str r0, [sp, #0xc]
	ldr r2, _02234C28 ; =0x00007FFF
	add r0, r6, #0
	add r3, r1, #0
	bl ov12_02225A5C
	ldr r0, [r5, #0x38]
	add r7, r7, #1
	add r0, r0, r4
	str r0, [r5, #0x38]
	ldr r1, [r5, #0x48]
	ldr r0, [sp, #0x10]
	add r6, #0x24
	mul r0, r1
	str r0, [r5, #0x48]
	ldr r0, _02234C2C ; =0x00002AAA
	add r5, #0x24
	add r4, r4, r0
	cmp r7, #6
	blt _02234BE8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02234C28: .word 0x00007FFF
_02234C2C: .word 0x00002AAA
	thumb_func_end ov12_02234BD8

	thumb_func_start ov12_02234C30
ov12_02234C30: ; 0x02234C30
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0
	add r7, r6, #0
	str r0, [sp]
	add r7, #0x30
	add r4, r6, #0
	add r5, r6, #0
_02234C40:
	add r0, r7, #0
	bl ov12_02225AE0
	mov r1, #0x13
	lsl r1, r1, #4
	mov r2, #0x30
	ldrsh r1, [r6, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x18]
	add r1, r1, r2
	ldr r2, _02234C9C ; =0x00000132
	lsl r1, r1, #0x10
	ldrsh r2, [r6, r2]
	asr r1, r1, #0x10
	bl sub_0200D4C4
	ldr r1, [r4, #0x38]
	ldr r0, _02234CA0 ; =0x00003FFF
	cmp r1, r0
	blt _02234C78
	ldr r0, _02234CA4 ; =0x0000BF49
	cmp r1, r0
	bgt _02234C78
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0200D460
	b _02234C88
_02234C78:
	ldr r0, [r6, #0]
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r5, #0x18]
	add r1, r1, #1
	bl sub_0200D460
_02234C88:
	ldr r0, [sp]
	add r7, #0x24
	add r0, r0, #1
	add r4, #0x24
	add r5, r5, #4
	str r0, [sp]
	cmp r0, #6
	blt _02234C40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02234C9C: .word 0x00000132
_02234CA0: .word 0x00003FFF
_02234CA4: .word 0x0000BF49
	thumb_func_end ov12_02234C30

	thumb_func_start ov12_02234CA8
ov12_02234CA8: ; 0x02234CA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bhi _02234D8E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02234CC2: ; jump table
	.short _02234CCC - _02234CC2 - 2 ; case 0
	.short _02234D02 - _02234CC2 - 2 ; case 1
	.short _02234D22 - _02234CC2 - 2 ; case 2
	.short _02234D4E - _02234CC2 - 2 ; case 3
	.short _02234D6A - _02234CC2 - 2 ; case 4
_02234CCC:
	ldr r0, [r4, #0]
	mov r1, #1
	mov r2, #0xf
	bl ov12_02235780
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, #0xfe
	add r0, r4, r0
	mov r1, #1
	mov r2, #0x10
	mov r3, #0xf
	bl ov12_02226424
	ldr r1, [r4, #0x14]
	add r0, r4, #0
	bl ov12_02234BD8
	add r0, r4, #0
	bl ov12_02234C30
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02234D8E
_02234D02:
	add r0, r4, #0
	bl ov12_02234C30
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov12_02226454
	cmp r0, #0
	beq _02234D8E
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0x1c
	str r0, [r4, #0x10]
	b _02234D8E
_02234D22:
	add r0, r4, #0
	bl ov12_02234C30
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	bpl _02234D8E
	ldr r0, [r4, #0xc]
	mov r1, #0x10
	add r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0xf
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, #0xfe
	add r0, r4, r0
	mov r2, #1
	mov r3, #0
	bl ov12_02226424
	b _02234D8E
_02234D4E:
	add r0, r4, #0
	bl ov12_02234C30
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov12_02226454
	cmp r0, #0
	beq _02234D8E
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02234D8E
_02234D6A:
	mov r6, #0
	add r5, r4, #0
_02234D6E:
	ldr r0, [r5, #0x18]
	bl sub_0200D0F4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #6
	blt _02234D6E
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov12_02220220
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02234D8E:
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02234CA8

	thumb_func_start ov12_02234D98
ov12_02234D98: ; 0x02234D98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r1, #0
	mov r1, #0x4d
	lsl r1, r1, #2
	add r4, r0, #0
	str r2, [sp]
	add r7, r3, #0
	bl ov12_02235E50
	add r6, r0, #0
	str r4, [r6, #0]
	ldr r0, [sp]
	str r5, [r6, #4]
	str r0, [r6, #8]
	add r0, r4, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_022232FC
	mov r1, #0
	add r5, r0, #0
	bl sub_020080C0
	mov r1, #0x13
	lsl r1, r1, #4
	strh r0, [r6, r1]
	add r0, r5, #0
	mov r1, #1
	bl sub_020080C0
	ldr r1, _02234E3C ; =0x00000132
	strh r0, [r6, r1]
	add r0, sp, #4
	add r1, r4, #0
	bl ov12_0222329C
	mov r4, #0
	add r5, r6, #0
_02234DEA:
	cmp r4, #0
	bne _02234DF2
	str r7, [r5, #0x18]
	b _02234DFE
_02234DF2:
	ldr r0, [r6, #4]
	ldr r1, [r6, #8]
	add r2, sp, #4
	bl sub_0200CE6C
	str r0, [r5, #0x18]
_02234DFE:
	ldr r0, [r5, #0x18]
	mov r1, #0x64
	bl sub_0200D474
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0200D390
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02234DEA
	ldr r0, [r6, #0]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov12_02225964
	str r0, [r6, #0x14]
	ldr r0, [r6, #0]
	ldr r1, _02234E40 ; =ov12_02234CA8
	add r2, r6, #0
	bl ov12_022201E8
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234E3C: .word 0x00000132
_02234E40: .word ov12_02234CA8
	thumb_func_end ov12_02234D98