	.include "macros/function.inc"
	.include "include/ov18_0222BC8C.inc"

	

	.text


	arm_func_start ov18_0222BC8C
ov18_0222BC8C: ; 0x0222BC8C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0222BD34 ; =0x02253298
	mov r4, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #0xc
	mov r1, #4
	bl ov18_02245068
	ldr r1, _0222BD38 ; =0x02248D20
	ldr r2, _0222BD34 ; =0x02253298
	ldrb r1, [r1, r4, lsl #2]
	str r0, [r2, #0]
	strb r4, [r0, #8]
	mov r0, #0
	bl ov18_02243F60
	ldr lr, _0222BD34 ; =0x02253298
	ldr ip, _0222BD3C ; =0xFE00FF00
	ldr r2, [lr]
	ldr r1, _0222BD40 ; =ov18_0222BD88
	str r0, [r2, #0]
	ldr r2, [lr]
	mov r0, #0
	ldr r5, [r2, #0]
	mov r2, r0
	ldr r4, [r5, #0]
	mov r3, #0x78
	and r4, r4, ip
	orr r4, r4, #0x26
	orr r4, r4, #0xe50000
	str r4, [r5, #0]
	ldr ip, [lr]
	ldr lr, [ip]
	ldrh ip, [lr, #4]
	bic ip, ip, #0xc00
	orr ip, ip, #0x800
	strh ip, [lr, #4]
	bl ov18_02246304
	ldr r1, _0222BD34 ; =0x02253298
	ldr r1, [r1, #0]
	str r0, [r1, #4]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0222BD34: .word 0x02253298
_0222BD38: .word 0x02248D20
_0222BD3C: .word 0xFE00FF00
_0222BD40: .word ov18_0222BD88
	arm_func_end ov18_0222BC8C

	arm_func_start ov18_0222BD44
ov18_0222BD44: ; 0x0222BD44
	stmfd sp!, {r3, lr}
	ldr r0, _0222BD80 ; =0x02253298
	ldr r0, [r0, #0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #4]
	mov r0, #0
	bl ov18_022463CC
	ldr r0, _0222BD80 ; =0x02253298
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov18_02245B74
	ldr r0, _0222BD84 ; =0x02253298
	bl ov18_0224508C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222BD80: .word 0x02253298
_0222BD84: .word 0x02253298
	arm_func_end ov18_0222BD44

	arm_func_start ov18_0222BD88
ov18_0222BD88: ; 0x0222BD88
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _0222BE20 ; =0x04000208
	mov r4, #0
	ldrh r5, [r0]
	strh r4, [r0]
	bl WM_GetAllowedChannel
	cmp r0, #0x8000
	beq _0222BDB0
	bl WM_GetLinkLevel
	mov r4, r0
_0222BDB0:
	ldr r2, _0222BE20 ; =0x04000208
	ldr r1, _0222BE24 ; =0x02253298
	ldrh r0, [r2]
	ldr r3, _0222BE28 ; =0x02248D20
	mov r0, #0
	strh r5, [r2]
	ldr r2, [r1, #0]
	ldrsb r1, [r2, #8]
	ldr r2, [r2, #0]
	add r1, r3, r1, lsl #2
	ldrb r1, [r4, r1]
	bl ov18_02243ECC
	ldr r1, _0222BE24 ; =0x02253298
	ldr r0, _0222BE2C ; =0xFE00FF00
	ldr r2, [r1, #0]
	ldr r3, [r2, #0]
	ldr r2, [r3, #0]
	and r0, r2, r0
	orr r0, r0, #0x26
	orr r0, r0, #0xe50000
	str r0, [r3, #0]
	ldr r0, [r1, #0]
	ldr r1, [r0, #0]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0x800
	strh r0, [r1, #4]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0222BE20: .word 0x04000208
_0222BE24: .word 0x02253298
_0222BE28: .word 0x02248D20
_0222BE2C: .word 0xFE00FF00
	arm_func_end ov18_0222BD88

	.rodata


	.global Unk_ov18_02248D1C
Unk_ov18_02248D1C: ; 0x02248D1C
	.incbin "incbin/overlay18_rodata.bin", 0x28E8, 0x28EC - 0x28E8

	.global Unk_ov18_02248D20
Unk_ov18_02248D20: ; 0x02248D20
	.incbin "incbin/overlay18_rodata.bin", 0x28EC, 0x8



	.bss


	.global Unk_ov18_02253298
Unk_ov18_02253298: ; 0x02253298
	.space 0x4

