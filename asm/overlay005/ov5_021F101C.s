	.include "macros/function.inc"
	.include "overlay005/ov5_021F101C.inc"

	

	.text


	thumb_func_start ov5_021F101C
ov5_021F101C: ; 0x021F101C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A60
	str r0, [sp]
	add r0, r7, #0
	bl sub_02050A64
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r5, [r6, #4]
	cmp r0, #5
	bhi _021F10E0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F104A: ; jump table
	.short _021F1056 - _021F104A - 2 ; case 0
	.short _021F1068 - _021F104A - 2 ; case 1
	.short _021F1088 - _021F104A - 2 ; case 2
	.short _021F10A6 - _021F104A - 2 ; case 3
	.short _021F10BE - _021F104A - 2 ; case 4
	.short _021F10D0 - _021F104A - 2 ; case 5
_021F1056:
	mov r0, #0xb
	mov r1, #8
	bl sub_02018184
	str r0, [r6, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021F10E0
_021F1068:
	bl ov5_021F0484
	add r6, r0, #0
	mov r0, #0xb
	add r1, r6, #0
	bl sub_02018184
	str r0, [r5, #4]
	mov r1, #0
	add r2, r6, #0
	bl memset
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021F10E0
_021F1088:
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB98
	add r3, r0, #0
	ldr r0, [sp]
	ldr r2, [r6, #0]
	mov r1, #0
	bl ov6_02243F88
	str r0, [r5, #0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021F10E0
_021F10A6:
	ldr r0, [r5, #0]
	bl ov6_02243FBC
	cmp r0, #0
	beq _021F10E0
	ldr r0, [r5, #0]
	bl ov6_02243FC8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021F10E0
_021F10BE:
	ldr r1, _021F10E4 ; =ov5_021F0488
	ldr r2, [r5, #4]
	add r0, r7, #0
	bl sub_02050944
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021F10E0
_021F10D0:
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F10E0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F10E4: .word ov5_021F0488
	thumb_func_end ov5_021F101C