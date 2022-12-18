	.include "macros/function.inc"
	.include "include/ov5_021EE75C.inc"

	

	.text


	thumb_func_start ov5_021EE75C
ov5_021EE75C: ; 0x021EE75C
	mov r0, #0
	str r0, [r2, #0]
	str r0, [r2, #4]
	bx lr
	thumb_func_end ov5_021EE75C

	thumb_func_start ov5_021EE764
ov5_021EE764: ; 0x021EE764
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EE764

	thumb_func_start ov5_021EE768
ov5_021EE768: ; 0x021EE768
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x3c]
	add r4, r2, #0
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r7, r0, #0
	ldr r0, [r4, #0]
	cmp r0, r6
	bne _021EE78A
	ldr r0, [r4, #4]
	cmp r0, r7
	beq _021EE7BC
_021EE78A:
	str r6, [r4, #0]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	str r7, [r4, #4]
	bl sub_02054F94
	add r4, r0, #0
	bl sub_0205DD84
	cmp r0, #0
	beq _021EE7A6
	mov r2, #0
	b _021EE7B2
_021EE7A6:
	add r0, r4, #0
	bl sub_0205DD78
	cmp r0, #0
	beq _021EE7BC
	mov r2, #1
_021EE7B2:
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	bl ov5_021D4D78
_021EE7BC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021EE768

	thumb_func_start ov5_021EE7C0
ov5_021EE7C0: ; 0x021EE7C0
	ldr r0, [r0, #4]
	ldr r3, _021EE7CC ; =ov5_021D1B6C
	ldr r0, [r0, #4]
	ldr r1, _021EE7D0 ; =0x021FF4F0
	bx r3
	nop
_021EE7CC: .word ov5_021D1B6C
_021EE7D0: .word 0x021FF4F0
	thumb_func_end ov5_021EE7C0

	.rodata


	.global Unk_ov5_021FF4F0
Unk_ov5_021FF4F0: ; 0x021FF4F0
	.incbin "incbin/overlay5_rodata.bin", 0x6BDC, 0x18

