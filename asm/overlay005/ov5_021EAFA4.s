	.include "macros/function.inc"
	.include "overlay005/ov5_021EAFA4.inc"

	

	.text


	thumb_func_start ov5_021EAFA4
ov5_021EAFA4: ; 0x021EAFA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r4, r3, #0
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0
	str r0, [sp, #0x58]
	ldr r1, [r4, #0x50]
	add r0, sp, #0x60
	add r6, r2, #0
	bl sub_02020AAC
	ldr r3, _021EB0C0 ; =0x021FAF28
	add r2, sp, #0xc
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	cmp r6, #0x60
	str r0, [r2, #0]
	bhs _021EAFDE
	mov r1, #0x60
	sub r0, r1, r6
	lsl r0, r0, #0x18
	ldrh r2, [r4]
	lsr r0, r0, #0x18
	mul r0, r2
	bl _s32_div_f
	b _021EAFF8
_021EAFDE:
	sub r6, #0x60
	lsl r0, r6, #0x18
	ldrh r1, [r4]
	lsr r0, r0, #0x18
	mul r0, r1
	mov r1, #0x60
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0
	mvn r0, r0
	mul r0, r1
_021EAFF8:
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r5, #0x80
	bhs _021EB016
	mov r2, #0x80
	sub r2, r2, r5
	lsl r2, r2, #0x18
	ldrh r0, [r4, #2]
	lsr r2, r2, #0x18
	mul r2, r0
	asr r0, r2, #6
	lsr r0, r0, #0x19
	add r0, r2, r0
	lsl r0, r0, #9
	b _021EB034
_021EB016:
	ldrh r2, [r4, #2]
	sub r5, #0x80
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	add r3, r2, #0
	mul r3, r0
	asr r0, r3, #6
	lsr r0, r0, #0x19
	add r0, r3, r0
	lsl r0, r0, #9
	lsr r2, r0, #0x10
	mov r0, #0
	mvn r0, r0
	mul r0, r2
	lsl r0, r0, #0x10
_021EB034:
	lsr r5, r0, #0x10
	asr r0, r1, #4
	lsl r3, r0, #1
	lsl r1, r3, #1
	ldr r2, _021EB0C4 ; =0x020F983C
	add r3, r3, #1
	lsl r3, r3, #1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	add r0, sp, #0x24
	bl MTX_RotX43_
	add r0, sp, #0xc
	add r1, sp, #0x24
	add r2, sp, #0x18
	bl MTX_MultVec43
	asr r0, r5, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	ldr r3, _021EB0C4 ; =0x020F983C
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0x24
	bl MTX_RotY43_
	add r0, sp, #0x18
	add r1, sp, #0x24
	add r2, r0, #0
	bl MTX_MultVec43
	add r0, sp, #0x18
	add r1, r4, #0
	add r1, #0x20
	add r2, r0, #0
	bl MTX_MultVec43
	add r0, r4, #0
	add r0, #0x10
	add r1, sp, #0x18
	bl VEC_DotProduct
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl FX_Div
	neg r0, r0
	add r1, sp, #0x18
	add r2, r4, #4
	add r3, sp, #0
	bl VEC_MultAdd
	ldr r1, [sp, #0x60]
	ldr r0, [sp]
	add r2, sp, #0x54
	add r0, r1, r0
	str r0, [sp, #0x54]
	ldr r1, [sp, #0x68]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #0x5c]
	ldmia r2!, {r0, r1}
	stmia r7!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r7, #0]
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	nop
_021EB0C0: .word 0x021FAF28
_021EB0C4: .word 0x020F983C
	thumb_func_end ov5_021EAFA4

	thumb_func_start ov5_021EB0C8
ov5_021EB0C8: ; 0x021EB0C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x60
	bl sub_02018144
	add r1, r5, #0
	add r4, r0, #0
	bl ov5_021EB0E0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EB0C8

	thumb_func_start ov5_021EB0E0
ov5_021EB0E0: ; 0x021EB0E0
	push {r4, r5, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	bl sub_02020A94
	add r0, r4, #0
	bl sub_02020A88
	strh r0, [r5]
	ldrh r0, [r5]
	ldr r2, _021EB17C ; =0x020F983C
	asr r0, r0, #4
	lsl r1, r0, #1
	lsl r0, r1, #1
	add r1, r1, #1
	lsl r1, r1, #1
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	bl FX_Div
	lsl r0, r0, #2
	mov r1, #3
	bl _s32_div_f
	bl FX_AtanIdx
	ldr r3, _021EB180 ; =0x021FAF34
	strh r0, [r5, #2]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	add r0, sp, #0x14
	bl sub_02020ABC
	add r0, sp, #8
	add r1, r4, #0
	bl sub_02020AAC
	add r0, sp, #0x14
	add r1, sp, #8
	add r2, r5, #4
	bl VEC_Subtract
	add r3, sp, #0x20
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r5, #4
	str r0, [r2, #0]
	add r0, sp, #0x20
	bl VEC_DotProduct
	str r0, [r5, #0x1c]
	add r0, sp, #0
	ldrh r0, [r0]
	ldr r3, _021EB17C ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	add r0, r5, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, #0x20
	bl MTX_RotX43_
	str r4, [r5, #0x50]
	add sp, #0x2c
	pop {r4, r5, pc}
	nop
_021EB17C: .word 0x020F983C
_021EB180: .word 0x021FAF34
	thumb_func_end ov5_021EB0E0

	thumb_func_start ov5_021EB184
ov5_021EB184: ; 0x021EB184
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021EB19E
	bne _021EB194
	bl GF_AssertFail
_021EB194:
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
_021EB19E:
	pop {r4, pc}
	thumb_func_end ov5_021EB184

	.rodata


	.global Unk_ov5_021FAF28
Unk_ov5_021FAF28: ; 0x021FAF28
	.incbin "incbin/overlay5_rodata.bin", 0x2614, 0x2620 - 0x2614

	.global Unk_ov5_021FAF34
Unk_ov5_021FAF34: ; 0x021FAF34
	.incbin "incbin/overlay5_rodata.bin", 0x2620, 0xC

