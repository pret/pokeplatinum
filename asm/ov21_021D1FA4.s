	.include "macros/function.inc"
	.include "include/ov21_021D1FA4.inc"

	

	.text


	thumb_func_start ov21_021D1FA4
ov21_021D1FA4: ; 0x021D1FA4
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0x45
	add r4, r1, #0
	bl sub_02006C24
	mov r1, #0x9f
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_02018340
	str r0, [r5, #0]
	mov r1, #1
	mov r0, #0
	str r0, [sp, #0x14]
	str r1, [sp, #0x10]
	str r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	add r0, sp, #0x10
	bl sub_02018368
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl ov21_021D2830
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D29D0
	add r1, r5, #0
	mov r0, #0x80
	add r1, #0x14
	add r2, r4, #0
	bl sub_020095C4
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x20
	mov r1, #0
	add r2, r4, #0
	bl sub_02009714
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0x20
	mov r1, #1
	add r2, r4, #0
	bl sub_02009714
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x20
	mov r1, #2
	add r2, r4, #0
	bl sub_02009714
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x20
	mov r1, #3
	add r2, r4, #0
	bl sub_02009714
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp]
	ldr r0, [r5, #0]
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	add r0, sp, #0
	str r4, [sp, #0xc]
	bl ov21_021D4C0C
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #2
	add r1, r4, #0
	bl sub_02002BB8
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D2A0C
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D2AE8
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D2C8C
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D2E70
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D2F5C
	add sp, #0x20
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D1FA4

	thumb_func_start ov21_021D2098
ov21_021D2098: ; 0x021D2098
	push {r4, lr}
	add r4, r0, #0
	bl ov21_021D2D4C
	add r0, r4, #0
	bl ov21_021D2C10
	add r0, r4, #0
	bl ov21_021D300C
	add r0, r4, #0
	bl ov21_021D2F14
	add r0, r4, #0
	bl ov21_021D2A00
	ldr r0, [r4, #0]
	bl ov21_021D299C
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021964
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02009754
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02009754
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02009754
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02009754
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov21_021D4C6C
	mov r0, #2
	bl sub_02002C60
	add r0, r4, #0
	bl ov21_021D2AB4
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02006CA8
	mov r2, #0xa
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #6
	bl memset
	pop {r4, pc}
	thumb_func_end ov21_021D2098

	thumb_func_start ov21_021D2124
ov21_021D2124: ; 0x021D2124
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020219F8
	bl NNS_G2dSetupSoftwareSpriteCamera
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02007768
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020150EC
	pop {r4, pc}
	thumb_func_end ov21_021D2124

	thumb_func_start ov21_021D214C
ov21_021D214C: ; 0x021D214C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0201C2B8
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02008A94
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D214C

	thumb_func_start ov21_021D2164
ov21_021D2164: ; 0x021D2164
	push {r3, lr}
	mov r3, #0
	bl ov21_021D222C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021D2164

	thumb_func_start ov21_021D2170
ov21_021D2170: ; 0x021D2170
	ldr r3, _021D2178 ; =ov21_021D2274
	mov r1, #0
	bx r3
	nop
_021D2178: .word ov21_021D2274
	thumb_func_end ov21_021D2170

	thumb_func_start ov21_021D217C
ov21_021D217C: ; 0x021D217C
	ldr r3, _021D2184 ; =ov21_021D2280
	mov r2, #0
	bx r3
	nop
_021D2184: .word ov21_021D2280
	thumb_func_end ov21_021D217C

	thumb_func_start ov21_021D2188
ov21_021D2188: ; 0x021D2188
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [sp, #0x10]
	add r7, r0, r1
	ldr r0, [sp, #0x54]
	add r4, r2, #0
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [r7, r0]
	add r6, r3, #0
	cmp r0, #0
	beq _021D21AA
	bl sub_02007DC8
_021D21AA:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021D21BE
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	bl sub_02075DAC
	add r4, r0, #0
_021D21BE:
	ldr r0, [sp, #0x40]
	lsl r1, r5, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x30
	ldrb r0, [r0, #0x14]
	lsl r2, r4, #0x18
	lsl r3, r6, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	lsr r1, r1, #0x10
	str r0, [sp, #8]
	add r0, sp, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02075FB4
	cmp r6, #0
	bne _021D2202
	ldr r0, [sp, #0x48]
	lsl r1, r4, #0x18
	str r0, [sp]
	add r3, sp, #0x30
	lsl r0, r5, #0x10
	lsl r2, r6, #0x18
	ldrb r3, [r3, #0x14]
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl sub_02076648
	add r3, r0, #0
	b _021D2204
_021D2202:
	mov r3, #0
_021D2204:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r1, #0x55
	ldr r4, [sp, #0x50]
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r2, [sp, #0x4c]
	add r1, sp, #0x18
	add r3, r4, r3
	bl sub_02007C34
	ldr r1, [sp, #0x14]
	str r0, [r7, r1]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D2188

	thumb_func_start ov21_021D222C
ov21_021D222C: ; 0x021D222C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x56
	lsl r1, r1, #2
	add r5, r0, r1
	lsl r4, r3, #2
	add r7, r2, #0
	ldr r0, [r5, r4]
	mov r1, #0
	add r2, r6, #0
	bl sub_02007DEC
	ldr r0, [r5, r4]
	mov r1, #1
	add r2, r7, #0
	bl sub_02007DEC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D222C

	thumb_func_start ov21_021D2250
ov21_021D2250: ; 0x021D2250
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x56
	lsl r1, r1, #2
	add r5, r0, r1
	lsl r4, r3, #2
	ldr r0, [r5, r4]
	mov r1, #0
	add r7, r2, #0
	bl sub_020080C0
	str r0, [r6, #0]
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_020080C0
	str r0, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D2250

	thumb_func_start ov21_021D2274
ov21_021D2274: ; 0x021D2274
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end ov21_021D2274

	thumb_func_start ov21_021D2280
ov21_021D2280: ; 0x021D2280
	push {r3, lr}
	lsl r2, r2, #2
	add r2, r0, r2
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _021D22A6
	cmp r1, #1
	bne _021D229E
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	pop {r3, pc}
_021D229E:
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
_021D22A6:
	pop {r3, pc}
	thumb_func_end ov21_021D2280

	thumb_func_start ov21_021D22A8
ov21_021D22A8: ; 0x021D22A8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D22BA
	bl GF_AssertFail
_021D22BA:
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D22A8

	thumb_func_start ov21_021D22C4
ov21_021D22C4: ; 0x021D22C4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D22D6
	bl GF_AssertFail
_021D22D6:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D22C4

	thumb_func_start ov21_021D22E0
ov21_021D22E0: ; 0x021D22E0
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #0x6d
	lsl r4, r4, #2
	add r0, r0, r4
	bl ov21_021D22F8
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D22E0

	thumb_func_start ov21_021D22F8
ov21_021D22F8: ; 0x021D22F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	add r6, r1, #0
	add r4, r2, #0
	cmp r3, r0
	bne _021D231A
	ldr r1, [sp, #0x10]
	ldr r0, [r5, #0x2c]
	cmp r1, r0
	bne _021D231A
	ldr r0, [r5, #8]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_020129D0
	pop {r4, r5, r6, pc}
_021D231A:
	ldr r0, [sp, #0x10]
	str r3, [r5, #0x28]
	str r0, [r5, #0x2c]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021D232A
	bl ov21_021D4D1C
_021D232A:
	cmp r4, #0
	beq _021D233A
	add r0, r6, #0
	add r1, r4, #0
	bl ov21_021D4CB8
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
_021D233A:
	add r0, r6, #0
	bl ov21_021D4CA0
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D22F8

	thumb_func_start ov21_021D2344
ov21_021D2344: ; 0x021D2344
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #3
	ble _021D2352
	bl GF_AssertFail
_021D2352:
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D2344

	thumb_func_start ov21_021D2360
ov21_021D2360: ; 0x021D2360
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_02021FE0
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02021FE0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl sub_02012AF0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D2360

	thumb_func_start ov21_021D238C
ov21_021D238C: ; 0x021D238C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x6d
	add r4, r1, #0
	lsl r0, r0, #2
	lsl r1, r4, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	bl sub_02021E80
	mov r0, #0x6e
	lsl r0, r0, #2
	lsl r1, r4, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	bl sub_02021E80
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r1, r4, #0x18
	ldr r0, [r0, #0]
	lsr r1, r1, #0x18
	bl sub_02012A00
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D238C

	thumb_func_start ov21_021D23C0
ov21_021D23C0: ; 0x021D23C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	cmp r0, #0
	beq _021D23D4
	bl sub_02021CAC
_021D23D4:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D23E4
	add r1, r4, #0
	bl sub_02021CAC
_021D23E4:
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D23F6
	add r1, r4, #0
	bl sub_020129D0
_021D23F6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D23C0

	thumb_func_start ov21_021D23F8
ov21_021D23F8: ; 0x021D23F8
	push {r4, r5}
	ldr r4, [sp, #0x18]
	ldr r5, [sp, #0x14]
	str r4, [r0, #0]
	ldr r4, [sp, #0x10]
	str r4, [r0, #4]
	mov r4, #0x20
	orr r4, r5
	str r4, [r0, #8]
	str r2, [r0, #0xc]
	sub r2, r3, r2
	str r2, [r0, #0x10]
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xc]
	str r3, [r0, #0x14]
	sub r2, r2, r3
	str r2, [r0, #0x18]
	str r1, [r0, #0x1c]
	mov r1, #0
	str r1, [r0, #0x20]
	pop {r4, r5}
	bx lr
	thumb_func_end ov21_021D23F8

	thumb_func_start ov21_021D2424
ov21_021D2424: ; 0x021D2424
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov21_021D24EC
	cmp r0, #0
	bne _021D2472
	add r0, r5, #0
	bl ov21_021D2484
	add r4, r0, #0
	add r0, r5, #0
	bl ov21_021D24B8
	ldr r1, [r5, #0]
	cmp r1, #0
	bne _021D245A
	mov r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, _021D247C ; =0x04000050
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r3, r4, #0
	bl G2x_SetBlendBrightnessExt_
	b _021D246C
_021D245A:
	mov r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, _021D2480 ; =0x04001050
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r3, r4, #0
	bl G2x_SetBlendBrightnessExt_
_021D246C:
	ldr r0, [r5, #0x20]
	add r0, r0, #1
	str r0, [r5, #0x20]
_021D2472:
	add r0, r5, #0
	bl ov21_021D24EC
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D247C: .word 0x04000050
_021D2480: .word 0x04001050
	thumb_func_end ov21_021D2424

	thumb_func_start ov21_021D2484
ov21_021D2484: ; 0x021D2484
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	ldr r2, [r4, #0x20]
	lsl r0, r0, #0xc
	lsl r2, r2, #0xc
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
	ldr r1, [r4, #0x1c]
	lsl r1, r1, #0xc
	bl FX_Div
	asr r1, r0, #0xc
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	pop {r4, pc}
	thumb_func_end ov21_021D2484

	thumb_func_start ov21_021D24B8
ov21_021D24B8: ; 0x021D24B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0x20]
	lsl r0, r0, #0xc
	lsl r2, r2, #0xc
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
	ldr r1, [r4, #0x1c]
	lsl r1, r1, #0xc
	bl FX_Div
	asr r1, r0, #0xc
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	pop {r4, pc}
	thumb_func_end ov21_021D24B8

	thumb_func_start ov21_021D24EC
ov21_021D24EC: ; 0x021D24EC
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x1c]
	cmp r1, r0
	ble _021D24F8
	mov r0, #1
	bx lr
_021D24F8:
	mov r0, #0
	bx lr
	thumb_func_end ov21_021D24EC

	thumb_func_start ov21_021D24FC
ov21_021D24FC: ; 0x021D24FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov21_021D24B8
	neg r4, r0
	add r0, r5, #0
	bl ov21_021D2170
	mov r3, #0
	add r1, r4, #0
	add r2, r4, #0
	str r3, [sp]
	bl sub_020086FC
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D24FC

	thumb_func_start ov21_021D251C
ov21_021D251C: ; 0x021D251C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	bl ov21_021D24B8
	neg r6, r0
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D2274
	mov r3, #0
	add r1, r6, #0
	add r2, r6, #0
	str r3, [sp]
	bl sub_020086FC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021D251C

	thumb_func_start ov21_021D2544
ov21_021D2544: ; 0x021D2544
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021D4F94
	add r0, r5, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov21_021D4FBC
	ldr r0, [sp, #4]
	str r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl ov21_021D2574
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D2544

	thumb_func_start ov21_021D2574
ov21_021D2574: ; 0x021D2574
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ov21_021D3124
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov21_021D2574

	thumb_func_start ov21_021D2584
ov21_021D2584: ; 0x021D2584
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021D258C:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_02021CAC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021D258C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D2584

	thumb_func_start ov21_021D25A0
ov21_021D25A0: ; 0x021D25A0
	ldr r3, _021D25A8 ; =sub_02021D34
	ldr r0, [r0, #0]
	bx r3
	nop
_021D25A8: .word sub_02021D34
	thumb_func_end ov21_021D25A0

	thumb_func_start ov21_021D25AC
ov21_021D25AC: ; 0x021D25AC
	str r1, [r0, #0x30]
	cmp r1, #0
	bne _021D25B6
	mov r1, #0
	str r1, [r0, #0x34]
_021D25B6:
	bx lr
	thumb_func_end ov21_021D25AC

	thumb_func_start ov21_021D25B8
ov21_021D25B8: ; 0x021D25B8
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021D4F94
	add r0, r5, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov21_021D4FBC
	ldr r0, [sp, #4]
	str r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl ov21_021D25E8
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D25B8

	thumb_func_start ov21_021D25E8
ov21_021D25E8: ; 0x021D25E8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r3, #0
	mov r3, #0x81
	add r4, r1, #0
	add r5, r0, #0
	lsl r3, r3, #2
	add r6, r2, #0
	str r4, [r5, r3]
	add r0, r3, #4
	str r6, [r5, r0]
	add r0, r3, #0
	add r0, #8
	str r7, [r5, r0]
	add r0, r3, #0
	ldr r1, [sp, #0x18]
	add r0, #0xc
	str r1, [r5, r0]
	add r0, r3, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	add r2, r3, #4
	str r0, [sp]
	add r0, r3, #0
	ldr r1, [r5, r3]
	add r3, #8
	sub r0, #0x20
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r5, r0
	bl ov21_021D30D8
	mov r0, #0x26
	lsl r0, r0, #4
	str r4, [r5, r0]
	add r1, r0, #4
	str r6, [r5, r1]
	add r1, r0, #0
	add r1, #8
	str r7, [r5, r1]
	add r1, r0, #0
	ldr r2, [sp, #0x18]
	add r1, #0xc
	str r2, [r5, r1]
	mov r1, #0
	add r0, #0x10
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D25E8

	thumb_func_start ov21_021D2648
ov21_021D2648: ; 0x021D2648
	str r1, [r0, #0]
	str r3, [r0, #4]
	str r1, [r0, #8]
	str r3, [r0, #0xc]
	sub r1, r2, r1
	str r1, [r0, #0x10]
	ldr r1, [sp]
	sub r1, r1, r3
	str r1, [r0, #0x14]
	ldr r1, [sp, #4]
	str r1, [r0, #0x1c]
	mov r1, #0
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end ov21_021D2648

	thumb_func_start ov21_021D2664
ov21_021D2664: ; 0x021D2664
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	lsl r0, r0, #0xc
	lsl r2, r2, #0xc
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
	ldr r1, [r5, #0x1c]
	lsl r1, r1, #0xc
	bl FX_Div
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	lsl r0, r0, #0xc
	lsl r2, r2, #0xc
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
	ldr r1, [r5, #0x1c]
	lsl r1, r1, #0xc
	bl FX_Div
	ldr r1, [r5, #8]
	asr r2, r4, #0xc
	add r1, r2, r1
	str r1, [r5, #0]
	asr r1, r0, #0xc
	ldr r0, [r5, #0xc]
	add r0, r1, r0
	str r0, [r5, #4]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	add r0, r0, #1
	cmp r0, r1
	bgt _021D26DA
	str r0, [r5, #0x18]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D26DA:
	str r1, [r5, #0x18]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D2664

	thumb_func_start ov21_021D26E0
ov21_021D26E0: ; 0x021D26E0
	mov r1, #0x9f
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov21_021D26E0

	thumb_func_start ov21_021D26E8
ov21_021D26E8: ; 0x021D26E8
	push {r4, r5, r6, lr}
	add r5, r2, #0
	mov r2, #0x9f
	lsl r2, r2, #2
	add r6, r3, #0
	ldr r0, [r0, r2]
	add r2, r6, #0
	bl sub_02006CB8
	add r4, r0, #0
	beq _021D2720
	cmp r5, #0
	beq _021D2720
	ldr r1, [r4, #0]
	add r0, r6, #0
	lsr r1, r1, #8
	bl sub_02018144
	add r5, r0, #0
	beq _021D271E
	add r0, r4, #0
	add r1, r5, #0
	bl MI_UncompressLZ8
	add r0, r4, #0
	bl sub_020181C4
_021D271E:
	add r4, r5, #0
_021D2720:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D26E8

	thumb_func_start ov21_021D2724
ov21_021D2724: ; 0x021D2724
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r3, #0
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	ldr r4, [sp, #0x24]
	bl ov21_021D26E8
	add r7, r0, #0
	beq _021D2766
	add r1, sp, #4
	bl NNS_G2dGetUnpackedBGCharacterData
	cmp r0, #0
	beq _021D2760
	cmp r4, #0
	bne _021D274C
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x10]
_021D274C:
	ldr r0, [sp, #0x20]
	lsl r1, r5, #0x18
	str r0, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	ldr r2, [r2, #0x14]
	lsr r1, r1, #0x18
	add r3, r4, #0
	bl sub_0201958C
_021D2760:
	add r0, r7, #0
	bl sub_020181C4
_021D2766:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D2724

	thumb_func_start ov21_021D276C
ov21_021D276C: ; 0x021D276C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r3, #0
	add r5, r2, #0
	ldr r3, [sp, #0x1c]
	mov r2, #0
	ldr r4, [sp, #0x18]
	bl ov21_021D26E8
	add r7, r0, #0
	beq _021D27B2
	add r1, sp, #0
	bl NNS_G2dGetUnpackedPaletteData
	cmp r0, #0
	beq _021D27AC
	cmp r4, #0
	bne _021D2792
	ldr r0, [sp]
	ldr r4, [r0, #8]
_021D2792:
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [sp]
	add r2, r4, #0
	ldr r3, _021D27B4 ; =0x021E9CA4
	lsl r4, r5, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	blx r3
_021D27AC:
	add r0, r7, #0
	bl sub_020181C4
_021D27B2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D27B4: .word 0x021E9CA4
	thumb_func_end ov21_021D276C

	thumb_func_start ov21_021D27B8
ov21_021D27B8: ; 0x021D27B8
	push {r3, r4, r5, lr}
	add r5, r3, #0
	ldr r3, [sp, #0x10]
	bl ov21_021D26E8
	add r4, r0, #0
	beq _021D27DA
	add r1, r5, #0
	bl NNS_G2dGetUnpackedScreenData
	cmp r0, #0
	bne _021D27DA
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D27DA:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D27B8

	thumb_func_start ov21_021D27E0
ov21_021D27E0: ; 0x021D27E0
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #0
	bl ov21_021D26E8
	add r4, r0, #0
	beq _021D2802
	add r1, r5, #0
	bl NNS_G2dGetUnpackedPaletteData
	cmp r0, #0
	bne _021D2802
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D2802:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D27E0

	thumb_func_start ov21_021D2808
ov21_021D2808: ; 0x021D2808
	push {r3, r4, r5, lr}
	add r5, r3, #0
	ldr r3, [sp, #0x10]
	bl ov21_021D26E8
	add r4, r0, #0
	beq _021D282A
	add r1, r5, #0
	bl NNS_G2dGetUnpackedBGCharacterData
	cmp r0, #0
	bne _021D282A
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D282A:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D2808

	thumb_func_start ov21_021D2830
ov21_021D2830: ; 0x021D2830
	push {r4, r5, r6, lr}
	sub sp, #0xa8
	ldr r6, _021D2984 ; =0x021E9C6C
	add r3, sp, #0x8c
	add r5, r0, #0
	add r4, r1, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	add r0, r5, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r6, _021D2988 ; =0x021E9C50
	add r3, sp, #0x70
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	add r0, r5, #0
	mov r1, #2
	bl sub_02019EBC
	mov r0, #0
	mov r1, #2
	bl sub_02019060
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r6, _021D298C ; =0x021E9C34
	add r3, sp, #0x54
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	add r0, r5, #0
	mov r1, #3
	bl sub_02019EBC
	ldr r6, _021D2990 ; =0x021E9C18
	add r3, sp, #0x38
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	add r0, r5, #0
	mov r1, #5
	bl sub_02019EBC
	ldr r6, _021D2994 ; =0x021E9BFC
	add r3, sp, #0x1c
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #6
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	add r0, r5, #0
	mov r1, #6
	bl sub_02019EBC
	ldr r6, _021D2998 ; =0x021E9C88
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #7
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #1
	bl sub_020183C4
	mov r0, #7
	mov r1, #0x40
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	add r0, r5, #0
	mov r1, #7
	bl sub_02019EBC
	add sp, #0xa8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D2984: .word 0x021E9C6C
_021D2988: .word 0x021E9C50
_021D298C: .word 0x021E9C34
_021D2990: .word 0x021E9C18
_021D2994: .word 0x021E9BFC
_021D2998: .word 0x021E9C88
	thumb_func_end ov21_021D2830

	thumb_func_start ov21_021D299C
ov21_021D299C: ; 0x021D299C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #7
	bl sub_02019044
	add r0, r4, #0
	mov r1, #6
	bl sub_02019044
	pop {r4, pc}
	thumb_func_end ov21_021D299C

	thumb_func_start ov21_021D29D0
ov21_021D29D0: ; 0x021D29D0
	push {r3, r4, lr}
	sub sp, #0x14
	mov r3, #0
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, r4, #4
	mov r2, #1
	bl sub_0201A7E8
	add r0, r4, #4
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #4
	bl sub_0201A954
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov21_021D29D0

	thumb_func_start ov21_021D2A00
ov21_021D2A00: ; 0x021D2A00
	ldr r3, _021D2A08 ; =sub_0201A8FC
	add r0, r0, #4
	bx r3
	nop
_021D2A08: .word sub_0201A8FC
	thumb_func_end ov21_021D2A00

	thumb_func_start ov21_021D2A0C
ov21_021D2A0C: ; 0x021D2A0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0200762C
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r3, _021D2AA0 ; =0x02100DEC
	mov r0, #2
	mov r1, #0
	ldr r3, [r3, #0]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _021D2AA4 ; =0x02100DF4
	add r4, r0, #0
	ldr r3, [r3, #0]
	mov r0, #0x80
	mov r1, #0
	mov r2, #1
	blx r3
	ldr r2, _021D2AA8 ; =0x7FFF0000
	add r6, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	and r2, r4
	lsl r1, r4, #0x10
	lsr r2, r2, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0xd
	lsl r2, r2, #4
	bl sub_02008A78
	ldr r2, _021D2AAC ; =0xFFFF0000
	mov r0, #0x55
	lsl r0, r0, #2
	and r2, r6
	lsl r1, r6, #0x10
	lsr r2, r2, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0xd
	lsl r2, r2, #3
	bl sub_02008A84
	mov r2, #0
	mov r0, #0x56
	add r3, r5, #0
	add r1, r2, #0
	lsl r0, r0, #2
_021D2A74:
	add r2, r2, #1
	str r1, [r3, r0]
	add r3, r3, #4
	cmp r2, #4
	blt _021D2A74
	ldr r4, _021D2AB0 ; =0x021E9BEC
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	str r7, [sp, #0xc]
	bl sub_02015064
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r5, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2AA0: .word 0x02100DEC
_021D2AA4: .word 0x02100DF4
_021D2AA8: .word 0x7FFF0000
_021D2AAC: .word 0xFFFF0000
_021D2AB0: .word 0x021E9BEC
	thumb_func_end ov21_021D2A0C

	thumb_func_start ov21_021D2AB4
ov21_021D2AB4: ; 0x021D2AB4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r6, #0x56
	mov r4, #0
	add r5, r7, #0
	lsl r6, r6, #2
_021D2AC0:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021D2ACA
	bl sub_02007DC8
_021D2ACA:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021D2AC0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_02007B6C
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_020150A8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D2AB4

	thumb_func_start ov21_021D2AE8
ov21_021D2AE8: ; 0x021D2AE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	mov r1, #0x6d
	add r5, r0, #0
	lsl r1, r1, #2
	add r4, r5, r1
	bl ov21_021D26E0
	add r7, r0, #0
	ldr r0, _021D2B84 ; =0x00000BB8
	mov r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	mov r0, #5
	str r6, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r2, #0x4e
	bl sub_02009A4C
	str r0, [r4, #0xc]
	bl sub_0200A3DC
	ldr r0, [r4, #0xc]
	bl sub_02009D4C
	ldr r0, _021D2B84 ; =0x00000BB8
	add r1, r7, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x51
	str r6, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #3
	mov r3, #0
	bl sub_02009B04
	str r0, [r4, #0x10]
	bl sub_0200A640
	ldr r0, [r4, #0x10]
	bl sub_02009D4C
	ldr r0, _021D2B84 ; =0x00000BB8
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r6, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0x4c
	mov r3, #1
	bl sub_02009BC4
	str r0, [r4, #0x14]
	ldr r0, _021D2B84 ; =0x00000BB8
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r6, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0x4d
	mov r3, #1
	bl sub_02009BC4
	str r0, [r4, #0x18]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2B84: .word 0x00000BB8
	thumb_func_end ov21_021D2AE8

	thumb_func_start ov21_021D2B88
ov21_021D2B88: ; 0x021D2B88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _021D2C0C ; =0x00000BB8
	add r7, r3, #0
	add r6, r2, #0
	add r4, r1, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #0]
	add r1, r7, #0
	mov r2, #0x4e
	bl sub_02009A4C
	str r0, [r5, #0xc]
	bl sub_0200A3DC
	ldr r0, [r5, #0xc]
	bl sub_02009D4C
	ldr r0, _021D2C0C ; =0x00000BB8
	add r1, r7, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r4, #4]
	mov r2, #3
	mov r3, #0
	bl sub_02009B04
	str r0, [r5, #0x10]
	bl sub_0200A640
	ldr r0, [r5, #0x10]
	bl sub_02009D4C
	ldr r0, _021D2C0C ; =0x00000BB8
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #8]
	mov r2, #0x4c
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x14]
	ldr r0, _021D2C0C ; =0x00000BB8
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r2, #0x4d
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x18]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2C0C: .word 0x00000BB8
	thumb_func_end ov21_021D2B88

	thumb_func_start ov21_021D2C10
ov21_021D2C10: ; 0x021D2C10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x6d
	lsl r0, r0, #2
	add r4, r5, r0
	ldr r0, [r4, #0xc]
	bl sub_0200A4E4
	ldr r0, [r4, #0x10]
	bl sub_0200A6DC
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [r4, #0xc]
	bl sub_02009D68
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x10]
	bl sub_02009D68
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x14]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x18]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D2C10

	thumb_func_start ov21_021D2C58
ov21_021D2C58: ; 0x021D2C58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0200A4E4
	ldr r0, [r5, #0x10]
	bl sub_0200A6DC
	ldr r0, [r4, #0]
	ldr r1, [r5, #0xc]
	bl sub_02009D68
	ldr r0, [r4, #4]
	ldr r1, [r5, #0x10]
	bl sub_02009D68
	ldr r0, [r4, #8]
	ldr r1, [r5, #0x14]
	bl sub_02009D68
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0x18]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D2C58

	thumb_func_start ov21_021D2C8C
ov21_021D2C8C: ; 0x021D2C8C
	push {r3, r4, r5, lr}
	sub sp, #0x70
	add r4, r1, #0
	ldr r1, _021D2D48 ; =0x00000BB8
	add r5, r0, #0
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r3, #5
	str r0, [sp, #0x10]
	lsl r3, r3, #6
	ldr r2, [r5, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r5, r2]
	add r3, #0xc
	str r2, [sp, #0x1c]
	ldr r2, [r5, r3]
	add r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x4c
	add r2, r1, #0
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0x44]
	add r0, sp, #0x2c
	str r1, [sp, #0x40]
	str r4, [sp, #0x48]
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	bl sub_02021B90
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021F58
	mov r0, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021B90
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021D6C
	mov r1, #0x6f
	lsl r1, r1, #2
	mov r2, #0
	add r0, r1, #0
	str r2, [r5, r1]
	add r0, #0x20
	str r2, [r5, r0]
	add r1, #0x24
	str r2, [r5, r1]
	add sp, #0x70
	pop {r3, r4, r5, pc}
	nop
_021D2D48: .word 0x00000BB8
	thumb_func_end ov21_021D2C8C

	thumb_func_start ov21_021D2D4C
ov21_021D2D4C: ; 0x021D2D4C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021BD4
	mov r0, #0x6d
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02021BD4
	mov r0, #0x6e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D2D86
	bl ov21_021D4D1C
	mov r0, #0x6f
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_021D2D86:
	pop {r4, pc}
	thumb_func_end ov21_021D2D4C

	thumb_func_start ov21_021D2D88
ov21_021D2D88: ; 0x021D2D88
	push {r4, r5, r6, lr}
	sub sp, #0x70
	add r4, r1, #0
	ldr r1, _021D2E18 ; =0x00000BB8
	add r5, r0, #0
	mov r0, #0
	add r6, r3, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, [sp, #0x80]
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r3, [r2, #0]
	str r3, [sp, #0x14]
	ldr r3, [r2, #4]
	str r3, [sp, #0x18]
	ldr r3, [r2, #8]
	str r3, [sp, #0x1c]
	ldr r2, [r2, #0xc]
	add r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x4c
	add r2, r1, #0
	bl sub_020093B4
	mov r1, #0
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0x44]
	str r4, [sp, #0x2c]
	str r1, [sp, #0x40]
	str r6, [sp, #0x48]
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021B90
	str r0, [r5, #0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_02021F58
	mov r0, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021B90
	str r0, [r5, #4]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_02021D6C
	mov r0, #0
	str r0, [r5, #8]
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	add sp, #0x70
	pop {r4, r5, r6, pc}
	nop
_021D2E18: .word 0x00000BB8
	thumb_func_end ov21_021D2D88

	thumb_func_start ov21_021D2E1C
ov21_021D2E1C: ; 0x021D2E1C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02021BD4
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	bl sub_02021BD4
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021D2E42
	bl ov21_021D4D1C
	mov r0, #0
	str r0, [r4, #8]
_021D2E42:
	pop {r4, pc}
	thumb_func_end ov21_021D2E1C

	thumb_func_start ov21_021D2E44
ov21_021D2E44: ; 0x021D2E44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	cmp r0, #0
	beq _021D2E54
	bl sub_02021CAC
_021D2E54:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021D2E60
	add r1, r4, #0
	bl sub_02021CAC
_021D2E60:
	ldr r0, [r5, #8]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D2E6E
	add r1, r4, #0
	bl sub_020129D0
_021D2E6E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D2E44

	thumb_func_start ov21_021D2E70
ov21_021D2E70: ; 0x021D2E70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	mov r1, #0x79
	add r5, r0, #0
	lsl r1, r1, #2
	add r4, r5, r1
	bl ov21_021D26E0
	add r7, r0, #0
	ldr r0, _021D2F10 ; =0x00002EE0
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #5
	str r6, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r2, #0x77
	mov r3, #1
	bl sub_02009A4C
	str r0, [r4, #0x10]
	bl sub_0200A3DC
	ldr r0, [r4, #0x10]
	bl sub_02009D4C
	ldr r0, _021D2F10 ; =0x00002EE0
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x51
	str r6, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0x15
	mov r3, #0
	bl sub_02009B04
	str r0, [r4, #0x14]
	bl sub_0200A640
	ldr r0, [r4, #0x14]
	bl sub_02009D4C
	ldr r0, _021D2F10 ; =0x00002EE0
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r6, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0x78
	mov r3, #1
	bl sub_02009BC4
	str r0, [r4, #0x18]
	ldr r0, _021D2F10 ; =0x00002EE0
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r6, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0x76
	mov r3, #1
	bl sub_02009BC4
	str r0, [r4, #0x1c]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2F10: .word 0x00002EE0
	thumb_func_end ov21_021D2E70

	thumb_func_start ov21_021D2F14
ov21_021D2F14: ; 0x021D2F14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x79
	lsl r0, r0, #2
	add r4, r5, r0
	ldr r0, [r4, #0x10]
	bl sub_0200A4E4
	ldr r0, [r4, #0x14]
	bl sub_0200A6DC
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x10]
	bl sub_02009D68
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x14]
	bl sub_02009D68
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x18]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x1c]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D2F14

	thumb_func_start ov21_021D2F5C
ov21_021D2F5C: ; 0x021D2F5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r5, r1, #0
	ldr r1, _021D3008 ; =0x00002EE0
	add r6, r0, #0
	mov r0, #0
	mov r2, #0x79
	lsl r2, r2, #2
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	sub r2, #0xa4
	ldr r2, [r6, r2]
	add r3, r1, #0
	str r2, [sp, #0x14]
	mov r2, #0x79
	lsl r2, r2, #2
	sub r2, #0xa0
	ldr r2, [r6, r2]
	str r2, [sp, #0x18]
	mov r2, #0x79
	lsl r2, r2, #2
	sub r2, #0x9c
	ldr r2, [r6, r2]
	str r2, [sp, #0x1c]
	mov r2, #0x79
	lsl r2, r2, #2
	sub r2, #0x98
	ldr r2, [r6, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x4c
	add r2, r1, #0
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r4, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #2
	str r0, [sp, #0x44]
	mov r0, #0x49
	lsl r0, r0, #0xe
	str r0, [sp, #0x38]
	mov r0, #0x19
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	mov r0, #0x79
	lsl r0, r0, #2
	str r5, [sp, #0x48]
	str r4, [sp, #0x40]
	add r5, r6, r0
	add r7, sp, #0x2c
_021D2FD6:
	add r0, r7, #0
	bl sub_02021B90
	add r1, r4, #0
	stmia r5!, {r0}
	bl sub_02021D6C
	add r4, r4, #1
	cmp r4, #4
	blt _021D2FD6
	mov r0, #0x79
	lsl r0, r0, #2
	add r0, r6, r0
	mov r1, #0
	bl ov21_021D2584
	add r0, r6, #0
	bl ov21_021D3034
	add r0, r6, #0
	bl ov21_021D31D0
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D3008: .word 0x00002EE0
	thumb_func_end ov21_021D2F5C

	thumb_func_start ov21_021D300C
ov21_021D300C: ; 0x021D300C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov21_021D31F0
	add r0, r5, #0
	bl ov21_021D3054
	mov r0, #0x79
	lsl r0, r0, #2
	mov r4, #0
	add r5, r5, r0
_021D3022:
	ldr r0, [r5, #0]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021D3022
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D300C

	thumb_func_start ov21_021D3034
ov21_021D3034: ; 0x021D3034
	push {r4, lr}
	mov r1, #0x79
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, _021D3050 ; =ov21_021D3064
	add r1, r4, r1
	mov r2, #1
	bl sub_0200D9E8
	mov r1, #0x9d
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_021D3050: .word ov21_021D3064
	thumb_func_end ov21_021D3034

	thumb_func_start ov21_021D3054
ov21_021D3054: ; 0x021D3054
	mov r1, #0x9d
	lsl r1, r1, #2
	ldr r3, _021D3060 ; =sub_0200DA58
	ldr r0, [r0, r1]
	bx r3
	nop
_021D3060: .word sub_0200DA58
	thumb_func_end ov21_021D3054

	thumb_func_start ov21_021D3064
ov21_021D3064: ; 0x021D3064
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021D3080
	ldr r0, [r4, #0x2c]
	str r0, [sp]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r0, r4, #0
	bl ov21_021D30D8
	pop {r3, r4, r5, pc}
_021D3080:
	ldr r0, [r4, #0x34]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1a
	sub r1, r1, r2
	mov r0, #0x1a
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, #0x34]
	cmp r0, #0x20
	blt _021D309C
	add r1, r0, #1
	mov r0, #0x40
	sub r0, r0, r1
_021D309C:
	lsl r2, r0, #0xc
	asr r1, r2, #0x1f
	lsr r0, r2, #0x12
	lsl r3, r1, #0xe
	mov r1, #2
	orr r3, r0
	lsl r2, r2, #0xe
	mov r0, #0
	lsl r1, r1, #0xa
	add r5, r2, r1
	adc r3, r0
	lsl r2, r3, #0x14
	lsr r0, r5, #0xc
	orr r0, r2
	lsl r1, r1, #6
	bl FX_Div
	asr r3, r0, #0xc
	ldr r0, [r4, #0x2c]
	add r0, r0, r3
	str r0, [sp]
	add r0, r4, #0
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	ldr r4, [r4, #0x28]
	add r3, r4, r3
	bl ov21_021D30D8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D3064

	thumb_func_start ov21_021D30D8
ov21_021D30D8: ; 0x021D30D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r6, [sp, #0x40]
	add r5, r0, #0
	str r1, [sp, #0xc]
	add r7, r2, #0
	str r3, [sp, #0x10]
	mov r4, #0
_021D30E8:
	ldr r0, [sp, #0x10]
	str r7, [sp]
	str r0, [sp, #4]
	ldr r3, [sp, #0xc]
	str r6, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov21_021D4FFC
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	lsl r1, r0, #0xc
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x20]
	ldr r0, [r5, #0]
	add r1, sp, #0x1c
	bl sub_02021C50
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021D30E8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D30D8

	thumb_func_start ov21_021D3124
ov21_021D3124: ; 0x021D3124
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0x87
	lsl r1, r1, #2
	add r4, r0, r1
	ldr r1, [r4, #0x44]
	add r5, r2, #0
	add r7, r3, #0
	cmp r1, r6
	bne _021D314E
	ldr r1, [r4, #0x48]
	cmp r1, r5
	bne _021D314E
	ldr r1, [r4, #0x4c]
	cmp r1, r7
	bne _021D314E
	ldr r2, [r4, #0x50]
	ldr r1, [sp, #0x20]
	cmp r2, r1
	beq _021D318E
_021D314E:
	mov r1, #0x79
	lsl r1, r1, #2
	add r3, r0, r1
	str r3, [r4, #0]
	str r5, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r1, [r3, #0x20]
	ldr r3, [r3, #0x24]
	add r0, r4, #4
	add r2, r6, #0
	bl ov21_021D2648
	ldr r3, [r4, #0]
	ldr r0, [sp, #0x20]
	add r2, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r1, [r3, #0x28]
	ldr r3, [r3, #0x2c]
	add r0, #0x24
	bl ov21_021D2648
	str r6, [r4, #0x44]
	str r5, [r4, #0x48]
	ldr r0, [sp, #0x20]
	str r7, [r4, #0x4c]
	str r0, [r4, #0x50]
	mov r0, #1
	str r0, [r4, #0x54]
_021D318E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D3124

	thumb_func_start ov21_021D3194
ov21_021D3194: ; 0x021D3194
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _021D31CE
	add r0, r5, #4
	bl ov21_021D2664
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x24
	bl ov21_021D2664
	ldr r1, [r5, #4]
	ldr r0, [r5, #0]
	cmp r4, #1
	str r1, [r0, #0x20]
	ldr r1, [r5, #8]
	ldr r0, [r5, #0]
	str r1, [r0, #0x24]
	ldr r1, [r5, #0x24]
	ldr r0, [r5, #0]
	str r1, [r0, #0x28]
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0]
	str r1, [r0, #0x2c]
	bne _021D31CE
	mov r0, #0
	str r0, [r5, #0x54]
_021D31CE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D3194

	thumb_func_start ov21_021D31D0
ov21_021D31D0: ; 0x021D31D0
	push {r4, lr}
	mov r1, #0x87
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, _021D31EC ; =ov21_021D3194
	add r1, r4, r1
	mov r2, #0
	bl sub_0200D9E8
	mov r1, #0x9e
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_021D31EC: .word ov21_021D3194
	thumb_func_end ov21_021D31D0

	thumb_func_start ov21_021D31F0
ov21_021D31F0: ; 0x021D31F0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x9e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200DA58
	mov r0, #0x9e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov21_021D31F0

	.rodata


	.global Unk_ov21_021E9BEC
Unk_ov21_021E9BEC: ; 0x021E9BEC
	.incbin "incbin/overlay21_rodata.bin", 0xC8, 0xD8 - 0xC8

	.global Unk_ov21_021E9BFC
Unk_ov21_021E9BFC: ; 0x021E9BFC
	.incbin "incbin/overlay21_rodata.bin", 0xD8, 0xF4 - 0xD8

	.global Unk_ov21_021E9C18
Unk_ov21_021E9C18: ; 0x021E9C18
	.incbin "incbin/overlay21_rodata.bin", 0xF4, 0x110 - 0xF4

	.global Unk_ov21_021E9C34
Unk_ov21_021E9C34: ; 0x021E9C34
	.incbin "incbin/overlay21_rodata.bin", 0x110, 0x12C - 0x110

	.global Unk_ov21_021E9C50
Unk_ov21_021E9C50: ; 0x021E9C50
	.incbin "incbin/overlay21_rodata.bin", 0x12C, 0x148 - 0x12C

	.global Unk_ov21_021E9C6C
Unk_ov21_021E9C6C: ; 0x021E9C6C
	.incbin "incbin/overlay21_rodata.bin", 0x148, 0x164 - 0x148

	.global Unk_ov21_021E9C88
Unk_ov21_021E9C88: ; 0x021E9C88
	.incbin "incbin/overlay21_rodata.bin", 0x164, 0x180 - 0x164

	.global Unk_ov21_021E9CA4
Unk_ov21_021E9CA4: ; 0x021E9CA4
	.incbin "incbin/overlay21_rodata.bin", 0x180, 0x20

