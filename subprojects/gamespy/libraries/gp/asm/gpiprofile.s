	.include "macros/function.inc"
	.include "include/gpiprofile.inc"

	

	.text


	arm_func_start ov4_021F2F6C
ov4_021F2F6C: ; 0x021F2F6C
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0]
	bl _s32_div_f
	mov r0, r1
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021F2F6C

	arm_func_start ov4_021F2F80
ov4_021F2F80: ; 0x021F2F80
	ldr r2, [r0, #0]
	ldr r0, [r1, #0]
	sub r0, r2, r0
	bx lr
	arm_func_end ov4_021F2F80

	arm_func_start ov4_021F2F90
ov4_021F2F90: ; 0x021F2F90
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021F2FE0
	ldr r0, [r0, #8]
	bl DWCi_GsFree
	ldr r0, [r4, #8]
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	bl DWCi_GsFree
	ldr r0, [r4, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r4, #8]
	bl DWCi_GsFree
	mov r0, #0
	str r0, [r4, #8]
_021F2FE0:
	mov r0, r4
	bl ov4_021F163C
	ldr r0, [r4, #0x10]
	bl DWCi_GsFree
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	bl DWCi_GsFree
	mov r0, #0
	str r0, [r4, #0x18]
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021F2F90

	arm_func_start ov4_021F300C
ov4_021F300C: ; 0x021F300C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r4, [r0, #0]
	mov r0, #0
	str r0, [r4, #0x430]
	str r0, [r4, #0x42c]
	ldr ip, _021F3058 ; =ov4_021F2F90
	ldr r2, _021F305C ; =ov4_021F2F6C
	ldr r3, _021F3060 ; =ov4_021F2F80
	mov r0, #0x1c
	mov r1, #4
	str ip, [sp]
	bl TableNew
	str r0, [r4, #0x428]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_021F3058: .word ov4_021F2F90
_021F305C: .word ov4_021F2F6C
_021F3060: .word ov4_021F2F80
	arm_func_end ov4_021F300C

	arm_func_start ov4_021F3064
ov4_021F3064: ; 0x021F3064
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r6, r2
	mov r4, r1
	mov r1, r6
	mov r2, #1
	mov r5, r0
	bl ov4_021F58A0
	cmp r0, #0
	addne sp, sp, #0x20
	movne r0, #4
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _021F31B4 ; =0x02218CBC
	mov r0, r6
	mov r2, #5
	bl strncmp
	cmp r0, #0
	beq _021F30D8
	ldr r2, _021F31B8 ; =0x02218CC4
	mov r0, r5
	mov r1, #1
	bl ov4_021F5D44
	mov r0, r5
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x20
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F30D8:
	ldr r1, _021F31BC ; =0x02218CF4
	add r2, sp, #0x10
	mov r0, r6
	mov r3, #0x10
	bl ov4_021F5978
	cmp r0, #0
	bne _021F3120
	ldr r2, _021F31B8 ; =0x02218CC4
	mov r0, r5
	mov r1, #1
	bl ov4_021F5D44
	mov r0, r5
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x20
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F3120:
	add r0, sp, #0x10
	bl atoi
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x10]
	mov r6, r0
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	cmp r2, #0
	beq _021F319C
	mov r0, #8
	bl DWCi_GsMalloc
	movs r3, r0
	bne _021F316C
	ldr r1, _021F31C0 ; =0x02218D00
	mov r0, r5
	bl ov4_021F5D68
	add sp, sp, #0x20
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021F316C:
	str r6, [r3, #4]
	mov r2, #0
	str r2, [r3, #0]
	str r4, [sp]
	add r1, sp, #8
	str r2, [sp, #4]
	mov r0, r5
	ldmia r1, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, pc}
_021F319C:
	mov r0, r5
	mov r1, r4
	bl ov4_021F1BA8
	mov r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021F31B4: .word Unk_ov4_02218CBC
_021F31B8: .word Unk_ov4_02218CC4
_021F31BC: .word Unk_ov4_02218CF4
_021F31C0: .word Unk_ov4_02218D00
	arm_func_end ov4_021F3064

	arm_func_start ov4_021F31C4
ov4_021F31C4: ; 0x021F31C4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r6, r0
	mov r5, r1
	cmp r5, #0
	ldr r4, [r6, #0]
	bgt _021F31F4
	ldr r0, _021F3298 ; =0x02218D10
	ldr r1, _021F329C ; =0x02218D18
	ldr r2, _021F32A0 ; =0x02218CA8
	ldr r3, _021F32A4 ; =0x000002B5
	bl __msl_assertion_failed
_021F31F4:
	cmp r5, #0
	addle sp, sp, #0x20
	movle r0, #0
	ldmleia sp!, {r4, r5, r6, pc}
	add r2, sp, #0
	mov r0, r6
	mov r1, r5
	bl ov4_021F32A8
	cmp r0, #0
	ldrne r0, [sp]
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, pc}
	add r1, sp, #4
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	str r5, [sp, #4]
	str r0, [r1, #8]
	str r0, [sp, #8]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x428]
	bl TableEnter
	ldr r0, [r4, #0x42c]
	add r2, sp, #0
	add r3, r0, #1
	mov r0, r6
	mov r1, r5
	str r3, [r4, #0x42c]
	bl ov4_021F32A8
	cmp r0, #0
	ldrne r0, [sp]
	moveq r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021F3298: .word Unk_ov4_02218D10
_021F329C: .word Unk_ov4_02218D18
_021F32A0: .word Unk_ov4_02218CA8
_021F32A4: .word 0x000002B5
	arm_func_end ov4_021F31C4

	arm_func_start ov4_021F32A8
ov4_021F32A8: ; 0x021F32A8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	ldr r0, [r0, #0]
	mov r4, r2
	str r1, [sp]
	ldr r0, [r0, #0x428]
	add r1, sp, #0
	bl TableLookup
	cmp r4, #0
	strne r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov4_021F32A8

	arm_func_start ov4_021F32E4
ov4_021F32E4: ; 0x021F32E4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	add r2, sp, #0
	ldr r4, [r0, #0]
	bl ov4_021F32A8
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, [r4, #0x428]
	ldr r1, [sp]
	bl TableRemove
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov4_021F32E4

	arm_func_start ov4_021F3318
ov4_021F3318: ; 0x021F3318
	ldr r0, [r0, #0]
	ldr ip, _021F3328 ; =TableRemove
	ldr r0, [r0, #0x428]
	bx ip
	; .align 2, 0
_021F3328: .word TableRemove
	arm_func_end ov4_021F3318

	arm_func_start ov4_021F332C
ov4_021F332C: ; 0x021F332C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	ldr r4, [r6, #0xc]
	mov r5, r2
	cmp r4, #0
	beq _021F3384
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl strcmp
	cmp r0, #0
	bne _021F3384
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	bl strcmp
	cmp r0, #0
	bne _021F3384
	ldr r1, [r5, #8]
	mov r0, #1
	str r6, [r1, #0]
	str r0, [r5, #0xc]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021F3384:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021F332C

	arm_func_start ov4_021F338C
ov4_021F338C: ; 0x021F338C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	str r1, [sp]
	mov ip, #0
	str r2, [sp, #4]
	mov r4, r3
	ldr r1, _021F33D4 ; =ov4_021F332C
	add r2, sp, #0
	str ip, [sp, #0xc]
	str r4, [sp, #8]
	bl ov4_021F33F4
	ldr r0, [sp, #0xc]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4]
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021F33D4: .word ov4_021F332C
	arm_func_end ov4_021F338C

	arm_func_start ov4_021F33D8
ov4_021F33D8: ; 0x021F33D8
	stmfd sp!, {r3, lr}
	mov ip, r0
	ldr r2, [r1, #8]
	ldmia r1, {r0, r3}
	mov r1, ip
	blx r3
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021F33D8

	arm_func_start ov4_021F33F4
ov4_021F33F4: ; 0x021F33F4
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r3, [r0, #0]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp]
	ldr r0, [r3, #0x428]
	ldr r1, _021F3430 ; =ov4_021F33D8
	add r2, sp, #0
	bl TableMapSafe2
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_021F3430: .word ov4_021F33D8
	arm_func_end ov4_021F33F4

	arm_func_start ov4_021F3434
ov4_021F3434: ; 0x021F3434
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _021F3458
	ldr r3, [r2, #0]
	ldr r0, [r0, #0]
	cmp r3, r0
	streq r1, [r2, #4]
	moveq r0, #0
	bxeq lr
_021F3458:
	mov r0, #1
	bx lr
	arm_func_end ov4_021F3434

	arm_func_start ov4_021F3460
ov4_021F3460: ; 0x021F3460
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	str r1, [sp]
	mov r3, #0
	ldr r1, _021F348C ; =ov4_021F3434
	add r2, sp, #0
	str r3, [sp, #4]
	bl ov4_021F33F4
	ldr r0, [sp, #4]
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021F348C: .word ov4_021F3434
	arm_func_end ov4_021F3460

	arm_func_start ov4_021F3490
ov4_021F3490: ; 0x021F3490
	cmp r0, #0
	beq _021F34C0
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldreq r1, [r0, #8]
	cmpeq r1, #0
	ldreq r1, [r0, #0x18]
	cmpeq r1, #0
	ldreq r0, [r0, #0x10]
	cmpeq r0, #0
	moveq r0, #1
	bxeq lr
_021F34C0:
	mov r0, #0
	bx lr
	arm_func_end ov4_021F3490

	.data


	.global Unk_ov4_02218CA8
Unk_ov4_02218CA8: ; 0x02218CA8
	.incbin "incbin/overlay4_data.bin", 0x2E28, 0x2E3C - 0x2E28

	.global Unk_ov4_02218CBC
Unk_ov4_02218CBC: ; 0x02218CBC
	.incbin "incbin/overlay4_data.bin", 0x2E3C, 0x2E44 - 0x2E3C

	.global Unk_ov4_02218CC4
Unk_ov4_02218CC4: ; 0x02218CC4
	.incbin "incbin/overlay4_data.bin", 0x2E44, 0x2E74 - 0x2E44

	.global Unk_ov4_02218CF4
Unk_ov4_02218CF4: ; 0x02218CF4
	.incbin "incbin/overlay4_data.bin", 0x2E74, 0x2E80 - 0x2E74

	.global Unk_ov4_02218D00
Unk_ov4_02218D00: ; 0x02218D00
	.incbin "incbin/overlay4_data.bin", 0x2E80, 0x2E90 - 0x2E80

	.global Unk_ov4_02218D10
Unk_ov4_02218D10: ; 0x02218D10
	.incbin "incbin/overlay4_data.bin", 0x2E90, 0x2E98 - 0x2E90

	.global Unk_ov4_02218D18
Unk_ov4_02218D18: ; 0x02218D18
	.incbin "incbin/overlay4_data.bin", 0x2E98, 0xD

