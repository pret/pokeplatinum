	.include "macros/function.inc"
	.include "include/dwci_lobbydata.inc"

	

	.text


	arm_func_start ov66_02246588
ov66_02246588: ; 0x02246588
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x84
	mov r5, r0
	mov r0, #0
	mov r7, r1
	str r0, [r5, #0]
	str r0, [r5, #4]
	ldr ip, [sp, #0x98]
	ldr r1, [sp, #0x9c]
	add r0, r5, #0xc
	mov r6, r2
	mov r4, r3
	str ip, [r5, #8]
	bl ov66_0223B938
	ldr r1, [sp, #0xa0]
	add r0, r5, #0x18
	bl ov66_0223B938
	ldr r1, [sp, #0xa4]
	add r0, r5, #0x24
	bl ov66_0223B938
	mov r1, r7
	add r0, r5, #0x30
	bl ov66_0223B938
	mov r1, r6
	add r0, r5, #0x3c
	bl ov66_0223B938
	mov r1, #0
	add r0, r5, #0x48
	mov ip, r1
_022465FC:
	str ip, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #3
	blo _022465FC
	str ip, [r5, #0x54]
	str ip, [r5, #0x58]
	str ip, [r5, #0x5c]
	ldr r0, [sp, #0xa8]
	str ip, [r5, #0x60]
	add r3, r5, #0x64
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	str ip, [r5, #0x70]
	str ip, [r5, #0x74]
	add r0, r5, #0x74
	str r0, [r5, #0x7c]
	str ip, [r5, #0x80]
	str ip, [r5, #0x84]
	add r0, r5, #0x84
	str r0, [r5, #0x8c]
	str ip, [r5, #0x90]
	str ip, [r5, #0x94]
	add r0, r5, #0x94
	str r0, [r5, #0x98]
	str ip, [r5, #0x9c]
	str ip, [r5, #0xa0]
	add r0, r5, #0xa0
	ldr lr, _02246748 ; =0x02258CB4
	str r0, [r5, #0xa8]
	add ip, sp, #0x54
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	ldr r1, _0224674C ; =0x02258CAC
	add r0, sp, #0x48
	bl ov66_0223BA6C
	ldr r2, _02246750 ; =0x02259298
	add r0, sp, #0x3c
	add r1, sp, #0x48
	bl ov66_022379D0
	add r0, sp, #0x30
	add r1, sp, #0x3c
	add r2, r5, #0x30
	bl ov66_02237908
	ldr r2, _02246750 ; =0x02259298
	add r0, sp, #0x24
	add r1, sp, #0x30
	bl ov66_022379D0
	add r1, sp, #0x54
	ldr r1, [r1, r4, lsl #2]
	add r0, sp, #0x18
	bl ov66_0223BA6C
	add r0, sp, #0xc
	add r1, sp, #0x24
	add r2, sp, #0x18
	bl ov66_02237908
	ldr r2, _02246750 ; =0x02259298
	add r0, sp, #0
	add r1, sp, #0xc
	bl ov66_022379D0
	add r1, sp, #0
	add r0, r5, #0x48
	bl ov66_0223BC5C
	add r0, sp, #0
	bl ov66_0223BADC
	add r0, sp, #0xc
	bl ov66_0223BADC
	add r0, sp, #0x18
	bl ov66_0223BADC
	add r0, sp, #0x24
	bl ov66_0223BADC
	add r0, sp, #0x30
	bl ov66_0223BADC
	add r0, sp, #0x3c
	bl ov66_0223BADC
	add r0, sp, #0x48
	bl ov66_0223BADC
	mov r0, r5
	add sp, sp, #0x84
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_02246748: .word Unk_ov66_02258CB4
_0224674C: .word Unk_ov66_02258CAC
_02246750: .word Unk_ov66_02259298
	arm_func_end ov66_02246588

	arm_func_start ov66_02246754
ov66_02246754: ; 0x02246754
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x9c
	bl ov66_0223ABC4
	add r0, r4, #0x9c
	bl ov66_0223AD4C
	add r0, r4, #0x90
	bl ov66_0224649C
	add r0, r4, #0x90
	bl ov66_0224804C
	add r0, r4, #0x80
	bl ov66_02247994
	add r0, r4, #0x70
	bl ov66_0224802C
	add r0, r4, #0x48
	bl ov66_0223BADC
	add r0, r4, #0x3c
	bl ov66_0223BADC
	add r0, r4, #0x30
	bl ov66_0223BADC
	add r0, r4, #0x24
	bl ov66_0223BADC
	add r0, r4, #0x18
	bl ov66_0223BADC
	add r0, r4, #0xc
	bl ov66_0223BADC
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_02246754

	arm_func_start ov66_022467C4
ov66_022467C4: ; 0x022467C4
	ldr ip, _022467D0 ; =ov66_02237908
	add r1, r1, #0x48
	bx ip
	; .align 2, 0
_022467D0: .word ov66_02237908
	arm_func_end ov66_022467C4

	arm_func_start ov66_022467D4
ov66_022467D4: ; 0x022467D4
	ldr r3, [r1, #0x48]
	mov r3, r3, lsl #0x1f
	movs r3, r3, lsr #0x1f
	ldrne r3, [r1, #0x4c]
	bne _022467F4
	ldrb r1, [r1, #0x48]
	mov r1, r1, lsl #0x18
	mov r3, r1, lsr #0x19
_022467F4:
	ldr ip, _02246808 ; =ov66_0223A594
	mov r1, r2
	mov r2, r3
	mvn r3, #0
	bx ip
	; .align 2, 0
_02246808: .word ov66_0223A594
	arm_func_end ov66_022467D4

	arm_func_start ov66_0224680C
ov66_0224680C: ; 0x0224680C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r0
	mov r6, #0
	str r6, [sl]
	mov r8, r2
	str r6, [sl, #4]
	cmp r8, #0
	mov sb, r1
	mov r7, r3
	addle sp, sp, #8
	str r6, [sl, #8]
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	sub r4, sp, #4
	mov r5, r6
	add fp, sp, #4
_0224684C:
	ldr r0, [sb, #0x48]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldrne r1, [sb, #0x4c]
	bne _0224686C
	ldrb r0, [sb, #0x48]
	mov r0, r0, lsl #0x18
	mov r1, r0, lsr #0x19
_0224686C:
	ldr r0, [r7, r6, lsl #2]
	add r0, r0, r1
	str r0, [sp, #4]
	strb r5, [sp]
	ldr r1, [sl, #4]
	ldr r0, [sl, #8]
	cmp r1, r0
	bhs _022468AC
	mov r0, r1
	add r2, r0, #1
	str r2, [sl, #4]
	ldr r0, [sl]
	ldr r1, [sp, #4]
	add r0, r0, r2, lsl #2
	str r1, [r0, #-4]
	b _022468C8
_022468AC:
	strb r5, [sp, #1]
	and r0, r5, #0xff
	strb r0, [r4]
	ldr r2, [r4, #0]
	mov r0, sl
	mov r1, fp
	bl ov66_02242818
_022468C8:
	add r6, r6, #1
	cmp r6, r8
	blt _0224684C
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov66_0224680C

	arm_func_start ov66_022468DC
ov66_022468DC: ; 0x022468DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov4_021EA840
	ldr r1, _02246920 ; =0x10624DD3
	mov r3, #0x3e8
	umull r1, ip, r0, r1
	mov ip, ip, lsr #6
	umull r1, r2, r3, ip
	sub ip, r0, r1
	ldr r2, _02246924 ; =0x0225929C
	mov r0, r5
	mov r3, r4
	mov r1, #0x14
	str ip, [sp]
	bl ov66_02236A38
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02246920: .word 0x10624DD3
_02246924: .word Unk_ov66_0225929C
	arm_func_end ov66_022468DC

	arm_func_start ov66_02246928
ov66_02246928: ; 0x02246928
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	ldr r1, _022469C4 ; =0x022592A4
	mov r4, r0
	add r0, sp, #0
	bl ov66_0223BA6C
	add r0, sp, #0xc
	add r2, sp, #0
	mov r1, r4
	mov r3, #0
	bl ov66_02242F08
	add r0, sp, #0
	bl ov66_0223BADC
	ldr r0, [sp, #0x10]
	cmp r0, #2
	bhs _0224697C
	add r0, sp, #0xc
	bl ov66_0223B578
	add sp, sp, #0x18
	mvn r0, #0
	ldmia sp!, {r4, pc}
_0224697C:
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #0xc]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, r1, #0xd
	ldrne r0, [r1, #0x14]
	bl atoi
	movs r4, r0
	add r0, sp, #0xc
	bne _022469B4
	bl ov66_0223B578
	add sp, sp, #0x18
	mvn r0, #0
	ldmia sp!, {r4, pc}
_022469B4:
	bl ov66_0223B578
	mov r0, r4
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022469C4: .word Unk_ov66_022592A4
	arm_func_end ov66_02246928

	arm_func_start ov66_022469C8
ov66_022469C8: ; 0x022469C8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xb4
	mov r4, r0
	add r0, sp, #0xa8
	mov r6, r2
	mov r5, r3
	bl ov66_0223B938
	add r1, sp, #0x80
	mov r2, #0
	add r0, r1, #4
	add ip, sp, #0x90
	str r0, [r1, #8]
	str r2, [sp, #0x7c]
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r5, [sp, #0x8c]
	ldmia r6!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1}
	stmia ip, {r0, r1}
	add r0, sp, #0x44
	add r1, sp, #0xa8
	add r2, sp, #0x7c
	bl ov66_02246ADC
	mov r1, #0
	strb r1, [sp]
	add r0, sp, #0xc
	add r1, sp, #0x44
	bl ov66_0223B938
	add r6, sp, #0x50
	mov r1, #0
	ldr r0, [r6, #0]
	add r5, sp, #0x18
	stmia r5, {r0, r1}
	add r0, r5, #8
	str r0, [r5, #0xc]
	strb r1, [sp, #1]
	str r1, [r5, #8]
	add r0, r5, #4
	add r1, r6, #4
	bl ov66_02247ABC
	ldr r0, [r6, #0x10]
	add lr, r6, #0x14
	str r0, [r5, #0x10]
	add ip, r5, #0x14
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1}
	stmia ip, {r0, r1}
	add r1, r4, #0x80
	add r0, sp, #4
	add r2, sp, #0xc
	bl ov66_0224773C
	add r0, sp, #0x1c
	ldrb r4, [sp, #8]
	bl ov66_02247E18
	add r0, sp, #0xc
	bl ov66_0223BADC
	add r0, sp, #0x54
	bl ov66_02247E18
	add r0, sp, #0x44
	bl ov66_0223BADC
	add r0, sp, #0x80
	bl ov66_02247E18
	add r0, sp, #0xa8
	bl ov66_0223BADC
	mov r0, r4
	add sp, sp, #0xb4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov66_022469C8

	arm_func_start ov66_02246ADC
ov66_02246ADC: ; 0x02246ADC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r5, r0
	bl ov66_0223B938
	ldr r1, [r4, #0]
	mov r0, #0
	str r1, [r5, #0xc]
	str r0, [r5, #0x10]
	str r0, [r5, #0x14]
	add r0, r5, #0x14
	str r0, [r5, #0x18]
	add r0, r5, #0x10
	add r1, r4, #4
	bl ov66_02247ABC
	ldr r0, [r4, #0x10]
	add lr, r4, #0x14
	str r0, [r5, #0x1c]
	add ip, r5, #0x20
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1}
	stmia ip, {r0, r1}
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_02246ADC

	arm_func_start ov66_02246B38
ov66_02246B38: ; 0x02246B38
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r2, r1
	add r0, sp, #0
	add r1, r4, #0x80
	bl ov66_02246B70
	ldr r1, [sp]
	add r0, r4, #0x84
	cmp r1, r0
	moveq r0, #0
	addne r0, r1, #0x2c
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_02246B38

	arm_func_start ov66_02246B70
ov66_02246B70: ; 0x02246B70
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r5, r2
	mov r7, r0
	ldr r2, [r6, #4]
	mov r0, r6
	mov r1, r5
	add r3, r6, #4
	bl ov66_02246BD8
	mov r4, r0
	add r0, r6, #4
	cmp r4, r0
	beq _02246BC4
	mov r0, r5
	add r1, r4, #0xc
	bl ov66_0223BE90
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	cmp r0, #0
	beq _02246BD0
_02246BC4:
	add r0, r6, #4
	str r0, [r7, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02246BD0:
	str r4, [r7, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov66_02246B70

	arm_func_start ov66_02246BD8
ov66_02246BD8: ; 0x02246BD8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r2
	mov r8, r1
	mov r6, r3
	beq _02246C24
	mov r4, #0
	mov r5, #1
_02246BF4:
	mov r1, r8
	add r0, r7, #0xc
	bl ov66_0223BE90
	cmp r0, #0
	movlt r0, r5
	movge r0, r4
	cmp r0, #0
	moveq r6, r7
	ldreq r7, [r7]
	ldrne r7, [r7, #4]
	cmp r7, #0
	bne _02246BF4
_02246C24:
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov66_02246BD8

	arm_func_start ov66_02246C2C
ov66_02246C2C: ; 0x02246C2C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl ov66_02246928
	mvn r1, #0
	str r0, [sp, #0x10]
	cmp r0, r1
	addeq sp, sp, #0x14
	moveq r0, r1
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	add r0, sp, #0xc
	mov r2, r4
	add r1, r6, #0x80
	bl ov66_02246B70
	ldr r1, [sp, #0xc]
	add r0, r6, #0x84
	cmp r1, r0
	addeq sp, sp, #0x14
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	add r0, sp, #4
	add r2, sp, #0x10
	add r1, r1, #0x1c
	bl ov66_022479B4
	mov r2, #0
	add r1, sp, #0x10
	add r0, r6, #0x70
	strb r2, [sp, #1]
	strb r2, [sp]
	bl ov66_02246CC8
	mov r1, r5
	add r0, r0, #4
	bl ov66_0223BC5C
	ldr r0, [sp, #0x10]
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov66_02246C2C

	arm_func_start ov66_02246CC8
ov66_02246CC8: ; 0x02246CC8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x28
	add r4, sp, #4
	add r2, sp, #8
	add r3, sp, #5
	str r4, [sp]
	mov r6, r0
	mov r5, r1
	bl ov66_02246D84
	ldr r2, [sp, #8]
	mov r4, r0
	cmp r2, #0
	beq _02246D0C
	ldr r1, [r2, #0xc]
	ldr r0, [r5, #0]
	cmp r1, r0
	bge _02246D78
_02246D0C:
	mov r2, #0
	add r1, sp, #0x1c
	mov r0, r2
_02246D18:
	str r0, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #3
	blo _02246D18
	ldr r2, [r5, #0]
	add r0, sp, #0x10
	add r1, sp, #0x1c
	str r2, [sp, #0xc]
	bl ov66_0223B938
	add r1, sp, #0xc
	str r1, [sp]
	ldrb r2, [sp, #5]
	ldrb r3, [sp, #4]
	mov r0, r6
	mov r1, r4
	bl ov66_02247F48
	mov r4, r0
	add r0, sp, #0x10
	bl ov66_0223BADC
	add r0, sp, #0x1c
	bl ov66_0223BADC
	add sp, sp, #0x28
	add r0, r4, #0xc
	ldmia sp!, {r4, r5, r6, pc}
_02246D78:
	add r0, r2, #0xc
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov66_02246CC8

	arm_func_start ov66_02246D84
ov66_02246D84: ; 0x02246D84
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	str r4, [r2, #0]
	ldr r6, [r0, #4]
	mov r4, #1
	ldr r7, [sp, #0x18]
	strb r4, [r3]
	strb r4, [r7]
	cmp r6, #0
	add r0, r0, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov ip, #0
	mov lr, r4
_02246DB8:
	ldr r5, [r1, #0]
	ldr r4, [r6, #0xc]
	mov r0, r6
	cmp r5, r4
	ldrlt r6, [r6]
	strltb lr, [r3]
	blt _02246DE4
	str r6, [r2, #0]
	ldr r6, [r6, #4]
	strb ip, [r3]
	strb ip, [r7]
_02246DE4:
	cmp r6, #0
	bne _02246DB8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov66_02246D84

	arm_func_start ov66_02246DF0
ov66_02246DF0: ; 0x02246DF0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x34
	mov sb, r1
	movs r1, r2
	ldr r1, [sp, #0x58]
	mov r4, #0
	mov sl, r0
	str r4, [sl]
	str r4, [sl, #4]
	str r2, [sp]
	mov r8, r3
	str r4, [sl, #8]
	str r1, [sp, #0x58]
	beq _02246E30
	mov r1, r2
	bl ov66_02242738
_02246E30:
	ldr r0, [sp]
	mov r7, #0
	cmp r0, #0
	addle sp, sp, #0x34
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mvn r0, #0
	sub r4, sp, #4
	str r0, [sp, #4]
_02246E50:
	ldr r1, [r8, r7, lsl #2]
	add r0, sp, #0x28
	bl ov66_0223BA6C
	mov fp, #0
	ldr r6, [sb, #8]
	add r0, sp, #0x28
	mov r5, fp
	bl ov66_02246928
	cmp r0, r6
	bne _02246EAC
	ldr r6, [r8, r7, lsl #2]
	add r0, sp, #0x1c
	mov r1, sb
	bl ov66_02243B64
	mov r1, r6
	mov fp, #1
	add r0, sp, #0x1c
	bl ov66_0223BEEC
	cmp r0, #0
	movne r0, fp
	moveq r0, r5
	cmp r0, #0
	movne r5, #1
_02246EAC:
	cmp fp, #0
	beq _02246EBC
	add r0, sp, #0x1c
	bl ov66_0223BADC
_02246EBC:
	add r0, sp, #0x28
	bl ov66_0223BADC
	cmp r5, #0
	bne _02246F60
	ldr r1, [r8, r7, lsl #2]
	add r0, sp, #0x10
	bl ov66_0223BA6C
	ldr r2, [sp, #0x58]
	mov r0, sb
	add r1, sp, #0x10
	bl ov66_02246C2C
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	bl ov66_0223BADC
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #4]
	cmp r1, r0
	beq _02246F60
	mov r0, #0
	strb r0, [sp, #8]
	ldr r1, [sl, #4]
	ldr r0, [sl, #8]
	cmp r1, r0
	bhs _02246F3C
	mov r0, r1
	add r2, r0, #1
	str r2, [sl, #4]
	ldr r0, [sl]
	ldr r1, [sp, #0xc]
	add r0, r0, r2, lsl #2
	str r1, [r0, #-4]
	b _02246F60
_02246F3C:
	mov r0, #0
	mov r2, #0
	strb r0, [sp, #9]
	mov r2, r2
	strb r2, [r4]
	ldr r2, [r4, #0]
	mov r0, sl
	add r1, sp, #0xc
	bl ov66_02242818
_02246F60:
	ldr r0, [sp]
	add r7, r7, #1
	cmp r7, r0
	blt _02246E50
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov66_02246DF0

	arm_func_start ov66_02246F78
ov66_02246F78: ; 0x02246F78
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	ldr r1, [sp, #0x34]
	mov r7, r0
	str r1, [sp, #4]
	ldr r0, [r7, #0x8c]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r6, r7, #0x84
	add r5, sp, #4
	add r8, sp, #0
	add r4, sp, #0xc
	b _02246FB8
_02246FB0:
	mov r0, r4
	bl ov66_0223AD6C
_02246FB8:
	ldr sb, [sp, #0xc]
	cmp sb, r6
	beq _02246FE4
	mov r0, r8
	mov r2, r5
	add r1, sb, #0x1c
	bl ov66_02247024
	ldr r1, [sp]
	add r0, sb, #0x20
	cmp r1, r0
	beq _02246FB0
_02246FE4:
	ldr r1, [sp, #0xc]
	add r0, r7, #0x84
	cmp r1, r0
	addne sp, sp, #0x10
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	addne sp, sp, #0x10
	bxne lr
	add r1, sp, #0x34
	add r0, r7, #0x70
	bl ov66_022470A8
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_02246F78

	arm_func_start ov66_02247024
ov66_02247024: ; 0x02247024
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r2
	mov r6, r0
	ldr r2, [r5, #4]
	mov r0, r5
	mov r1, r4
	add r3, r5, #4
	bl ov66_02247078
	add r1, r5, #4
	cmp r0, r1
	beq _02247064
	ldr r2, [r4, #0]
	ldr r1, [r0, #0xc]
	cmp r2, r1
	bge _02247070
_02247064:
	add r0, r5, #4
	str r0, [r6, #0]
	ldmia sp!, {r4, r5, r6, pc}
_02247070:
	str r0, [r6, #0]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov66_02247024

	arm_func_start ov66_02247078
ov66_02247078: ; 0x02247078
	cmp r2, #0
	beq _022470A0
	ldr r1, [r1, #0]
_02247084:
	ldr r0, [r2, #0xc]
	cmp r0, r1
	movge r3, r2
	ldrge r2, [r2]
	ldrlt r2, [r2, #4]
	cmp r2, #0
	bne _02247084
_022470A0:
	mov r0, r3
	bx lr
	arm_func_end ov66_02247078

	arm_func_start ov66_022470A8
ov66_022470A8: ; 0x022470A8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r2, r1
	add r0, sp, #8
	mov r1, r4
	bl ov66_022470F8
	ldr r2, [sp, #8]
	add r0, r4, #4
	cmp r2, r0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	add r0, sp, #4
	mov r1, r4
	str r2, [sp]
	bl ov66_02247ED0
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_022470A8

	arm_func_start ov66_022470F8
ov66_022470F8: ; 0x022470F8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r2
	mov r6, r0
	ldr r2, [r5, #4]
	mov r0, r5
	mov r1, r4
	add r3, r5, #4
	bl ov66_0224714C
	add r1, r5, #4
	cmp r0, r1
	beq _02247138
	ldr r2, [r4, #0]
	ldr r1, [r0, #0xc]
	cmp r2, r1
	bge _02247144
_02247138:
	add r0, r5, #4
	str r0, [r6, #0]
	ldmia sp!, {r4, r5, r6, pc}
_02247144:
	str r0, [r6, #0]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov66_022470F8

	arm_func_start ov66_0224714C
ov66_0224714C: ; 0x0224714C
	cmp r2, #0
	beq _02247174
	ldr r1, [r1, #0]
_02247158:
	ldr r0, [r2, #0xc]
	cmp r0, r1
	movge r3, r2
	ldrge r2, [r2]
	ldrlt r2, [r2, #4]
	cmp r2, #0
	bne _02247158
_02247174:
	mov r0, r3
	bx lr
	arm_func_end ov66_0224714C

	arm_func_start ov66_0224717C
ov66_0224717C: ; 0x0224717C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r0, r1
	mov r4, r2
	bl ov66_02246928
	mvn r1, #0
	str r0, [sp, #4]
	cmp r0, r1
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, sp, #0
	mov r2, r4
	add r1, r5, #0x80
	bl ov66_02246B70
	ldr r2, [sp]
	add r0, r5, #0x84
	cmp r2, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	add r1, sp, #4
	add r0, r2, #0x1c
	bl ov66_02247208
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #4]
	mov r0, r5
	bl ov66_02246F78
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0224717C

	arm_func_start ov66_02247208
ov66_02247208: ; 0x02247208
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r2, r1
	add r0, sp, #8
	mov r1, r4
	bl ov66_02247024
	ldr r2, [sp, #8]
	add r0, r4, #4
	cmp r2, r0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	add r0, sp, #4
	mov r1, r4
	str r2, [sp]
	bl ov66_02247A4C
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_02247208

	arm_func_start ov66_02247258
ov66_02247258: ; 0x02247258
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x64
	mov r5, r0
	mov r4, r1
	add r0, sp, #0x3c
	mov r2, r4
	add r1, r5, #0x80
	bl ov66_02246B70
	ldr r1, [sp, #0x3c]
	add r0, r5, #0x84
	cmp r1, r0
	addeq sp, sp, #0x64
	mov r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	ldr r2, [r1, #0x24]
	add ip, r1, #0x20
	strb r0, [sp, #9]
	strb r0, [sp, #0xa]
	strb r0, [sp, #8]
	strb r0, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0x20]
	str ip, [r1]
	str r0, [r1, #4]
	ldr r3, [r1, #0]
	add r0, sp, #0x58
	add r1, sp, #0x14
	str r2, [sp, #0x14]
	str ip, [sp, #0x34]
	str ip, [sp, #0x24]
	str r2, [sp, #0x38]
	str r2, [sp, #0x28]
	str ip, [sp, #0x1c]
	ldmia r1, {r1, r2}
	bl ov66_022473BC
	mov r1, r4
	add r0, r5, #0x80
	bl ov66_022474A4
	ldr r0, _022473B8 ; =0x02259258
	ldr r4, [sp, #0x58]
	ldr lr, [r0, #8]
	ldr r2, [r0, #0xc]
	ldr r0, [sp, #0x5c]
	add r1, sp, #0x4c
	add r3, r4, r0, lsl #2
	add ip, sp, #0x40
	str lr, [sp, #0x4c]
	str r5, [sp, #0x54]
	str r2, [sp, #0x50]
	ldmia r1, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	cmp r4, r3
	movne r0, #1
	moveq r0, #0
	str r3, [sp, #0x2c]
	str r3, [sp, #0xc]
	str r4, [sp, #0x30]
	str r4, [sp, #0x10]
	cmp r0, #0
	beq _022473A4
	cmp r0, #0
	add r6, sp, #0x40
	beq _022473A4
	ldr r5, [sp, #0x10]
	ldr r4, [sp, #0xc]
_02247368:
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #0x48]
	tst r1, #1
	add r0, r0, r1, asr #1
	ldr r1, [r5, #0]
	ldreq r2, [r6]
	beq _02247390
	ldr r3, [r0, #0]
	ldr r2, [r6, #0]
	ldr r2, [r3, r2]
_02247390:
	blx r2
	add r5, r5, #4
	cmp r5, r4
	bne _02247368
	str r5, [sp, #0x10]
_022473A4:
	add r0, sp, #0x58
	bl ov66_0223B5D0
	mov r0, #1
	add sp, sp, #0x64
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_022473B8: .word Unk_ov66_02259258
	arm_func_end ov66_02247258

	arm_func_start ov66_022473BC
ov66_022473BC: ; 0x022473BC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20
	ldr r2, [sp, #0x4c]
	ldr r1, [sp, #0x50]
	ldr r4, [sp, #0x54]
	mov sl, r0
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	cmp r2, r4
	add r5, sp, #0x18
	mov r8, #0
	beq _02247408
_022473F0:
	mov r0, r5
	add r8, r8, #1
	bl ov66_0223AD6C
	ldr r0, [sp, #0x18]
	cmp r0, r4
	bne _022473F0
_02247408:
	ldr r1, [sl, #8]
	cmp r8, r1
	bls _02247438
	mov r2, #0
	mov r0, sl
	sub r1, r8, r1
	strb r2, [sp, #1]
	bl ov66_0224293C
	mov r2, r0
	mov r0, sl
	mov r1, r8
	bl ov66_022460E0
_02247438:
	ldr sb, [sl]
	ldr r1, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	ldr r7, [sp, #0x54]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	cmp r1, r7
	add fp, sp, #0x10
	beq _02247490
	mov r5, #0
_02247460:
	ldr r6, [sp, #0x10]
	strb r5, [sp]
	ldr r4, [r6, #0xc]
	mov r0, fp
	str r4, [sb], #4
	bl ov66_0223AD6C
	ldr r0, [sp, #0x10]
	cmp r0, r7
	bne _02247460
	str r4, [sp, #8]
	str r6, [sp, #4]
	str r6, [sp, #0xc]
_02247490:
	str r8, [sl, #4]
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_022473BC

	arm_func_start ov66_022474A4
ov66_022474A4: ; 0x022474A4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r2, r1
	add r0, sp, #8
	mov r1, r4
	bl ov66_02246B70
	ldr r2, [sp, #8]
	add r0, r4, #4
	cmp r2, r0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	add r0, sp, #4
	mov r1, r4
	str r2, [sp]
	bl ov66_022477EC
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_022474A4

	arm_func_start ov66_022474F4
ov66_022474F4: ; 0x022474F4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl ov66_02246928
	mvn r1, #0
	str r0, [sp, #4]
	cmp r0, r1
	addeq sp, sp, #8
	moveq r0, r1
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, sp, #0
	add r2, sp, #4
	add r1, r5, #0x70
	bl ov66_022470F8
	ldr r2, [sp]
	add r0, r5, #0x74
	cmp r2, r0
	addeq sp, sp, #8
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r1, r4
	add r0, r2, #0x10
	bl ov66_0223800C
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	mvnne r0, #0
	ldreq r0, [sp, #4]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_022474F4

	arm_func_start ov66_02247578
ov66_02247578: ; 0x02247578
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	add r0, sp, #0
	add r2, sp, #0x18
	add r1, r4, #0x70
	bl ov66_022470F8
	ldr r1, [sp]
	add r0, r4, #0x74
	cmp r1, r0
	bne _022475C0
	ldr r1, _022475D8 ; =0x022592A8
	mov r0, r5
	bl ov66_0223BA6C
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_022475C0:
	mov r0, r5
	add r1, r1, #0x10
	bl ov66_0223B938
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_022475D8: .word Unk_ov66_022592A8
	arm_func_end ov66_02247578

	arm_func_start ov66_022475DC
ov66_022475DC: ; 0x022475DC
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x3c
	mov r5, r0
	mov r4, r2
	bl ov66_022474F4
	str r0, [sp, #0xc]
	add r1, sp, #0xc
	add r0, r5, #0x70
	bl ov66_022470A8
	add r0, sp, #0x30
	mov r1, r4
	bl ov66_0223B938
	ldr r1, [sp, #0xc]
	add r0, sp, #0x20
	add r2, sp, #0x30
	bl ov66_0224767C
	mov r0, #0
	ldr r1, [sp, #0x20]
	strb r0, [sp]
	strb r0, [sp, #1]
	str r1, [sp, #0x10]
	add r0, sp, #0x14
	add r1, sp, #0x24
	bl ov66_0223B938
	add r1, r5, #0x70
	add r0, sp, #4
	add r2, sp, #0x10
	bl ov66_02247E38
	ldrb r4, [sp, #8]
	add r0, sp, #0x14
	bl ov66_0223BADC
	add r0, sp, #0x24
	bl ov66_0223BADC
	add r0, sp, #0x30
	bl ov66_0223BADC
	cmp r4, #0
	ldrne r0, [sp, #0xc]
	mvneq r0, #0
	add sp, sp, #0x3c
	ldmia sp!, {r4, r5, pc}
	arm_func_end ov66_022475DC

	arm_func_start ov66_0224767C
ov66_0224767C: ; 0x0224767C
	ldr ip, _0224768C ; =ov66_0223B938
	str r1, [r0, #0], #4
	mov r1, r2
	bx ip
	; .align 2, 0
_0224768C: .word ov66_0223B938
	arm_func_end ov66_0224767C

	arm_func_start ov66_02247690
ov66_02247690: ; 0x02247690
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r2, r1
	add r0, sp, #0
	add r1, r4, #0x80
	bl ov66_02246B70
	ldr r1, [sp]
	add r0, r4, #0x84
	cmp r1, r0
	moveq r0, #0
	ldrne r0, [r1, #0x18]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_02247690

	arm_func_start ov66_022476C8
ov66_022476C8: ; 0x022476C8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r2, r1
	add r0, sp, #0
	add r1, r4, #0x80
	bl ov66_02246B70
	ldr r1, [sp]
	add r0, r4, #0x84
	cmp r1, r0
	moveq r0, #0
	movne r0, #1
	strne r0, [r1, #0x18]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_022476C8

	arm_func_start ov66_02247704
ov66_02247704: ; 0x02247704
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r2, r1
	add r0, sp, #0
	add r1, r4, #0x80
	bl ov66_02246B70
	ldr r1, [sp]
	add r0, r4, #0x84
	cmp r1, r0
	mvneq r0, #0
	ldrne r0, [r1, #0x28]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_02247704

	arm_func_start ov66_0224773C
ov66_0224773C: ; 0x0224773C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	add ip, sp, #4
	mov r6, r2
	mov r7, r1
	mov r4, r0
	add r2, sp, #8
	add r3, sp, #5
	mov r0, r7
	mov r1, r6
	str ip, [sp]
	bl ov66_0224806C
	ldr r2, [sp, #8]
	mov r5, r0
	cmp r2, #0
	beq _0224779C
	mov r1, r6
	add r0, r2, #0xc
	bl ov66_0223BE90
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	cmp r0, #0
	beq _022477CC
_0224779C:
	str r6, [sp]
	ldrb r2, [sp, #5]
	ldrb r3, [sp, #4]
	mov r0, r7
	mov r1, r5
	bl ov66_0224786C
	ldr r1, _022477E8 ; =0x02259258
	str r0, [r4, #0]
	ldrb r0, [r1, #4]
	add sp, sp, #0xc
	strb r0, [r4, #4]
	ldmia sp!, {r4, r5, r6, r7, pc}
_022477CC:
	ldr r1, [sp, #8]
	ldr r0, _022477E8 ; =0x02259258
	str r1, [r4, #0]
	ldrb r0, [r0, #5]
	strb r0, [r4, #4]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_022477E8: .word Unk_ov66_02259258
	arm_func_end ov66_0224773C

	arm_func_start ov66_022477EC
ov66_022477EC: ; 0x022477EC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r4, [sp, #0x18]
	ldr r1, [r5, #0xc]
	mov r6, r0
	cmp r4, r1
	bne _0224781C
	add r0, sp, #0x18
	bl ov66_0223AD6C
	ldr r0, [sp, #0x18]
	str r0, [r5, #0xc]
_0224781C:
	ldr r1, [r5, #4]
	mov r0, r4
	bl ov66_0223AFE4
	str r0, [r6, #0]
	add r0, r4, #0x1c
	bl ov66_02247E18
	add r0, r4, #0xc
	bl ov66_0223BADC
	cmp r4, #0
	beq _02247854
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl DWC_Free
_02247854:
	ldr r0, [r5, #0]
	sub r0, r0, #1
	str r0, [r5, #0]
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_022477EC

	arm_func_start ov66_0224786C
ov66_0224786C: ; 0x0224786C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov sb, r0
	ldr r4, [sb]
	mvn r0, #0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	cmp r4, r0
	ldr r5, [sp, #0x30]
	bne _022478A4
	ldr r0, _02247990 ; =0x022592AC
	bl printf
	bl abort
_022478A4:
	mov r1, #0
	mov r0, #0x44
	strb r1, [sp, #1]
	bl ov66_02246290
	add r1, sb, #4
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	adds r4, r0, #0xc
	beq _02247924
	mov r0, r4
	mov r1, r5
	bl ov66_0223B938
	ldr r1, [r5, #0xc]
	mov r0, #0
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	add r0, r4, #0x14
	str r0, [r4, #0x18]
	add r0, r4, #0x10
	add r1, r5, #0x10
	bl ov66_02247ABC
	ldr r0, [r5, #0x1c]
	add r5, r5, #0x20
	str r0, [r4, #0x1c]
	add r4, r4, #0x20
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1}
	stmia r4, {r0, r1}
_02247924:
	ldr r4, [sp, #0x10]
	mov r0, #0
	str r0, [r4, #4]
	str r0, [sp, #0x10]
	str r0, [r4, #0]
	adds r0, r4, #8
	strne r8, [r0]
	cmp r7, #0
	strne r4, [r8]
	streq r4, [r8, #4]
	ldr r1, [sb]
	mov r0, r4
	add r1, r1, #1
	str r1, [sb]
	ldr r1, [sb, #4]
	bl ov66_0223ADD8
	cmp r6, #0
	ldr r1, [sp, #0x10]
	strne r4, [sb, #0xc]
	cmp r1, #0
	beq _02247984
	mov r0, #0
	mov r2, r0
	bl DWC_Free
_02247984:
	mov r0, r4
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02247990: .word Unk_ov66_022592AC
	arm_func_end ov66_0224786C

	arm_func_start ov66_02247994
ov66_02247994: ; 0x02247994
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _022479AC
	bl ov66_022481D0
_022479AC:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_02247994

	arm_func_start ov66_022479B4
ov66_022479B4: ; 0x022479B4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	add ip, sp, #4
	mov r5, r2
	mov r6, r1
	mov r4, r0
	add r2, sp, #8
	add r3, sp, #5
	mov r0, r6
	mov r1, r5
	str ip, [sp]
	bl ov66_022480F8
	ldr r3, [sp, #8]
	mov r1, r0
	cmp r3, #0
	beq _02247A04
	ldr r2, [r3, #0xc]
	ldr r0, [r5, #0]
	cmp r2, r0
	bge _02247A30
_02247A04:
	str r5, [sp]
	ldrb r2, [sp, #5]
	ldrb r3, [sp, #4]
	mov r0, r6
	bl ov66_02247D40
	ldr r1, _02247A48 ; =0x02259258
	str r0, [r4, #0]
	ldrb r0, [r1, #3]
	add sp, sp, #0xc
	strb r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, r6, pc}
_02247A30:
	ldr r0, _02247A48 ; =0x02259258
	str r3, [r4, #0]
	ldrb r0, [r0, #7]
	strb r0, [r4, #4]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_02247A48: .word Unk_ov66_02259258
	arm_func_end ov66_022479B4

	arm_func_start ov66_02247A4C
ov66_02247A4C: ; 0x02247A4C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r4, [sp, #0x18]
	ldr r1, [r5, #8]
	mov r6, r0
	cmp r4, r1
	bne _02247A7C
	add r0, sp, #0x18
	bl ov66_0223AD6C
	ldr r0, [sp, #0x18]
	str r0, [r5, #8]
_02247A7C:
	ldr r1, [r5, #4]
	mov r0, r4
	bl ov66_0223AFE4
	str r0, [r6, #0]
	cmp r4, #0
	beq _02247AA4
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl DWC_Free
_02247AA4:
	ldr r0, [r5, #0]
	sub r0, r0, #1
	str r0, [r5, #0]
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_02247A4C

	arm_func_start ov66_02247ABC
ov66_02247ABC: ; 0x02247ABC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r4, r1
	ldr r1, [r4, #4]
	mov r5, r0
	cmp r1, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r1, #0
	mov r0, #0x10
	strb r1, [sp, #1]
	bl ov66_02246290
	add r1, r5, #4
	str r1, [sp, #0xc]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0x10]
	adds r1, r0, #0xc
	ldr r0, [r4, #4]
	add r2, sp, #0x18
	ldrne r0, [r0, #0xc]
	mov r3, #0
	strne r0, [r1]
	ldr r1, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r3, [r1, #4]
	str r3, [r1, #0]
	ldr r0, [r1, #8]
	and r0, r0, #1
	orr r0, r2, r0
	str r0, [r1, #8]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #8]
	tst r0, #1
	movne r3, #1
	cmp r3, #0
	ldr r0, [r1, #8]
	mov r3, #0
	orrne r0, r0, #1
	biceq r0, r0, #1
	str r0, [r1, #8]
	ldr r1, [sp, #0x10]
	mov r0, #1
	str r1, [sp, #0x18]
	str r0, [sp, #0x14]
	str r1, [sp, #0x1c]
	ldr r2, [r4, #4]
	str r3, [sp, #0x10]
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _02247B9C
	add r0, sp, #0x14
	bl ov66_02247BF4
_02247B9C:
	ldr r2, [r4, #4]
	ldr r0, [r2, #0]
	cmp r0, #0
	beq _02247BBC
	ldr r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r3, #1
	bl ov66_02247BF4
_02247BBC:
	add r1, sp, #0x14
	mov r0, r5
	bl ov66_0224824C
	add r0, sp, #0x14
	bl ov66_0224822C
	ldr r1, [sp, #0x10]
	cmp r1, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	mov r2, r0
	bl DWC_Free
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_02247ABC

	arm_func_start ov66_02247BF4
ov66_02247BF4: ; 0x02247BF4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r7, r0
	mov ip, #0
	mov r0, #0x10
	mov r6, r1
	mov r5, r2
	mov r4, r3
	strb ip, [sp]
	bl ov66_02246290
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0]
	ldr r1, [r0, #8]
	add r2, r7, #4
	and r1, r1, #1
	orr r1, r6, r1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [r0, #8]
	cmp r4, #0
	beq _02247C84
	adds r1, r0, #0xc
	ldr r0, [r5, #0]
	ldrne r0, [r0, #0xc]
	strne r0, [r1]
	ldr r1, [sp, #0x10]
	mov r0, #0
	str r1, [r7, #8]
	str r1, [r6, #0]
	mov r6, r1
	str r0, [sp, #0x10]
	ldr r5, [r5, #0]
	b _02247CAC
_02247C84:
	adds r1, r0, #0xc
	ldr r0, [r5, #4]
	ldrne r0, [r0, #0xc]
	strne r0, [r1]
	ldr r1, [sp, #0x10]
	mov r0, #0
	str r1, [r6, #4]
	ldr r5, [r5, #4]
	mov r6, r1
	str r0, [sp, #0x10]
_02247CAC:
	ldr r0, [r5, #8]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldr r0, [r6, #8]
	orrne r0, r0, #1
	biceq r0, r0, #1
	str r0, [r6, #8]
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02247CFC
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, #0
	bl ov66_02247BF4
_02247CFC:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _02247D1C
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, #1
	bl ov66_02247BF4
_02247D1C:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r0, #0
	mov r2, r0
	bl DWC_Free
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end ov66_02247BF4

	arm_func_start ov66_02247D40
ov66_02247D40: ; 0x02247D40
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r8, r0
	ldr r4, [r8]
	mvn r0, #0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r4, r0
	bne _02247D74
	ldr r0, _02247E14 ; =0x022592AC
	bl printf
	bl abort
_02247D74:
	mov r1, #0
	mov r0, #0x10
	strb r1, [sp]
	bl ov66_02246290
	mov r4, r0
	add r0, r8, #4
	str r0, [sp, #0xc]
	adds r1, r4, #0xc
	ldrne r0, [sp, #0x30]
	str r4, [sp, #0x10]
	ldrne r0, [r0]
	str r4, [sp, #4]
	strne r0, [r1]
	mov r0, #0
	str r0, [r4, #4]
	str r0, [sp, #0x10]
	str r0, [r4, #0]
	adds r0, r4, #8
	strne r7, [r0]
	cmp r6, #0
	strne r4, [r7]
	streq r4, [r7, #4]
	ldr r1, [r8]
	mov r0, r4
	add r1, r1, #1
	str r1, [r8]
	ldr r1, [r8, #4]
	str r4, [sp, #8]
	bl ov66_0223ADD8
	cmp r5, #0
	ldr r1, [sp, #0x10]
	strne r4, [r8, #8]
	cmp r1, #0
	beq _02247E08
	mov r0, #0
	mov r2, r0
	bl DWC_Free
_02247E08:
	mov r0, r4
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02247E14: .word Unk_ov66_022592AC
	arm_func_end ov66_02247D40

	arm_func_start ov66_02247E18
ov66_02247E18: ; 0x02247E18
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02247E30
	bl ov66_022482D8
_02247E30:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_02247E18

	arm_func_start ov66_02247E38
ov66_02247E38: ; 0x02247E38
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	add ip, sp, #4
	mov r5, r2
	mov r6, r1
	mov r4, r0
	add r2, sp, #8
	add r3, sp, #5
	mov r0, r6
	mov r1, r5
	str ip, [sp]
	bl ov66_02248164
	ldr r3, [sp, #8]
	mov r1, r0
	cmp r3, #0
	beq _02247E88
	ldr r2, [r3, #0xc]
	ldr r0, [r5, #0]
	cmp r2, r0
	bge _02247EB4
_02247E88:
	str r5, [sp]
	ldrb r2, [sp, #5]
	ldrb r3, [sp, #4]
	mov r0, r6
	bl ov66_02247F48
	ldr r1, _02247ECC ; =0x02259258
	str r0, [r4, #0]
	ldrb r0, [r1]
	add sp, sp, #0xc
	strb r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, r6, pc}
_02247EB4:
	ldr r0, _02247ECC ; =0x02259258
	str r3, [r4, #0]
	ldrb r0, [r0, #1]
	strb r0, [r4, #4]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_02247ECC: .word Unk_ov66_02259258
	arm_func_end ov66_02247E38

	arm_func_start ov66_02247ED0
ov66_02247ED0: ; 0x02247ED0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r4, [sp, #0x18]
	ldr r1, [r5, #0xc]
	mov r6, r0
	cmp r4, r1
	bne _02247F00
	add r0, sp, #0x18
	bl ov66_0223AD6C
	ldr r0, [sp, #0x18]
	str r0, [r5, #0xc]
_02247F00:
	ldr r1, [r5, #4]
	mov r0, r4
	bl ov66_0223AFE4
	str r0, [r6, #0]
	add r0, r4, #0x10
	bl ov66_0223BADC
	cmp r4, #0
	beq _02247F30
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl DWC_Free
_02247F30:
	ldr r0, [r5, #0]
	sub r0, r0, #1
	str r0, [r5, #0]
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_02247ED0

	arm_func_start ov66_02247F48
ov66_02247F48: ; 0x02247F48
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r8, r0
	ldr r4, [r8]
	mvn r0, #0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r4, r0
	bne _02247F7C
	ldr r0, _02248028 ; =0x022592AC
	bl printf
	bl abort
_02247F7C:
	mov r1, #0
	mov r0, #0x1c
	strb r1, [sp]
	bl ov66_02246290
	add r1, r8, #4
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	adds r3, r0, #0xc
	beq _02247FBC
	ldr r1, [sp, #0x30]
	add r0, r3, #4
	ldr r2, [r1, #0], #4
	str r2, [r3, #0]
	bl ov66_0223B938
_02247FBC:
	ldr r4, [sp, #0x10]
	mov r0, #0
	str r0, [r4, #4]
	str r0, [sp, #0x10]
	str r0, [r4, #0]
	adds r0, r4, #8
	strne r7, [r0]
	cmp r6, #0
	strne r4, [r7]
	streq r4, [r7, #4]
	ldr r1, [r8]
	mov r0, r4
	add r1, r1, #1
	str r1, [r8]
	ldr r1, [r8, #4]
	bl ov66_0223ADD8
	cmp r5, #0
	ldr r1, [sp, #0x10]
	strne r4, [r8, #0xc]
	cmp r1, #0
	beq _0224801C
	mov r0, #0
	mov r2, r0
	bl DWC_Free
_0224801C:
	mov r0, r4
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02248028: .word Unk_ov66_022592AC
	arm_func_end ov66_02247F48

	arm_func_start ov66_0224802C
ov66_0224802C: ; 0x0224802C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02248044
	bl ov66_02248324
_02248044:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_0224802C

	arm_func_start ov66_0224804C
ov66_0224804C: ; 0x0224804C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02248064
	bl ov66_02248378
_02248064:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_0224804C

	arm_func_start ov66_0224806C
ov66_0224806C: ; 0x0224806C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r2
	mov r2, #0
	str r2, [sb]
	ldr r6, [r0, #4]
	mov r8, r3
	mov r2, #1
	ldr r7, [sp, #0x28]
	strb r2, [r8]
	mov sl, r1
	strb r2, [r7]
	cmp r6, #0
	add r5, r0, #4
	beq _022480F0
	mov fp, #0
	mov r4, r2
_022480AC:
	mov r0, sl
	add r1, r6, #0xc
	mov r5, r6
	bl ov66_0223BE90
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	cmp r0, #0
	ldrne r6, [r6]
	strneb r4, [r8]
	bne _022480E8
	str r6, [sb]
	ldr r6, [r6, #4]
	strb fp, [r8]
	strb fp, [r7]
_022480E8:
	cmp r6, #0
	bne _022480AC
_022480F0:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov66_0224806C

	arm_func_start ov66_022480F8
ov66_022480F8: ; 0x022480F8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	str r4, [r2, #0]
	ldr r6, [r0, #4]
	mov r4, #1
	ldr r7, [sp, #0x18]
	strb r4, [r3]
	strb r4, [r7]
	cmp r6, #0
	add r0, r0, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov ip, #0
	mov lr, r4
_0224812C:
	ldr r5, [r1, #0]
	ldr r4, [r6, #0xc]
	mov r0, r6
	cmp r5, r4
	ldrlt r6, [r6]
	strltb lr, [r3]
	blt _02248158
	str r6, [r2, #0]
	ldr r6, [r6, #4]
	strb ip, [r3]
	strb ip, [r7]
_02248158:
	cmp r6, #0
	bne _0224812C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov66_022480F8

	arm_func_start ov66_02248164
ov66_02248164: ; 0x02248164
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	str r4, [r2, #0]
	ldr r6, [r0, #4]
	mov r4, #1
	ldr r7, [sp, #0x18]
	strb r4, [r3]
	strb r4, [r7]
	cmp r6, #0
	add r0, r0, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov ip, #0
	mov lr, r4
_02248198:
	ldr r5, [r1, #0]
	ldr r4, [r6, #0xc]
	mov r0, r6
	cmp r5, r4
	ldrlt r6, [r6]
	strltb lr, [r3]
	blt _022481C4
	str r6, [r2, #0]
	ldr r6, [r6, #4]
	strb ip, [r3]
	strb ip, [r7]
_022481C4:
	cmp r6, #0
	bne _02248198
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov66_02248164

	arm_func_start ov66_022481D0
ov66_022481D0: ; 0x022481D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, [r4, #0]
	mov r5, r0
	cmp r1, #0
	beq _022481EC
	bl ov66_022481D0
_022481EC:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02248200
	mov r0, r5
	bl ov66_022481D0
_02248200:
	add r0, r4, #0x1c
	bl ov66_02247E18
	add r0, r4, #0xc
	bl ov66_0223BADC
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl DWC_Free
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_022481D0

	arm_func_start ov66_0224822C
ov66_0224822C: ; 0x0224822C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02248244
	bl ov66_022482D8
_02248244:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_0224822C

	arm_func_start ov66_0224824C
ov66_0224824C: ; 0x0224824C
	cmp r0, r1
	bxeq lr
	ldr r3, [r0, #0]
	ldr r2, [r1, #0]
	str r2, [r0, #0]
	str r3, [r1, #0]
	ldr r3, [r0, #4]
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	str r3, [r1, #4]
	ldr r3, [r0, #8]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	str r3, [r1, #8]
	ldr ip, [r0, #4]
	cmp ip, #0
	addeq r2, r0, #4
	streq r2, [r0, #8]
	beq _022482AC
	ldr r2, [ip, #8]
	add r3, r0, #4
	and r0, r2, #1
	orr r0, r3, r0
	str r0, [ip, #8]
_022482AC:
	ldr r2, [r1, #4]
	cmp r2, #0
	addeq r0, r1, #4
	streq r0, [r1, #8]
	bxeq lr
	ldr r0, [r2, #8]
	add r1, r1, #4
	and r0, r0, #1
	orr r0, r1, r0
	str r0, [r2, #8]
	bx lr
	arm_func_end ov66_0224824C

	arm_func_start ov66_022482D8
ov66_022482D8: ; 0x022482D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, [r4, #0]
	mov r5, r0
	cmp r1, #0
	beq _022482F4
	bl ov66_022482D8
_022482F4:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02248308
	mov r0, r5
	bl ov66_022482D8
_02248308:
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl DWC_Free
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_022482D8

	arm_func_start ov66_02248324
ov66_02248324: ; 0x02248324
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, [r4, #0]
	mov r5, r0
	cmp r1, #0
	beq _02248340
	bl ov66_02248324
_02248340:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02248354
	mov r0, r5
	bl ov66_02248324
_02248354:
	add r0, r4, #0x10
	bl ov66_0223BADC
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl DWC_Free
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_02248324

	arm_func_start ov66_02248378
ov66_02248378: ; 0x02248378
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, [r4, #0]
	mov r5, r0
	cmp r1, #0
	beq _02248394
	bl ov66_02248378
_02248394:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _022483A8
	mov r0, r5
	bl ov66_02248378
_022483A8:
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl DWC_Free
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_02248378

	.rodata


	.global Unk_ov66_02258CAC
Unk_ov66_02258CAC: ; 0x02258CAC
	.incbin "incbin/overlay66_rodata.bin", 0x394, 0x39C - 0x394

	.global Unk_ov66_02258CB4
Unk_ov66_02258CB4: ; 0x02258CB4
	.incbin "incbin/overlay66_rodata.bin", 0x39C, 0x30


	.data


	.global Unk_ov66_02259258
Unk_ov66_02259258: ; 0x02259258
	.incbin "incbin/overlay66_data.bin", 0x538, 0x539 - 0x538

	.global Unk_ov66_02259259
Unk_ov66_02259259: ; 0x02259259
	.incbin "incbin/overlay66_data.bin", 0x539, 0x53A - 0x539

	.global Unk_ov66_0225925A
Unk_ov66_0225925A: ; 0x0225925A
	.incbin "incbin/overlay66_data.bin", 0x53A, 0x53B - 0x53A

	.global Unk_ov66_0225925B
Unk_ov66_0225925B: ; 0x0225925B
	.incbin "incbin/overlay66_data.bin", 0x53B, 0x53C - 0x53B

	.global Unk_ov66_0225925C
Unk_ov66_0225925C: ; 0x0225925C
	.incbin "incbin/overlay66_data.bin", 0x53C, 0x53D - 0x53C

	.global Unk_ov66_0225925D
Unk_ov66_0225925D: ; 0x0225925D
	.incbin "incbin/overlay66_data.bin", 0x53D, 0x53E - 0x53D

	.global Unk_ov66_0225925E
Unk_ov66_0225925E: ; 0x0225925E
	.incbin "incbin/overlay66_data.bin", 0x53E, 0x53F - 0x53E

	.global Unk_ov66_0225925F
Unk_ov66_0225925F: ; 0x0225925F
	.incbin "incbin/overlay66_data.bin", 0x53F, 0x540 - 0x53F

	.global Unk_ov66_02259260
Unk_ov66_02259260: ; 0x02259260
	.incbin "incbin/overlay66_data.bin", 0x540, 0x548 - 0x540

	.global Unk_ov66_02259268
Unk_ov66_02259268: ; 0x02259268
	.incbin "incbin/overlay66_data.bin", 0x548, 0x54C - 0x548

	.global Unk_ov66_0225926C
Unk_ov66_0225926C: ; 0x0225926C
	.incbin "incbin/overlay66_data.bin", 0x54C, 0x550 - 0x54C

	.global Unk_ov66_02259270
Unk_ov66_02259270: ; 0x02259270
	.incbin "incbin/overlay66_data.bin", 0x550, 0x554 - 0x550

	.global Unk_ov66_02259274
Unk_ov66_02259274: ; 0x02259274
	.incbin "incbin/overlay66_data.bin", 0x554, 0x558 - 0x554

	.global Unk_ov66_02259278
Unk_ov66_02259278: ; 0x02259278
	.incbin "incbin/overlay66_data.bin", 0x558, 0x55C - 0x558

	.global Unk_ov66_0225927C
Unk_ov66_0225927C: ; 0x0225927C
	.incbin "incbin/overlay66_data.bin", 0x55C, 0x560 - 0x55C

	.global Unk_ov66_02259280
Unk_ov66_02259280: ; 0x02259280
	.incbin "incbin/overlay66_data.bin", 0x560, 0x564 - 0x560

	.global Unk_ov66_02259284
Unk_ov66_02259284: ; 0x02259284
	.incbin "incbin/overlay66_data.bin", 0x564, 0x568 - 0x564

	.global Unk_ov66_02259288
Unk_ov66_02259288: ; 0x02259288
	.incbin "incbin/overlay66_data.bin", 0x568, 0x56C - 0x568

	.global Unk_ov66_0225928C
Unk_ov66_0225928C: ; 0x0225928C
	.incbin "incbin/overlay66_data.bin", 0x56C, 0x570 - 0x56C

	.global Unk_ov66_02259290
Unk_ov66_02259290: ; 0x02259290
	.incbin "incbin/overlay66_data.bin", 0x570, 0x574 - 0x570

	.global Unk_ov66_02259294
Unk_ov66_02259294: ; 0x02259294
	.incbin "incbin/overlay66_data.bin", 0x574, 0x578 - 0x574

	.global Unk_ov66_02259298
Unk_ov66_02259298: ; 0x02259298
	.incbin "incbin/overlay66_data.bin", 0x578, 0x57C - 0x578

	.global Unk_ov66_0225929C
Unk_ov66_0225929C: ; 0x0225929C
	.incbin "incbin/overlay66_data.bin", 0x57C, 0x584 - 0x57C

	.global Unk_ov66_022592A4
Unk_ov66_022592A4: ; 0x022592A4
	.incbin "incbin/overlay66_data.bin", 0x584, 0x588 - 0x584

	.global Unk_ov66_022592A8
Unk_ov66_022592A8: ; 0x022592A8
	.incbin "incbin/overlay66_data.bin", 0x588, 0x58C - 0x588

	.global Unk_ov66_022592AC
Unk_ov66_022592AC: ; 0x022592AC
	.incbin "incbin/overlay66_data.bin", 0x58C, 0x1A

