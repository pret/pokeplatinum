	.include "macros/function.inc"
	.include "include/unk_020A3F54.inc"

	

	.text


	arm_func_start sub_020A3F54
sub_020A3F54: ; 0x020A3F54
	mvn ip, r3
	tst r1, ip
	movne r0, #0
	bxne lr
	mvn r3, r3, lsl r2
	ldr ip, [r0]
	and r3, ip, r3
	orr r1, r3, r1, lsl r2
	str r1, [r0, #0]
	mov r0, #1
	bx lr
	arm_func_end sub_020A3F54

	arm_func_start sub_020A3F80
sub_020A3F80: ; 0x020A3F80
	ldr r2, [r0, #0]
	ldr r1, _020A3F9C ; =0x000007FF
	ldr r0, [r0, #4]
	and r1, r2, r1
	orr r1, r1, #0
	orr r0, r0, #0
	bx lr
	; .align 2, 0
_020A3F9C: .word 0x000007FF
	arm_func_end sub_020A3F80

	arm_func_start sub_020A3FA0
sub_020A3FA0: ; 0x020A3FA0
	ldr r0, [r0, #8]
	bx lr
	arm_func_end sub_020A3FA0

	arm_func_start sub_020A3FA8
sub_020A3FA8: ; 0x020A3FA8
	ldr r1, [r0, #8]
	ldr r0, [r0, #4]
	orr r1, r1, #0
	orr r0, r0, #0
	bx lr
	arm_func_end sub_020A3FA8

	arm_func_start sub_020A3FBC
sub_020A3FBC: ; 0x020A3FBC
	ldr r0, [r0, #4]
	bx lr
	arm_func_end sub_020A3FBC

	arm_func_start sub_020A3FC4
sub_020A3FC4: ; 0x020A3FC4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _020A3FE8 ; =0x000007FF
	mov r4, r1
	mov r1, r2
	mov r2, #0
	mov r5, r0
	bl sub_020A3F54
	str r4, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A3FE8: .word 0x000007FF
	arm_func_end sub_020A3FC4

	arm_func_start sub_020A3FEC
sub_020A3FEC: ; 0x020A3FEC
	str r1, [r0, #8]
	bx lr
	arm_func_end sub_020A3FEC

	arm_func_start sub_020A3FF4
sub_020A3FF4: ; 0x020A3FF4
	stmib r0, {r1, r2}
	bx lr
	arm_func_end sub_020A3FF4

	arm_func_start sub_020A3FFC
sub_020A3FFC: ; 0x020A3FFC
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020A3FFC

	arm_func_start sub_020A4004
sub_020A4004: ; 0x020A4004
	ldr r1, [r0, #0]
	ldr r0, _020A4014 ; =0x001FFFFF
	and r0, r0, r1, lsr #11
	bx lr
	; .align 2, 0
_020A4014: .word 0x001FFFFF
	arm_func_end sub_020A4004

	arm_func_start sub_020A4018
sub_020A4018: ; 0x020A4018
	stmfd sp!, {r3, lr}
	bl sub_020A4004
	and r0, r0, #3
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A4018

	arm_func_start sub_020A4028
sub_020A4028: ; 0x020A4028
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020A4018
	cmp r0, #3
	bne _020A4058
	mov r0, r4
	bl sub_020A4004
	and r0, r0, #4
	cmp r0, #4
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, pc}
_020A4058:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A4028

	arm_func_start sub_020A4060
sub_020A4060: ; 0x020A4060
	ldr ip, _020A4068 ; =sub_020A4018
	bx ip
	; .align 2, 0
_020A4068: .word sub_020A4018
	arm_func_end sub_020A4060

	arm_func_start sub_020A406C
sub_020A406C: ; 0x020A406C
	ldr ip, _020A407C ; =sub_020A3F54
	ldr r3, _020A4080 ; =0x001FFFFF
	mov r2, #0xb
	bx ip
	; .align 2, 0
_020A407C: .word sub_020A3F54
_020A4080: .word 0x001FFFFF
	arm_func_end sub_020A406C

	arm_func_start sub_020A4084
sub_020A4084: ; 0x020A4084
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020A4004
	bic r1, r0, #3
	mov r0, r5
	orr r1, r1, r4
	bl sub_020A406C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A4084

	arm_func_start sub_020A40A8
sub_020A40A8: ; 0x020A40A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020A4018
	cmp r0, #3
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl sub_020A4004
	orr r1, r0, #4
	mov r0, r4
	bl sub_020A406C
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A40A8

	arm_func_start sub_020A40D4
sub_020A40D4: ; 0x020A40D4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x108
	mov r4, r0
	str r1, [sp, #4]
	add r0, sp, #8
	mov r1, #7
	str r4, [sp]
	bl sub_020D30A8
	add r0, sp, #8
	add r1, sp, #0
	mov r2, #8
	bl sub_020D32AC
	and r0, r0, #0x7f
	orr r1, r0, #0
	orr r0, r4, #0
	add sp, sp, #0x108
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A40D4

	arm_func_start sub_020A4118
sub_020A4118: ; 0x020A4118
	ldr ip, _020A4130 ; =sub_020A4134
	mov r3, r0
	mov r0, r1
	mov r1, r2
	ldr r2, [r3, #0x24]
	bx ip
	; .align 2, 0
_020A4130: .word sub_020A4134
	arm_func_end sub_020A4118

	arm_func_start sub_020A4134
sub_020A4134: ; 0x020A4134
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x108
	mov r4, r1
	and r1, r4, #0
	cmp r1, #0
	and r3, r0, #0x80000000
	cmpeq r3, #0
	mov r1, #0
	addne sp, sp, #0x108
	movne r0, r1
	ldmneia sp!, {r4, pc}
	str r0, [sp]
	add r0, sp, #8
	mov r1, #7
	str r2, [sp, #4]
	bl sub_020D30A8
	add r0, sp, #8
	add r1, sp, #0
	mov r2, #8
	bl sub_020D32AC
	and r1, r0, #0x7f
	mov r0, r1, asr #0x1f
	cmp r0, #0
	cmpeq r1, r4
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x108
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A4134

	arm_func_start sub_020A41A4
sub_020A41A4: ; 0x020A41A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020A4134
	cmp r0, #0
	mov r0, #0
	subne r0, r0, #1
	andne r0, r4, r0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A41A4

	arm_func_start sub_020A41C4
sub_020A41C4: ; 0x020A41C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr lr, _020A422C ; =0x66666667
	add r4, r2, #4
	smull ip, r2, lr, r4
	mov ip, r4, lsr #0x1f
	add r2, ip, r2, asr #1
	cmp r2, #0
	ldr r7, _020A4230 ; =0x02100DB8
	mov r6, #0
	ble _020A4220
	add r4, r3, r2
	sub r4, r4, #1
	mov ip, #0x1f
_020A41F8:
	and r5, r0, ip
	ldrsb r5, [r7, r5]
	mov r0, r0, lsr #5
	mov lr, r1, lsr #5
	strb r5, [r4, -r6]
	add r6, r6, #1
	orr r0, r0, r1, lsl #27
	mov r1, lr
	cmp r6, r2
	blt _020A41F8
_020A4220:
	mov r0, #0
	strb r0, [r3, r2]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020A422C: .word 0x66666667
_020A4230: .word 0x02100DB8
	arm_func_end sub_020A41C4

	arm_func_start sub_020A4234
sub_020A4234: ; 0x020A4234
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x40
	mov r6, r0
	mov r4, r1
	mov r5, r2
	bl sub_020A3F80
	add r3, sp, #0x29
	mov r2, #0x2b
	bl sub_020A41C4
	mov r0, r6
	bl sub_020A3FA0
	mov r1, #0
	mov r2, #0x20
	add r3, sp, #0x14
	bl sub_020A41C4
	mov r1, r4, lsr #0x18
	and r1, r1, #0xff
	str r1, [sp]
	mov r1, r4, lsr #0x10
	and r1, r1, #0xff
	str r1, [sp, #4]
	mov r1, r4, lsr #8
	and r1, r1, #0xff
	str r1, [sp, #8]
	and r1, r4, #0xff
	str r1, [sp, #0xc]
	add r2, sp, #0x14
	str r2, [sp, #0x10]
	ldr r2, _020A42C0 ; =0x02100DDC
	mov r0, r5
	mov r1, #0x15
	add r3, sp, #0x29
	bl sub_020C1AF0
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020A42C0: .word 0x02100DDC
	arm_func_end sub_020A4234

	arm_func_start sub_020A42C4
sub_020A42C4: ; 0x020A42C4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x400
	mov r4, r1
	mov r1, #0
	mov r2, #0x40
	mov r5, r0
	bl sub_020C4CF4
	mov r0, #0x40
	str r0, [r5, #0]
	mov r0, #0
	str r0, [r5, #0x1c]
	add r0, r5, #4
	str r4, [r5, #0x24]
	bl sub_020A4340
	add r0, r5, #0x10
	mov r1, #0
	bl sub_020A4084
	ldr r1, _020A433C ; =0xEDB88320
	add r0, sp, #0
	bl sub_020D3230
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x3c
	bl sub_020D3328
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x20]
	orr r0, r0, #1
	str r0, [r5, #0x20]
	add sp, sp, #0x400
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A433C: .word 0xEDB88320
	arm_func_end sub_020A42C4

	arm_func_start sub_020A4340
sub_020A4340: ; 0x020A4340
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x34
	mov r6, r0
	add r0, sp, #0
	bl sub_020C41D8
	mov r3, #1
	add r2, sp, #0
_020A435C:
	add r0, r2, r3, lsl #2
	ldr r1, [r2, r3, lsl #2]
	ldr r0, [r0, #-4]
	eor r0, r1, r0
	str r0, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #8
	blo _020A435C
	add r0, sp, #0x20
	ldr r5, [sp, #0x1c]
	mov r4, #0
	bl sub_020A3E4C
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _020A43AC
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	mov r0, r6
	bl sub_020A3FC4
	b _020A43BC
_020A43AC:
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	mov r0, r6
	bl sub_020A3FC4
_020A43BC:
	ldr r0, _020A43F8 ; =0x6C078965
	ldr r1, _020A43FC ; =0x5D588B65
	umull r3, r2, r5, r0
	mla r2, r5, r1, r2
	ldr r1, _020A4400 ; =0x00269EC3
	mla r2, r4, r0, r2
	adds r0, r3, r1
	mov r0, r6
	adc r1, r2, #0
	bl sub_020A3FEC
	mov r0, r6
	mov r1, #1
	bl sub_020A4084
	add sp, sp, #0x34
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_020A43F8: .word 0x6C078965
_020A43FC: .word 0x5D588B65
_020A4400: .word 0x00269EC3
	arm_func_end sub_020A4340

	arm_func_start sub_020A4404
sub_020A4404: ; 0x020A4404
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, sp, #0
	bl sub_020A3E4C
	ldr r0, [sp, #0x10]
	cmp r0, #0
	mov r0, r4
	beq _020A444C
	bl sub_020A3F80
	ldr r2, [sp, #4]
	ldr r3, [sp]
	cmp r2, r1
	cmpeq r3, r0
	moveq r0, #1
	add sp, sp, #0x14
	movne r0, #0
	ldmia sp!, {r3, r4, pc}
_020A444C:
	bl sub_020A3F80
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	cmp r2, r1
	cmpeq r3, r0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_020A4404

	arm_func_start sub_020A4470
sub_020A4470: ; 0x020A4470
	stmfd sp!, {r3, lr}
	bl sub_020A4018
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A4470

	arm_func_start sub_020A4488
sub_020A4488: ; 0x020A4488
	ldr ip, _020A4494 ; =sub_020A4470
	add r0, r0, #0x10
	bx ip
	; .align 2, 0
_020A4494: .word sub_020A4470
	arm_func_end sub_020A4488

	arm_func_start sub_020A4498
sub_020A4498: ; 0x020A4498
	stmfd sp!, {r3, lr}
	bl sub_020A4018
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A4498

	arm_func_start sub_020A44B0
sub_020A44B0: ; 0x020A44B0
	ldr ip, _020A44B8 ; =sub_020A4498
	bx ip
	; .align 2, 0
_020A44B8: .word sub_020A4498
	arm_func_end sub_020A44B0

	arm_func_start sub_020A44BC
sub_020A44BC: ; 0x020A44BC
	ldr ip, _020A44C4 ; =sub_020A42C4
	bx ip
	; .align 2, 0
_020A44C4: .word sub_020A42C4
	arm_func_end sub_020A44BC

	arm_func_start sub_020A44C8
sub_020A44C8: ; 0x020A44C8
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x400
	ldr r1, _020A4508 ; =0xEDB88320
	mov r4, r0
	add r0, sp, #0
	bl sub_020D3230
	add r0, sp, #0
	mov r1, r4
	mov r2, #0x3c
	bl sub_020D3328
	ldr r1, [r4, #0x3c]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x400
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A4508: .word 0xEDB88320
	arm_func_end sub_020A44C8

	arm_func_start sub_020A450C
sub_020A450C: ; 0x020A450C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x10
	bl sub_020A4470
	cmp r0, #0
	beq _020A4534
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	movgt r0, #1
	ldmgtia sp!, {r4, pc}
_020A4534:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A450C

	arm_func_start sub_020A453C
sub_020A453C: ; 0x020A453C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, r4, #0x10
	bl sub_020A4018
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqia sp!, {r3, r4, pc}
	add r0, sp, #0
	bl sub_020A3E4C
	ldr r0, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	add r0, r4, #0x10
	bl sub_020A3F80
	ldr r2, [sp, #4]
	ldr r3, [sp]
	cmp r2, r1
	cmpeq r3, r0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_020A453C

	arm_func_start sub_020A45A4
sub_020A45A4: ; 0x020A45A4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x400
	mov r4, r0
	add r3, r4, #0x10
	mov ip, r2
	ldmia r1, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, _020A45F8 ; =0xEDB88320
	add r0, sp, #0
	str ip, [r4, #0x1c]
	bl sub_020D3230
	add r0, sp, #0
	mov r1, r4
	mov r2, #0x3c
	bl sub_020D3328
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x20]
	orr r0, r0, #1
	str r0, [r4, #0x20]
	add sp, sp, #0x400
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A45F8: .word 0xEDB88320
	arm_func_end sub_020A45A4

	arm_func_start sub_020A45FC
sub_020A45FC: ; 0x020A45FC
	ldr ip, _020A4604 ; =sub_020A4608
	bx ip
	; .align 2, 0
_020A4604: .word sub_020A4608
	arm_func_end sub_020A45FC

	arm_func_start sub_020A4608
sub_020A4608: ; 0x020A4608
	ldr r0, [r0, #0x20]
	and r0, r0, #1
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_020A4608

	arm_func_start sub_020A4620
sub_020A4620: ; 0x020A4620
	ldr ip, _020A4628 ; =sub_020A462C
	bx ip
	; .align 2, 0
_020A4628: .word sub_020A462C
	arm_func_end sub_020A4620

	arm_func_start sub_020A462C
sub_020A462C: ; 0x020A462C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x400
	mov r4, r0
	ldr r1, [r4, #0x20]
	add r0, sp, #0
	bic r2, r1, #1
	ldr r1, _020A466C ; =0xEDB88320
	str r2, [r4, #0x20]
	bl sub_020D3230
	add r0, sp, #0
	mov r1, r4
	mov r2, #0x3c
	bl sub_020D3328
	str r0, [r4, #0x3c]
	add sp, sp, #0x400
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A466C: .word 0xEDB88320
	arm_func_end sub_020A462C

	arm_func_start sub_020A4670
sub_020A4670: ; 0x020A4670
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020A4018
	cmp r0, #2
	movne r0, #0
	movne r1, r0
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl sub_020A3FA8
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A4670

	arm_func_start sub_020A4698
sub_020A4698: ; 0x020A4698
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	mov r6, r0
	mov r0, r4
	bl sub_020A4018
	cmp r0, #1
	beq _020A470C
	cmp r0, #2
	beq _020A46C8
	cmp r0, #3
	beq _020A4700
	b _020A4714
_020A46C8:
	mov r0, r4
	bl sub_020A3FA8
	ldr r2, [r6, #0x24]
	mov r4, r0
	mov r5, r1
	bl sub_020A4134
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r2, [r6, #0x24]
	mov r0, r4
	mov r1, r5
	bl sub_020A41A4
	ldmia sp!, {r4, r5, r6, pc}
_020A4700:
	mov r0, r4
	bl sub_020A3FBC
	ldmia sp!, {r4, r5, r6, pc}
_020A470C:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_020A4714:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A4698

	arm_func_start sub_020A471C
sub_020A471C: ; 0x020A471C
	stmfd sp!, {r3, lr}
	mov r3, r0
	ldr r0, [r3, #0x1c]
	mov r2, #0
	mov r1, r2
	cmp r0, #0
	beq _020A4744
	ldr r1, [r3, #0x24]
	bl sub_020A40D4
	mov r2, r0
_020A4744:
	mov r0, r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A471C

	arm_func_start sub_020A474C
sub_020A474C: ; 0x020A474C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r2
	mov r6, r0
	mov r1, #0
	mov r2, #0xc
	bl sub_020C4CF4
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_020A3FF4
	mov r0, r6
	mov r1, #2
	bl sub_020A4084
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A474C

	arm_func_start sub_020A4788
sub_020A4788: ; 0x020A4788
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov r1, #0
	mov r2, #0xc
	bl sub_020C4CF4
	mov r0, r5
	bl sub_020A4488
	cmp r0, #0
	addeq r0, r5, #4
	ldmeqia r0, {r0, r1, r2}
	stmeqia r4, {r0, r1, r2}
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x1c]
	mov r0, r4
	bl sub_020A3FFC
	mov r0, r4
	mov r1, #3
	bl sub_020A4084
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A4788

	arm_func_start sub_020A47DC
sub_020A47DC: ; 0x020A47DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r1, #0
	mov r2, #0xc
	bl sub_020C4CF4
	mov r0, r5
	mov r1, r4
	bl sub_020A3FFC
	mov r0, r5
	mov r1, #3
	bl sub_020A4084
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A47DC

	arm_func_start sub_020A4810
sub_020A4810: ; 0x020A4810
	ldr ip, _020A4824 ; =sub_020A4234
	mov r3, r0
	mov r0, r1
	ldr r1, [r3, #0x24]
	bx ip
	; .align 2, 0
_020A4824: .word sub_020A4234
	arm_func_end sub_020A4810

	arm_func_start sub_020A4828
sub_020A4828: ; 0x020A4828
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r7, r0
	bl sub_020A4018
	mov r5, r0
	mov r0, r4
	bl sub_020A4018
	cmp r5, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #3
	bne _020A487C
	mov r0, r7
	bl sub_020A3FBC
	mov r5, r0
	mov r0, r4
	bl sub_020A3FBC
	cmp r5, r0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020A487C:
	cmp r5, #1
	bne _020A48D0
	mov r0, r7
	bl sub_020A3F80
	mov r5, r0
	mov r6, r1
	mov r0, r4
	bl sub_020A3F80
	cmp r6, r1
	cmpeq r5, r0
	bne _020A48C8
	mov r0, r7
	bl sub_020A3FA0
	mov r5, r0
	mov r0, r4
	bl sub_020A3FA0
	cmp r5, r0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_020A48C8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020A48D0:
	cmp r5, #2
	bne _020A4904
	mov r0, r7
	bl sub_020A3FA8
	mov r5, r0
	mov r6, r1
	mov r0, r4
	bl sub_020A3FA8
	cmp r6, r1
	cmpeq r5, r0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020A4904:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020A4828

	.data


	.global Unk_02100DB8
Unk_02100DB8: ; 0x02100DB8
	.incbin "incbin/arm9_data.bin", 0x20D8, 0x20FC - 0x20D8

	.global Unk_02100DDC
Unk_02100DDC: ; 0x02100DDC
	.incbin "incbin/arm9_data.bin", 0x20FC, 0xD

