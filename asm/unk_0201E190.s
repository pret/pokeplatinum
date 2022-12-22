	.include "macros/function.inc"
	.include "include/unk_0201E190.inc"

	

	.text


	thumb_func_start sub_0201E190
sub_0201E190: ; 0x0201E190
	cmp r0, r1
	blt _0201E196
	add r0, r1, #0
_0201E196:
	bx lr
	thumb_func_end sub_0201E190

	thumb_func_start sub_0201E198
sub_0201E198: ; 0x0201E198
	cmp r0, r1
	bgt _0201E19E
	add r0, r1, #0
_0201E19E:
	bx lr
	thumb_func_end sub_0201E198

	thumb_func_start sub_0201E1A0
sub_0201E1A0: ; 0x0201E1A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r1, sp, #0x24
	bl VEC_Normalize
	add r0, r4, #0
	add r1, sp, #0x18
	bl VEC_Normalize
	ldr r0, [sp, #0x24]
	ldr r4, [sp, #0x18]
	str r0, [sp]
	asr r0, r0, #0x1f
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	asr r6, r4, #0x1f
	str r0, [sp, #8]
	asr r0, r0, #0x1f
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #8]
	asr r7, r0, #0x1f
	ldr r3, [sp, #0xc]
	add r1, r7, #0
	str r0, [sp, #0x10]
	bl _ull_mul
	str r0, [sp, #0x14]
	add r5, r1, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r4, #0
	add r3, r6, #0
	bl _ull_mul
	mov r2, #2
	ldr r3, [sp, #0x14]
	lsl r2, r2, #0xa
	add r3, r3, r2
	ldr r2, _0201E264 ; =0x00000000
	adc r5, r2
	lsl r2, r5, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _0201E264 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r5, r3, r0
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl _ull_mul
	add r6, r0, #0
	add r4, r1, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r6, r6, r2
	adc r4, r3
	lsl r4, r4, #0x14
	lsr r6, r6, #0xc
	orr r6, r4
	add r4, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r4, #0xc
	orr r1, r0
	sub r0, r6, r1
	cmp r5, #0
	bne _0201E25A
	cmp r0, #0
	ble _0201E252
	add sp, #0x30
	lsl r0, r2, #3
	pop {r3, r4, r5, r6, r7, pc}
_0201E252:
	mov r0, #3
	add sp, #0x30
	lsl r0, r0, #0xe
	pop {r3, r4, r5, r6, r7, pc}
_0201E25A:
	add r1, r5, #0
	bl FX_Atan2Idx
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201E264: .word 0x00000000
	thumb_func_end sub_0201E1A0

	thumb_func_start sub_0201E268
sub_0201E268: ; 0x0201E268
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r1, #0
	ldr r1, [r4, #0]
	ldr r3, _0201E2DC ; =0x020F983C
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	asr r1, r1, #4
	lsl r2, r1, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r5, r0, #0
	bl MTX_RotX33_
	ldr r0, [r4, #4]
	ldr r3, _0201E2DC ; =0x020F983C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl MTX_RotY33_
	add r0, r5, #0
	add r1, sp, #0
	add r2, r5, #0
	bl MTX_Concat33
	ldr r0, [r4, #8]
	ldr r3, _0201E2DC ; =0x020F983C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl MTX_RotZ33_
	add r0, r5, #0
	add r1, sp, #0
	add r2, r5, #0
	bl MTX_Concat33
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_0201E2DC: .word 0x020F983C
	thumb_func_end sub_0201E268

	thumb_func_start sub_0201E2E0
sub_0201E2E0: ; 0x0201E2E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0201D1D4
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0201D15C
	add r1, r0, #0
	ldr r0, [sp]
	add r2, r7, #0
	bl MTX_RotX33_
	add r0, r4, #0
	bl sub_0201D1D4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0201D15C
	add r1, r0, #0
	add r0, sp, #4
	add r2, r5, #0
	bl MTX_RotY33_
	ldr r0, [sp]
	add r1, sp, #4
	add r2, r0, #0
	bl MTX_Concat33
	add r0, r6, #0
	bl sub_0201D1D4
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0201D15C
	add r1, r0, #0
	add r0, sp, #4
	add r2, r4, #0
	bl MTX_RotZ33_
	ldr r0, [sp]
	add r1, sp, #4
	add r2, r0, #0
	bl MTX_Concat33
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201E2E0

	thumb_func_start sub_0201E34C
sub_0201E34C: ; 0x0201E34C
	push {r3, r4, r5, r6, r7, lr}
	asr r0, r0, #4
	add r7, r2, #0
	lsl r2, r0, #1
	add r6, r1, #0
	lsl r0, r2, #1
	ldr r1, _0201E3B8 ; =0x020F983C
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r0, [r1, r0]
	ldrsh r1, [r1, r2]
	add r5, r3, #0
	ldr r4, [sp, #0x18]
	bl FX_Div
	add r2, r0, #0
	asr r1, r6, #0x1f
	add r0, r6, #0
	asr r3, r2, #0x1f
	bl _ull_mul
	mov r6, #2
	mov r2, #0
	lsl r6, r6, #0xa
	add r0, r0, r6
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r3, r0, #0x1f
	lsr r1, r0, #0x13
	lsl r3, r3, #0xd
	orr r3, r1
	lsl r0, r0, #0xd
	add r0, r0, r6
	adc r3, r2
	lsl r1, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	str r0, [r4, #0]
	bl _ull_mul
	mov r3, #0
	add r2, r6, #0
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201E3B8: .word 0x020F983C
	thumb_func_end sub_0201E34C