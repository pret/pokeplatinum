	.include "macros/function.inc"
	.include "include/unk_020A1E30.inc"

	

	.text


	arm_func_start sub_020A1E30
sub_020A1E30: ; 0x020A1E30
	stmfd sp!, {r4, lr}
	ldr lr, [r1, #8]
	ldr r2, [r0, #0]
	ldrsh r4, [r0, #0xc]
	sub r3, r2, lr
	mov r2, #0x800
	smull ip, r3, r4, r3
	adds r4, ip, r2
	adc r3, r3, #0
	mov r4, r4, lsr #0xc
	orr r4, r4, r3, lsl #20
	add r3, lr, r4
	str r3, [r1, #8]
	ldr r4, [r1, #0xc]
	ldr r3, [r0, #4]
	ldrsh ip, [r0, #0xc]
	sub r3, r3, r4
	smull lr, r3, ip, r3
	adds ip, lr, r2
	adc r3, r3, #0
	mov ip, ip, lsr #0xc
	orr ip, ip, r3, lsl #20
	add r3, r4, ip
	str r3, [r1, #0xc]
	ldr lr, [r1, #0x10]
	ldr r3, [r0, #8]
	ldrsh ip, [r0, #0xc]
	sub r0, r3, lr
	smull r3, r0, ip, r0
	adds r2, r3, r2
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, lr, r2
	str r0, [r1, #0x10]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end sub_020A1E30

	arm_func_start sub_020A1EC4
sub_020A1EC4: ; 0x020A1EC4
	ldr r3, [r3, #0x74]
	ldr r2, [r0, #0]
	cmp r3, #-0x80000000
	movne r2, r3
	ldrh r3, [r0, #6]
	mov r3, r3, lsl #0x1e
	movs r3, r3, lsr #0x1e
	beq _020A1EF0
	cmp r3, #1
	beq _020A1F44
	bx lr
_020A1EF0:
	ldr r3, [r1, #0x3c]
	cmp r3, r2
	bge _020A1F1C
	ldr r0, [r1, #0xc]
	add r0, r3, r0
	cmp r0, r2
	subgt r0, r2, r3
	strgt r0, [r1, #0xc]
	ldrgth r0, [r1, #0x24]
	strgth r0, [r1, #0x26]
	bxgt lr
_020A1F1C:
	cmp r3, r2
	bxlt lr
	ldr r0, [r1, #0xc]
	add r0, r3, r0
	cmp r0, r2
	sublt r0, r2, r3
	strlt r0, [r1, #0xc]
	ldrlth r0, [r1, #0x24]
	strlth r0, [r1, #0x26]
	bx lr
_020A1F44:
	ldr ip, [r1, #0x3c]
	cmp ip, r2
	bge _020A1F94
	ldr r3, [r1, #0xc]
	add r3, ip, r3
	cmp r3, r2
	ble _020A1F94
	sub r2, r2, ip
	str r2, [r1, #0xc]
	ldrsh r2, [r0, #4]
	ldr r3, [r1, #0x18]
	mov r0, #0x800
	smull ip, r2, r3, r2
	adds r3, ip, r0
	adc r0, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	rsb r0, r2, #0
	str r0, [r1, #0x18]
	bx lr
_020A1F94:
	cmp ip, r2
	bxlt lr
	ldr r3, [r1, #0xc]
	add r3, ip, r3
	cmp r3, r2
	bxge lr
	sub r2, r2, ip
	str r2, [r1, #0xc]
	ldrsh r2, [r0, #4]
	ldr r3, [r1, #0x18]
	mov r0, #0x800
	smull ip, r2, r3, r2
	adds r3, ip, r0
	adc r0, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	rsb r0, r2, #0
	str r0, [r1, #0x18]
	bx lr
	arm_func_end sub_020A1EC4

	arm_func_start sub_020A1FE0
sub_020A1FE0: ; 0x020A1FE0
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x28
	ldrh r2, [r0, #2]
	mov r4, r1
	cmp r2, #0
	beq _020A200C
	cmp r2, #1
	beq _020A203C
	cmp r2, #2
	beq _020A206C
	b _020A2098
_020A200C:
	ldrh r1, [r0]
	ldr r3, _020A20B4 ; =0x020F983C
	add r0, sp, #0
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov ip, r2, lsl #1
	mov r2, r1, lsl #1
	ldrsh r1, [r3, ip]
	ldrsh r2, [r3, r2]
	bl MTX_RotX33_
	b _020A2098
_020A203C:
	ldrh r1, [r0]
	ldr r3, _020A20B4 ; =0x020F983C
	add r0, sp, #0
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov ip, r2, lsl #1
	mov r2, r1, lsl #1
	ldrsh r1, [r3, ip]
	ldrsh r2, [r3, r2]
	bl MTX_RotY33_
	b _020A2098
_020A206C:
	ldrh r1, [r0]
	ldr r3, _020A20B4 ; =0x020F983C
	add r0, sp, #0
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov ip, r2, lsl #1
	mov r2, r1, lsl #1
	ldrsh r1, [r3, ip]
	ldrsh r2, [r3, r2]
	bl MTX_RotZ33_
_020A2098:
	add r0, r4, #8
	add r1, sp, #0
	mov r2, r0
	bl MTX_MultVec33
	add sp, sp, #0x28
	ldmia sp!, {r4, lr}
	bx lr
	; .align 2, 0
_020A20B4: .word 0x020F983C
	arm_func_end sub_020A1FE0

	arm_func_start sub_020A20B8
sub_020A20B8: ; 0x020A20B8
	stmfd sp!, {r4, lr}
	ldr ip, [r0]
	ldr r4, [r1, #8]
	ldrsh lr, [r0, #0xc]
	ldr r3, [r1, #0x14]
	sub r4, ip, r4
	sub r3, r4, r3
	mul r3, lr, r3
	ldr r4, [r2, #0]
	add r3, r4, r3, asr #12
	str r3, [r2, #0]
	ldr lr, [r0, #4]
	ldr ip, [r1, #0xc]
	ldrsh r4, [r0, #0xc]
	ldr r3, [r1, #0x18]
	sub ip, lr, ip
	sub r3, ip, r3
	mul r3, r4, r3
	ldr r4, [r2, #4]
	add r3, r4, r3, asr #12
	str r3, [r2, #4]
	ldr ip, [r0, #8]
	ldr r3, [r1, #0x10]
	ldrsh lr, [r0, #0xc]
	ldr r0, [r1, #0x1c]
	sub r1, ip, r3
	sub r0, r1, r0
	mul r0, lr, r0
	ldr r1, [r2, #8]
	add r0, r1, r0, asr #12
	str r0, [r2, #8]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end sub_020A20B8

	arm_func_start sub_020A213C
sub_020A213C: ; 0x020A213C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldrh r0, [r1, #0x26]
	ldrh r1, [r5, #6]
	mov r4, r2
	bl _s32_div_f
	cmp r1, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	ldr r2, _020A21F8 ; =0x021C3A38
	ldr r0, _020A21FC ; =0x5EEDF715
	ldr r3, [r2, #0]
	ldr r1, _020A2200 ; =0x1B0CB173
	mla ip, r3, r0, r1
	str ip, [r2]
	ldrsh lr, [r5]
	mov r3, ip, lsr #0x17
	ldr ip, [r4]
	mul r3, lr, r3
	sub r3, r3, lr, lsl #8
	add r3, ip, r3, asr #8
	str r3, [r4, #0]
	ldr r3, [r2, #0]
	mla ip, r3, r0, r1
	str ip, [r2]
	ldrsh lr, [r5, #2]
	mov r3, ip, lsr #0x17
	ldr ip, [r4, #4]
	mul r3, lr, r3
	sub r3, r3, lr, lsl #8
	add r3, ip, r3, asr #8
	str r3, [r4, #4]
	ldr r3, [r2, #0]
	mla r0, r3, r0, r1
	str r0, [r2, #0]
	ldrsh r2, [r5, #4]
	mov r0, r0, lsr #0x17
	ldr r1, [r4, #8]
	mul r0, r2, r0
	sub r0, r0, r2, lsl #8
	add r0, r1, r0, asr #8
	str r0, [r4, #8]
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	; .align 2, 0
_020A21F8: .word 0x021C3A38
_020A21FC: .word 0x5EEDF715
_020A2200: .word 0x1B0CB173
	arm_func_end sub_020A213C

	arm_func_start sub_020A2204
sub_020A2204: ; 0x020A2204
	ldrsh r1, [r0]
	ldr r3, [r2, #0]
	add r1, r3, r1
	str r1, [r2, #0]
	ldrsh r1, [r0, #2]
	ldr r3, [r2, #4]
	add r1, r3, r1
	str r1, [r2, #4]
	ldrsh r0, [r0, #4]
	ldr r1, [r2, #8]
	add r0, r1, r0
	str r0, [r2, #8]
	bx lr
	arm_func_end sub_020A2204