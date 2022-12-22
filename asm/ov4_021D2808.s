	.include "macros/function.inc"
	.include "include/ov4_021D2808.inc"

	

	.text


	thumb_func_start ov4_021D2808
ov4_021D2808: ; 0x021D2808
	push {r3, r4, r5, lr}
	bl MIC_Init
	bl PM_Init
	mov r0, #1
	bl PM_SetAmp
	mov r0, #3
	bl PM_SetAmpGain
	ldr r0, _021D2898 ; =0x0221A404
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r3, _021D289C ; =0x00001A78
	add r5, r2, #0
	str r2, [r1, r3]
	add r1, r3, #0
	ldr r4, [r0, #4]
	add r1, #0xc
	str r2, [r4, r1]
	ldr r4, [r0, #4]
	add r1, r3, #4
	str r2, [r4, r1]
	add r1, r3, #0
	ldr r4, [r0, #4]
	add r1, #8
	str r2, [r4, r1]
	ldr r1, [r0, #4]
	add r3, #0x10
	str r2, [r1, r3]
	ldr r3, _021D28A0 ; =0x00001A8C
	add r1, r2, #0
_021D284A:
	ldr r4, [r0, #4]
	add r2, r2, #1
	add r4, r4, r5
	add r5, r5, #2
	strh r1, [r4, r3]
	cmp r2, #0x10
	blt _021D284A
	ldr r0, _021D2898 ; =0x0221A404
	ldr r2, [r0, #4]
	ldr r0, _021D28A4 ; =0x00001AAC
	str r1, [r2, r0]
	mov r0, #1
	blx ov4_02202E80
	bl NNS_SndInit
	ldr r0, _021D2898 ; =0x0221A404
	ldr r1, [r0, #4]
	ldr r0, _021D28A8 ; =0x000019F8
	add r0, r1, r0
	bl NNS_SndStrmInit
	ldr r1, _021D2898 ; =0x0221A404
	mov r0, #0
	ldr r2, [r1, #4]
	ldr r1, _021D28AC ; =0x0000110C
	add r1, r2, r1
	mov r2, #0x22
	lsl r2, r2, #6
	bl MIi_CpuClearFast
	ldr r0, _021D2898 ; =0x0221A404
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #1
	blx ov4_02202EB0
	pop {r3, r4, r5, pc}
	nop
_021D2898: .word 0x0221A404
_021D289C: .word 0x00001A78
_021D28A0: .word 0x00001A8C
_021D28A4: .word 0x00001AAC
_021D28A8: .word 0x000019F8
_021D28AC: .word 0x0000110C
	thumb_func_end ov4_021D2808

	thumb_func_start ov4_021D28B0
ov4_021D28B0: ; 0x021D28B0
	bx lr
	; .align 2, 0
	thumb_func_end ov4_021D28B0

	thumb_func_start ov4_021D28B4
ov4_021D28B4: ; 0x021D28B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	ldr r7, [sp, #0x1c]
	cmp r0, #0
	bne _021D28DC
	mov r7, #0
	cmp r5, #0
	bls _021D2956
_021D28C8:
	ldr r0, [r4, #0]
	mov r1, #0
	add r2, r6, #0
	bl MI_CpuFill8
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, r5
	blo _021D28C8
	pop {r3, r4, r5, r6, r7, pc}
_021D28DC:
	ldr r0, _021D2958 ; =0x0221A404
	ldr r1, _021D295C ; =0x00001A59
	ldr r0, [r0, #4]
	ldrb r2, [r0, r1]
	cmp r2, #0
	beq _021D28FE
	add r1, r1, #3
	add r0, r0, r1
	ldr r1, _021D2960 ; =ov4_021D28B0
	mov r2, #0
	bl MIC_StartAutoSamplingAsync
	ldr r1, _021D2958 ; =0x0221A404
	mov r0, #0
	ldr r2, [r1, #4]
	ldr r1, _021D295C ; =0x00001A59
	strb r0, [r2, r1]
_021D28FE:
	bl MIC_GetLastSamplingAddress
	sub r0, r0, r7
	cmp r0, r6
	bhs _021D290A
	add r7, r7, r6
_021D290A:
	ldr r0, _021D2964 ; =0x027FFFA8
	ldrh r1, [r0]
	mov r0, #2
	lsl r0, r0, #0xe
	and r0, r1
	asr r0, r0, #0xf
	beq _021D2920
	ldr r0, _021D2958 ; =0x0221A404
	ldr r1, [r0, #4]
	ldr r0, _021D2968 ; =0x0000110C
	add r7, r1, r0
_021D2920:
	ldr r0, _021D2958 ; =0x0221A404
	ldr r1, [r0, #4]
	ldr r0, _021D296C ; =0x000019F0
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021D2934
	add r0, r7, #0
	add r1, r6, #0
	blx ov4_02202994
_021D2934:
	mov r7, #0
	cmp r5, #0
	bls _021D294C
_021D293A:
	ldr r0, [r4, #0]
	add r1, r6, #0
	mov r2, #0
	blx ov4_02202CF0
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, r5
	blo _021D293A
_021D294C:
	ldr r0, _021D2958 ; =0x0221A404
	mov r2, #2
	ldr r1, [r0, #4]
	ldr r0, _021D2970 ; =0x00001A58
	strb r2, [r1, r0]
_021D2956:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2958: .word 0x0221A404
_021D295C: .word 0x00001A59
_021D2960: .word ov4_021D28B0
_021D2964: .word 0x027FFFA8
_021D2968: .word 0x0000110C
_021D296C: .word 0x000019F0
_021D2970: .word 0x00001A58
	thumb_func_end ov4_021D28B4

	thumb_func_start ov4_021D2974
ov4_021D2974: ; 0x021D2974
	push {r4, lr}
	ldr r1, _021D29C0 ; =0x0221A404
	ldr r2, [r1, #4]
	ldr r1, _021D29C4 ; =0x00001A54
	ldr r4, [r2, r1]
	cmp r4, #0
	bne _021D2996
	blx ov4_02204160
	add r4, r0, #0
	bne _021D298E
	mov r0, #0
	pop {r4, pc}
_021D298E:
	mov r1, #0
	blx ov4_022042F4
	b _021D299E
_021D2996:
	add r0, r4, #0
	mov r1, #0
	blx ov4_022042F4
_021D299E:
	cmp r0, #0
	beq _021D29B4
	add r0, r4, #0
	blx ov4_02204188
	ldr r1, _021D29C0 ; =0x0221A404
	mov r0, #0
	ldr r2, [r1, #4]
	ldr r1, _021D29C4 ; =0x00001A54
	str r0, [r2, r1]
	pop {r4, pc}
_021D29B4:
	ldr r0, _021D29C0 ; =0x0221A404
	ldr r1, [r0, #4]
	ldr r0, _021D29C4 ; =0x00001A54
	str r4, [r1, r0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_021D29C0: .word 0x0221A404
_021D29C4: .word 0x00001A54
	thumb_func_end ov4_021D2974

	thumb_func_start ov4_021D29C8
ov4_021D29C8: ; 0x021D29C8
	push {r3, lr}
	ldr r0, _021D2A08 ; =0x0221A404
	ldr r1, [r0, #4]
	ldr r0, _021D2A0C ; =0x00001A54
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021D2A02
	ldr r1, [r0, #0xc]
	cmp r1, #4
	bne _021D2A02
	mov r1, #0
	blx ov4_022043D0
	cmp r0, #0
	beq _021D29EA
	mov r0, #0
	pop {r3, pc}
_021D29EA:
	ldr r0, _021D2A08 ; =0x0221A404
	ldr r1, [r0, #4]
	ldr r0, _021D2A0C ; =0x00001A54
	ldr r0, [r1, r0]
	blx ov4_022027A8
	cmp r0, #0
	beq _021D29FE
	mov r0, #1
	pop {r3, pc}
_021D29FE:
	mov r0, #0
	pop {r3, pc}
_021D2A02:
	mov r0, #0
	pop {r3, pc}
	nop
_021D2A08: .word 0x0221A404
_021D2A0C: .word 0x00001A54
	thumb_func_end ov4_021D29C8

	thumb_func_start ov4_021D2A10
ov4_021D2A10: ; 0x021D2A10
	push {r3, lr}
	cmp r1, #7
	beq _021D2A28
	cmp r1, #9
	beq _021D2A20
	cmp r1, #0xc
	beq _021D2A30
	pop {r3, pc}
_021D2A20:
	add r0, r2, #0
	bl ov4_021D2B04
	pop {r3, pc}
_021D2A28:
	add r0, r2, #0
	blx ov4_022027A8
	pop {r3, pc}
_021D2A30:
	add r0, r2, #0
	bl ov4_021D2B04
	pop {r3, pc}
	thumb_func_end ov4_021D2A10

	thumb_func_start ov4_021D2A38
ov4_021D2A38: ; 0x021D2A38
	push {r4, lr}
	add r4, r2, #0
	cmp r1, #0xc
	bhi _021D2AF0
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2A4C: ; jump table
	.short _021D2AF0 - _021D2A4C - 2 ; case 0
	.short _021D2A66 - _021D2A4C - 2 ; case 1
	.short _021D2AE2 - _021D2A4C - 2 ; case 2
	.short _021D2AEA - _021D2A4C - 2 ; case 3
	.short _021D2AA6 - _021D2A4C - 2 ; case 4
	.short _021D2AF0 - _021D2A4C - 2 ; case 5
	.short _021D2AF0 - _021D2A4C - 2 ; case 6
	.short _021D2AB6 - _021D2A4C - 2 ; case 7
	.short _021D2A86 - _021D2A4C - 2 ; case 8
	.short _021D2A9A - _021D2A4C - 2 ; case 9
	.short _021D2AF0 - _021D2A4C - 2 ; case 10
	.short _021D2AEA - _021D2A4C - 2 ; case 11
	.short _021D2AEA - _021D2A4C - 2 ; case 12
_021D2A66:
	ldr r0, _021D2AF4 ; =0x0221A404
	ldr r2, [r0, #4]
	ldr r0, _021D2AF8 ; =0x00001A54
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _021D2A82
	add r0, r4, #0
	mov r1, #3
	blx ov4_022043D0
	add r0, r4, #0
	blx ov4_02204188
	pop {r4, pc}
_021D2A82:
	str r4, [r2, r0]
	pop {r4, pc}
_021D2A86:
	add r0, r4, #0
	mov r1, #0
	blx ov4_022043D0
	add r0, r4, #0
	bl ov4_021D2B04
	bl ov4_021D1F18
	pop {r4, pc}
_021D2A9A:
	add r0, r4, #0
	bl ov4_021D2B04
	bl ov4_021D1F18
	pop {r4, pc}
_021D2AA6:
	add r0, r4, #0
	mov r1, #4
	blx ov4_022043D0
	add r0, r4, #0
	bl ov4_021D2B04
	pop {r4, pc}
_021D2AB6:
	ldr r0, _021D2AF4 ; =0x0221A404
	ldr r2, [r4, #0]
	ldr r1, [r0, #4]
	ldr r0, _021D2AFC ; =0x000019E8
	ldr r0, [r1, r0]
	cmp r2, r0
	beq _021D2ACC
	add r0, r4, #0
	bl ov4_021D2B04
	pop {r4, pc}
_021D2ACC:
	add r0, r4, #0
	blx ov4_022027A8
	cmp r0, #0
	beq _021D2AF0
	ldr r0, _021D2AF4 ; =0x0221A404
	mov r2, #2
	ldr r1, [r0, #4]
	ldr r0, _021D2B00 ; =0x000019EC
	str r2, [r1, r0]
	pop {r4, pc}
_021D2AE2:
	add r0, r4, #0
	bl ov4_021D2B04
	pop {r4, pc}
_021D2AEA:
	add r0, r4, #0
	bl ov4_021D2B04
_021D2AF0:
	pop {r4, pc}
	nop
_021D2AF4: .word 0x0221A404
_021D2AF8: .word 0x00001A54
_021D2AFC: .word 0x000019E8
_021D2B00: .word 0x000019EC
	thumb_func_end ov4_021D2A38

	thumb_func_start ov4_021D2B04
ov4_021D2B04: ; 0x021D2B04
	push {r4, lr}
	add r4, r0, #0
	blx ov4_022028E0
	add r0, r4, #0
	blx ov4_02204188
	ldr r0, _021D2B20 ; =0x0221A404
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r0, _021D2B24 ; =0x00001A54
	str r2, [r1, r0]
	pop {r4, pc}
	nop
_021D2B20: .word 0x0221A404
_021D2B24: .word 0x00001A54
	thumb_func_end ov4_021D2B04

	thumb_func_start ov4_021D2B28
ov4_021D2B28: ; 0x021D2B28
	push {r4, r5, r6, lr}
	bl OS_GetTick
	add r4, r0, #0
	ldr r0, _021D2C58 ; =0x0221A404
	add r5, r1, #0
	ldr r0, [r0, #8]
	sub r1, r4, r0
	mov r0, #0xfa
	lsl r0, r0, #8
	mul r0, r1
	ldr r1, _021D2C5C ; =0x000082EA
	bl _u32_div_f
	ldr r1, _021D2C58 ; =0x0221A404
	ldr r3, _021D2C60 ; =0x0000411A
	ldr r2, [r1, #0]
	sub r0, r0, r3
	add r2, r2, r0
	ldr r0, _021D2C64 ; =0xFFFFD8F0
	str r2, [r1, #0]
	cmp r2, r0
	bge _021D2B5A
	mov r0, #0
	str r0, [r1, #0]
_021D2B5A:
	ldr r0, _021D2C58 ; =0x0221A404
	str r4, [r0, #8]
	str r5, [r0, #0xc]
	blx ov4_02205AE8
	ldr r4, _021D2C58 ; =0x0221A404
	ldr r0, _021D2C60 ; =0x0000411A
	ldr r1, [r4, #0]
	cmp r1, r0
	blt _021D2B80
	add r6, r0, #0
	add r5, r0, #0
_021D2B72:
	blx ov4_02205AE8
	ldr r0, [r4, #0]
	sub r0, r0, r6
	str r0, [r4, #0]
	cmp r0, r5
	bge _021D2B72
_021D2B80:
	ldr r0, _021D2C58 ; =0x0221A404
	ldr r2, [r0, #4]
	mov r0, #0x6a
	lsl r0, r0, #6
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _021D2BD4
	sub r0, r0, #4
	ldr r0, [r2, r0]
	cmp r0, #3
	bhi _021D2BC8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2BA2: ; jump table
	.short _021D2BAA - _021D2BA2 - 2 ; case 0
	.short _021D2BB2 - _021D2BA2 - 2 ; case 1
	.short _021D2BBA - _021D2BA2 - 2 ; case 2
	.short _021D2BC2 - _021D2BA2 - 2 ; case 3
_021D2BAA:
	mov r0, #3
	bl PM_SetAmpGain
	b _021D2BC8
_021D2BB2:
	mov r0, #2
	bl PM_SetAmpGain
	b _021D2BC8
_021D2BBA:
	mov r0, #1
	bl PM_SetAmpGain
	b _021D2BC8
_021D2BC2:
	mov r0, #0
	bl PM_SetAmpGain
_021D2BC8:
	ldr r0, _021D2C58 ; =0x0221A404
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #0x6a
	lsl r0, r0, #6
	str r2, [r1, r0]
_021D2BD4:
	ldr r3, _021D2C58 ; =0x0221A404
	ldr r2, _021D2C68 ; =0x000019E8
	ldr r0, [r3, #4]
	ldr r1, [r0, r2]
	cmp r1, #3
	beq _021D2C54
	add r1, r2, #4
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _021D2BF0
	cmp r1, #1
	beq _021D2C34
	cmp r1, #2
	pop {r4, r5, r6, pc}
_021D2BF0:
	bl ov4_021D1E30
	cmp r0, #0
	bne _021D2C16
	mov r0, #1
	bl ov4_021D2974
	cmp r0, #0
	beq _021D2C54
	ldr r1, _021D2C58 ; =0x0221A404
	ldr r0, _021D2C6C ; =0x000019EC
	ldr r2, [r1, #4]
	mov r3, #1
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	mov r2, #0x3c
	add r0, #0x6e
	strh r2, [r1, r0]
	pop {r4, r5, r6, pc}
_021D2C16:
	bl ov4_021D1E30
	cmp r0, #1
	bne _021D2C54
	mov r0, #0
	bl ov4_021D29C8
	cmp r0, #0
	beq _021D2C54
	ldr r0, _021D2C58 ; =0x0221A404
	mov r2, #2
	ldr r1, [r0, #4]
	ldr r0, _021D2C6C ; =0x000019EC
	str r2, [r1, r0]
	pop {r4, r5, r6, pc}
_021D2C34:
	add r1, r2, #0
	add r1, #0x72
	ldrh r1, [r0, r1]
	sub r4, r1, #1
	add r1, r2, #0
	add r1, #0x72
	strh r4, [r0, r1]
	add r0, r2, #0
	ldr r3, [r3, #4]
	add r0, #0x72
	ldrh r0, [r3, r0]
	cmp r0, #0
	bne _021D2C54
	mov r1, #0
	add r0, r2, #4
	str r1, [r3, r0]
_021D2C54:
	pop {r4, r5, r6, pc}
	nop
_021D2C58: .word 0x0221A404
_021D2C5C: .word 0x000082EA
_021D2C60: .word 0x0000411A
_021D2C64: .word 0xFFFFD8F0
_021D2C68: .word 0x000019E8
_021D2C6C: .word 0x000019EC
	thumb_func_end ov4_021D2B28

	thumb_func_start ov4_021D2C70
ov4_021D2C70: ; 0x021D2C70
	push {r3, lr}
	ldr r3, _021D2C94 ; =0x0221A404
	ldr r3, [r3, #4]
	cmp r3, #0
	bne _021D2C7E
	mov r0, #0
	pop {r3, pc}
_021D2C7E:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	blx ov4_02205B2C
	cmp r0, #0
	beq _021D2C8E
	mov r0, #1
	pop {r3, pc}
_021D2C8E:
	mov r0, #0
	pop {r3, pc}
	nop
_021D2C94: .word 0x0221A404
	thumb_func_end ov4_021D2C70

	thumb_func_start ov4_021D2C98
ov4_021D2C98: ; 0x021D2C98
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r4, #0x20
	add r5, r0, #0
	add r6, r1, #0
	add r0, r3, #0
	add r1, r4, #0
	bl sub_02018144
	str r0, [r5, #0]
	mov r1, #0
	add r2, r4, #0
	bl MI_CpuFill8
	ldr r1, [r5, #0]
	mov r0, #0x1f
	add r1, #0x1f
	bic r1, r0
	str r1, [r6, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov4_021D2C98

	thumb_func_start ov4_021D2CC0
ov4_021D2CC0: ; 0x021D2CC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r6, r1, #0
	ldr r1, _021D2E50 ; =0x0221587C
	add r4, r2, #0
	ldrb r2, [r1]
	add r5, r0, #0
	add r0, sp, #0x10
	strb r2, [r0, #4]
	ldrb r2, [r1, #1]
	ldrb r1, [r1, #2]
	strb r2, [r0, #5]
	strb r1, [r0, #6]
	ldr r0, _021D2E54 ; =0x0221A404
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021D2D2C
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r1, _021D2E58 ; =0x0221A408
	ldr r2, _021D2E5C ; =0x00001AB0
	add r0, sp, #0x10
	add r3, r5, #0
	bl ov4_021D2C98
	ldr r0, _021D2E54 ; =0x0221A404
	mov r2, #0x22
	ldr r3, [sp, #0x10]
	ldr r1, [r0, #4]
	lsl r2, r2, #6
	str r3, [r1, r2]
	ldr r1, [r0, #4]
	add r0, r2, #0
	add r0, #8
	add r2, r2, #4
	add r0, r1, r0
	add r1, r1, r2
	mov r2, #0x8f
	lsl r2, r2, #6
	mul r2, r4
	add r2, #0x20
	add r3, r5, #0
	bl ov4_021D2C98
	ldr r1, _021D2E54 ; =0x0221A404
	ldr r0, _021D2E60 ; =0x000019F4
	ldr r2, [r1, #4]
	str r5, [r2, r0]
	ldr r1, [r1, #4]
	mov r2, #0
	sub r0, #0x68
	str r2, [r1, r0]
	bl ov4_021D2808
_021D2D2C:
	ldr r3, _021D2E54 ; =0x0221A404
	mov r5, #0x22
	ldr r0, [r3, #4]
	ldr r2, _021D2E64 ; =0x00001A5C
	mov r1, #3
	str r1, [r0, r2]
	ldr r1, [r3, #4]
	add r0, r2, #4
	str r1, [r1, r0]
	add r0, r2, #0
	ldr r1, [r3, #4]
	lsl r5, r5, #6
	add r0, #8
	str r5, [r1, r0]
	mov r5, #0x41
	add r0, r2, #0
	ldr r1, [r3, #4]
	lsl r5, r5, #6
	add r0, #0xc
	str r5, [r1, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	mov r1, #1
	add r0, #0x10
	str r1, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	mov r7, #0
	add r0, #0x14
	str r7, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x18
	str r7, [r5, r0]
	sub r0, r2, #3
	ldr r5, [r3, #4]
	sub r2, #0x64
	strb r1, [r5, r0]
	ldr r0, [r3, #4]
	add r0, r0, r2
	add r2, sp, #0x14
	bl NNS_SndStrmAllocChannel
	ldr r0, _021D2E54 ; =0x0221A404
	ldr r1, [r0, #4]
	ldr r0, _021D2E68 ; =0x000019F8
	add r0, r1, r0
	add r1, r7, #0
	bl NNS_SndStrmSetVolume
	ldr r0, _021D2E54 ; =0x0221A404
	ldr r3, _021D2E6C ; =0x0000088C
	ldr r2, [r0, #4]
	mov r0, #0x41
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021D2E70 ; =ov4_021D28B4
	mov r1, #1
	str r0, [sp, #8]
	ldr r0, _021D2E68 ; =0x000019F8
	str r2, [sp, #0xc]
	add r0, r2, r0
	add r2, r2, r3
	sub r3, #0xc
	bl NNS_SndStrmSetup
	ldr r1, _021D2E54 ; =0x0221A404
	ldr r0, _021D2E74 ; =0x000019EC
	ldr r2, [r1, #4]
	add r3, r7, #0
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x68
	str r3, [r1, r0]
	bl sub_0203895C
	bl sub_0203272C
	cmp r0, #0
	bne _021D2DD4
	mov r0, #1
	str r0, [sp, #0x20]
	b _021D2DD8
_021D2DD4:
	mov r0, #3
	str r0, [sp, #0x20]
_021D2DD8:
	ldr r1, _021D2E54 ; =0x0221A404
	ldr r3, [sp, #0x20]
	ldr r2, [r1, #4]
	ldr r0, _021D2E78 ; =0x000019E8
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	sub r0, #0x58
	add r0, r1, r0
	str r0, [sp, #0x18]
	str r4, [sp, #0x1c]
	blx ov4_021D9968
	add r1, sp, #0x10
	strb r0, [r1, #0x14]
	mov r0, #0
	ldrb r1, [r1, #0x14]
	mvn r0, r0
	cmp r1, r0
	bne _021D2E02
	bl sub_02022974
_021D2E02:
	ldr r0, _021D2E54 ; =0x0221A404
	ldr r1, _021D2E78 ; =0x000019E8
	ldr r0, [r0, #4]
	ldr r1, [r0, r1]
	cmp r1, #3
	bne _021D2E14
	ldr r1, _021D2E7C ; =ov4_021D2A10
	str r1, [sp, #0x30]
	b _021D2E18
_021D2E14:
	ldr r1, _021D2E80 ; =ov4_021D2A38
	str r1, [sp, #0x30]
_021D2E18:
	mov r1, #0
	str r1, [sp, #0x34]
	ldr r1, _021D2E84 ; =0x00000884
	ldr r0, [r0, r1]
	str r0, [sp, #0x28]
	mov r0, #0x8f
	lsl r0, r0, #6
	mul r0, r4
	add r0, #0x20
	str r0, [sp, #0x2c]
	add r0, sp, #0x18
	blx ov4_02205988
	ldr r0, _021D2E54 ; =0x0221A404
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r0, _021D2E88 ; =0x000019F0
	str r2, [r1, r0]
	add r0, r6, #0
	blx ov4_02202E0C
	bl ov4_021D2E8C
	mov r0, #1
	blx ov4_02202EB0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2E50: .word 0x0221587C
_021D2E54: .word 0x0221A404
_021D2E58: .word 0x0221A408
_021D2E5C: .word 0x00001AB0
_021D2E60: .word 0x000019F4
_021D2E64: .word 0x00001A5C
_021D2E68: .word 0x000019F8
_021D2E6C: .word 0x0000088C
_021D2E70: .word ov4_021D28B4
_021D2E74: .word 0x000019EC
_021D2E78: .word 0x000019E8
_021D2E7C: .word ov4_021D2A10
_021D2E80: .word ov4_021D2A38
_021D2E84: .word 0x00000884
_021D2E88: .word 0x000019F0
	thumb_func_end ov4_021D2CC0

	thumb_func_start ov4_021D2E8C
ov4_021D2E8C: ; 0x021D2E8C
	ldr r0, _021D2E98 ; =0x0221A404
	ldr r3, _021D2E9C ; =NNS_SndStrmStart
	ldr r1, [r0, #4]
	ldr r0, _021D2EA0 ; =0x000019F8
	add r0, r1, r0
	bx r3
	; .align 2, 0
_021D2E98: .word 0x0221A404
_021D2E9C: .word NNS_SndStrmStart
_021D2EA0: .word 0x000019F8
	thumb_func_end ov4_021D2E8C

	thumb_func_start ov4_021D2EA4
ov4_021D2EA4: ; 0x021D2EA4
	push {r3, lr}
	ldr r0, _021D2EEC ; =0x0221A404
	ldr r1, _021D2EF0 ; =0x00001A54
	ldr r2, [r0, #4]
	ldr r0, [r2, r1]
	cmp r0, #0
	beq _021D2EBA
	sub r1, #0x68
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _021D2EC0
_021D2EBA:
	bl ov4_021D1F18
	pop {r3, pc}
_021D2EC0:
	cmp r1, #1
	bne _021D2ED4
	mov r1, #2
	blx ov4_022042F4
	cmp r0, #0
	beq _021D2ED4
	bl ov4_021D1F18
	pop {r3, pc}
_021D2ED4:
	ldr r0, _021D2EEC ; =0x0221A404
	ldr r1, [r0, #4]
	ldr r0, _021D2EF0 ; =0x00001A54
	ldr r0, [r1, r0]
	mov r1, #1
	blx ov4_022042F4
	cmp r0, #0
	beq _021D2EEA
	bl ov4_021D1F18
_021D2EEA:
	pop {r3, pc}
	; .align 2, 0
_021D2EEC: .word 0x0221A404
_021D2EF0: .word 0x00001A54
	thumb_func_end ov4_021D2EA4

	thumb_func_start ov4_021D2EF4
ov4_021D2EF4: ; 0x021D2EF4
	ldr r1, _021D2F00 ; =0x0221A404
	ldr r2, [r1, #4]
	ldr r1, _021D2F04 ; =0x0000198C
	str r0, [r2, r1]
	bx lr
	nop
_021D2F00: .word 0x0221A404
_021D2F04: .word 0x0000198C
	thumb_func_end ov4_021D2EF4

	thumb_func_start ov4_021D2F08
ov4_021D2F08: ; 0x021D2F08
	push {r4, lr}
	ldr r0, _021D2F68 ; =0x0221A404
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021D2F64
	ldr r0, _021D2F6C ; =0x0000198C
	ldr r4, [r1, r0]
	bl MIC_StopAutoSampling
	ldr r0, _021D2F68 ; =0x0221A404
	ldr r1, [r0, #4]
	ldr r0, _021D2F70 ; =0x000019F8
	add r0, r1, r0
	bl NNS_SndStrmStop
	ldr r0, _021D2F68 ; =0x0221A404
	ldr r1, [r0, #4]
	ldr r0, _021D2F70 ; =0x000019F8
	add r0, r1, r0
	bl NNS_SndStrmFreeChannel
	blx ov4_02205AC0
	ldr r0, _021D2F68 ; =0x0221A404
	ldr r1, _021D2F74 ; =0x00000888
	ldr r2, [r0, #4]
	ldr r0, _021D2F78 ; =0x000019F4
	ldr r1, [r2, r1]
	ldr r0, [r2, r0]
	bl sub_02018238
	ldr r0, _021D2F68 ; =0x0221A404
	mov r1, #0x22
	ldr r2, [r0, #4]
	ldr r0, _021D2F78 ; =0x000019F4
	lsl r1, r1, #6
	ldr r0, [r2, r0]
	ldr r1, [r2, r1]
	bl sub_02018238
	mov r1, #0
	ldr r0, _021D2F68 ; =0x0221A404
	cmp r4, #0
	str r1, [r0, #4]
	beq _021D2F64
	blx r4
_021D2F64:
	pop {r4, pc}
	nop
_021D2F68: .word 0x0221A404
_021D2F6C: .word 0x0000198C
_021D2F70: .word 0x000019F8
_021D2F74: .word 0x00000888
_021D2F78: .word 0x000019F4
	thumb_func_end ov4_021D2F08

	thumb_func_start ov4_021D2F7C
ov4_021D2F7C: ; 0x021D2F7C
	push {r3, lr}
	sub sp, #0x10
	ldr r0, _021D2FA0 ; =0x0221A404
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021D2F9A
	add r0, sp, #0
	blx ov4_022052BC
	ldr r0, [sp, #4]
	cmp r0, #2
	ble _021D2F9A
	ldr r0, [sp]
	add sp, #0x10
	pop {r3, pc}
_021D2F9A:
	mov r0, #0
	add sp, #0x10
	pop {r3, pc}
	; .align 2, 0
_021D2FA0: .word 0x0221A404
	thumb_func_end ov4_021D2F7C

	thumb_func_start ov4_021D2FA4
ov4_021D2FA4: ; 0x021D2FA4
	ldr r0, _021D2FB0 ; =0x0221A404
	mov r2, #1
	ldr r1, [r0, #4]
	ldr r0, _021D2FB4 ; =0x000019F0
	str r2, [r1, r0]
	bx lr
	; .align 2, 0
_021D2FB0: .word 0x0221A404
_021D2FB4: .word 0x000019F0
	thumb_func_end ov4_021D2FA4

	thumb_func_start ov4_021D2FB8
ov4_021D2FB8: ; 0x021D2FB8
	ldr r0, _021D2FC4 ; =0x0221A404
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r0, _021D2FC8 ; =0x000019F0
	str r2, [r1, r0]
	bx lr
	; .align 2, 0
_021D2FC4: .word 0x0221A404
_021D2FC8: .word 0x000019F0
	thumb_func_end ov4_021D2FB8

	thumb_func_start ov4_021D2FCC
ov4_021D2FCC: ; 0x021D2FCC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021D302C ; =0x0221A404
	add r7, r1, #0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021D2FE2
	ldr r0, _021D3030 ; =0x000019E8
	ldr r0, [r1, r0]
	cmp r0, #3
	beq _021D2FE6
_021D2FE2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D2FE6:
	mov r4, #0
	add r5, r4, #0
_021D2FEA:
	cmp r4, r7
	beq _021D3020
	mov r0, #1
	lsl r0, r4
	tst r0, r6
	beq _021D3020
	ldr r0, _021D302C ; =0x0221A404
	ldr r0, [r0, #4]
	add r1, r0, r5
	ldr r0, _021D3034 ; =0x000019D8
	ldr r0, [r1, r0]
	cmp r0, #1
	beq _021D3020
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	blx ov4_022043F4
	cmp r0, #0
	beq _021D3014
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D3014:
	ldr r0, _021D302C ; =0x0221A404
	mov r1, #1
	ldr r0, [r0, #4]
	add r2, r0, r5
	ldr r0, _021D3034 ; =0x000019D8
	str r1, [r2, r0]
_021D3020:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021D2FEA
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D302C: .word 0x0221A404
_021D3030: .word 0x000019E8
_021D3034: .word 0x000019D8
	thumb_func_end ov4_021D2FCC

	.rodata


	.global Unk_ov4_0221587C
Unk_ov4_0221587C: ; 0x0221587C
	.incbin "incbin/overlay4_rodata.bin", 0x14, 0x4



	.bss


	.global Unk_ov4_0221A404
Unk_ov4_0221A404: ; 0x0221A404
	.space 0x4

	.global Unk_ov4_0221A408
Unk_ov4_0221A408: ; 0x0221A408
	.space 0x4

	.global Unk_ov4_0221A40C
Unk_ov4_0221A40C: ; 0x0221A40C
	.space 0x8

