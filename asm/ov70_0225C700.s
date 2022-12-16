	.include "macros/function.inc"
	.include "global.inc"

	

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