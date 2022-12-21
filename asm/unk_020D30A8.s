	.include "macros/function.inc"
	.include "include/unk_020D30A8.inc"

	

	.text


	arm_func_start sub_020D30A8
sub_020D30A8: ; 0x020D30A8
	stmfd sp!, {r3, lr}
	mov ip, #0
	mov r2, ip
_020D30B4:
	mov r3, ip
	mov lr, r2
_020D30BC:
	tst r3, #0x80
	eorne r3, r1, r3, lsl #1
	add lr, lr, #1
	moveq r3, r3, lsl #1
	cmp lr, #8
	blo _020D30BC
	strb r3, [r0, ip]
	add ip, ip, #1
	cmp ip, #0x100
	blo _020D30B4
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D30A8

	arm_func_start sub_020D30E8
sub_020D30E8: ; 0x020D30E8
	stmfd sp!, {r4, lr}
	cmp r3, #0
	ldrb lr, [r1]
	mov r4, #0
	bls _020D3118
_020D30FC:
	ldrb ip, [r2], #1
	add r4, r4, #1
	cmp r4, r3
	eor ip, lr, ip
	and ip, ip, #0xff
	ldrb lr, [r0, ip]
	blo _020D30FC
_020D3118:
	strb lr, [r1]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D30E8

	arm_func_start sub_020D3120
sub_020D3120: ; 0x020D3120
	stmfd sp!, {r4, lr}
	mov lr, #0
	mov r4, lr
	mov r3, lr
_020D3130:
	mov ip, r4
	mov r2, r3
_020D3138:
	tst ip, #0x8000
	eorne ip, r1, ip, lsl #1
	add r2, r2, #1
	moveq ip, ip, lsl #1
	cmp r2, #8
	blo _020D3138
	mov r2, lr, lsl #1
	add lr, lr, #1
	strh ip, [r0, r2]
	cmp lr, #0x100
	add r4, r4, #0x100
	blo _020D3130
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D3120

	arm_func_start sub_020D316C
sub_020D316C: ; 0x020D316C
	stmfd sp!, {r3, lr}
	mov lr, #0
	mov r3, lr
_020D3178:
	mov ip, lr
	mov r2, r3
_020D3180:
	tst ip, #1
	eorne ip, r1, ip, lsr #1
	add r2, r2, #1
	moveq ip, ip, lsr #1
	cmp r2, #8
	blo _020D3180
	mov r2, lr, lsl #1
	add lr, lr, #1
	strh ip, [r0, r2]
	cmp lr, #0x100
	blo _020D3178
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D316C

	arm_func_start sub_020D31B0
sub_020D31B0: ; 0x020D31B0
	stmfd sp!, {r4, lr}
	cmp r3, #0
	ldrh lr, [r1]
	mov r4, #0
	bls _020D31E8
_020D31C4:
	ldrb ip, [r2], #1
	add r4, r4, #1
	cmp r4, r3
	eor ip, ip, lr, lsr #8
	mov ip, ip, lsl #0x18
	mov ip, ip, lsr #0x17
	ldrh ip, [r0, ip]
	eor lr, ip, lr, lsl #8
	blo _020D31C4
_020D31E8:
	strh lr, [r1]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D31B0

	arm_func_start sub_020D31F0
sub_020D31F0: ; 0x020D31F0
	stmfd sp!, {r4, lr}
	cmp r3, #0
	ldrh lr, [r1]
	mov r4, #0
	bls _020D3228
_020D3204:
	ldrb ip, [r2], #1
	add r4, r4, #1
	cmp r4, r3
	eor ip, lr, ip
	mov ip, ip, lsl #0x18
	mov ip, ip, lsr #0x17
	ldrh ip, [r0, ip]
	eor lr, ip, lr, lsr #8
	blo _020D3204
_020D3228:
	strh lr, [r1]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D31F0

	arm_func_start sub_020D3230
sub_020D3230: ; 0x020D3230
	stmfd sp!, {r3, lr}
	mov ip, #0
	mov r2, ip
_020D323C:
	mov r3, ip
	mov lr, r2
_020D3244:
	tst r3, #1
	eorne r3, r1, r3, lsr #1
	add lr, lr, #1
	moveq r3, r3, lsr #1
	cmp lr, #8
	blo _020D3244
	str r3, [r0, ip, lsl #2]
	add ip, ip, #1
	cmp ip, #0x100
	blo _020D323C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D3230

	arm_func_start sub_020D3270
sub_020D3270: ; 0x020D3270
	stmfd sp!, {r4, lr}
	cmp r3, #0
	ldr lr, [r1]
	mov r4, #0
	bls _020D32A4
_020D3284:
	ldrb ip, [r2], #1
	add r4, r4, #1
	cmp r4, r3
	eor ip, lr, ip
	and ip, ip, #0xff
	ldr ip, [r0, ip, lsl #2]
	eor lr, ip, lr, lsr #8
	blo _020D3284
_020D32A4:
	str lr, [r1]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D3270

	arm_func_start sub_020D32AC
sub_020D32AC: ; 0x020D32AC
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov ip, #0
	mov r3, r2
	add r1, sp, #0
	mov r2, lr
	strb ip, [sp]
	bl sub_020D30E8
	ldrb r0, [sp]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D32AC

	arm_func_start sub_020D32D4
sub_020D32D4: ; 0x020D32D4
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov ip, #0
	mov r3, r2
	add r1, sp, #0
	mov r2, lr
	strh ip, [sp]
	bl sub_020D31F0
	ldrh r0, [sp]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D32D4

	arm_func_start sub_020D32FC
sub_020D32FC: ; 0x020D32FC
	stmfd sp!, {r3, lr}
	ldr ip, _020D3324 ; =0x0000FFFF
	mov lr, r1
	mov r3, r2
	add r1, sp, #0
	mov r2, lr
	strh ip, [sp]
	bl sub_020D31B0
	ldrh r0, [sp]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D3324: .word 0x0000FFFF
	arm_func_end sub_020D32FC

	arm_func_start sub_020D3328
sub_020D3328: ; 0x020D3328
	stmfd sp!, {r3, lr}
	mov lr, r1
	mvn ip, #0
	mov r3, r2
	add r1, sp, #0
	mov r2, lr
	str ip, [sp]
	bl sub_020D3270
	ldr r0, [sp]
	mvn r0, r0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D3328