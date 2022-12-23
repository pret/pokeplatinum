	.include "macros/function.inc"
	.include "overlay018/ov18_022425E8.inc"

	

	.text


	arm_func_start ov18_022425E8
ov18_022425E8: ; 0x022425E8
	stmfd sp!, {r4, lr}
	ldr r2, _022426D4 ; =0x022533A8
	mov r4, r1
	str r0, [r2, #0]
	add r0, r0, #0xb00
	bl ov18_022407B0
	ldr r1, _022426D4 ; =0x022533A8
	mov r3, #0
	ldr r0, [r1, #0]
	mov r2, #1
	add r0, r0, #0x600
	strh r3, [r0, #0x48]
	ldr r0, [r1, #0]
	add r0, r0, #0x600
	strh r3, [r0, #0x4a]
	ldr r0, [r1, #0]
	strb r2, [r0, #0xa90]
	ldr r0, [r1, #0]
	strb r2, [r0, #0xa91]
	ldr r0, [r1, #0]
	str r3, [r0, #0xa9c]
	bl ov18_02243198
	ldr r0, _022426D4 ; =0x022533A8
	ldr r3, [r4, #0]
	ldr r2, [r0, #0]
	mov r1, #2
	str r3, [r2, #0xab4]
	ldr r3, [r4, #4]
	ldr r2, [r0, #0]
	str r3, [r2, #0xab8]
	ldr r3, [r4, #8]
	ldr r2, [r0, #0]
	str r3, [r2, #0xabc]
	ldr r3, [r4, #0xc]
	ldr r2, [r0, #0]
	str r3, [r2, #0xac0]
	ldr r3, [r4, #0x10]
	ldr r2, [r0, #0]
	str r3, [r2, #0xac4]
	ldr r3, [r4, #0x14]
	ldr r2, [r0, #0]
	str r3, [r2, #0xac8]
	ldrb r3, [r4, #0x18]
	ldr r2, [r0, #0]
	strb r3, [r2, #0xa92]
	ldr r0, [r0, #0]
	strb r1, [r0, #0xacc]
	bl OS_GetTick
	ldr r0, _022426D4 ; =0x022533A8
	ldr r0, [r0, #0]
	add r0, r0, #0x24c
	add r0, r0, #0x400
	bl sub_020A2A34
	bl OS_GetTick
	bl ov18_0223E5D0
	ldr r1, _022426D4 ; =0x022533A8
	ldr r1, [r1, #0]
	str r0, [r1, #0xaa4]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022426D4: .word 0x022533A8
	arm_func_end ov18_022425E8

	arm_func_start ov18_022426D8
ov18_022426D8: ; 0x022426D8
	stmfd sp!, {r3, lr}
	ldr r0, _022427B0 ; =0x022533A8
	ldr r2, [r0, #0]
	ldrb r1, [r2, #0xa90]
	cmp r1, #1
	cmpne r1, #0x14
	cmpne r1, #0x17
	cmpne r1, #0x1a
	cmpne r1, #0x1d
	bne _02242720
	mov r1, #0x22
	strb r1, [r2, #0xa90]
	ldr r0, _022427B0 ; =0x022533A8
	mov r1, #0
	ldr r0, [r0, #0]
	strb r1, [r0, #0xaac]
	mov r0, #1
	ldmia sp!, {r3, pc}
_02242720:
	cmp r1, #4
	cmpne r1, #5
	cmpne r1, #6
	cmpne r1, #0xd
	bne _02242774
	cmp r1, #4
	bne _0224274C
	ldr r0, [r2, #0xa98]
	cmp r0, #6
	movlo r0, #0
	ldmloia sp!, {r3, pc}
_0224274C:
	bl ov18_02223B2C
	ldr r0, _022427B0 ; =0x022533A8
	mov r3, #0x10
	ldr r1, [r0, #0]
	mov r2, #2
	strb r3, [r1, #0xa90]
	ldr r1, [r0, #0]
	mov r0, #1
	strb r2, [r1, #0xaac]
	ldmia sp!, {r3, pc}
_02242774:
	add r0, r1, #0xf7
	and r0, r0, #0xff
	cmp r0, #1
	bhi _02242794
	mov r0, #0x20
	strb r0, [r2, #0xa90]
	mov r0, #1
	ldmia sp!, {r3, pc}
_02242794:
	cmp r1, #0xc
	movne r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0x22
	strb r0, [r2, #0xa90]
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022427B0: .word 0x022533A8
	arm_func_end ov18_022426D8

	arm_func_start ov18_022427B4
ov18_022427B4: ; 0x022427B4
	stmfd sp!, {r3, lr}
	ldr r0, _02242830 ; =0x022533A8
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xac8]
	bl ov18_02241CDC
	ldr r0, _02242830 ; =0x022533A8
	mov r1, #1
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	bl WM_GetNextTgid
	ldr r3, _02242830 ; =0x022533A8
	mov r2, #0x40
	ldr r1, [r3, #0]
	add r1, r1, #0x600
	strh r0, [r1, #0x48]
	ldr r1, [r3, #0]
	ldr r0, [r1, #0xaa4]
	add r1, r1, #0xa50
	bl MI_CpuCopy8
	ldr r0, _02242830 ; =0x022533A8
	mov r2, #0
	ldr r1, [r0, #0]
	strb r2, [r1, #0xa93]
	ldr r1, [r0, #0]
	str r2, [r1, #0x204]
	ldr r0, [r0, #0]
	add r0, r0, #0x600
	ldrh r1, [r0, #0x48]
	add r1, r1, #1
	strh r1, [r0, #0x48]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02242830: .word 0x022533A8
	arm_func_end ov18_022427B4

	arm_func_start ov18_02242834
ov18_02242834: ; 0x02242834
	stmfd sp!, {r3, lr}
	ldr r0, _02242878 ; =0x022533A8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0xa90]
	cmp r0, #1
	cmpne r0, #0x1a
	cmpne r0, #0x1d
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_022427B4
	bl ov18_022420E4
	ldr r0, _02242878 ; =0x022533A8
	mov r2, #2
	ldr r1, [r0, #0]
	mov r0, #1
	strb r2, [r1, #0xa90]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02242878: .word 0x022533A8
	arm_func_end ov18_02242834

	arm_func_start ov18_0224287C
ov18_0224287C: ; 0x0224287C
	stmfd sp!, {r3, lr}
	ldr r0, _022428AC ; =0x022533A8
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0xa90]
	cmp r0, #5
	movne r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #6
	strb r0, [r1, #0xa90]
	bl ov18_02240C7C
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022428AC: .word 0x022533A8
	arm_func_end ov18_0224287C

	arm_func_start ov18_022428B0
ov18_022428B0: ; 0x022428B0
	stmfd sp!, {r3, lr}
	ldr r1, _02242C2C ; =0x022533A8
	ldr r0, [r1, #0]
	ldrb r2, [r0, #0xa90]
	cmp r2, #0x22
	addls pc, pc, r2, lsl #2
	ldmia sp!, {r3, pc}
_022428CC: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _02242958 ; case 1
	b _02242994 ; case 2
	b _0224299C ; case 3
	b _022429B4 ; case 4
	b _022429C8 ; case 5
	b _022429C8 ; case 6
	b _022429D0 ; case 7
	b _022429D8 ; case 8
	b _022429D8 ; case 9
	b _022429D8 ; case 10
	b _022429E0 ; case 11
	ldmia sp!, {r3, pc} ; case 12
	ldmia sp!, {r3, pc} ; case 13
	ldmia sp!, {r3, pc} ; case 14
	ldmia sp!, {r3, pc} ; case 15
	b _022429E8 ; case 16
	b _02242A00 ; case 17
	b _02242A1C ; case 18
	b _02242A40 ; case 19
	ldmia sp!, {r3, pc} ; case 20
	b _02242A78 ; case 21
	b _02242A9C ; case 22
	ldmia sp!, {r3, pc} ; case 23
	b _02242AD4 ; case 24
	b _02242AF8 ; case 25
	ldmia sp!, {r3, pc} ; case 26
	b _02242B30 ; case 27
	b _02242B54 ; case 28
	ldmia sp!, {r3, pc} ; case 29
	b _02242C24 ; case 30
	ldmia sp!, {r3, pc} ; case 31
	b _02242BC8 ; case 32
	b _02242BEC ; case 33
	ldmia sp!, {r3, pc} ; case 34
_02242958:
	ldrb r2, [r0, #0xaac]
	cmp r2, #1
	bne _02242974
	mov r1, #0
	strb r1, [r0, #0xaac]
	bl ov18_02242834
	ldmia sp!, {r3, pc}
_02242974:
	cmp r2, #2
	ldmneia sp!, {r3, pc}
	mov r2, #0
	strb r2, [r0, #0xaac]
	ldr r0, [r1, #0]
	mov r1, #0x22
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242994:
	bl ov18_02242C88
	ldmia sp!, {r3, pc}
_0224299C:
	bl ov18_02242D30
	ldr r0, _02242C2C ; =0x022533A8
	mov r1, #4
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_022429B4:
	ldr r1, [r0, #0xa98]
	add r1, r1, #1
	str r1, [r0, #0xa98]
	bl ov18_02242D54
	ldmia sp!, {r3, pc}
_022429C8:
	bl ov18_02242D54
	ldmia sp!, {r3, pc}
_022429D0:
	bl ov18_02242F0C
	ldmia sp!, {r3, pc}
_022429D8:
	bl ov18_02242F38
	ldmia sp!, {r3, pc}
_022429E0:
	bl ov18_02243114
	ldmia sp!, {r3, pc}
_022429E8:
	mov r2, #0
	str r2, [r0, #0xa9c]
	ldr r0, [r1, #0]
	mov r1, #0x11
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242A00:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsia sp!, {r3, pc}
	bl ov18_0224312C
	ldmia sp!, {r3, pc}
_02242A1C:
	bl ov18_02223B2C
	ldr r0, _02242C2C ; =0x022533A8
	mov r3, #0
	ldr r2, [r0, #0]
	mov r1, #0x16
	str r3, [r2, #0xa9c]
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242A40:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsia sp!, {r3, pc}
	bl ov18_02241D04
	cmp r0, #1
	ldmneia sp!, {r3, pc}
	bl ov18_02242598
	ldr r0, _02242C2C ; =0x022533A8
	mov r1, #0x14
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242A78:
	bl ov18_02242490
	ldr r0, _02242C2C ; =0x022533A8
	mov r3, #0
	ldr r2, [r0, #0]
	mov r1, #0x16
	str r3, [r2, #0xa9c]
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242A9C:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsia sp!, {r3, pc}
	bl ov18_02241D04
	cmp r0, #1
	ldmneia sp!, {r3, pc}
	bl ov18_02242598
	ldr r0, _02242C2C ; =0x022533A8
	mov r1, #0x17
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242AD4:
	bl ov18_02242490
	ldr r0, _02242C2C ; =0x022533A8
	mov r3, #0
	ldr r2, [r0, #0]
	mov r1, #0x19
	str r3, [r2, #0xa9c]
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242AF8:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsia sp!, {r3, pc}
	bl ov18_02241D04
	cmp r0, #1
	ldmneia sp!, {r3, pc}
	bl ov18_02242598
	ldr r0, _02242C2C ; =0x022533A8
	mov r1, #0x1a
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242B30:
	bl ov18_02242490
	ldr r0, _02242C2C ; =0x022533A8
	mov r3, #0
	ldr r2, [r0, #0]
	mov r1, #0x1c
	str r3, [r2, #0xa9c]
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242B54:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsia sp!, {r3, pc}
	bl ov18_02241D04
	cmp r0, #1
	bne _02242B8C
	bl ov18_02242598
	ldr r0, _02242C2C ; =0x022533A8
	mov r1, #0x1d
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242B8C:
	ldr r1, _02242C2C ; =0x022533A8
	ldr r0, _02242C30 ; =0x88888889
	ldr r1, [r1, #0]
	mov r2, #0x1e
	ldr r3, [r1, #0xa9c]
	umull r0, r1, r3, r0
	mov r1, r1, lsr #4
	umull r0, r1, r2, r1
	sub r1, r3, r0
	cmp r1, #1
	ldmneia sp!, {r3, pc}
	cmp r3, #0x37
	ldmlsia sp!, {r3, pc}
	bl ov18_02242490
	ldmia sp!, {r3, pc}
_02242BC8:
	bl ov18_02242490
	ldr r0, _02242C2C ; =0x022533A8
	mov r3, #0
	ldr r2, [r0, #0]
	mov r1, #0x21
	str r3, [r2, #0xa9c]
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242BEC:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsia sp!, {r3, pc}
	bl ov18_02241D04
	cmp r0, #1
	ldmneia sp!, {r3, pc}
	bl ov18_02242598
	ldr r0, _02242C2C ; =0x022533A8
	mov r1, #0x22
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242C24:
	bl ov18_02242490
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02242C2C: .word 0x022533A8
_02242C30: .word 0x88888889
	arm_func_end ov18_022428B0

	arm_func_start ov18_02242C34
ov18_02242C34: ; 0x02242C34
	ldr r2, _02242C74 ; =0x022533A8
	ldr r3, [r2, #0]
	ldrb r3, [r3, #0xa90]
	strb r3, [r0]
	ldr r0, [r2, #0]
	ldrb r2, [r0, #0xa90]
	ldrb r0, [r0, #0xa91]
	cmp r2, r0
	movne r0, #1
	moveq r0, #0
	strb r0, [r1]
	ldr r0, _02242C74 ; =0x022533A8
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0xa90]
	strb r0, [r1, #0xa91]
	bx lr
	; .align 2, 0
_02242C74: .word 0x022533A8
	arm_func_end ov18_02242C34

	arm_func_start ov18_02242C78
ov18_02242C78: ; 0x02242C78
	ldr ip, _02242C84 ; =ov18_0221F874
	mov r0, #1
	bx ip
	; .align 2, 0
_02242C84: .word ov18_0221F874
	arm_func_end ov18_02242C78

	arm_func_start ov18_02242C88
ov18_02242C88: ; 0x02242C88
	stmfd sp!, {r3, lr}
	bl ov18_02241D04
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _02242D24
_02242C9C: ; jump table
	b _02242CFC ; case 0
	b _02242CC4 ; case 1
	b _02242D24 ; case 2
	ldmia sp!, {r3, pc} ; case 3
	b _02242D24 ; case 4
	b _02242D24 ; case 5
	b _02242D24 ; case 6
	b _02242CCC ; case 7
	b _02242D24 ; case 8
	b _02242D1C ; case 9
_02242CC4:
	bl ov18_02241D18
	ldmia sp!, {r3, pc}
_02242CCC:
	bl ov18_02241F84
	ldr r2, _02242D2C ; =0x022533A8
	mov ip, #0
	ldr r1, [r2, #0]
	mov r3, #3
	add r1, r1, #0x600
	strh r0, [r1, #0x4a]
	ldr r0, [r2, #0]
	str ip, [r0, #0xa98]
	ldr r0, [r2, #0]
	strb r3, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242CFC:
	ldr r0, _02242D2C ; =0x022533A8
	mov r3, #0
	ldr r2, [r0, #0]
	mov r1, #3
	str r3, [r2, #0xa98]
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242D1C:
	bl ov18_02242474
	ldmia sp!, {r3, pc}
_02242D24:
	bl OS_Terminate
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02242D2C: .word 0x022533A8
	arm_func_end ov18_02242C88

	arm_func_start ov18_02242D30
ov18_02242D30: ; 0x02242D30
	ldr r0, _02242D4C ; =0x022533A8
	ldr ip, _02242D50 ; =ov18_022407F0
	ldr r2, [r0, #0]
	add r0, r2, #0x600
	ldrh r1, [r0, #0x48]
	ldr r0, [r2, #0xac8]
	bx ip
	; .align 2, 0
_02242D4C: .word 0x022533A8
_02242D50: .word ov18_022407F0
	arm_func_end ov18_02242D30

	arm_func_start ov18_02242D54
ov18_02242D54: ; 0x02242D54
	stmfd sp!, {r3, lr}
	bl ov18_02241238
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, pc}
_02242D68: ; jump table
	b _02242EB8 ; case 0
	b _02242D88 ; case 1
	b _02242DA8 ; case 2
	b _02242E38 ; case 3
	ldmia sp!, {r3, pc} ; case 4
	b _02242E8C ; case 5
	ldmia sp!, {r3, pc} ; case 6
	b _02242EA0 ; case 7
_02242D88:
	ldr r0, _02242F08 ; =0x022533A8
	ldr r2, [r0, #0]
	add r0, r2, #0x600
	ldrh r1, [r0, #0x4a]
	add r0, r2, #0x2b4
	add r0, r0, #0x800
	bl ov18_02240910
	ldmia sp!, {r3, pc}
_02242DA8:
	mov r0, #2
	bl ov18_0224124C
	cmp r0, #0
	beq _02242DCC
	ldr r0, _02242F08 ; =0x022533A8
	mov r1, #5
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242DCC:
	mov r0, #3
	bl ov18_0224124C
	cmp r0, #0
	bne _02242DEC
	mov r0, #4
	bl ov18_0224124C
	cmp r0, #0
	beq _02242E00
_02242DEC:
	ldr r0, _02242F08 ; =0x022533A8
	mov r1, #6
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242E00:
	ldr r0, _02242F08 ; =0x022533A8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0xa90]
	cmp r0, #5
	ldmneia sp!, {r3, pc}
	mov r0, #2
	bl ov18_0224124C
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02242F08 ; =0x022533A8
	mov r1, #0xd
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242E38:
	bl ov18_02240D5C
	cmp r0, #0
	beq _02242E4C
	bl ov18_02240DC4
	ldmia sp!, {r3, pc}
_02242E4C:
	ldr r0, _02242F08 ; =0x022533A8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0xa90]
	add r0, r0, #0xfa
	and r0, r0, #0xff
	cmp r0, #1
	ldmhiia sp!, {r3, pc}
	mov r0, #3
	bl ov18_0224124C
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02242F08 ; =0x022533A8
	mov r1, #0x12
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242E8C:
	ldr r0, _02242F08 ; =0x022533A8
	mov r1, #7
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242EA0:
	bl ov18_02240EBC
	ldr r0, _02242F08 ; =0x022533A8
	mov r1, #1
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242EB8:
	bl ov18_02241D04
	cmp r0, #0
	beq _02242EE0
	cmp r0, #1
	beq _02242ED8
	cmp r0, #3
	ldmeqia sp!, {r3, pc}
	b _02242EF4
_02242ED8:
	bl ov18_02242598
	ldmia sp!, {r3, pc}
_02242EE0:
	ldr r0, _02242F08 ; =0x022533A8
	mov r1, #0x1f
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_02242EF4:
	ldr r0, _02242F08 ; =0x022533A8
	mov r1, #0x1f
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02242F08: .word 0x022533A8
	arm_func_end ov18_02242D54

	arm_func_start ov18_02242F0C
ov18_02242F0C: ; 0x02242F0C
	stmfd sp!, {r3, lr}
	bl ov18_02243198
	ldr r0, _02242F30 ; =ov18_0224315C
	bl ov18_02242390
	ldr r0, _02242F34 ; =0x022533A8
	mov r1, #8
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02242F30: .word ov18_0224315C
_02242F34: .word 0x022533A8
	arm_func_end ov18_02242F0C

	arm_func_start ov18_02242F38
ov18_02242F38: ; 0x02242F38
	stmfd sp!, {r3, lr}
	bl ov18_02241D04
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, pc}
_02242F4C: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _02242F68 ; case 1
	ldmia sp!, {r3, pc} ; case 2
	ldmia sp!, {r3, pc} ; case 3
	b _02242F94 ; case 4
	b _02242F94 ; case 5
	b _02242F94 ; case 6
_02242F68:
	ldr r1, _02243110 ; =0x022533A8
	mov r0, #4
	ldr r1, [r1, #0]
	add r1, r1, #0x600
	ldrh r3, [r1, #0x48]
	ldrh r2, [r1, #0x4a]
	add r1, r3, #1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov18_02242218
	ldmia sp!, {r3, pc}
_02242F94:
	ldr r1, _02243110 ; =0x022533A8
	mov r0, #0
	ldr r2, [r1, #0]
	add r1, r2, #0x200
	ldrh r1, [r1]
	ldr ip, [r2, #0xaa4]
	mov r3, r1, lsr #0x1f
	rsb r2, r3, r1, lsl #28
	add r2, r3, r2, ror #28
	add r2, ip, r2, lsl #6
	bl ov18_022431DC
	bl ov18_02243344
	ldr r0, _02243110 ; =0x022533A8
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0xa90]
	cmp r0, #0x1b
	ldmeqia sp!, {r3, pc}
	ldr r0, [r1, #0x204]
	cmp r0, #0x1e0
	movhi r0, #0x1b
	strhib r0, [r1, #0xa90]
	ldmhiia sp!, {r3, pc}
	bl ov18_02243428
	cmp r0, #0x10
	beq _02243004
	bl ov18_02243428
	cmp r0, #0x20
	bne _0224301C
_02243004:
	bl ov18_02243428
	ldr r0, _02243110 ; =0x022533A8
	mov r1, #0xa
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_0224301C:
	bl ov18_02243428
	cmp r0, #0x40
	bne _0224303C
	ldr r0, _02243110 ; =0x022533A8
	mov r1, #0xb
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_0224303C:
	bl ov18_02243428
	cmp r0, #0xff
	bne _0224305C
	ldr r0, _02243110 ; =0x022533A8
	mov r1, #0x1b
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_0224305C:
	bl ov18_02243428
	cmp r0, #0x50
	bne _0224307C
	ldr r0, _02243110 ; =0x022533A8
	mov r1, #0x15
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_0224307C:
	bl ov18_02243428
	cmp r0, #0x60
	bne _0224309C
	ldr r0, _02243110 ; =0x022533A8
	mov r1, #0x18
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_0224309C:
	bl ov18_02243428
	cmp r0, #0x70
	bne _022430BC
	ldr r0, _02243110 ; =0x022533A8
	mov r1, #0x1b
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_022430BC:
	bl ov18_02243428
	cmp r0, #0
	bne _022430DC
	ldr r0, _02243110 ; =0x022533A8
	mov r1, #8
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_022430DC:
	bl ov18_02243428
	cmp r0, #0xbd
	bne _022430FC
	ldr r0, _02243110 ; =0x022533A8
	mov r1, #9
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
_022430FC:
	ldr r0, _02243110 ; =0x022533A8
	mov r1, #0x1f
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02243110: .word 0x022533A8
	arm_func_end ov18_02242F38

	arm_func_start ov18_02243114
ov18_02243114: ; 0x02243114
	ldr r0, _02243128 ; =0x022533A8
	mov r1, #0xc
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	bx lr
	; .align 2, 0
_02243128: .word 0x022533A8
	arm_func_end ov18_02243114

	arm_func_start ov18_0224312C
ov18_0224312C: ; 0x0224312C
	stmfd sp!, {r3, lr}
	bl ov18_02241D04
	cmp r0, #1
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_02242598
	ldr r1, _02243158 ; =0x022533A8
	mov r0, #1
	ldr r1, [r1, #0]
	strb r0, [r1, #0xa90]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02243158: .word 0x022533A8
	arm_func_end ov18_0224312C

	arm_func_start ov18_0224315C
ov18_0224315C: ; 0x0224315C
	stmfd sp!, {r4, lr}
	add r0, r0, #0xa
	bl ov18_022413A0
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov18_0224136C
	ldr r1, _02243194 ; =0x022533A8
	sub r2, r4, #1
	ldr r1, [r1, #0]
	add r1, r1, r2, lsl #2
	str r0, [r1, #0xaa0]
	mov r0, #1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02243194: .word 0x022533A8
	arm_func_end ov18_0224315C

	arm_func_start ov18_02243198
ov18_02243198: ; 0x02243198
	stmfd sp!, {r3, lr}
	ldr r0, _022431D8 ; =0x022533A8
	mov r1, #0
	ldr r0, [r0, #0]
	mov r2, #0x100
	add r0, r0, #0x100
	bl MI_CpuFill8
	ldr r0, _022431D8 ; =0x022533A8
	mov r1, #0
	ldr r0, [r0, #0]
	mov r2, #0x100
	bl MI_CpuFill8
	ldr r0, _022431D8 ; =0x022533A8
	ldr r0, [r0, #0]
	str r0, [r0, #0xab0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022431D8: .word 0x022533A8
	arm_func_end ov18_02243198

	arm_func_start ov18_022431DC
ov18_022431DC: ; 0x022431DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r3, _02243340 ; =0x022533A8
	ldr r5, [r3, #0]
	ldrb r4, [r5, #0xa93]
	cmp r4, #1
	bne _02243224
	ldr r4, [r5, #0xab0]
	strh r0, [r4]
	ldr r4, [r3, #0]
	mov r0, r2
	ldr r4, [r4, #0xab0]
	mov r2, #0x40
	strh r1, [r4, #2]
	ldr r1, [r3, #0]
	ldr r1, [r1, #0xab0]
	add r1, r1, #4
	bl MI_CpuCopy8
	b _02243250
_02243224:
	ldr r0, [r5, #0x204]
	mov r1, #0xbc
	add r0, r0, #1
	str r0, [r5, #0x204]
	ldr r0, [r3, #0]
	ldr r0, [r0, #0xab0]
	strh r1, [r0]
	ldr r0, [r3, #0]
	ldrb r1, [r0, #0xa92]
	ldr r0, [r0, #0xab0]
	strb r1, [r0, #4]
_02243250:
	bl ov18_02241D04
	cmp r0, #5
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, _02243340 ; =0x022533A8
	ldr r0, [r0, #0]
	bl ov18_022423CC
	cmp r0, #0
	bne _02243288
	ldr r0, _02243340 ; =0x022533A8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x204]
	add r0, r0, #4
	str r0, [r1, #0x204]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02243288:
	ldr r0, _02243340 ; =0x022533A8
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0xa93]
	cmp r0, #0
	bne _022432AC
	ldr r0, [r1, #0x204]
	add r0, r0, #1
	str r0, [r1, #0x204]
	b _022432D4
_022432AC:
	mov r0, #0
	str r0, [r1, #0x204]
	bl ov18_02241CF0
	cmp r0, #3
	beq _022432D4
	ldr r0, _02243340 ; =0x022533A8
	mov r1, #0x1b
	ldr r0, [r0, #0]
	strb r1, [r0, #0xa90]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022432D4:
	mov r7, #0
	mov r6, #0x44
	ldr sb, _02243340 ; =0x022533A8
	mov r4, r7
	mov r5, #1
	mov r8, r6
_022432EC:
	mov r0, r7
	bl ov18_022423A4
	cmp r0, #0
	ldreq r0, [sb]
	addeq r0, r0, r7, lsl #2
	streq r4, [r0, #0x208]
	beq _02243328
	ldr r1, [sb]
	mov r2, r6
	add r1, r1, #0x100
	mla r1, r7, r8, r1
	bl MI_CpuCopy8
	ldr r0, [sb]
	add r0, r0, r7, lsl #2
	str r5, [r0, #0x208]
_02243328:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	cmp r7, #2
	blo _022432EC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02243340: .word 0x022533A8
	arm_func_end ov18_022431DC

	arm_func_start ov18_02243344
ov18_02243344: ; 0x02243344
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov ip, #0
	ldr r4, _02243424 ; =0x022533A8
	mov r0, #1
	mov r5, ip
	mov r1, #0xbc
	mov r2, ip
	mov lr, #0x44
_02243364:
	ldr r3, [r4, #0]
	add r6, r3, ip, lsl #2
	ldr r6, [r6, #0x208]
	cmp r6, #0
	beq _02243414
	mul r7, ip, lr
	cmp ip, #1
	add r8, r3, #0x100
	bne _02243414
	ldrb r6, [r3, #0xa93]
	cmp r6, #1
	bne _022433E4
	ldrh r6, [r8, r7]
	cmp r6, #0x10
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, [r3, #0xa94]
	add r6, r6, #1
	str r6, [r3, #0xa94]
	ldr r6, [r4, #0]
	ldr r3, [r6, #0xa94]
	tst r3, #1
	bne _02243414
	add r3, r6, #0x200
	ldrh r6, [r3]
	add r6, r6, #1
	strh r6, [r3]
	ldr r3, [r4, #0]
	add r3, r3, #0x200
	ldrh r6, [r3]
	cmp r6, #0x24
	strhsh r2, [r3]
	b _02243414
_022433E4:
	add r3, r3, #0x200
	strh r1, [r3, #2]
	ldrh r3, [r8, r7]
	cmp r3, #0xbd
	bne _02243414
	ldr r3, [r4, #0]
	strb r0, [r3, #0xa93]
	ldr r3, [r4, #0]
	add r3, r3, #0x200
	strh r5, [r3]
	ldr r3, [r4, #0]
	str r5, [r3, #0xa94]
_02243414:
	add ip, ip, #1
	cmp ip, #0x10
	blt _02243364
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02243424: .word 0x022533A8
	arm_func_end ov18_02243344

	arm_func_start ov18_02243428
ov18_02243428: ; 0x02243428
	ldr r0, _0224343C ; =0x022533A8
	ldr r0, [r0, #0]
	add r0, r0, #0x100
	ldrh r0, [r0, #0x44]
	bx lr
	; .align 2, 0
_0224343C: .word 0x022533A8
	arm_func_end ov18_02243428

	.bss


	.global Unk_ov18_022533A8
Unk_ov18_022533A8: ; 0x022533A8
	.space 0x4

