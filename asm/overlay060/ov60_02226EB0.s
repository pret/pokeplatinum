	.include "macros/function.inc"
	.include "overlay060/ov60_02226EB0.inc"

	

	.text


	arm_func_start ov60_02226EB0
ov60_02226EB0: ; 0x02226EB0
	tst r0, #0x8000
	bicne r0, r0, #0x8000
	bx lr
	arm_func_end ov60_02226EB0

	arm_func_start ov60_02226EBC
ov60_02226EBC: ; 0x02226EBC
	stmfd sp!, {r3, lr}
	ldr r0, _02226ED8 ; =0x0222A9F0
	bl OS_GetLowEntropyData
	ldr r0, _02226ED8 ; =0x0222A9F0
	mov r1, #0x20
	bl ov4_0220FE28
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02226ED8: .word Unk_ov60_0222A9F0
	arm_func_end ov60_02226EBC

	arm_func_start ov60_02226EDC
ov60_02226EDC: ; 0x02226EDC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl ov4_02208324
	movs r4, r0
	bmi _02226F50
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02226F50
	bl ov60_02226EBC
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	ldr r2, _02226F58 ; =ov60_02226EB0
	str r1, [r0, #0x814]
	ldr r3, [r5, #0x18]
	ldr r1, [r5, #0x20]
	mov r0, r4
	str r3, [r1, #0x818]
	ldr r1, [r5, #0x20]
	str r2, [r1, #0x810]
	ldr r1, [r5, #0x20]
	bl ov4_02208BCC
	cmp r0, #0
	bge _02226F50
	mov r0, r4
	bl ov4_02208540
	mvn r4, #0
_02226F50:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02226F58: .word ov60_02226EB0
	arm_func_end ov60_02226EDC

	arm_func_start ov60_02226F5C
ov60_02226F5C: ; 0x02226F5C
	ldr ip, _02226F68 ; =ov4_02208540
	mov r0, r1
	bx ip
	; .align 2, 0
_02226F68: .word ov4_02208540
	arm_func_end ov60_02226F5C

	arm_func_start ov60_02226F6C
ov60_02226F6C: ; 0x02226F6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r0, r6
	bl ov4_02208540
	mvn r4, #0x19
	cmp r0, r4
	ldmneia sp!, {r4, r5, r6, pc}
	mov r5, #0x1f4
_02226F8C:
	mov r0, r5
	bl OS_Sleep
	mov r0, r6
	bl ov4_02208540
	cmp r0, r4
	beq _02226F8C
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov60_02226F6C

	arm_func_start ov60_02226FA8
ov60_02226FA8: ; 0x02226FA8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	mov ip, r3, asr #8
	mov r4, r0
	mov r5, #8
	mov lr, #2
	mov r3, r3, lsl #8
	mov r0, r1
	and ip, ip, #0xff
	and r1, r3, #0xff00
	orr r3, ip, r1
	add r1, sp, #0
	strb r5, [sp]
	strb lr, [sp, #1]
	strh r3, [sp, #2]
	str r2, [sp, #4]
	bl ov4_0220837C
	cmp r0, #0
	bge _02227014
	ldr r0, [r4, #4]
	add sp, sp, #8
	cmp r0, #0
	ldrne r0, _02227020 ; =0xFFFFFC16
	mvneq r0, #0x3e8
	ldmia sp!, {r3, r4, r5, pc}
_02227014:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02227020: .word 0xFFFFFC16
	arm_func_end ov60_02226FA8

	arm_func_start ov60_02227024
ov60_02227024: ; 0x02227024
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl ov4_022083D8
	cmp r0, #0
	ldmgeia sp!, {r4, pc}
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, _0222706C ; =0xFFFFFC16
	ldmneia sp!, {r4, pc}
	mvn r1, #0x37
	cmp r0, r1
	moveq r0, #0
	mvnne r0, #0x3e8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222706C: .word 0xFFFFFC16
	arm_func_end ov60_02227024

	arm_func_start ov60_02227070
ov60_02227070: ; 0x02227070
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl ov4_0220848C
	cmp r0, #0
	ldmgeia sp!, {r4, pc}
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, _022270B8 ; =0xFFFFFC16
	ldmneia sp!, {r4, pc}
	mvn r1, #0x37
	cmp r0, r1
	moveq r0, #0
	mvnne r0, #0x3e8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022270B8: .word 0xFFFFFC16
	arm_func_end ov60_02227070

	arm_func_start ov60_022270BC
ov60_022270BC: ; 0x022270BC
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmltia sp!, {r3, pc}
	mov r0, r1
	mov r1, #2
	bl ov4_02208534
	ldmia sp!, {r3, pc}
	arm_func_end ov60_022270BC

	.bss


	.global Unk_ov60_0222A9F0
Unk_ov60_0222A9F0: ; 0x0222A9F0
	.space 0x20

