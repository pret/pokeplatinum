	.include "macros/function.inc"
	.include "include/sceneoptmovconfirm.inc"

	

	.text


	arm_func_start ov18_02231DD0
ov18_02231DD0: ; 0x02231DD0
	stmfd sp!, {r3, lr}
	bl ov18_02231DF0
	mov r0, #0x1a
	bl ov18_0222B7C8
	ldr r0, _02231DEC ; =ov18_02231E58
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231DEC: .word ov18_02231E58
	arm_func_end ov18_02231DD0

	arm_func_start ov18_02231DF0
ov18_02231DF0: ; 0x02231DF0
	ldr r3, _02231E50 ; =0x04001008
	ldr r1, _02231E54 ; =0x0400000A
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
	bx lr
	; .align 2, 0
_02231E50: .word 0x04001008
_02231E54: .word 0x0400000A
	arm_func_end ov18_02231DF0

	arm_func_start ov18_02231E58
ov18_02231E58: ; 0x02231E58
	stmfd sp!, {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02231E88 ; =ov18_02231E8C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231E88: .word ov18_02231E8C
	arm_func_end ov18_02231E58

	arm_func_start ov18_02231E8C
ov18_02231E8C: ; 0x02231E8C
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #4
	bl ov18_0222B790
	ldr r0, _02231EC4 ; =ov18_02231EC8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231EC4: .word ov18_02231EC8
	arm_func_end ov18_02231E8C

	arm_func_start ov18_02231EC8
ov18_02231EC8: ; 0x02231EC8
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02231EEC ; =ov18_02231EF0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231EEC: .word ov18_02231EF0
	arm_func_end ov18_02231EC8

	arm_func_start ov18_02231EF0
ov18_02231EF0: ; 0x02231EF0
	stmfd sp!, {r3, lr}
	bl ov18_02231F04
	bl ov18_02231F24
	bl ov18_02231F28
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02231EF0

	arm_func_start ov18_02231F04
ov18_02231F04: ; 0x02231F04
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02231F04

	arm_func_start ov18_02231F24
ov18_02231F24: ; 0x02231F24
	bx lr
	arm_func_end ov18_02231F24

	arm_func_start ov18_02231F28
ov18_02231F28: ; 0x02231F28
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _02231F4C ; =ov18_02231F50
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231F4C: .word ov18_02231F50
	arm_func_end ov18_02231F28

	arm_func_start ov18_02231F50
ov18_02231F50: ; 0x02231F50
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02231F6C ; =ov18_02231F70
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231F6C: .word ov18_02231F70
	arm_func_end ov18_02231F50

	arm_func_start ov18_02231F70
ov18_02231F70: ; 0x02231F70
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222B004
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02231FA8 ; =ov18_02231FAC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231FA8: .word ov18_02231FAC
	arm_func_end ov18_02231F70

	arm_func_start ov18_02231FAC
ov18_02231FAC: ; 0x02231FAC
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222B07C
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02231FF8 ; =ov18_02232C90
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231FF8: .word ov18_02232C90
	arm_func_end ov18_02231FAC

	arm_func_start ov18_02231FFC
ov18_02231FFC: ; 0x02231FFC
	stmfd sp!, {r3, lr}
	ldr r0, _0223203C ; =0x022532F8
	mov r1, #0
	strb r1, [r0]
	bl ov18_02232044
	mov r0, #0x13
	bl ov18_0222BBC0
	mov r0, #0x3c
	sub r1, r0, #0x3d
	mov r2, #0
	bl ov18_0222B594
	mov r0, #0x1b
	bl ov18_0222B7C8
	ldr r0, _02232040 ; =ov18_022320C4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223203C: .word Unk_ov18_022532F8
_02232040: .word ov18_022320C4
	arm_func_end ov18_02231FFC

	arm_func_start ov18_02232044
ov18_02232044: ; 0x02232044
	stmfd sp!, {r3, lr}
	ldr r0, _022320B4 ; =0x0224A07C
	ldr r1, _022320B8 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _022320BC ; =0x04001008
	ldr r1, _022320C0 ; =0x0400000A
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
_022320B4: .word Unk_ov18_0224A07C
_022320B8: .word GX_LoadBG2Scr
_022320BC: .word 0x04001008
_022320C0: .word 0x0400000A
	arm_func_end ov18_02232044

	arm_func_start ov18_022320C4
ov18_022320C4: ; 0x022320C4
	stmfd sp!, {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02232114 ; =ov18_02232118
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232114: .word ov18_02232118
	arm_func_end ov18_022320C4

	arm_func_start ov18_02232118
ov18_02232118: ; 0x02232118
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #3
	bl ov18_0222B790
	ldr r0, _02232140 ; =ov18_02232144
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232140: .word ov18_02232144
	arm_func_end ov18_02232118

	arm_func_start ov18_02232144
ov18_02232144: ; 0x02232144
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02232168 ; =ov18_0223216C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232168: .word ov18_0223216C
	arm_func_end ov18_02232144

	arm_func_start ov18_0223216C
ov18_0223216C: ; 0x0223216C
	stmfd sp!, {r3, lr}
	bl ov18_02232180
	bl ov18_022321B8
	bl ov18_022321BC
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0223216C

	arm_func_start ov18_02232180
ov18_02232180: ; 0x02232180
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _0223219C
	mov r0, #1
	bl ov18_0222B048
_0223219C:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02232180

	arm_func_start ov18_022321B8
ov18_022321B8: ; 0x022321B8
	bx lr
	arm_func_end ov18_022321B8

	arm_func_start ov18_022321BC
ov18_022321BC: ; 0x022321BC
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	beq _022321D8
	cmp r0, #1
	beq _022321E4
	ldmia sp!, {r3, pc}
_022321D8:
	mov r0, #7
	bl ov18_0223E994
	b _022321F8
_022321E4:
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _02232204 ; =0x022532F8
	mov r1, #1
	strb r1, [r0]
_022321F8:
	ldr r0, _02232208 ; =ov18_0223220C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232204: .word Unk_ov18_022532F8
_02232208: .word ov18_0223220C
	arm_func_end ov18_022321BC

	arm_func_start ov18_0223220C
ov18_0223220C: ; 0x0223220C
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02232228 ; =ov18_0223222C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232228: .word ov18_0223222C
	arm_func_end ov18_0223220C

	arm_func_start ov18_0223222C
ov18_0223222C: ; 0x0223222C
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222B004
	ldr r0, _02232288 ; =0x022532F8
	ldrb r0, [r0]
	cmp r0, #0
	bne _02232268
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_02232268:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223228C ; =ov18_02232290
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02232288: .word Unk_ov18_022532F8
_0223228C: .word ov18_02232290
	arm_func_end ov18_0223222C

	arm_func_start ov18_02232290
ov18_02232290: ; 0x02232290
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0223233C ; =0x022532F8
	ldrb r0, [r0]
	cmp r0, #0
	bne _022322C4
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
_022322C4:
	bl ov18_0222B07C
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _0223233C ; =0x022532F8
	ldrb r0, [r0]
	cmp r0, #0
	bne _022322F8
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_022322F8:
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _0223233C ; =0x022532F8
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, #0
	bne _0223232C
	bl ov18_0222F6D4
	ldr r0, _02232340 ; =ov18_02231230
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223232C:
	bl ov18_0222F6D4
	ldr r0, _02232344 ; =ov18_02231DD0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223233C: .word Unk_ov18_022532F8
_02232340: .word ov18_02231230
_02232344: .word ov18_02231DD0
	arm_func_end ov18_02232290

	.data


	.global Unk_ov18_0224A07C
Unk_ov18_0224A07C: ; 0x0224A07C
	.asciz "char/yb5Multi.nsc.l"



	.bss


	.global Unk_ov18_022532F8
Unk_ov18_022532F8: ; 0x022532F8
	.space 0x4

