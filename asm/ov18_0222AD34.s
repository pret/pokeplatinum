	.include "macros/function.inc"
	.include "include/ov18_0222AD34.inc"

	

	.text


	arm_func_start ov18_0222AD34
ov18_0222AD34: ; 0x0222AD34
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r0, #0xc
	mov r1, #4
	bl ov18_02245068
	ldr r2, _0222ADF4 ; =0x02253244
	mov r1, #0x47
	str r0, [r2, #0]
	strb r4, [r0, #8]
	mov r0, #0
	bl ov18_02243F60
	ldr lr, _0222ADF4 ; =0x02253244
	ldr r1, _0222ADF8 ; =0x02248C8C
	ldr r2, [lr]
	ldrb r4, [r1, r4]
	str r0, [r2, #4]
	ldr r0, [lr]
	ldr ip, _0222ADFC ; =0xFE00FF00
	ldr r5, [r0, #4]
	ldr r1, _0222AE00 ; =ov18_0222AE40
	ldrh r3, [r5, #4]
	mov r0, #1
	mov r2, #0
	bic r3, r3, #0xc00
	orr r3, r3, #0x400
	strh r3, [r5, #4]
	ldr r5, [lr]
	mov r3, #0x78
	ldr r6, [r5, #4]
	ldr r5, [r6, #0]
	bic r5, r5, #0xc00
	str r5, [r6, #0]
	ldrh r5, [r6, #4]
	bic r5, r5, #0xf000
	orr r4, r5, r4, lsl #12
	strh r4, [r6, #4]
	ldr r4, [lr]
	ldr r4, [r4, #4]
	ldr lr, [r4]
	and ip, lr, ip
	orr ip, ip, #0x8b
	orr ip, ip, #0xe60000
	str ip, [r4]
	bl ov18_02246304
	ldr r1, _0222ADF4 ; =0x02253244
	ldr r1, [r1, #0]
	str r0, [r1, #0]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0222ADF4: .word 0x02253244
_0222ADF8: .word 0x02248C8C
_0222ADFC: .word 0xFE00FF00
_0222AE00: .word ov18_0222AE40
	arm_func_end ov18_0222AD34

	arm_func_start ov18_0222AE04
ov18_0222AE04: ; 0x0222AE04
	stmfd sp!, {r3, lr}
	ldr r1, _0222AE38 ; =0x02253244
	mov r0, #1
	ldr r1, [r1, #0]
	ldr r1, [r1, #0]
	bl ov18_022463CC
	ldr r0, _0222AE38 ; =0x02253244
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov18_02245B74
	ldr r0, _0222AE3C ; =0x02253244
	bl ov18_0224508C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222AE38: .word 0x02253244
_0222AE3C: .word 0x02253244
	arm_func_end ov18_0222AE04

	arm_func_start ov18_0222AE40
ov18_0222AE40: ; 0x0222AE40
	stmfd sp!, {r3, lr}
	ldr r0, _0222AF00 ; =0x02253244
	mov r1, #0x28
	ldr r0, [r0, #0]
	ldrb r0, [r0, #9]
	add r0, r0, #1
	bl sub_020BD140
	ldr r2, _0222AF00 ; =0x02253244
	mov r1, #5
	ldr r3, [r2, #0]
	strb r0, [r3, #9]
	ldr r0, [r2, #0]
	ldrb r0, [r0, #9]
	bl sub_020BD104
	ldr r2, _0222AF00 ; =0x02253244
	add r1, r0, #0x47
	ldr r2, [r2, #0]
	mov r0, #0
	ldr r2, [r2, #4]
	bl ov18_02243ECC
	ldr r1, _0222AF00 ; =0x02253244
	ldr ip, _0222AF04 ; =0x02248C8C
	ldr r2, [r1, #0]
	ldr r0, _0222AF08 ; =0xFE00FF00
	ldr r3, [r2, #4]
	ldrh r2, [r3, #4]
	bic r2, r2, #0xc00
	orr r2, r2, #0x400
	strh r2, [r3, #4]
	ldr r2, [r1, #0]
	ldrb lr, [r2, #8]
	ldr r3, [r2, #4]
	ldr r2, [r3, #0]
	ldrb ip, [ip, lr]
	bic r2, r2, #0xc00
	str r2, [r3, #0]
	ldrh r2, [r3, #4]
	bic r2, r2, #0xf000
	orr r2, r2, ip, lsl #12
	strh r2, [r3, #4]
	ldr r1, [r1, #0]
	ldr r2, [r1, #4]
	ldr r1, [r2, #0]
	and r0, r1, r0
	orr r0, r0, #0x8b
	orr r0, r0, #0xe60000
	str r0, [r2, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222AF00: .word 0x02253244
_0222AF04: .word 0x02248C8C
_0222AF08: .word 0xFE00FF00
	arm_func_end ov18_0222AE40

	.rodata


	.global Unk_ov18_02248C8C
Unk_ov18_02248C8C: ; 0x02248C8C
	.incbin "incbin/overlay18_rodata.bin", 0x2858, 0x3



	.bss


	.global Unk_ov18_02253244
Unk_ov18_02253244: ; 0x02253244
	.space 0x4

