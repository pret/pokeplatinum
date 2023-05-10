	.include "macros/function.inc"
	.include "include/sceneoptmovwait.inc"

	

	.text


	arm_func_start ov18_02232C70
ov18_02232C70: ; 0x02232C70
	ldr r0, _02232C8C ; =0x027FFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_02232C8C: .word 0x027FFFA8
	arm_func_end ov18_02232C70

	arm_func_start ov18_02232C90
ov18_02232C90: ; 0x02232C90
	stmfd sp!, {r3, lr}
	ldr r0, _02232CD0 ; =ov18_0223300C
	bl ov18_0222F8FC
	ldr r0, _02232CD4 ; =0x02253308
	mov r1, #0
	strb r1, [r0]
	bl ov18_02232CDC
	mov r0, #0x1c
	bl ov18_0222B7C8
	mov r0, #0
	bl ov18_0222AD34
	mov r0, #0xb
	bl ov18_0223E994
	ldr r0, _02232CD8 ; =ov18_02232D5C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232CD0: .word ov18_0223300C
_02232CD4: .word Unk_ov18_02253308
_02232CD8: .word ov18_02232D5C
	arm_func_end ov18_02232C90

	arm_func_start ov18_02232CDC
ov18_02232CDC: ; 0x02232CDC
	stmfd sp!, {r3, lr}
	ldr r0, _02232D4C ; =0x0224A0CC
	ldr r1, _02232D50 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _02232D54 ; =0x04001008
	ldr r1, _02232D58 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232D4C: .word Unk_ov18_0224A0CC
_02232D50: .word GX_LoadBG2Scr
_02232D54: .word 0x04001008
_02232D58: .word 0x0400000A
	arm_func_end ov18_02232CDC

	arm_func_start ov18_02232D5C
ov18_02232D5C: ; 0x02232D5C
	stmfd sp!, {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02232D8C ; =ov18_02232D90
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232D8C: .word ov18_02232D90
	arm_func_end ov18_02232D5C

	arm_func_start ov18_02232D90
ov18_02232D90: ; 0x02232D90
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #1
	bl ov18_0222B790
	ldr r0, _02232DB8 ; =ov18_02232DBC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232DB8: .word ov18_02232DBC
	arm_func_end ov18_02232D90

	arm_func_start ov18_02232DBC
ov18_02232DBC: ; 0x02232DBC
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	ldr r0, _02232DDC ; =ov18_02232DE0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232DDC: .word ov18_02232DE0
	arm_func_end ov18_02232DBC

	arm_func_start ov18_02232DE0
ov18_02232DE0: ; 0x02232DE0
	stmfd sp!, {r3, lr}
	bl ov18_02232DF4
	bl ov18_02232E2C
	bl ov18_02232E30
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02232DE0

	arm_func_start ov18_02232DF4
ov18_02232DF4: ; 0x02232DF4
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _02232E14
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
_02232E14:
	bl ov18_02232C70
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02232DF4

	arm_func_start ov18_02232E2C
ov18_02232E2C: ; 0x02232E2C
	bx lr
	arm_func_end ov18_02232E2C

	arm_func_start ov18_02232E30
ov18_02232E30: ; 0x02232E30
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0223E9FC
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _02232E58 ; =ov18_02232E5C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232E58: .word ov18_02232E5C
	arm_func_end ov18_02232E30

	arm_func_start ov18_02232E5C
ov18_02232E5C: ; 0x02232E5C
	stmfd sp!, {r3, lr}
	ldr r0, _02232E8C ; =0x02253308
	ldrb r0, [r0]
	cmp r0, #0
	bne _02232E74
	bl ov18_0222F9E8
_02232E74:
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02232E90 ; =ov18_02232E94
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232E8C: .word Unk_ov18_02253308
_02232E90: .word ov18_02232E94
	arm_func_end ov18_02232E5C

	arm_func_start ov18_02232E94
ov18_02232E94: ; 0x02232E94
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02232F0C ; =0x02253308
	ldrb r0, [r0]
	cmp r0, #0
	bne _02232EC4
	bl ov18_0222FA44
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
_02232EC4:
	bl ov18_0222B004
	ldr r0, _02232F0C ; =0x02253308
	ldrb r0, [r0]
	cmp r0, #0
	bne _02232EEC
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_02232EEC:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02232F10 ; =ov18_02232F14
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232F0C: .word Unk_ov18_02253308
_02232F10: .word ov18_02232F14
	arm_func_end ov18_02232E94

	arm_func_start ov18_02232F14
ov18_02232F14: ; 0x02232F14
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02232FFC ; =0x02253308
	ldrb r0, [r0]
	cmp r0, #0
	bne _02232F48
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
_02232F48:
	bl ov18_0222B07C
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _02232FFC ; =0x02253308
	ldrb r0, [r0]
	cmp r0, #0
	bne _02232F70
	bl ov18_0222FA44
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
_02232F70:
	bl ov18_0222AE04
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _02232FFC ; =0x02253308
	ldrb r0, [r0]
	cmp r0, #0
	bne _02232F9C
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_02232F9C:
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _02232FFC ; =0x02253308
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	bne _02232FD0
	mov r0, #0
	bl ov18_0222F6D4
	ldr r0, _02233000 ; =ov18_02231230
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_02232FD0:
	cmp r0, #2
	mov r0, #0
	bne _02232FEC
	bl ov18_0222F6D4
	ldr r0, _02233004 ; =ov18_02232530
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_02232FEC:
	bl ov18_0222F6D4
	ldr r0, _02233008 ; =ov18_02232898
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232FFC: .word Unk_ov18_02253308
_02233000: .word ov18_02231230
_02233004: .word ov18_02232530
_02233008: .word ov18_02232898
	arm_func_end ov18_02232F14

	arm_func_start ov18_0223300C
ov18_0223300C: ; 0x0223300C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov18_0223E9FC
	cmp r4, #0
	bne _02233038
	ldr r1, _02233060 ; =0x02253308
	mov r2, #1
	mov r0, #0x10
	strb r2, [r1]
	bl ov18_0223E994
	b _0223304C
_02233038:
	ldr r1, _02233060 ; =0x02253308
	mov r2, #2
	mov r0, #0x12
	strb r2, [r1]
	bl ov18_0223E994
_0223304C:
	mov r0, #0
	bl ov18_0222FA60
	ldr r0, _02233064 ; =ov18_02232E5C
	bl ov18_0222F6C4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02233060: .word Unk_ov18_02253308
_02233064: .word ov18_02232E5C
	arm_func_end ov18_0223300C

	.data


	.global Unk_ov18_0224A0CC
Unk_ov18_0224A0CC: ; 0x0224A0CC
	.asciz "char/yb5Multi.nsc.l"



	.bss


	.global Unk_ov18_02253308
Unk_ov18_02253308: ; 0x02253308
	.space 0x4

