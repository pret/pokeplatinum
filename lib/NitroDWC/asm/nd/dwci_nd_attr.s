	.include "macros/function.inc"
	.include "include/dwci_nd_attr.inc"

	.extern Unk_ov60_02229E5C
	.extern Unk_ov60_02229E6C
	.extern Unk_ov60_02229E70
	.extern Unk_ov60_02229E78

	.text


	arm_func_start ov60_02223D7C
ov60_02223D7C: ; 0x02223D7C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	ldr r6, _02223DB8 ; =0x02229E78
	ldr r4, _02223DBC ; =0x02229E70
	mov r5, r7
_02223D90:
	ldr r0, [r6, r7, lsl #2]
	cmp r0, #0
	beq _02223DA8
	ldr r1, [r4, #0]
	blx r1
	str r5, [r6, r7, lsl #2]
_02223DA8:
	add r7, r7, #1
	cmp r7, #3
	blt _02223D90
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02223DB8: .word Unk_ov60_02229E78
_02223DBC: .word Unk_ov60_02229E70
	arm_func_end ov60_02223D7C

	arm_func_start ov60_02223DC0
ov60_02223DC0: ; 0x02223DC0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	ldrsb r1, [r6]
	mov r4, r0
	cmp r1, #0
	beq _02223E7C
	mov r0, r6
	bl ov60_02225670
	cmp r0, #0xa
	ble _02223DFC
	ldr r0, _02223E84 ; =0x02229E6C
	mov r1, #7
	str r1, [r0, #0]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02223DFC:
	mov r0, r6
	bl ov60_02225670
	mov r5, r0
	cmp r5, #0xa
	ble _02223E24
	ldr r0, _02223E84 ; =0x02229E6C
	mov r1, #7
	str r1, [r0, #0]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02223E24:
	bl ov60_02223FAC
	ldr r1, _02223E88 ; =0x02229E5C
	add r0, r0, #1
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	ldr r1, _02223E8C ; =0x02229E78
	cmp r0, #0
	str r0, [r1, r4, lsl #2]
	bne _02223E60
	ldr r0, _02223E84 ; =0x02229E6C
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02223E60:
	mov r1, r6
	mov r2, r5
	bl ov60_02223FC8
	ldr r1, _02223E8C ; =0x02229E78
	mov r2, #0
	ldr r1, [r1, r4, lsl #2]
	strb r2, [r1, r0]
_02223E7C:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02223E84: .word Unk_ov60_02229E6C
_02223E88: .word Unk_ov60_02229E5C
_02223E8C: .word Unk_ov60_02229E78
	arm_func_end ov60_02223DC0

	arm_func_start DWCi_NdSetAttr
DWCi_NdSetAttr: ; 0x02223E90
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov60_02225534
	bl ov60_02223D7C
	mov r1, r6
	mov r0, #0
	bl ov60_02223DC0
	cmp r0, #0
	beq _02223EF0
	mov r1, r5
	mov r0, #1
	bl ov60_02223DC0
	cmp r0, #0
	beq _02223EF0
	mov r1, r4
	mov r0, #2
	bl ov60_02223DC0
	cmp r0, #0
	beq _02223EF0
	bl ov60_02225548
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_02223EF0:
	bl ov60_02223D7C
	bl ov60_02225548
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end DWCi_NdSetAttr