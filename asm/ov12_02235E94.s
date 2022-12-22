	.include "macros/function.inc"
	.include "include/ov12_02235E94.inc"

	

	.text


	thumb_func_start ov12_02235E94
ov12_02235E94: ; 0x02235E94
	cmp r0, #1
	blt _02235E9E
	ldr r1, _02235EAC ; =0x00000113
	cmp r0, r1
	ble _02235EA2
_02235E9E:
	mov r0, #4
	b _02235EA8
_02235EA2:
	cmp r0, #0xff
	blt _02235EA8
	sub r0, #0xff
_02235EA8:
	sub r0, r0, #1
	bx lr
	; .align 2, 0
_02235EAC: .word 0x00000113
	thumb_func_end ov12_02235E94

	thumb_func_start ov12_02235EB0
ov12_02235EB0: ; 0x02235EB0
	push {r3, r4, r5}
	sub sp, #0x2c
	ldr r5, _02235EEC ; =0x0223AC0C
	add r2, r0, #0
	add r4, sp, #0
	mov r3, #5
_02235EBC:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _02235EBC
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	mov r0, #0
	add r3, r0, #0
	add r4, sp, #0
_02235ECE:
	ldr r1, [r4, #0]
	cmp r2, r1
	bne _02235EDC
	add sp, #0x2c
	mov r0, #1
	pop {r3, r4, r5}
	bx lr
_02235EDC:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, #0xb
	blo _02235ECE
	add sp, #0x2c
	pop {r3, r4, r5}
	bx lr
	nop
_02235EEC: .word 0x0223AC0C
	thumb_func_end ov12_02235EB0

	thumb_func_start ov12_02235EF0
ov12_02235EF0: ; 0x02235EF0
	push {r4, r5}
	sub sp, #0x18
	ldr r3, _02235F28 ; =0x0223AB6C
	add r2, sp, #0
	add r5, r0, #0
	add r4, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	add r2, r0, #0
_02235F0C:
	ldr r1, [r4, #0]
	cmp r5, r1
	bne _02235F1A
	add sp, #0x18
	mov r0, #1
	pop {r4, r5}
	bx lr
_02235F1A:
	add r2, r2, #1
	add r4, r4, #4
	cmp r2, #6
	blo _02235F0C
	add sp, #0x18
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02235F28: .word 0x0223AB6C
	thumb_func_end ov12_02235EF0

	thumb_func_start ov12_02235F2C
ov12_02235F2C: ; 0x02235F2C
	push {r3, r4, r5}
	sub sp, #0xc
	ldr r5, _02235F60 ; =0x0223AB60
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #0
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	mov r0, #1
	mov r4, #0
_02235F44:
	ldr r1, [r2, #0]
	cmp r3, r1
	bne _02235F52
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5}
	bx lr
_02235F52:
	add r4, r4, #1
	add r2, r2, #4
	cmp r4, #3
	blo _02235F44
	add sp, #0xc
	pop {r3, r4, r5}
	bx lr
	; .align 2, 0
_02235F60: .word 0x0223AB60
	thumb_func_end ov12_02235F2C

	thumb_func_start ov12_02235F64
ov12_02235F64: ; 0x02235F64
	push {r3, lr}
	bl ov12_02235E94
	lsl r1, r0, #3
	ldr r0, _02235F74 ; =0x0223AD70
	ldr r0, [r0, r1]
	pop {r3, pc}
	nop
_02235F74: .word 0x0223AD70
	thumb_func_end ov12_02235F64

	thumb_func_start ov12_02235F78
ov12_02235F78: ; 0x02235F78
	push {r3, lr}
	bl ov12_02235E94
	lsl r1, r0, #3
	ldr r0, _02235F88 ; =0x0223AD74
	ldr r0, [r0, r1]
	pop {r3, pc}
	nop
_02235F88: .word 0x0223AD74
	thumb_func_end ov12_02235F78

	thumb_func_start ov12_02235F8C
ov12_02235F8C: ; 0x02235F8C
	push {r3, lr}
	bl ov12_02235E94
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02235F9C ; =0x0223AE10
	ldr r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_02235F9C: .word 0x0223AE10
	thumb_func_end ov12_02235F8C

	thumb_func_start ov12_02235FA0
ov12_02235FA0: ; 0x02235FA0
	push {r3, lr}
	bl ov12_02235E94
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02235FB0 ; =0x0223AE18
	ldr r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_02235FB0: .word 0x0223AE18
	thumb_func_end ov12_02235FA0

	thumb_func_start ov12_02235FB4
ov12_02235FB4: ; 0x02235FB4
	push {r3, lr}
	bl ov12_02235E94
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02235FC4 ; =0x0223AE14
	ldr r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_02235FC4: .word 0x0223AE14
	thumb_func_end ov12_02235FB4

	thumb_func_start ov12_02235FC8
ov12_02235FC8: ; 0x02235FC8
	push {r4, lr}
	add r4, r1, #0
	bl ov12_02235E94
	lsl r2, r0, #4
	ldr r0, _02235FDC ; =0x0223AF00
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, pc}
	; .align 2, 0
_02235FDC: .word 0x0223AF00
	thumb_func_end ov12_02235FC8

	thumb_func_start ov12_02235FE0
ov12_02235FE0: ; 0x02235FE0
	push {r4, lr}
	mov r1, #0xb8
	add r4, r0, #0
	bl sub_02018144
	cmp r0, #0
	bne _02235FF6
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
_02235FF6:
	add r1, r0, #0
	str r4, [r0, #0]
	mov r2, #0
	add r1, #0x88
	str r2, [r1, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02235FE0

	thumb_func_start ov12_02236004
ov12_02236004: ; 0x02236004
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ov12_02235FE0
	add r1, r5, #0
	add r4, r0, #0
	bl ov12_02236030
	mov r1, #0
	str r1, [r4, #0x10]
	add r2, r4, #0
	add r0, r1, #0
_0223601C:
	str r0, [r2, #0x14]
	str r0, [r2, #0x38]
	str r0, [r2, #0x5c]
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #9
	blt _0223601C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02236004

	thumb_func_start ov12_02236030
ov12_02236030: ; 0x02236030
	push {r4, lr}
	add r3, r1, #0
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, r4, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #0xa2
	str r0, [r2, #0]
	ldr r0, [r4, #0xc]
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	cmp r0, #0xd
	blt _0223605E
	bl sub_02022974
_0223605E:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0223608A
	add r0, r4, #0
	mov r2, #0
	add r0, #0x94
	str r2, [r0, #0]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0223607C
	add r4, #0x98
	str r0, [r4, #0]
	pop {r4, pc}
_0223607C:
	ldr r0, [r4, #0xc]
	mov r1, #0x9b
	bl sub_02074470
	add r4, #0x98
	str r0, [r4, #0]
	pop {r4, pc}
_0223608A:
	add r0, r4, #0
	mov r1, #1
	add r0, #0x94
	str r1, [r0, #0]
	ldr r0, [r4, #0xc]
	add r4, #0xa0
	mov r1, #0xab
	add r2, r4, #0
	bl sub_02074470
	pop {r4, pc}
	thumb_func_end ov12_02236030

	thumb_func_start ov12_022360A0
ov12_022360A0: ; 0x022360A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #3
	bls _022360B4
	b _0223631C
_022360B4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022360C0: ; jump table
	.short _022360C8 - _022360C0 - 2 ; case 0
	.short _02236166 - _022360C0 - 2 ; case 1
	.short _022361F6 - _022360C0 - 2 ; case 2
	.short _02236286 - _022360C0 - 2 ; case 3
_022360C8:
	ldr r1, [r4, #0]
	mov r0, #0x63
	bl sub_02006C24
	add r1, r4, #0
	add r1, #0x8c
	str r0, [r1, #0]
	add r0, r4, #0
	add r6, r4, #0
	str r0, [sp, #0x14]
	add r0, #0xa0
	mov r5, #0
	add r6, #0x10
	str r0, [sp, #0x14]
_022360E4:
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	bl sub_0202CA64
	add r7, r0, #0
	beq _02236150
	bl sub_0202CA7C
	cmp r0, #0
	beq _02236150
	cmp r0, #0x51
	bge _02236150
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02098188
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	str r7, [r0, #0x38]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0223611E
	bl sub_02022974
_0223611E:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	ldr r2, [sp, #0x10]
	mov r3, #0
	bl ov12_0222384C
	ldr r1, [r4, #0x10]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0223614A
	bne _02236150
	bl sub_02022974
	b _02236150
_0223614A:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
_02236150:
	add r5, r5, #1
	cmp r5, #2
	blt _022360E4
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	add sp, #0x24
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_02236166:
	add r0, r4, #0
	add r6, r4, #0
	str r0, [sp, #0x18]
	add r0, #0xa0
	mov r5, #2
	add r6, #0x10
	str r0, [sp, #0x18]
_02236174:
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	bl sub_0202CA64
	add r7, r0, #0
	beq _022361E0
	bl sub_0202CA7C
	cmp r0, #0
	beq _022361E0
	cmp r0, #0x51
	bge _022361E0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02098188
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	str r7, [r0, #0x38]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _022361AE
	bl sub_02022974
_022361AE:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	ldr r2, [sp, #4]
	mov r3, #0
	bl ov12_0222384C
	ldr r1, [r4, #0x10]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _022361DA
	bne _022361E0
	bl sub_02022974
	b _022361E0
_022361DA:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
_022361E0:
	add r5, r5, #1
	cmp r5, #4
	blt _02236174
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	add sp, #0x24
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_022361F6:
	add r0, r4, #0
	add r6, r4, #0
	str r0, [sp, #0x1c]
	add r0, #0xa0
	mov r5, #4
	add r6, #0x10
	str r0, [sp, #0x1c]
_02236204:
	ldr r0, [sp, #0x1c]
	add r1, r5, #0
	bl sub_0202CA64
	add r7, r0, #0
	beq _02236270
	bl sub_0202CA7C
	cmp r0, #0
	beq _02236270
	cmp r0, #0x51
	bge _02236270
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02098188
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	str r7, [r0, #0x38]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0223623E
	bl sub_02022974
_0223623E:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	ldr r2, [sp, #8]
	mov r3, #0
	bl ov12_0222384C
	ldr r1, [r4, #0x10]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0223626A
	bne _02236270
	bl sub_02022974
	b _02236270
_0223626A:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
_02236270:
	add r5, r5, #1
	cmp r5, #6
	blt _02236204
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	add sp, #0x24
	str r0, [r4, #0]
	pop {r4, r5, r6, r7, pc}
_02236286:
	add r0, r4, #0
	add r6, r4, #0
	str r0, [sp, #0x20]
	add r0, #0xa0
	mov r5, #6
	add r6, #0x10
	str r0, [sp, #0x20]
_02236294:
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	bl sub_0202CA64
	add r7, r0, #0
	beq _02236300
	bl sub_0202CA7C
	cmp r0, #0
	beq _02236300
	cmp r0, #0x51
	bge _02236300
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02098188
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	str r7, [r0, #0x38]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _022362CE
	bl sub_02022974
_022362CE:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	ldr r2, [sp, #0xc]
	mov r3, #0
	bl ov12_0222384C
	ldr r1, [r4, #0x10]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _022362FA
	bne _02236300
	bl sub_02022974
	b _02236300
_022362FA:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
_02236300:
	add r5, r5, #1
	cmp r5, #8
	blt _02236294
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0x90
	add r4, #0x8c
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	bl sub_02006CA8
	ldr r0, [sp]
	bl sub_0200DA58
_0223631C:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_022360A0

	thumb_func_start ov12_02236320
ov12_02236320: ; 0x02236320
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02236350
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	bl ov12_02235F64
	add r2, r0, #0
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	mov r1, #0x63
	mov r3, #0
	bl ov12_02223818
	str r0, [r4, #0x14]
	mov r0, #0xff
	add r4, #0x90
	str r0, [r4, #0]
	pop {r4, pc}
_02236350:
	mov r1, #0
	add r0, r4, #0
	mov r2, #0xfa
	str r1, [r4, #0x10]
	add r0, #0x90
	str r1, [r0, #0]
	ldr r0, _02236370 ; =ov12_022360A0
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	add r1, r4, #0
	bl ov12_022360A0
	pop {r4, pc}
	nop
_02236370: .word ov12_022360A0
	thumb_func_end ov12_02236320

	thumb_func_start ov12_02236374
ov12_02236374: ; 0x02236374
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0xff
	bne _02236380
	mov r0, #1
	bx lr
_02236380:
	mov r0, #0
	bx lr
	thumb_func_end ov12_02236374

	thumb_func_start ov12_02236384
ov12_02236384: ; 0x02236384
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #1
	add r0, #0x88
	str r1, [r0, #0]
	bl ov12_02220474
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223646C
	mov r2, #0xfa
	ldr r0, _022363B0 ; =ov12_022363CC
	add r1, r5, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	add r5, #0x84
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	nop
_022363B0: .word ov12_022363CC
	thumb_func_end ov12_02236384

	thumb_func_start ov12_022363B4
ov12_022363B4: ; 0x022363B4
	ldr r3, _022363BC ; =ov12_02236384
	ldr r1, _022363C0 ; =ov12_02236598
	bx r3
	nop
_022363BC: .word ov12_02236384
_022363C0: .word ov12_02236598
	thumb_func_end ov12_022363B4

	thumb_func_start ov12_022363C4
ov12_022363C4: ; 0x022363C4
	add r0, #0x88
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022363C4

	thumb_func_start ov12_022363CC
ov12_022363CC: ; 0x022363CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	str r0, [sp]
	ldr r0, [r6, #0x10]
	mov r7, #0
	cmp r0, #9
	ble _022363DE
	bl sub_02022974
_022363DE:
	ldr r0, [r6, #0x10]
	mov r4, #0
	cmp r0, #0
	ble _02236416
	add r5, r6, #0
_022363E8:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0223640C
	bl sub_02014710
	cmp r0, #0
	bne _0223640A
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	beq _0223640A
	ldr r0, [r5, #0x14]
	bl ov12_02223894
	mov r0, #0
	str r0, [r5, #0x14]
	str r0, [r5, #0x5c]
	b _0223640C
_0223640A:
	mov r7, #1
_0223640C:
	ldr r0, [r6, #0x10]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _022363E8
_02236416:
	cmp r7, #0
	bne _02236426
	mov r0, #0
	add r6, #0x88
	str r0, [r6, #0]
	ldr r0, [sp]
	bl sub_0200DA58
_02236426:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022363CC

	thumb_func_start ov12_02236428
ov12_02236428: ; 0x02236428
	ldr r3, _0223642C ; =sub_020181C4
	bx r3
	; .align 2, 0
_0223642C: .word sub_020181C4
	thumb_func_end ov12_02236428

	thumb_func_start ov12_02236430
ov12_02236430: ; 0x02236430
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02236464
	ldr r0, [r4, #0xc]
	mov r1, #1
	str r1, [r0, #0]
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0x18]
	mov r1, #0
	add r3, r4, #0
	bl sub_020146F4
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02014788
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
_02236464:
	sub r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02236430

	thumb_func_start ov12_0223646C
ov12_0223646C: ; 0x0223646C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r7, r1, #0
	cmp r0, #0
	bne _022364AA
	add r0, r6, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	bl ov12_02235F78
	add r5, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _0223649E
_0223648C:
	ldr r0, [r6, #0x14]
	add r1, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_020146F4
	add r4, r4, #1
	cmp r4, r5
	blt _0223648C
_0223649E:
	mov r1, #1
	str r1, [r6, #0x5c]
	ldr r0, [r6, #0x14]
	bl sub_02014788
	pop {r3, r4, r5, r6, r7, pc}
_022364AA:
	ldr r0, [r6, #0x10]
	mov r7, #0
	cmp r0, #0
	ble _02236510
	add r0, r6, #0
	str r0, [sp]
	add r0, #0x5c
	add r5, r6, #0
	str r0, [sp]
_022364BC:
	ldr r0, [r6, #0]
	mov r1, #0x1c
	bl sub_02018144
	add r4, r0, #0
	bne _022364CC
	bl sub_02022974
_022364CC:
	str r7, [r4, #0]
	ldr r0, [r6, #4]
	str r0, [r4, #8]
	ldr r0, _02236514 ; =ov12_022365D4
	str r0, [r4, #0x18]
	mov r0, #0
	str r0, [r5, #0x5c]
	ldr r0, [sp]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x38]
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _022364EE
	bl sub_02022974
_022364EE:
	ldr r0, [r4, #0x14]
	bl ov12_02237EA0
	str r0, [r4, #4]
	ldr r0, _02236518 ; =ov12_02236430
	ldr r2, _0223651C ; =0x000003E9
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r0, [sp]
	add r7, r7, #1
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [r6, #0x10]
	add r5, r5, #4
	cmp r7, r0
	blt _022364BC
_02236510:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02236514: .word ov12_022365D4
_02236518: .word ov12_02236430
_0223651C: .word 0x000003E9
	thumb_func_end ov12_0223646C

	thumb_func_start ov12_02236520
ov12_02236520: ; 0x02236520
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r3, #1
	add r5, r0, #0
	add r4, r1, #0
	bl ov12_02235758
	cmp r5, #5
	bhi _02236576
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223653E: ; jump table
	.short _0223654A - _0223653E - 2 ; case 0
	.short _02236552 - _0223653E - 2 ; case 1
	.short _0223655C - _0223653E - 2 ; case 2
	.short _02236564 - _0223653E - 2 ; case 3
	.short _0223656E - _0223653E - 2 ; case 4
	.short _02236576 - _0223653E - 2 ; case 5
_0223654A:
	mov r5, #0
	add r0, r5, #0
	sub r0, #0x10
	b _0223657E
_02236552:
	mov r5, #0xe
	mvn r5, r5
	add r0, r5, #0
	sub r0, #0xa
	b _0223657E
_0223655C:
	mov r5, #7
	mvn r5, r5
	sub r0, r5, #4
	b _0223657E
_02236564:
	mov r5, #0xd
	mvn r5, r5
	add r0, r5, #0
	sub r0, #0xb
	b _0223657E
_0223656E:
	mov r5, #7
	mvn r5, r5
	sub r0, r5, #4
	b _0223657E
_02236576:
	mov r5, #0xf
	mvn r5, r5
	add r0, r5, #0
	sub r0, #0xd
_0223657E:
	add r5, #0xa
	ldr r3, [r4, #0]
	mov r1, #0xac
	add r2, r5, #0
	mul r2, r1
	sub r2, r3, r2
	str r2, [r4, #0]
	add r0, #0x20
	ldr r2, [r4, #4]
	mul r1, r0
	sub r0, r2, r1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02236520

	thumb_func_start ov12_02236598
ov12_02236598: ; 0x02236598
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02014764
	ldr r0, [r0, #4]
	add r1, sp, #0
	bl ov12_02236520
	ldr r0, [r4, #0x20]
	ldr r1, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r4, #0x30]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02236598

	thumb_func_start ov12_022365D4
ov12_022365D4: ; 0x022365D4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02014764
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl ov12_02236520
	ldr r0, [r4, #0x14]
	bl sub_0202CA7C
	bl sub_020981AC
	ldr r0, [r4, #0x14]
	bl sub_0202CA80
	add r6, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_0202CA84
	sub r6, #0xbe
	lsl r1, r6, #0x10
	asr r3, r1, #0x10
	ldr r2, [sp]
	mov r1, #0xac
	add r4, r3, #0
	mul r4, r1
	add r3, r2, r4
	mov r4, #0x64
	sub r0, r4, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	ldr r2, [sp, #4]
	mul r1, r0
	add r0, r2, r1
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r3, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x30]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov12_022365D4

	thumb_func_start ov12_02236648
ov12_02236648: ; 0x02236648
	push {r4, lr}
	add r4, r0, #0
	bl sub_02014764
	mov r1, #2
	ldrsh r2, [r0, r1]
	mov r1, #0x64
	mov r3, #0xac
	sub r1, r1, r2
	lsl r1, r1, #0x10
	asr r2, r1, #0x10
	add r1, r2, #0
	mov r2, #0
	ldrsh r0, [r0, r2]
	mul r1, r3
	sub r0, #0x81
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r2, r0, #0
	ldr r0, [r4, #0x20]
	mul r2, r3
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r2, r0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	str r0, [r4, #0x30]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02236648

	thumb_func_start ov12_02236690
ov12_02236690: ; 0x02236690
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r1, #0x24
	bl sub_02018144
	add r4, r0, #0
	bne _022366A4
	bl sub_02022974
_022366A4:
	ldmia r5!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _022366C8
	ldr r0, _022366EC ; =0x00000113
	bl ov12_02235F8C
	str r0, [r4, #0x20]
	ldr r0, _022366EC ; =0x00000113
	bl ov12_02235FA0
	b _022366D6
_022366C8:
	ldr r0, [r4, #4]
	bl ov12_02235F8C
	str r0, [r4, #0x20]
	ldr r0, [r4, #4]
	bl ov12_02235FA0
_022366D6:
	str r0, [r4, #0x1c]
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x20]
	mov r1, #0x63
	mov r3, #0
	bl ov12_02223818
	str r0, [r4, #0x18]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_022366EC: .word 0x00000113
	thumb_func_end ov12_02236690

	thumb_func_start ov12_022366F0
ov12_022366F0: ; 0x022366F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r1, [r5, #0xc]
	cmp r1, #0xff
	bne _0223674A
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02236720
	ldr r0, [r5, #0x1c]
	mov r4, #0
	cmp r0, #0
	ble _02236754
	ldr r6, _02236760 ; =ov12_02236648
_0223670A:
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_020146F4
	ldr r0, [r5, #0x1c]
	add r4, r4, #1
	cmp r4, r0
	blt _0223670A
	b _02236754
_02236720:
	ldr r0, [r5, #0x1c]
	mov r4, #0
	cmp r0, #0
	ble _02236754
	ldr r6, _02236760 ; =ov12_02236648
_0223672A:
	ldr r0, [r5, #4]
	bl ov12_02235FB4
	cmp r4, r0
	beq _02236740
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_020146F4
_02236740:
	ldr r0, [r5, #0x1c]
	add r4, r4, #1
	cmp r4, r0
	blt _0223672A
	b _02236754
_0223674A:
	ldr r0, [r5, #0x18]
	ldr r2, _02236760 ; =ov12_02236648
	add r3, r5, #0
	bl sub_020146F4
_02236754:
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_02014788
	pop {r4, r5, r6, pc}
	nop
_02236760: .word ov12_02236648
	thumb_func_end ov12_022366F0

	thumb_func_start ov12_02236764
ov12_02236764: ; 0x02236764
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_02014710
	cmp r0, #0
	bne _0223677C
	ldr r0, [r4, #0x18]
	bl ov12_02223894
	mov r0, #0
	pop {r4, pc}
_0223677C:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_02236764

	thumb_func_start ov12_02236780
ov12_02236780: ; 0x02236780
	ldr r3, _02236784 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02236784: .word sub_020181C4
	thumb_func_end ov12_02236780

	thumb_func_start ov12_02236788
ov12_02236788: ; 0x02236788
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _0223679C
	add r1, r1, #1
	str r1, [r4, #4]
	mov r1, #1
	bl ov12_02237828
_0223679C:
	add r0, r4, #0
	mov r1, #2
	bl ov12_0223782C
	cmp r0, #1
	bne _022367AC
	mov r0, #0
	pop {r4, pc}
_022367AC:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_02236788

	thumb_func_start ov12_022367B0
ov12_022367B0: ; 0x022367B0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _022367C4
	add r1, r1, #1
	str r1, [r4, #4]
	mov r1, #3
	bl ov12_02237828
_022367C4:
	add r0, r4, #0
	mov r1, #4
	bl ov12_0223782C
	cmp r0, #1
	bne _022367D4
	mov r0, #0
	pop {r4, pc}
_022367D4:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_022367B0

	thumb_func_start ov12_022367D8
ov12_022367D8: ; 0x022367D8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _022367EC
	add r1, r1, #1
	str r1, [r4, #4]
	mov r1, #5
	bl ov12_02237828
_022367EC:
	add r0, r4, #0
	mov r1, #6
	bl ov12_0223782C
	cmp r0, #1
	bne _022367FC
	mov r0, #0
	pop {r4, pc}
_022367FC:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_022367D8

	thumb_func_start ov12_02236800
ov12_02236800: ; 0x02236800
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _02236814
	add r1, r1, #1
	str r1, [r4, #4]
	mov r1, #7
	bl ov12_02237828
_02236814:
	add r0, r4, #0
	mov r1, #0xe
	bl ov12_0223782C
	cmp r0, #1
	bne _02236824
	mov r0, #0
	pop {r4, pc}
_02236824:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_02236800

	thumb_func_start ov12_02236828
ov12_02236828: ; 0x02236828
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _0223683C
	add r1, r1, #1
	str r1, [r4, #4]
	mov r1, #0xf
	bl ov12_02237828
_0223683C:
	add r0, r4, #0
	mov r1, #0x12
	bl ov12_0223782C
	cmp r0, #1
	bne _0223684C
	mov r0, #0
	pop {r4, pc}
_0223684C:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_02236828

	thumb_func_start ov12_02236850
ov12_02236850: ; 0x02236850
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _02236864
	add r1, r1, #1
	str r1, [r4, #4]
	mov r1, #0x13
	bl ov12_02237828
_02236864:
	add r0, r4, #0
	mov r1, #0x1b
	bl ov12_0223782C
	cmp r0, #1
	bne _02236874
	mov r0, #0
	pop {r4, pc}
_02236874:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_02236850

	thumb_func_start ov12_02236878
ov12_02236878: ; 0x02236878
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _0223688C
	add r1, r1, #1
	str r1, [r4, #4]
	mov r1, #0x15
	bl ov12_02237828
_0223688C:
	add r0, r4, #0
	mov r1, #0x16
	bl ov12_0223782C
	cmp r0, #1
	bne _0223689C
	mov r0, #0
	pop {r4, pc}
_0223689C:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_02236878

	thumb_func_start ov12_022368A0
ov12_022368A0: ; 0x022368A0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _022368B4
	add r1, r1, #1
	str r1, [r4, #4]
	mov r1, #0x17
	bl ov12_02237828
_022368B4:
	add r0, r4, #0
	mov r1, #0x1b
	bl ov12_0223782C
	cmp r0, #1
	bne _022368C4
	mov r0, #0
	pop {r4, pc}
_022368C4:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_022368A0

	thumb_func_start ov12_022368C8
ov12_022368C8: ; 0x022368C8
	str r1, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov12_022368C8

	thumb_func_start ov12_022368D0
ov12_022368D0: ; 0x022368D0
	push {r3, lr}
	ldr r1, [r0, #0]
	lsl r2, r1, #2
	ldr r1, _022368E0 ; =0x0223AB9C
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_022368E0: .word 0x0223AB9C
	thumb_func_end ov12_022368D0

	thumb_func_start ov12_022368E4
ov12_022368E4: ; 0x022368E4
	str r1, [r0, #0x14]
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end ov12_022368E4

	thumb_func_start ov12_022368F0
ov12_022368F0: ; 0x022368F0
	mov r0, #1
	bx lr
	thumb_func_end ov12_022368F0

	thumb_func_start ov12_022368F4
ov12_022368F4: ; 0x022368F4
	push {r4, lr}
	add r4, r0, #0
	bl ov12_02236F24
	cmp r0, #0
	bne _02236908
	add r0, r4, #0
	mov r1, #2
	bl ov12_022368E4
_02236908:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_022368F4

	thumb_func_start ov12_0223690C
ov12_0223690C: ; 0x0223690C
	push {r3, lr}
	mov r1, #3
	bl ov12_022368E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_0223690C

	thumb_func_start ov12_02236918
ov12_02236918: ; 0x02236918
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _022369E8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236930: ; jump table
	.short _02236938 - _02236930 - 2 ; case 0
	.short _0223698E - _02236930 - 2 ; case 1
	.short _022369A4 - _02236930 - 2 ; case 2
	.short _022369C0 - _02236930 - 2 ; case 3
_02236938:
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D364
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	add r2, sp, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, sp, #0
	str r0, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x30]
	add r2, #2
	bl sub_0200D550
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xb4
	add r1, #0x94
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl ov12_02223764
	add r1, r4, #0
	add r1, #0xd8
	str r0, [r1, #0]
	add r0, sp, #0
	bl ov12_02236690
	add r1, r4, #0
	add r1, #0xd0
	str r0, [r1, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022369F0
_0223698E:
	ldr r0, [r4, #0x30]
	bl sub_0200D3E0
	cmp r0, #2
	blt _022369F0
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022369F0
_022369A4:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl ov12_022366F0
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	bl ov12_02223770
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022369F0
_022369C0:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl ov12_02236764
	cmp r0, #0
	bne _022369F0
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200D3CC
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl ov12_02236780
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022369F0
_022369E8:
	add r0, r4, #0
	mov r1, #4
	bl ov12_022368E4
_022369F0:
	mov r0, #1
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02236918

	thumb_func_start ov12_022369F8
ov12_022369F8: ; 0x022369F8
	mov r0, #1
	bx lr
	thumb_func_end ov12_022369F8

	thumb_func_start ov12_022369FC
ov12_022369FC: ; 0x022369FC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02236A3C
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0xb8
	add r2, #0xba
	bl sub_0200D550
	add r0, r4, #0
	mov r1, #0x3c
	add r0, #0xbc
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0xb4
	add r0, #0xbe
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0xc0
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0xc
	add r0, #0xc8
	str r1, [r0, #0]
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02236A4C
_02236A3C:
	bl ov12_02236F24
	cmp r0, #0
	bne _02236A4C
	add r0, r4, #0
	mov r1, #6
	bl ov12_022368E4
_02236A4C:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov12_022369FC

	thumb_func_start ov12_02236A50
ov12_02236A50: ; 0x02236A50
	mov r0, #1
	bx lr
	thumb_func_end ov12_02236A50

	thumb_func_start ov12_02236A54
ov12_02236A54: ; 0x02236A54
	push {r3, lr}
	mov r1, #8
	bl ov12_022368E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_02236A54

	thumb_func_start ov12_02236A60
ov12_02236A60: ; 0x02236A60
	push {r3, lr}
	mov r1, #9
	bl ov12_022368E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_02236A60

	thumb_func_start ov12_02236A6C
ov12_02236A6C: ; 0x02236A6C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02236A7E
	cmp r0, #1
	beq _02236AB2
	b _02236AF4
_02236A7E:
	ldr r0, [r4, #0x30]
	bl sub_0200D43C
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r0, _02236B10 ; =0x0000037F
	mov r3, #1
	add r5, r3, #0
	str r0, [sp, #8]
	add r0, r4, #0
	lsl r5, r2
	add r0, #0xb0
	lsl r2, r5, #0x10
	ldr r0, [r0, #0]
	mov r1, #4
	lsr r2, r2, #0x10
	sub r3, r3, #2
	bl sub_02003178
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236B0A
_02236AB2:
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _02236B0A
	ldr r0, [r4, #0x30]
	bl sub_0200D43C
	add r2, r0, #0
	mov r0, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02236B10 ; =0x0000037F
	mov r3, #1
	add r5, r3, #0
	str r0, [sp, #8]
	add r0, r4, #0
	lsl r5, r2
	add r0, #0xb0
	lsl r2, r5, #0x10
	ldr r0, [r0, #0]
	mov r1, #4
	lsr r2, r2, #0x10
	sub r3, r3, #2
	bl sub_02003178
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236B0A
_02236AF4:
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _02236B0A
	add r0, r4, #0
	mov r1, #0xa
	bl ov12_022368E4
_02236B0A:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02236B10: .word 0x0000037F
	thumb_func_end ov12_02236A6C

	thumb_func_start ov12_02236B14
ov12_02236B14: ; 0x02236B14
	push {r3, lr}
	mov r1, #0xb
	bl ov12_022368E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_02236B14

	thumb_func_start ov12_02236B20
ov12_02236B20: ; 0x02236B20
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02236B32
	cmp r0, #1
	beq _02236B72
	b _02236B8E
_02236B32:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #1
	blt _02236B8E
	add r1, sp, #8
	ldr r0, [r4, #0x30]
	add r1, #2
	add r2, sp, #8
	bl sub_0200D550
	add r1, sp, #8
	mov r0, #0
	ldrsh r3, [r1, r0]
	mov r0, #2
	ldrsh r1, [r1, r0]
	add r0, r3, #0
	add r0, #0x20
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x48
	add r2, r1, #0
	bl ov12_02225BC8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236B8E
_02236B72:
	add r0, r4, #0
	ldr r1, [r4, #0x30]
	add r0, #0x48
	bl ov12_02225C50
	cmp r0, #0
	bne _02236B8E
	ldr r0, [r4, #8]
	mov r1, #0xd
	add r0, r0, #1
	str r0, [r4, #8]
	add r0, r4, #0
	bl ov12_022368E4
_02236B8E:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov12_02236B20

	thumb_func_start ov12_02236B94
ov12_02236B94: ; 0x02236B94
	mov r0, #1
	bx lr
	thumb_func_end ov12_02236B94

	thumb_func_start ov12_02236B98
ov12_02236B98: ; 0x02236B98
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02236BA8
	cmp r1, #1
	beq _02236BBE
	b _02236C1E
_02236BA8:
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_0200D364
	ldr r0, [r5, #0x30]
	mov r1, #0
	bl sub_0200D3CC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02236BBE:
	ldr r1, [r5, #0xc]
	mov r0, #6
	add r2, r1, #0
	mul r2, r0
	ldr r0, _02236C28 ; =0x0223ACF2
	ldr r1, _02236C2C ; =0x0223ACF4
	ldrsh r0, [r0, r2]
	ldrh r1, [r1, r2]
	str r0, [sp]
	ldr r0, [r5, #0x30]
	bl sub_0200D3CC
	ldr r0, [r5, #0xc]
	ldr r4, _02236C30 ; =0x0223ABE4
	add r0, r0, #1
	str r0, [r5, #0xc]
	mov r6, #0
	mov r7, #0x75
_02236BE2:
	ldr r1, [r5, #0xc]
	ldr r0, [r4, #0]
	cmp r1, r0
	bne _02236BF6
	ldr r0, [r4, #4]
	add r1, r7, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02005728
_02236BF6:
	add r6, r6, #1
	add r4, #8
	cmp r6, #5
	blt _02236BE2
	ldr r0, [r5, #0xc]
	cmp r0, #0x14
	bgt _02236C0A
	ldr r0, [sp]
	cmp r0, #0xff
	bne _02236C12
_02236C0A:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02236C24
_02236C12:
	ldr r0, [r5, #0x30]
	ldr r2, [sp]
	mov r1, #0
	bl sub_0200D5DC
	b _02236C24
_02236C1E:
	mov r1, #0xe
	bl ov12_022368E4
_02236C24:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02236C28: .word 0x0223ACF2
_02236C2C: .word 0x0223ACF4
_02236C30: .word 0x0223ABE4
	thumb_func_end ov12_02236B98

	thumb_func_start ov12_02236C34
ov12_02236C34: ; 0x02236C34
	mov r0, #1
	bx lr
	thumb_func_end ov12_02236C34

	thumb_func_start ov12_02236C38
ov12_02236C38: ; 0x02236C38
	push {r3, lr}
	ldr r1, [r0, #0xc]
	add r1, r1, #1
	str r1, [r0, #0xc]
	cmp r1, #0xe
	blt _02236C54
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	mov r1, #0x10
	bl ov12_022368E4
_02236C54:
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_02236C38

	thumb_func_start ov12_02236C58
ov12_02236C58: ; 0x02236C58
	push {r3, lr}
	mov r1, #0x11
	bl ov12_022368E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_02236C58

	thumb_func_start ov12_02236C64
ov12_02236C64: ; 0x02236C64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02236C74
	cmp r0, #1
	beq _02236C84
	b _02236CEC
_02236C74:
	ldr r0, [r5, #0x18]
	cmp r0, #3
	blt _02236C7E
	bl sub_02022974
_02236C7E:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02236C84:
	ldr r1, [r5, #0x18]
	mov r0, #0x18
	add r3, r1, #0
	mul r3, r0
	ldr r0, _02236CF0 ; =0x0223AC38
	ldr r1, [r5, #0xc]
	add r0, r0, r3
	lsl r2, r1, #1
	ldrsh r4, [r2, r0]
	add r0, r1, #1
	str r0, [r5, #0xc]
	cmp r0, #0xb
	bgt _02236CA2
	cmp r4, #0xff
	bne _02236CC2
_02236CA2:
	ldr r0, [r5, #8]
	mov r1, #0
	add r0, r0, #1
	str r0, [r5, #8]
	ldr r0, [r5, #0x18]
	add r0, r0, #1
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x30]
	bl sub_0200D79C
	add r0, r5, #0
	mov r1, #0x12
	bl ov12_022368E4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02236CC2:
	cmp r0, #5
	bne _02236CCE
	ldr r0, _02236CF4 ; =0x000005FE
	mov r1, #0x75
	bl sub_02005728
_02236CCE:
	ldr r0, [r5, #0x30]
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D5DC
	ldr r0, _02236CF8 ; =0x0001FFFE
	mov r1, #0x5a
	mul r0, r4
	lsl r1, r1, #2
	bl _s32_div_f
	add r1, r0, #0
	ldr r0, [r5, #0x30]
	bl sub_0200D7C0
_02236CEC:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02236CF0: .word 0x0223AC38
_02236CF4: .word 0x000005FE
_02236CF8: .word 0x0001FFFE
	thumb_func_end ov12_02236C64

	thumb_func_start ov12_02236CFC
ov12_02236CFC: ; 0x02236CFC
	mov r0, #1
	bx lr
	thumb_func_end ov12_02236CFC

	thumb_func_start ov12_02236D00
ov12_02236D00: ; 0x02236D00
	push {r3, lr}
	mov r1, #0x14
	bl ov12_022368E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_02236D00

	thumb_func_start ov12_02236D0C
ov12_02236D0C: ; 0x02236D0C
	push {r3, lr}
	mov r1, #0x1b
	bl ov12_022368E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_02236D0C

	thumb_func_start ov12_02236D18
ov12_02236D18: ; 0x02236D18
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _02236DEC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236D30: ; jump table
	.short _02236D38 - _02236D30 - 2 ; case 0
	.short _02236D6A - _02236D30 - 2 ; case 1
	.short _02236DB2 - _02236D30 - 2 ; case 2
	.short _02236DC4 - _02236D30 - 2 ; case 3
_02236D38:
	ldr r0, [r4, #0x30]
	bl sub_0200D43C
	mov r1, #0
	mov r3, #1
	add r2, r0, #0
	add r5, r3, #0
	lsl r5, r2
	lsl r2, r5, #0x10
	str r1, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, r4, #0
	str r1, [sp, #8]
	add r0, #0xb0
	ldr r0, [r0, #0]
	mov r1, #4
	lsr r2, r2, #0x10
	sub r3, r3, #6
	bl sub_02003178
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236E02
_02236D6A:
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _02236E02
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	add r1, r4, #0
	str r0, [sp, #0x10]
	add r1, #0x94
	ldr r1, [r1, #0]
	str r1, [sp, #0x14]
	bl ov12_02235FB4
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	add r2, sp, #0xc
	ldr r0, [r4, #0x30]
	add r1, sp, #0xc
	add r2, #2
	bl sub_0200D550
	add r0, sp, #0xc
	bl ov12_02236690
	add r1, r4, #0
	add r1, #0xd0
	str r0, [r1, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236E02
_02236DB2:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl ov12_022366F0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236E02
_02236DC4:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl ov12_02236764
	cmp r0, #0
	bne _02236E02
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200D3CC
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl ov12_02236780
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236E02
_02236DEC:
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _02236E02
	add r0, r4, #0
	mov r1, #0x16
	bl ov12_022368E4
_02236E02:
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02236D18

	thumb_func_start ov12_02236E08
ov12_02236E08: ; 0x02236E08
	mov r0, #1
	bx lr
	thumb_func_end ov12_02236E08

	thumb_func_start ov12_02236E0C
ov12_02236E0C: ; 0x02236E0C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02236E1E
	cmp r1, #1
	beq _02236E50
	b _02236E64
_02236E1E:
	ldr r0, [r4, #0x30]
	bl sub_0200D43C
	add r2, r0, #0
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0
	mov r3, #1
	add r5, r3, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	lsl r5, r2
	add r0, #0xb0
	lsl r2, r5, #0x10
	ldr r0, [r0, #0]
	mov r1, #4
	lsr r2, r2, #0x10
	sub r3, r3, #6
	bl sub_02003178
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236E6A
_02236E50:
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _02236E6A
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236E6A
_02236E64:
	mov r1, #0x18
	bl ov12_022368E4
_02236E6A:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov12_02236E0C

	thumb_func_start ov12_02236E70
ov12_02236E70: ; 0x02236E70
	push {r3, lr}
	mov r1, #0x19
	bl ov12_022368E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_02236E70

	thumb_func_start ov12_02236E7C
ov12_02236E7C: ; 0x02236E7C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02236E8C
	cmp r1, #1
	beq _02236E9A
	b _02236EF2
_02236E8C:
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02236E9A:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _02236EC2
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x21
	strb r1, [r0]
	b _02236EDE
_02236EC2:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x20
	strb r1, [r0]
	add r0, r4, #0
	mov r2, #0xf
	add r0, #0x21
	strb r2, [r0]
	ldr r0, [r4, #0x30]
	bl sub_0200D3F4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02236EDE:
	add r0, r4, #0
	add r0, #0x20
	add r4, #0x21
	ldrb r1, [r0]
	ldrb r0, [r4]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _02236EFC ; =0x04000052
	strh r1, [r0]
	b _02236EF8
_02236EF2:
	mov r1, #0x1a
	bl ov12_022368E4
_02236EF8:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02236EFC: .word 0x04000052
	thumb_func_end ov12_02236E7C

	thumb_func_start ov12_02236F00
ov12_02236F00: ; 0x02236F00
	push {r3, lr}
	mov r1, #0x1b
	bl ov12_022368E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov12_02236F00

	thumb_func_start ov12_02236F0C
ov12_02236F0C: ; 0x02236F0C
	mov r0, #0
	bx lr
	thumb_func_end ov12_02236F0C

	thumb_func_start ov12_02236F10
ov12_02236F10: ; 0x02236F10
	push {r3, lr}
	ldr r1, [r0, #0x14]
	lsl r2, r1, #2
	ldr r1, _02236F20 ; =0x0223AC80
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_02236F20: .word 0x0223AC80
	thumb_func_end ov12_02236F10

	thumb_func_start ov12_02236F24
ov12_02236F24: ; 0x02236F24
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #3
	bls _02236F32
	b _02237132
_02236F32:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236F3E: ; jump table
	.short _02236F46 - _02236F3E - 2 ; case 0
	.short _02236FB4 - _02236F3E - 2 ; case 1
	.short _022370AE - _02236F3E - 2 ; case 2
	.short _02237112 - _02236F3E - 2 ; case 3
_02236F46:
	mov r0, #0xba
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	mov r2, #0xb8
	str r0, [sp]
	mov r0, #0xbe
	ldrsh r0, [r4, r0]
	mov r3, #0xbc
	add r1, #0x6c
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, #0x48
	bl ov12_02225C98
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	add r0, r4, #0
	add r0, #0xd4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov12_02235EB0
	cmp r0, #1
	bne _0223709C
	bl sub_0201D2E8
	mov r1, #0x14
	bl _s32_div_f
	add r1, #0xa
	ldr r0, [r4, #0x30]
	lsl r1, r1, #0xd
	bl sub_0200D7C0
	b _022371CE
_02236FB4:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov12_02235EB0
	cmp r0, #1
	bne _02237052
	mov r1, #2
	ldr r0, [r4, #0x30]
	lsl r1, r1, #0xc
	bl sub_0200D7C0
	add r0, r4, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, #0xa
	cmp r2, r0
	ble _02236FEE
	mov r1, #2
	ldr r0, [r4, #0x30]
	lsl r1, r1, #0xc
	bl sub_0200D7C0
_02236FEE:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov12_02235EF0
	cmp r0, #1
	bne _02237052
	add r0, r4, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, #0xa
	cmp r2, r0
	bne _02237052
	ldr r0, [r4, #0x30]
	bl sub_0200D43C
	add r3, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	add r1, r4, #0
	lsl r3, r3, #0x14
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	ldr r0, _022371D4 ; =0x0000FFFF
	add r1, #0x94
	str r0, [sp, #0x14]
	ldr r0, _022371D8 ; =0x000003EA
	lsr r3, r3, #0x10
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl ov12_02226870
	add r1, r4, #0
	add r1, #0xd4
	str r0, [r1, #0]
_02237052:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #6
	blt _0223708A
	cmp r0, #8
	bgt _0223708A
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r2, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	cmp r1, r2
	ble _0223708A
	add r0, r2, #5
	cmp r1, r0
	blt _0223709C
_0223708A:
	add r0, r4, #0
	add r1, r4, #0
	ldr r2, [r4, #0x30]
	add r0, #0x48
	add r1, #0x6c
	bl ov12_02225D2C
	cmp r0, #0
	beq _0223709E
_0223709C:
	b _022371CE
_0223709E:
	add r0, r4, #0
	mov r1, #0
	bl ov12_02237E24
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022371CE
_022370AE:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov12_02235EF0
	cmp r0, #1
	bne _022370E2
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022370E2
	bl ov12_02226848
	cmp r0, #1
	beq _022371CE
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	bl ov12_02226858
	mov r0, #1
	str r0, [r4, #0x28]
	add sp, #0x1c
	mov r0, #0
	pop {r3, r4, pc}
_022370E2:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0xf
	blt _022370F6
	mov r0, #1
	str r0, [r4, #0x28]
	add sp, #0x1c
	mov r0, #0
	pop {r3, r4, pc}
_022370F6:
	add r0, r4, #0
	add r0, #0xa0
	ldr r1, [r0, #0]
	ldr r0, _022371DC ; =0x00000111
	cmp r1, r0
	bne _0223710A
	ldr r0, _022371E0 ; =0x000007E8
	mov r1, #0x75
	bl sub_02005728
_0223710A:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022371CE
_02237112:
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D364
	add r0, r4, #0
	mov r1, #1
	bl ov12_02237E30
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022371CE
_02237132:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #5
	bne _0223718C
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0xc
	beq _02237188
	cmp r0, #0xd
	beq _02237188
	ldr r0, [r4, #0x30]
	bl sub_0200D43C
	add r3, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	add r1, r4, #0
	lsl r3, r3, #0x14
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	ldr r0, _022371D4 ; =0x0000FFFF
	add r1, #0x94
	str r0, [sp, #0x14]
	ldr r0, _022371D8 ; =0x000003EA
	lsr r3, r3, #0x10
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl ov12_02226870
	add r1, r4, #0
	add r1, #0xd4
	str r0, [r1, #0]
_02237188:
	mov r0, #1
	str r0, [r4, #0x28]
_0223718C:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #0xf
	ble _022371CE
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0xc
	beq _022371C8
	cmp r0, #0xd
	beq _022371C8
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	bl ov12_02226848
	cmp r0, #1
	beq _022371CE
	add r4, #0xd4
	ldr r0, [r4, #0]
	bl ov12_02226858
_022371C8:
	add sp, #0x1c
	mov r0, #0
	pop {r3, r4, pc}
_022371CE:
	mov r0, #1
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
_022371D4: .word 0x0000FFFF
_022371D8: .word 0x000003EA
_022371DC: .word 0x00000111
_022371E0: .word 0x000007E8
	thumb_func_end ov12_02236F24

	thumb_func_start ov12_022371E4
ov12_022371E4: ; 0x022371E4
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #3
	bls _022371F2
	b _022373DE
_022371F2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022371FE: ; jump table
	.short _02237206 - _022371FE - 2 ; case 0
	.short _02237274 - _022371FE - 2 ; case 1
	.short _0223736E - _022371FE - 2 ; case 2
	.short _022373BE - _022371FE - 2 ; case 3
_02237206:
	mov r0, #0xba
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	mov r2, #0xb8
	str r0, [sp]
	mov r0, #0xbe
	ldrsh r0, [r4, r0]
	mov r3, #0xbc
	add r1, #0x6c
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, #0x48
	bl ov12_02225C98
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	add r0, r4, #0
	add r0, #0xd4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov12_02235EB0
	cmp r0, #1
	bne _0223735C
	bl sub_0201D2E8
	mov r1, #0x14
	bl _s32_div_f
	add r1, #0xa
	ldr r0, [r4, #0x30]
	lsl r1, r1, #0xd
	bl sub_0200D7C0
	b _02237466
_02237274:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov12_02235EB0
	cmp r0, #1
	bne _02237312
	mov r1, #2
	ldr r0, [r4, #0x30]
	lsl r1, r1, #0xc
	bl sub_0200D7C0
	add r0, r4, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, #0xa
	cmp r2, r0
	ble _022372AE
	mov r1, #2
	ldr r0, [r4, #0x30]
	lsl r1, r1, #0xc
	bl sub_0200D7C0
_022372AE:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov12_02235EF0
	cmp r0, #1
	bne _02237312
	add r0, r4, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, #0xa
	cmp r2, r0
	bne _02237312
	ldr r0, [r4, #0x30]
	bl sub_0200D43C
	add r3, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	add r1, r4, #0
	lsl r3, r3, #0x14
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	ldr r0, _0223746C ; =0x0000FFFF
	add r1, #0x94
	str r0, [sp, #0x14]
	ldr r0, _02237470 ; =0x000003EA
	lsr r3, r3, #0x10
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl ov12_02226870
	add r1, r4, #0
	add r1, #0xd4
	str r0, [r1, #0]
_02237312:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #6
	blt _0223734A
	cmp r0, #8
	bgt _0223734A
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r2, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	cmp r1, r2
	ble _0223734A
	add r0, r2, #5
	cmp r1, r0
	blt _0223735C
_0223734A:
	add r0, r4, #0
	add r1, r4, #0
	ldr r2, [r4, #0x30]
	add r0, #0x48
	add r1, #0x6c
	bl ov12_02225D2C
	cmp r0, #0
	beq _0223735E
_0223735C:
	b _02237466
_0223735E:
	add r0, r4, #0
	mov r1, #0
	bl ov12_02237E24
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237466
_0223736E:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov12_02235EF0
	cmp r0, #1
	bne _022373A2
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022373A2
	bl ov12_02226848
	cmp r0, #1
	beq _02237466
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	bl ov12_02226858
	mov r0, #1
	str r0, [r4, #0x28]
	add sp, #0x1c
	mov r0, #0
	pop {r3, r4, pc}
_022373A2:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0xf
	blt _022373B6
	mov r0, #1
	str r0, [r4, #0x28]
	add sp, #0x1c
	mov r0, #0
	pop {r3, r4, pc}
_022373B6:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237466
_022373BE:
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D364
	add r0, r4, #0
	mov r1, #0
	bl ov12_02237E30
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237466
_022373DE:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #5
	bne _02237432
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_0200D3CC
	ldr r0, [r4, #0x30]
	bl sub_0200D43C
	add r3, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x12
	str r0, [sp, #4]
	mov r2, #2
	add r1, r4, #0
	lsl r3, r3, #0x14
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	ldr r0, _0223746C ; =0x0000FFFF
	add r1, #0x94
	str r0, [sp, #0x14]
	ldr r0, _02237470 ; =0x000003EA
	lsr r3, r3, #0x10
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl ov12_02226870
	add r1, r4, #0
	add r1, #0xd4
	str r0, [r1, #0]
	mov r0, #1
	str r0, [r4, #0x28]
_02237432:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #0xf
	ble _02237466
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	bl ov12_02226848
	cmp r0, #1
	beq _02237466
	add r4, #0xd4
	ldr r0, [r4, #0]
	bl ov12_02226858
	add sp, #0x1c
	mov r0, #0
	pop {r3, r4, pc}
_02237466:
	mov r0, #1
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
_0223746C: .word 0x0000FFFF
_02237470: .word 0x000003EA
	thumb_func_end ov12_022371E4

	thumb_func_start ov12_02237474
ov12_02237474: ; 0x02237474
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #7
	bls _02237482
	b _022375FA
_02237482:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223748E: ; jump table
	.short _0223749E - _0223748E - 2 ; case 0
	.short _022374DC - _0223748E - 2 ; case 1
	.short _0223750C - _0223748E - 2 ; case 2
	.short _02237542 - _0223748E - 2 ; case 3
	.short _02237552 - _0223748E - 2 ; case 4
	.short _02237580 - _0223748E - 2 ; case 5
	.short _022375AE - _0223748E - 2 ; case 6
	.short _022375DC - _0223748E - 2 ; case 7
_0223749E:
	mov r1, #0
	bl ov12_02237E30
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D364
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #2
	blt _022374F2
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200D3CC
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237600
_022374DC:
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #2
	bge _022374F4
_022374F2:
	b _02237600
_022374F4:
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_0200D3CC
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237600
_0223750C:
	add r0, #0xa0
	ldr r0, [r0, #0]
	add r2, sp, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, sp, #0
	str r0, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x30]
	add r2, #2
	bl sub_0200D550
	add r0, sp, #0
	bl ov12_02236690
	add r1, r4, #0
	add r1, #0xd0
	str r0, [r1, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237600
_02237542:
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl ov12_022366F0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237600
_02237552:
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #6
	blt _02237600
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_0200D3CC
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237600
_02237580:
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #6
	blt _02237600
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D3CC
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237600
_022375AE:
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #6
	blt _02237600
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200D3CC
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237600
_022375DC:
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl ov12_02236764
	cmp r0, #0
	bne _02237600
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl ov12_02236780
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237600
_022375FA:
	add sp, #0x14
	mov r0, #0
	pop {r3, r4, pc}
_02237600:
	mov r0, #1
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02237474

	thumb_func_start ov12_02237608
ov12_02237608: ; 0x02237608
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02237618
	cmp r0, #1
	beq _0223764C
	b _0223767E
_02237618:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0223762E
	ldr r1, _0223768C ; =0xFFFFE001
	add r0, r4, #0
	add r0, #0x34
	lsr r2, r1, #0x13
	mov r3, #0xa
	bl ov12_02225D50
	b _0223763C
_0223762E:
	add r0, r4, #0
	ldr r1, _02237690 ; =0x00001FFF
	ldr r2, _0223768C ; =0xFFFFE001
	add r0, #0x34
	mov r3, #0xa
	bl ov12_02225D50
_0223763C:
	ldr r1, [r4, #0x10]
	mov r0, #1
	eor r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237686
_0223764C:
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #0x30]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0200D79C
	add r0, r4, #0
	add r0, #0x34
	bl ov12_02225DA0
	cmp r0, #0
	bne _02237686
	ldr r0, [r4, #0xc]
	cmp r0, #1
	blt _02237672
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02237686
_02237672:
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	b _02237686
_0223767E:
	mov r0, #0
	add r4, #0xc4
	str r0, [r4, #0]
	pop {r4, pc}
_02237686:
	mov r0, #1
	pop {r4, pc}
	nop
_0223768C: .word 0xFFFFE001
_02237690: .word 0x00001FFF
	thumb_func_end ov12_02237608

	thumb_func_start ov12_02237694
ov12_02237694: ; 0x02237694
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0xff
	bne _022376A6
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_022376A6:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _022376CA
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r1, sp, #0
	mov r0, #2
	ldrsh r2, [r1, r0]
	add r0, r4, #0
	add r0, #0xb8
	strh r2, [r0]
	mov r0, #0
	ldrsh r0, [r1, r0]
	add r4, #0xba
	strh r0, [r4]
_022376CA:
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_02237694

	thumb_func_start ov12_022376D0
ov12_022376D0: ; 0x022376D0
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02237722
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _022376FA
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xdc
	str r1, [r0, #0]
	ldr r0, [r4, #0x2c]
	bl sub_0200C7EC
	pop {r4, pc}
_022376FA:
	add r1, #0x98
	ldr r1, [r1, #0]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _02237724 ; =0x0223AB84
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	bne _02237710
	mov r0, #0
	str r0, [r4, #0x1c]
_02237710:
	ldr r0, [r4, #0x24]
	cmp r0, #1
	bne _0223771C
	ldr r0, [r4, #0x30]
	bl sub_0200D330
_0223771C:
	ldr r0, [r4, #0x2c]
	bl sub_0200C7EC
_02237722:
	pop {r4, pc}
	; .align 2, 0
_02237724: .word 0x0223AB84
	thumb_func_end ov12_022376D0

	thumb_func_start ov12_02237728
ov12_02237728: ; 0x02237728
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0xe0
	bl sub_02018144
	mov r1, #0
	mov r2, #0xe0
	add r4, r0, #0
	bl MI_CpuFill8
	cmp r4, #0
	bne _02237746
	bl sub_02022974
_02237746:
	add r3, r4, #0
	add r3, #0x90
	mov r2, #5
_0223774C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223774C
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0x10]
	str r0, [r4, #0xc]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0]
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0200C704
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xdc
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov12_02235F2C
	str r0, [r4, #0x24]
	add r0, r4, #0
	mov r2, #0
	add r0, #0xc4
	str r2, [r0, #0]
	add r0, r4, #0
	mov r1, #0x10
	add r0, #0x20
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x21
	strb r2, [r0]
	bl ov12_02220474
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r0, r0, #0x1f
	sub r0, r0, r1
	mov r2, #0x1f
	ror r0, r2
	add r0, r1, r0
	beq _022377BA
	add r0, r4, #0
	mov r1, #1
	add r0, #0x22
	strb r1, [r0]
	b _022377C2
_022377BA:
	add r0, r4, #0
	sub r2, #0x20
	add r0, #0x22
	strb r2, [r0]
_022377C2:
	add r0, r4, #0
	bl ov12_02237C54
	add r0, r4, #0
	bl ov12_02237D8C
	add r0, r4, #0
	bl ov12_022378A0
	mov r0, #1
	str r0, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x28]
	mov r2, #0xfa
	ldr r0, _022377F4 ; =ov12_022376D0
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	add r1, r4, #0
	add r1, #0xcc
	str r0, [r1, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_022377F4: .word ov12_022376D0
	thumb_func_end ov12_02237728

	thumb_func_start ov12_022377F8
ov12_022377F8: ; 0x022377F8
	push {r4, lr}
	add r4, r0, #0
	bne _02237802
	bl sub_02022974
_02237802:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0223780C
	mov r0, #1
	pop {r4, pc}
_0223780C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov12_022377F8

	thumb_func_start ov12_02237810
ov12_02237810: ; 0x02237810
	push {r4, lr}
	add r4, r0, #0
	bne _0223781A
	bl sub_02022974
_0223781A:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _02237824
	mov r0, #1
	pop {r4, pc}
_02237824:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov12_02237810

	thumb_func_start ov12_02237828
ov12_02237828: ; 0x02237828
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end ov12_02237828

	thumb_func_start ov12_0223782C
ov12_0223782C: ; 0x0223782C
	ldr r0, [r0, #0x14]
	cmp r0, r1
	bne _02237836
	mov r0, #1
	bx lr
_02237836:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov12_0223782C

	thumb_func_start ov12_0223783C
ov12_0223783C: ; 0x0223783C
	push {r4, lr}
	add r4, r0, #0
	bne _02237846
	bl sub_02022974
_02237846:
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x2c]
	bl sub_0200D0B0
	ldr r0, [r4, #0x30]
	bl sub_0200D0F4
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0223783C

	thumb_func_start ov12_0223786C
ov12_0223786C: ; 0x0223786C
	add r2, r0, #0
	add r0, #0x98
	str r1, [r0, #0]
	mov r0, #0
	str r0, [r2, #8]
	str r0, [r2, #0xc]
	str r0, [r2, #0x10]
	mov r0, #1
	add r1, r2, #0
	str r0, [r2, #0x1c]
	ldr r0, [r2, #0x30]
	ldr r3, _0223788C ; =sub_0200D550
	add r1, #0xb8
	add r2, #0xba
	bx r3
	nop
_0223788C: .word sub_0200D550
	thumb_func_end ov12_0223786C

	thumb_func_start ov12_02237890
ov12_02237890: ; 0x02237890
	push {r4, lr}
	add r4, r0, #0
	bne _0223789A
	bl sub_02022974
_0223789A:
	add r4, #0x98
	ldr r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov12_02237890

	thumb_func_start ov12_022378A0
ov12_022378A0: ; 0x022378A0
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0xb8
	add r2, #0xba
	bl sub_0200D550
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0x11
	bls _022378BE
	b _02237B0C
_022378BE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022378CA: ; jump table
	.short _022378EE - _022378CA - 2 ; case 0
	.short _022378EE - _022378CA - 2 ; case 1
	.short _022378EE - _022378CA - 2 ; case 2
	.short _022378EE - _022378CA - 2 ; case 3
	.short _022378EE - _022378CA - 2 ; case 4
	.short _022378EE - _022378CA - 2 ; case 5
	.short _0223790C - _022378CA - 2 ; case 6
	.short _02237932 - _022378CA - 2 ; case 7
	.short _02237966 - _022378CA - 2 ; case 8
	.short _0223798C - _022378CA - 2 ; case 9
	.short _022379B2 - _022378CA - 2 ; case 10
	.short _022379D8 - _022378CA - 2 ; case 11
	.short _022379FE - _022378CA - 2 ; case 12
	.short _02237A2A - _022378CA - 2 ; case 13
	.short _02237A62 - _022378CA - 2 ; case 14
	.short _02237A88 - _022378CA - 2 ; case 15
	.short _02237AB4 - _022378CA - 2 ; case 16
	.short _02237AE0 - _022378CA - 2 ; case 17
_022378EE:
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0xbc
	add r2, #0xbe
	bl sub_0200D550
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xc
	add r4, #0xc0
	str r0, [r4, #0]
	pop {r4, pc}
_0223790C:
	mov r0, #0
	add r2, r4, #0
	add r3, r4, #0
	add r1, r0, #0
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x30
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #0x20
	strh r1, [r0]
	b _02237B0C
_02237932:
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0xb8
	add r2, #0xba
	bl sub_0200D550
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #1
	mov r1, #4
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x30
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #0x20
	strh r1, [r0]
	b _02237B0C
_02237966:
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #1
	mov r1, #2
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x30
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #0x20
	strh r1, [r0]
	b _02237B0C
_0223798C:
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #0
	mov r1, #1
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x30
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #0x20
	strh r1, [r0]
	b _02237B0C
_022379B2:
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #1
	mov r1, #3
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x30
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #0x20
	strh r1, [r0]
	b _02237B0C
_022379D8:
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #1
	mov r1, #5
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x30
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #0x20
	strh r1, [r0]
	b _02237B0C
_022379FE:
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #0
	mov r1, #1
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x10
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #0x10
	strh r1, [r0]
	mov r0, #0xc
	add r4, #0xc0
	str r0, [r4, #0]
	pop {r4, pc}
_02237A2A:
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #0
	mov r1, #1
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x20
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbc
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbc
	sub r1, #0x14
	strh r1, [r0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #0x26
	strh r1, [r0]
	mov r0, #0x10
	add r4, #0xc0
	str r0, [r4, #0]
	pop {r4, pc}
_02237A62:
	add r0, r4, #0
	mov r1, #0x80
	add r0, #0xbc
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0x40
	add r0, #0xbe
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0x20
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #0x20
	strh r1, [r0]
	b _02237B0C
_02237A88:
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #0
	mov r1, #1
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x40
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #8
	strh r1, [r0]
	mov r0, #0x10
	add r4, #0xc0
	str r0, [r4, #0]
	pop {r4, pc}
_02237AB4:
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #1
	mov r1, #3
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x40
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #8
	strh r1, [r0]
	mov r0, #0x10
	add r4, #0xc0
	str r0, [r4, #0]
	pop {r4, pc}
_02237AE0:
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #1
	mov r1, #5
	add r2, #0xbc
	add r3, #0xbe
	bl ov12_02225864
	add r0, r4, #0
	mov r1, #0x40
	add r0, #0xc8
	str r1, [r0, #0]
	mov r0, #0xbe
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xbe
	add r1, #8
	strh r1, [r0]
	mov r0, #0x10
	add r4, #0xc0
	str r0, [r4, #0]
	pop {r4, pc}
_02237B0C:
	mov r0, #0x14
	add r4, #0xc0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov12_022378A0

	thumb_func_start ov12_02237B14
ov12_02237B14: ; 0x02237B14
	push {r4, lr}
	add r0, #0x90
	ldr r0, [r0, #0]
	add r3, r1, #0
	add r4, r2, #0
	cmp r0, #0x11
	bls _02237B24
	b _02237C50
_02237B24:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02237B30: ; jump table
	.short _02237B54 - _02237B30 - 2 ; case 0
	.short _02237B6A - _02237B30 - 2 ; case 1
	.short _02237B80 - _02237B30 - 2 ; case 2
	.short _02237BAC - _02237B30 - 2 ; case 3
	.short _02237B96 - _02237B30 - 2 ; case 4
	.short _02237BC2 - _02237B30 - 2 ; case 5
	.short _02237BD8 - _02237B30 - 2 ; case 6
	.short _02237BE2 - _02237B30 - 2 ; case 7
	.short _02237BEC - _02237B30 - 2 ; case 8
	.short _02237BF6 - _02237B30 - 2 ; case 9
	.short _02237C04 - _02237B30 - 2 ; case 10
	.short _02237C12 - _02237B30 - 2 ; case 11
	.short _02237C20 - _02237B30 - 2 ; case 12
	.short _02237C2E - _02237B30 - 2 ; case 13
	.short _02237C3C - _02237B30 - 2 ; case 14
	.short _02237C46 - _02237B30 - 2 ; case 15
	.short _02237C46 - _02237B30 - 2 ; case 16
	.short _02237C46 - _02237B30 - 2 ; case 17
_02237B54:
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	add r3, r4, #0
	bl ov12_02225864
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, #0x28
	strh r0, [r4]
	pop {r4, pc}
_02237B6A:
	add r2, r3, #0
	mov r0, #0
	mov r1, #1
	add r3, r4, #0
	bl ov12_02225864
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, #0x26
	strh r0, [r4]
	pop {r4, pc}
_02237B80:
	add r2, r3, #0
	mov r0, #1
	mov r1, #2
	add r3, r4, #0
	bl ov12_02225864
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, #0x28
	strh r0, [r4]
	pop {r4, pc}
_02237B96:
	add r2, r3, #0
	mov r0, #1
	mov r1, #4
	add r3, r4, #0
	bl ov12_02225864
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, #0x28
	strh r0, [r4]
	pop {r4, pc}
_02237BAC:
	add r2, r3, #0
	mov r0, #1
	mov r1, #3
	add r3, r4, #0
	bl ov12_02225864
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, #0x26
	strh r0, [r4]
	pop {r4, pc}
_02237BC2:
	add r2, r3, #0
	mov r0, #1
	mov r1, #5
	add r3, r4, #0
	bl ov12_02225864
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, #0x26
	strh r0, [r4]
	pop {r4, pc}
_02237BD8:
	mov r0, #0xa
	strh r0, [r3]
	mov r0, #0x64
	strh r0, [r4]
	pop {r4, pc}
_02237BE2:
	mov r0, #0xa
	strh r0, [r3]
	mov r0, #0x64
	strh r0, [r4]
	pop {r4, pc}
_02237BEC:
	mov r0, #0xa
	strh r0, [r3]
	mov r0, #0x64
	strh r0, [r4]
	pop {r4, pc}
_02237BF6:
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	add r3, r4, #0
	bl ov12_02225864
	pop {r4, pc}
_02237C04:
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	add r3, r4, #0
	bl ov12_02225864
	pop {r4, pc}
_02237C12:
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	add r3, r4, #0
	bl ov12_02225864
	pop {r4, pc}
_02237C20:
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	add r3, r4, #0
	bl ov12_02225864
	pop {r4, pc}
_02237C2E:
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	add r3, r4, #0
	bl ov12_02225864
	pop {r4, pc}
_02237C3C:
	mov r0, #0xe6
	strh r0, [r3]
	mov r0, #0x20
	strh r0, [r4]
	pop {r4, pc}
_02237C46:
	mov r0, #0x1d
	mvn r0, r0
	strh r0, [r3]
	mov r0, #0xa0
	strh r0, [r4]
_02237C50:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02237B14

	thumb_func_start ov12_02237C54
ov12_02237C54: ; 0x02237C54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x2c]
	mov r2, #0xa
	bl sub_0200C7C0
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02237C84
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl sub_0200C738
	mov r2, #0x11
	mov r1, #0
	lsl r2, r2, #0x10
	bl sub_0200964C
_02237C84:
	mov r1, #0
	add r2, sp, #0x20
	mov r0, #0xa
_02237C8A:
	add r1, r1, #1
	stmia r2!, {r0}
	cmp r1, #6
	blt _02237C8A
	mov r0, #0
	str r0, [sp, #0x30]
	str r0, [sp, #0x34]
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x2c]
	add r2, sp, #0x20
	bl sub_0200CB30
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #0
	bl ov12_02235FC8
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #1
	bl ov12_02235FC8
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #2
	bl ov12_02235FC8
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #3
	bl ov12_02235FC8
	add r1, r5, #0
	add r1, #0x94
	str r0, [sp, #0x1c]
	ldr r1, [r1, #0]
	mov r0, #0x1b
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x9c
	ldr r1, [r0, #0]
	ldr r0, _02237D88 ; =0x00001770
	add r2, r4, #0
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x2c]
	add r3, r7, #0
	bl sub_0200CC3C
	str r4, [sp]
	add r2, r5, #0
	str r6, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0x9c
	ldr r1, [r0, #0]
	ldr r0, _02237D88 ; =0x00001770
	add r2, #0xac
	add r0, r1, r0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	ldr r3, [r5, #0x2c]
	mov r1, #2
	bl sub_0200CDC4
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x9c
	ldr r1, [r0, #0]
	ldr r0, _02237D88 ; =0x00001770
	ldr r3, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x2c]
	add r2, r4, #0
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x9c
	ldr r1, [r0, #0]
	ldr r0, _02237D88 ; =0x00001770
	ldr r3, [sp, #0x1c]
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x2c]
	add r2, r4, #0
	bl sub_0200CE54
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237D88: .word 0x00001770
	thumb_func_end ov12_02237C54

	thumb_func_start ov12_02237D8C
ov12_02237D8C: ; 0x02237D8C
	push {r3, r4, lr}
	sub sp, #0x34
	add r2, sp, #0
	add r1, sp, #0
	add r2, #2
	add r4, r0, #0
	bl ov12_02237B14
	mov r0, #0
	add r1, sp, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	mov r1, #1
	str r1, [sp, #0x10]
	add r1, r4, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r1, #0xa4
	ldr r1, [r1, #0]
	ldr r2, _02237E08 ; =0x00001770
	str r1, [sp, #0x2c]
	str r0, [sp, #0x30]
	add r3, sp, #0
_02237DBA:
	add r1, r4, #0
	add r1, #0x9c
	ldr r1, [r1, #0]
	add r0, r0, #1
	add r1, r1, r2
	str r1, [r3, #0x14]
	add r3, r3, #4
	cmp r0, #6
	blt _02237DBA
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x2c]
	add r2, sp, #0
	bl sub_0200CE6C
	str r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200D3CC
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r4, #0x30]
	bl sub_0200D330
	bl ov12_02220474
	add sp, #0x34
	pop {r3, r4, pc}
	; .align 2, 0
_02237E08: .word 0x00001770
	thumb_func_end ov12_02237D8C

	thumb_func_start ov12_02237E0C
ov12_02237E0C: ; 0x02237E0C
	ldr r3, _02237E14 ; =sub_0200D3F4
	ldr r0, [r0, #0x30]
	bx r3
	nop
_02237E14: .word sub_0200D3F4
	thumb_func_end ov12_02237E0C

	thumb_func_start ov12_02237E18
ov12_02237E18: ; 0x02237E18
	ldr r3, _02237E20 ; =sub_0200D4C4
	ldr r0, [r0, #0x30]
	bx r3
	nop
_02237E20: .word sub_0200D4C4
	thumb_func_end ov12_02237E18

	thumb_func_start ov12_02237E24
ov12_02237E24: ; 0x02237E24
	ldr r3, _02237E2C ; =sub_0200D79C
	ldr r0, [r0, #0x30]
	bx r3
	nop
_02237E2C: .word sub_0200D79C
	thumb_func_end ov12_02237E24

	thumb_func_start ov12_02237E30
ov12_02237E30: ; 0x02237E30
	str r1, [r0, #0x24]
	bx lr
	thumb_func_end ov12_02237E30

	thumb_func_start ov12_02237E34
ov12_02237E34: ; 0x02237E34
	ldr r3, _02237E3C ; =sub_0200D474
	ldr r0, [r0, #0x30]
	bx r3
	nop
_02237E3C: .word sub_0200D474
	thumb_func_end ov12_02237E34

	thumb_func_start ov12_02237E40
ov12_02237E40: ; 0x02237E40
	ldr r3, _02237E48 ; =sub_0200D460
	ldr r0, [r0, #0x30]
	bx r3
	nop
_02237E48: .word sub_0200D460
	thumb_func_end ov12_02237E40

	thumb_func_start ov12_02237E4C
ov12_02237E4C: ; 0x02237E4C
	add r0, #0xdc
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov12_02237E4C

	.rodata


	.global Unk_ov12_0223AB60
Unk_ov12_0223AB60: ; 0x0223AB60
	.incbin "incbin/overlay12_rodata.bin", 0x25CC, 0x25D8 - 0x25CC

	.global Unk_ov12_0223AB6C
Unk_ov12_0223AB6C: ; 0x0223AB6C
	.incbin "incbin/overlay12_rodata.bin", 0x25D8, 0x25F0 - 0x25D8

	.global Unk_ov12_0223AB84
Unk_ov12_0223AB84: ; 0x0223AB84
	.incbin "incbin/overlay12_rodata.bin", 0x25F0, 0x2608 - 0x25F0

	.global Unk_ov12_0223AB9C
Unk_ov12_0223AB9C: ; 0x0223AB9C
	.incbin "incbin/overlay12_rodata.bin", 0x2608, 0x2628 - 0x2608

	.global Unk_ov12_0223ABBC
Unk_ov12_0223ABBC: ; 0x0223ABBC
	.incbin "incbin/overlay12_rodata.bin", 0x2628, 0x2650 - 0x2628

	.global Unk_ov12_0223ABE4
Unk_ov12_0223ABE4: ; 0x0223ABE4
	.incbin "incbin/overlay12_rodata.bin", 0x2650, 0x2678 - 0x2650

	.global Unk_ov12_0223AC0C
Unk_ov12_0223AC0C: ; 0x0223AC0C
	.incbin "incbin/overlay12_rodata.bin", 0x2678, 0x26A4 - 0x2678

	.global Unk_ov12_0223AC38
Unk_ov12_0223AC38: ; 0x0223AC38
	.incbin "incbin/overlay12_rodata.bin", 0x26A4, 0x26EC - 0x26A4

	.global Unk_ov12_0223AC80
Unk_ov12_0223AC80: ; 0x0223AC80
	.incbin "incbin/overlay12_rodata.bin", 0x26EC, 0x275C - 0x26EC

	.global Unk_ov12_0223ACF0
Unk_ov12_0223ACF0: ; 0x0223ACF0
	.incbin "incbin/overlay12_rodata.bin", 0x275C, 0x27DC - 0x275C

	.global Unk_ov12_0223AD70
Unk_ov12_0223AD70: ; 0x0223AD70
	.incbin "incbin/overlay12_rodata.bin", 0x27DC, 0x287C - 0x27DC

	.global Unk_ov12_0223AE10
Unk_ov12_0223AE10: ; 0x0223AE10
	.incbin "incbin/overlay12_rodata.bin", 0x287C, 0x296C - 0x287C

	.global Unk_ov12_0223AF00
Unk_ov12_0223AF00: ; 0x0223AF00
	.incbin "incbin/overlay12_rodata.bin", 0x296C, 0x140

