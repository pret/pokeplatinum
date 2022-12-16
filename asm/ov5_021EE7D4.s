	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021EE7D4
ov5_021EE7D4: ; 0x021EE7D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0
	add r2, r1, #0
	add r5, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	mov r1, #0x46
	mov r2, #0
	bl sub_02074470
	mov r1, #0xf
	and r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0x47
	mov r2, #0
	bl sub_02074470
	mov r1, #0xf
	and r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x48
	mov r2, #0
	bl sub_02074470
	mov r1, #0xf
	and r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x49
	mov r2, #0
	bl sub_02074470
	mov r1, #0xf
	and r0, r1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r5, #0
	mov r1, #0x4a
	mov r2, #0
	bl sub_02074470
	mov r1, #0xf
	and r0, r1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r5, #0
	mov r1, #0x4b
	mov r2, #0
	bl sub_02074470
	mov r1, #0xf
	and r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	eor r0, r6
	asr r1, r4, #8
	mul r0, r7
	eor r0, r1
	lsl r1, r4, #0x18
	lsr r3, r1, #0x18
	lsl r0, r0, #0x10
	ldr r2, [sp, #4]
	ldr r1, [sp]
	lsr r0, r0, #0x10
	eor r2, r1
	ldr r1, [sp, #8]
	mul r2, r1
	add r1, r3, #0
	eor r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #8
	add r0, r0, r1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021EE7D4

	thumb_func_start ov5_021EE880
ov5_021EE880: ; 0x021EE880
	ldr r2, _021EE8A4 ; =0x021FF508
	mov r3, #1
_021EE884:
	lsl r1, r3, #3
	add r1, r2, r1
	ldrh r1, [r1, #4]
	cmp r0, r1
	bhs _021EE896
	sub r0, r3, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021EE896:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #0xf
	blo _021EE884
	add r0, r3, #0
	bx lr
	; .align 2, 0
_021EE8A4: .word 0x021FF508
	thumb_func_end ov5_021EE880

	thumb_func_start ov5_021EE8A8
ov5_021EE8A8: ; 0x021EE8A8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #4
	add r5, r1, #0
	bl sub_02098700
	add r4, r0, #0
	mov r1, #0
	mov r2, #4
	bl sub_0209872C
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02098808
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020987BC
	add r0, r4, #0
	bl sub_02098718
	add r0, r5, #0
	bl ov5_021EE880
	lsl r4, r0, #3
	ldr r0, _021EE914 ; =0x021FF50C
	ldr r2, _021EE918 ; =0x021FF50A
	ldrh r0, [r0, r4]
	ldrh r2, [r2, r4]
	asr r1, r5, #0x1f
	mov r3, #0
	sub r0, r5, r0
	sbc r1, r3
	bl sub_020E1ED4
	add r2, r0, #0
	add r0, r6, #0
	ldr r6, _021EE91C ; =0x021FF508
	add r3, r1, #0
	mov r5, #0
	ldrh r4, [r6, r4]
	add r1, r5, #0
	add r2, r4, r2
	adc r5, r3
	add r3, r5, #0
	bl sub_020E1F1C
	mov r2, #0xa
	mov r3, #0
	bl sub_020E1ED4
	pop {r4, r5, r6, pc}
	nop
_021EE914: .word 0x021FF50C
_021EE918: .word 0x021FF50A
_021EE91C: .word 0x021FF508
	thumb_func_end ov5_021EE8A8

	thumb_func_start ov5_021EE920
ov5_021EE920: ; 0x021EE920
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r5, r1, #0
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	str r0, [sp]
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [sp]
	bl ov5_021EE7D4
	add r1, sp, #4
	strh r0, [r1, #2]
	ldrh r1, [r1, #2]
	add r0, r5, #0
	bl ov5_021EE8A8
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206B0B4
	add r1, sp, #4
	strh r0, [r1]
	ldrh r1, [r1]
	add r0, r5, #0
	bl ov5_021EE8A8
	add r7, r0, #0
	mov r0, #0xfa
	lsl r0, r0, #2
	mul r0, r6
	mov r1, #0xfe
	bl sub_020E2178
	add r0, r0, #5
	mov r1, #0xa
	bl sub_020E2178
	add r5, r0, #0
	mov r0, #0xfa
	lsl r0, r0, #2
	mul r0, r7
	mov r1, #0xfe
	bl sub_020E2178
	add r0, r0, #5
	mov r1, #0xa
	bl sub_020E2178
	cmp r5, r0
	bne _021EE9A2
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EE9A2:
	cmp r5, r0
	bls _021EE9B6
	ldr r2, [sp]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0206DC6C
	add sp, #8
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021EE9B6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021EE920

	thumb_func_start ov5_021EE9BC
ov5_021EE9BC: ; 0x021EE9BC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r5, r1, #0
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	bl ov5_021EE7D4
	add r1, sp, #0
	strh r0, [r1]
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	add r1, sp, #0
	ldrh r1, [r1]
	bl sub_0206B0C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EE9BC

	thumb_func_start ov5_021EE9E8
ov5_021EE9E8: ; 0x021EE9E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0xf
	add r7, r2, #0
	add r4, r3, #0
	bl sub_0203F098
	add r1, sp, #0x10
	add r5, r0, #0
	ldrh r1, [r1, #0x10]
	add r0, r4, #0
	bl ov5_021EE8A8
	mov r1, #0xfa
	lsl r1, r1, #2
	mul r1, r0
	add r0, r1, #0
	mov r1, #0xfe
	bl sub_020E2178
	add r0, r0, #5
	mov r1, #0xa
	bl sub_020E2178
	mov r1, #0xa
	add r4, r0, #0
	bl sub_020E2178
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r1, r6, #0
	mov r3, #3
	bl sub_0200B60C
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020E2178
	mov r0, #0
	add r2, r1, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r0, [r5, #0]
	add r1, r7, #0
	bl sub_0200B60C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021EE9E8

	thumb_func_start ov5_021EEA54
ov5_021EEA54: ; 0x021EEA54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_020507E4
	bl sub_0206B0B4
	add r1, sp, #4
	strh r0, [r1]
	ldrh r0, [r1]
	add r1, r4, #0
	add r2, r6, #0
	str r0, [sp]
	add r0, r5, #0
	add r3, r7, #0
	bl ov5_021EE9E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021EEA54

	thumb_func_start ov5_021EEA84
ov5_021EEA84: ; 0x021EEA84
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r2, [sp, #4]
	ldr r0, [r5, #0xc]
	add r4, r3, #0
	add r7, r1, #0
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #0
	bl ov5_021EE7D4
	add r1, sp, #8
	strh r0, [r1]
	ldrh r0, [r1]
	add r1, r7, #0
	add r3, r4, #0
	str r0, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	bl ov5_021EE9E8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021EEA84

	.rodata


	.global Unk_ov5_021FF508
Unk_ov5_021FF508: ; 0x021FF508
	.incbin "incbin/overlay5_rodata.bin", 0x6BF4, 0x80

