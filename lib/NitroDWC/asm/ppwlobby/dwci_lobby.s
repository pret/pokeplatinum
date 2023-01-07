	.include "macros/function.inc"
	.include "include/dwci_lobby.inc"

	

	.text


	arm_func_start ov66_02242C08
ov66_02242C08: ; 0x02242C08
	ldr r0, _02242C20 ; =0x0225B6DC
	ldr r0, [r0, #0]
	cmp r0, #0
	ldrne r0, [r0, #4]
	cmpne r0, #5
	bx lr
	; .align 2, 0
_02242C20: .word Unk_ov66_0225B6DC
	arm_func_end ov66_02242C08

	arm_func_start ov66_02242C24
ov66_02242C24: ; 0x02242C24
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _02242CDC ; =0x0225B6DC
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _02242C4C
	ldr r0, [r3, #4]
	cmp r0, #5
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
_02242C4C:
	mov r2, #0
	add r1, sp, #0
	add r0, r3, #0x9c
	str r2, [sp]
	bl ov66_02236CA0
	ldr r0, _02242CDC ; =0x0225B6DC
	ldr r4, [r0, #0]
	ldr r1, [r4, #4]
	cmp r1, #4
	bne _02242CB8
	cmp r4, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	beq _02242CA4
	mov r0, r4
	bl ov66_02246754
	cmp r4, #0
	beq _02242CA4
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl DWC_Free
_02242CA4:
	ldr r0, _02242CDC ; =0x0225B6DC
	mov r1, #0
	str r1, [r0, #0]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02242CB8:
	mov r1, #3
	str r1, [r4, #0x58]
	mov r1, #5
	str r1, [r4, #4]
	ldr r0, [r0, #0]
	mov r1, #1
	str r1, [r0, #0x60]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02242CDC: .word Unk_ov66_0225B6DC
	arm_func_end ov66_02242C24

	arm_func_start ov66_02242CE0
ov66_02242CE0: ; 0x02242CE0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x78
	ldr r0, _02242EF8 ; =0x0225B6DC
	mov r4, r1
	ldr r0, [r0, #0]
	mov r5, r2
	mov r7, r3
	cmp r0, #0
	beq _02242D14
	ldr r0, [r0, #4]
	cmp r0, #5
	addeq sp, sp, #0x78
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_02242D14:
	ldr r6, _02242EFC ; =0x022591C0
	add r0, sp, #0x18
	mov r1, r4
	bl ov66_0223BA6C
	add r0, sp, #0x24
	mov r1, r6
	bl ov66_0223BA6C
	add r0, sp, #0x18
	add r1, sp, #0x24
	mov r2, #6
	bl ov66_0224154C
	mov r6, r0
	add r0, sp, #0x24
	bl ov66_0223BADC
	add r0, sp, #0x18
	bl ov66_0223BADC
	cmp r6, #0
	bne _02242E80
	ldr r4, _02242F00 ; =0x022591C8
	add r0, sp, #0
	mov r1, r5
	bl ov66_0223BA6C
	add r0, sp, #0xc
	mov r1, r4
	bl ov66_0223BA6C
	add r0, sp, #0
	add r1, sp, #0xc
	mov r2, #0xc
	bl ov66_0224154C
	mov r4, r0
	add r0, sp, #0xc
	bl ov66_0223BADC
	add r0, sp, #0
	bl ov66_0223BADC
	cmp r4, #0
	addne sp, sp, #0x78
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, sp, #0x60
	mov r1, r5
	bl ov66_0223BA6C
	ldr r1, _02242F04 ; =0x022591D8
	add r0, sp, #0x54
	bl ov66_0223BA6C
	add r0, sp, #0x6c
	add r1, sp, #0x60
	add r2, sp, #0x54
	mov r3, #0
	bl ov66_02242F08
	add r0, sp, #0x54
	bl ov66_0223BADC
	add r0, sp, #0x60
	bl ov66_0223BADC
	ldr r0, [sp, #0x70]
	cmp r0, #0
	bne _02242E00
	add r0, sp, #0x6c
	bl ov66_0223B578
	add sp, sp, #0x78
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02242E00:
	ldr r1, [sp, #0x70]
	mov r0, #0xc
	sub r1, r1, #1
	mul r2, r1, r0
	ldr r1, [sp, #0x6c]
	ldr r0, [r1, r2]
	add r1, r1, r2
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, r1, #1
	ldrne r0, [r1, #8]
	bl atoi
	movs r4, r0
	bne _02242E48
	add r0, sp, #0x6c
	bl ov66_0223B578
	add sp, sp, #0x78
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02242E48:
	ldr r0, _02242EF8 ; =0x0225B6DC
	add r3, sp, #0x48
	ldr r0, [r0, #0]
	add r0, r0, #0x64
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [sp, #0x90]
	ldr r2, [sp, #0x4c]
	mov r0, r4
	blx r2
	add r0, sp, #0x6c
	bl ov66_0223B578
	add sp, sp, #0x78
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02242E80:
	cmp r7, #3
	addne sp, sp, #0x78
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, sp, #0x3c
	mov r1, r4
	bl ov66_0223BA6C
	ldr r0, _02242EF8 ; =0x0225B6DC
	add r1, sp, #0x3c
	ldr r0, [r0, #0]
	bl ov66_022474F4
	mov r4, r0
	add r0, sp, #0x3c
	bl ov66_0223BADC
	mvn r0, #0
	cmp r4, r0
	addeq sp, sp, #0x78
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02242EF8 ; =0x0225B6DC
	add r3, sp, #0x30
	ldr r0, [r0, #0]
	add r0, r0, #0x64
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r2, [sp, #0x90]
	ldr r3, [sp, #0x30]
	mov r0, r4
	mov r1, r5
	blx r3
	add sp, sp, #0x78
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02242EF8: .word Unk_ov66_0225B6DC
_02242EFC: .word Unk_ov66_022591C0
_02242F00: .word Unk_ov66_022591C8
_02242F04: .word Unk_ov66_022591D8
	arm_func_end ov66_02242CE0

	arm_func_start ov66_02242F08
ov66_02242F08: ; 0x02242F08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x30
	mov sl, r0
	mov r4, #0
	str r4, [sl]
	str r4, [sl, #4]
	add r0, sp, #0x24
	str r2, [sp]
	str r3, [sp, #4]
	str r4, [sl, #8]
	mov r8, #1
	bl ov66_0223B938
	sub r5, sp, #4
	add r6, sp, #0x24
	add r7, sp, #0x18
	add fp, sp, #0xc
	mvn r4, #0
	b _0224300C
_02242F50:
	cmp sb, #0
	beq _02242FE4
	mov r0, r7
	mov r1, r6
	mov r2, #0
	mov r3, sb
	bl ov66_0223A594
	mov r1, #0
	add r0, sp, #0xb
	strb r1, [r0]
	ldr r1, [sl, #4]
	ldr r0, [sl, #8]
	cmp r1, r0
	bhs _02242FB4
	mov r0, #0xc
	mul r0, r1, r0
	ldr r1, [sl]
	adds r0, r1, r0
	beq _02242FA4
	mov r1, r7
	bl ov66_0223B938
_02242FA4:
	ldr r0, [sl, #4]
	add r0, r0, #1
	str r0, [sl, #4]
	b _02242FD8
_02242FB4:
	mov r0, #0
	mov r2, #0
	strb r0, [sp, #0xa]
	mov r2, r2
	strb r2, [r5]
	ldr r2, [r5, #0]
	mov r0, sl
	mov r1, r7
	bl ov66_0223B548
_02242FD8:
	mov r0, r7
	bl ov66_0223BADC
	add r8, r8, #1
_02242FE4:
	add r2, sb, #1
	mov r0, fp
	mov r1, r6
	mov r3, r4
	bl ov66_0223A594
	mov r0, r6
	mov r1, fp
	bl ov66_0223BC5C
	mov r0, fp
	bl ov66_0223BADC
_0224300C:
	ldr r0, [sp, #4]
	cmp r8, r0
	beq _02243034
	ldr r1, [sp]
	mov r0, r6
	mov r2, #0
	bl ov66_02246150
	mov sb, r0
	cmp sb, r4
	bne _02242F50
_02243034:
	ldr r0, [sp, #0x24]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldrne r0, [sp, #0x28]
	bne _02243054
	ldrb r0, [sp, #0x24]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x19
_02243054:
	cmp r0, #0
	beq _022430C0
	mov r2, #0
	strb r2, [sp, #9]
	ldr r1, [sl, #4]
	ldr r0, [sl, #8]
	cmp r1, r0
	bhs _022430A0
	mov r0, #0xc
	mul r0, r1, r0
	ldr r1, [sl]
	adds r0, r1, r0
	beq _02243090
	add r1, sp, #0x24
	bl ov66_0223B938
_02243090:
	ldr r0, [sl, #4]
	add r0, r0, #1
	str r0, [sl, #4]
	b _022430C0
_022430A0:
	strb r2, [sp, #8]
	sub r1, sp, #4
	and r0, r2, #0xff
	strb r0, [r1]
	ldr r2, [r1, #0]
	add r1, sp, #0x24
	mov r0, sl
	bl ov66_0223B548
_022430C0:
	add r0, sp, #0x24
	bl ov66_0223BADC
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov66_02242F08

	arm_func_start ov66_022430D0
ov66_022430D0: ; 0x022430D0
	ldr r0, _022430E8 ; =0x0225B6DC
	ldr r0, [r0, #0]
	cmp r0, #0
	ldrne r0, [r0, #4]
	cmpne r0, #5
	bx lr
	; .align 2, 0
_022430E8: .word Unk_ov66_0225B6DC
	arm_func_end ov66_022430D0

	arm_func_start ov66_022430EC
ov66_022430EC: ; 0x022430EC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	ldr r0, _022431DC ; =0x0225B6DC
	mov r7, r1
	ldr r0, [r0, #0]
	mov r6, r3
	cmp r0, #0
	beq _0224311C
	ldr r0, [r0, #4]
	cmp r0, #5
	addeq sp, sp, #0x30
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_0224311C:
	ldr r0, [sp, #0x48]
	cmp r0, #3
	addne sp, sp, #0x30
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, sp, #0x24
	mov r1, r2
	bl ov66_0223BA6C
	ldr r0, _022431DC ; =0x0225B6DC
	add r1, sp, #0x24
	ldr r0, [r0, #0]
	bl ov66_022474F4
	mov r4, r0
	add r0, sp, #0x24
	bl ov66_0223BADC
	add r0, sp, #0x18
	mov r1, r7
	bl ov66_0223BA6C
	ldr r0, _022431DC ; =0x0225B6DC
	add r1, sp, #0x18
	ldr r0, [r0, #0]
	bl ov66_02246B38
	mov r5, r0
	add r0, sp, #0x18
	bl ov66_0223BADC
	mov r1, r7
	add r0, sp, #0xc
	bl ov66_0223BA6C
	ldr r1, _022431DC ; =0x0225B6DC
	add r0, sp, #0
	ldr r1, [r1, #0]
	add r2, sp, #0xc
	bl ov66_022467D4
	ldr r0, [sp]
	ldr r3, [r5, #0x14]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #1
	ldrne r0, [sp, #8]
	ldr r5, [r5, #8]
	mov r1, r4
	mov r2, r6
	blx r5
	add r0, sp, #0
	bl ov66_0223BADC
	add r0, sp, #0xc
	bl ov66_0223BADC
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022431DC: .word Unk_ov66_0225B6DC
	arm_func_end ov66_022430EC

	arm_func_start ov66_022431E0
ov66_022431E0: ; 0x022431E0
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, _02243230 ; =0x0225B6DC
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02243208
	ldr r0, [r0, #4]
	cmp r0, #5
	addeq sp, sp, #0xc
	ldmeqia sp!, {pc}
_02243208:
	add r0, sp, #0
	bl ov66_0223BA6C
	ldr r0, _02243230 ; =0x0225B6DC
	add r1, sp, #0
	ldr r0, [r0, #0]
	bl ov66_02247258
	add r0, sp, #0
	bl ov66_0223BADC
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_02243230: .word Unk_ov66_0225B6DC
	arm_func_end ov66_022431E0

	arm_func_start ov66_02243234
ov66_02243234: ; 0x02243234
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0xa8
	ldr r0, _022434CC ; =0x0225B6DC
	mov r5, r1
	ldr r0, [r0, #0]
	mov r4, r2
	cmp r0, #0
	beq _02243264
	ldr r0, [r0, #4]
	cmp r0, #5
	addeq sp, sp, #0xa8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_02243264:
	add r0, sp, #0x90
	mov r1, r5
	bl ov66_0223BA6C
	ldr r0, _022434CC ; =0x0225B6DC
	add r1, sp, #0x90
	ldr r0, [r0, #0]
	bl ov66_02247704
	mov r6, r0
	add r0, sp, #0x90
	bl ov66_0223BADC
	cmp r6, #0
	beq _022432B4
	ldr r0, _022434CC ; =0x0225B6DC
	mov r1, r5
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov66_02254E58
	cmp r0, r6
	addgt sp, sp, #0xa8
	ldmgtia sp!, {r3, r4, r5, r6, r7, pc}
_022432B4:
	add r0, sp, #0x84
	mov r1, r4
	bl ov66_0223BA6C
	add r0, sp, #0x84
	bl ov66_02246928
	ldr r1, _022434CC ; =0x0225B6DC
	mov r2, r0
	ldr r1, [r1, #0]
	add r0, sp, #0x9c
	bl ov66_02247578
	add r0, sp, #0x84
	bl ov66_0223BADC
	add r0, sp, #0x78
	mov r1, r5
	bl ov66_0223BA6C
	ldr r0, _022434CC ; =0x0225B6DC
	add r1, sp, #0x9c
	ldr r0, [r0, #0]
	add r2, sp, #0x78
	bl ov66_0224717C
	mov r6, r0
	add r0, sp, #0x78
	bl ov66_0223BADC
	cmp r6, #0
	beq _022433B4
	add r0, sp, #0x6c
	mov r1, r5
	bl ov66_0223BA6C
	ldr r0, _022434CC ; =0x0225B6DC
	add r1, sp, #0x6c
	ldr r0, [r0, #0]
	bl ov66_02246B38
	mov r6, r0
	add r0, sp, #0x6c
	bl ov66_0223BADC
	add r0, sp, #0x60
	mov r1, r5
	bl ov66_0223BA6C
	ldr r1, _022434CC ; =0x0225B6DC
	add r0, sp, #0x54
	ldr r1, [r1, #0]
	add r2, sp, #0x60
	bl ov66_022467D4
	add r0, sp, #0x48
	mov r1, r4
	bl ov66_0223BA6C
	ldr r1, [sp, #0x54]
	add r0, sp, #0x48
	mov r1, r1, lsl #0x1f
	movs r1, r1, lsr #0x1f
	addeq r7, sp, #0x55
	ldrne r7, [sp, #0x5c]
	bl ov66_02246928
	mov r1, r0
	ldr r2, [r6, #0x14]
	ldr r3, [r6, #4]
	mov r0, r7
	blx r3
	add r0, sp, #0x48
	bl ov66_0223BADC
	add r0, sp, #0x54
	bl ov66_0223BADC
	add r0, sp, #0x60
	bl ov66_0223BADC
_022433B4:
	add r0, sp, #0x3c
	mov r1, r4
	bl ov66_0223BA6C
	add r0, sp, #0x30
	mov r1, r5
	bl ov66_0223BA6C
	ldr r0, _022434CC ; =0x0225B6DC
	add r1, sp, #0x3c
	ldr r0, [r0, #0]
	add r2, sp, #0x30
	bl ov66_02246C2C
	mov r4, r0
	add r0, sp, #0x30
	bl ov66_0223BADC
	add r0, sp, #0x3c
	bl ov66_0223BADC
	mvn r0, #0
	cmp r4, r0
	bne _02243410
	add r0, sp, #0x9c
	bl ov66_0223BADC
	add sp, sp, #0xa8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02243410:
	add r0, sp, #0x24
	mov r1, r5
	bl ov66_0223BA6C
	ldr r0, _022434CC ; =0x0225B6DC
	add r1, sp, #0x24
	ldr r0, [r0, #0]
	bl ov66_02247690
	mov r6, r0
	add r0, sp, #0x24
	bl ov66_0223BADC
	cmp r6, #0
	beq _022434BC
	add r0, sp, #0x18
	mov r1, r5
	bl ov66_0223BA6C
	ldr r0, _022434CC ; =0x0225B6DC
	add r1, sp, #0x18
	ldr r0, [r0, #0]
	bl ov66_02246B38
	mov r6, r0
	add r0, sp, #0x18
	bl ov66_0223BADC
	add r0, sp, #0xc
	mov r1, r5
	bl ov66_0223BA6C
	ldr r1, _022434CC ; =0x0225B6DC
	add r0, sp, #0
	ldr r1, [r1, #0]
	add r2, sp, #0xc
	bl ov66_022467D4
	ldr r0, [sp]
	ldr r2, [r6, #0x14]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #1
	ldrne r0, [sp, #8]
	ldr r3, [r6, #0]
	mov r1, r4
	blx r3
	add r0, sp, #0
	bl ov66_0223BADC
	add r0, sp, #0xc
	bl ov66_0223BADC
_022434BC:
	add r0, sp, #0x9c
	bl ov66_0223BADC
	add sp, sp, #0xa8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022434CC: .word Unk_ov66_0225B6DC
	arm_func_end ov66_02243234

	arm_func_start ov66_022434D0
ov66_022434D0: ; 0x022434D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x48
	ldr r0, _022435F8 ; =0x0225B6DC
	mov r7, r1
	ldr r0, [r0, #0]
	mov r6, r2
	cmp r0, #0
	beq _02243500
	ldr r0, [r0, #4]
	cmp r0, #5
	addeq sp, sp, #0x48
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_02243500:
	add r0, sp, #0x3c
	mov r1, r6
	bl ov66_0223BA6C
	ldr r0, _022435F8 ; =0x0225B6DC
	add r1, sp, #0x3c
	ldr r0, [r0, #0]
	bl ov66_022474F4
	mov r4, r0
	add r0, sp, #0x3c
	bl ov66_0223BADC
	mvn r0, #0
	cmp r4, r0
	addeq sp, sp, #0x48
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, sp, #0x30
	mov r1, r7
	bl ov66_0223BA6C
	ldr r0, _022435F8 ; =0x0225B6DC
	add r1, sp, #0x30
	ldr r0, [r0, #0]
	bl ov66_02246B38
	mov r5, r0
	add r0, sp, #0x30
	bl ov66_0223BADC
	add r0, sp, #0x24
	mov r1, r7
	bl ov66_0223BA6C
	ldr r1, _022435F8 ; =0x0225B6DC
	add r0, sp, #0x18
	ldr r1, [r1, #0]
	add r2, sp, #0x24
	bl ov66_022467D4
	ldr r0, [sp, #0x18]
	ldr r2, [r5, #0x14]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #0x19
	ldrne r0, [sp, #0x20]
	ldr r3, [r5, #4]
	mov r1, r4
	blx r3
	add r0, sp, #0x18
	bl ov66_0223BADC
	add r0, sp, #0x24
	bl ov66_0223BADC
	add r0, sp, #0xc
	mov r1, r6
	bl ov66_0223BA6C
	add r0, sp, #0
	mov r1, r7
	bl ov66_0223BA6C
	ldr r0, _022435F8 ; =0x0225B6DC
	add r1, sp, #0xc
	ldr r0, [r0, #0]
	add r2, sp, #0
	bl ov66_0224717C
	add r0, sp, #0
	bl ov66_0223BADC
	add r0, sp, #0xc
	bl ov66_0223BADC
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022435F8: .word Unk_ov66_0225B6DC
	arm_func_end ov66_022434D0

	arm_func_start ov66_022435FC
ov66_022435FC: ; 0x022435FC
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	ldr r0, _0224366C ; =0x0225B6DC
	mov r4, r3
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02243628
	ldr r0, [r0, #4]
	cmp r0, #5
	addeq sp, sp, #0x18
	ldmeqia sp!, {r4, pc}
_02243628:
	add r0, sp, #0xc
	mov r1, r2
	bl ov66_0223BA6C
	add r0, sp, #0
	mov r1, r4
	bl ov66_0223BA6C
	ldr r0, _0224366C ; =0x0225B6DC
	add r1, sp, #0xc
	ldr r0, [r0, #0]
	add r2, sp, #0
	bl ov66_022475DC
	add r0, sp, #0
	bl ov66_0223BADC
	add r0, sp, #0xc
	bl ov66_0223BADC
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0224366C: .word Unk_ov66_0225B6DC
	arm_func_end ov66_022435FC

	arm_func_start ov66_02243670
ov66_02243670: ; 0x02243670
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, _0224372C ; =0x0225B6DC
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02243698
	ldr r0, [r0, #4]
	cmp r0, #5
	addeq sp, sp, #0xc
	ldmeqia sp!, {pc}
_02243698:
	mov r2, #0
	add r1, sp, #0
	mov r0, r2
_022436A4:
	str r0, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #3
	blo _022436A4
	cmp r3, #3
	addls pc, pc, r3, lsl #2
	b _02243710
_022436C0: ; jump table
	b _022436D0 ; case 0
	b _022436E0 ; case 1
	b _022436F0 ; case 2
	b _02243700 ; case 3
_022436D0:
	ldr r1, _02243730 ; =0x022591DC
	add r0, sp, #0
	bl ov66_022419DC
	b _0224371C
_022436E0:
	ldr r1, _02243734 ; =0x022591E4
	add r0, sp, #0
	bl ov66_022419DC
	b _0224371C
_022436F0:
	ldr r1, _02243738 ; =0x022591EC
	add r0, sp, #0
	bl ov66_022419DC
	b _0224371C
_02243700:
	ldr r1, _0224373C ; =0x022591F0
	add r0, sp, #0
	bl ov66_022419DC
	b _0224371C
_02243710:
	ldr r1, _02243740 ; =0x022591FC
	add r0, sp, #0
	bl ov66_022419DC
_0224371C:
	add r0, sp, #0
	bl ov66_0223BADC
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_0224372C: .word Unk_ov66_0225B6DC
_02243730: .word Unk_ov66_022591DC
_02243734: .word Unk_ov66_022591E4
_02243738: .word Unk_ov66_022591EC
_0224373C: .word Unk_ov66_022591F0
_02243740: .word Unk_ov66_022591FC
	arm_func_end ov66_02243670

	arm_func_start ov66_02243744
ov66_02243744: ; 0x02243744
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	ldr r0, _022437F8 ; =0x0225B6DC
	mov r6, r1
	ldr r0, [r0, #0]
	mov r4, r2
	cmp r0, #0
	beq _02243774
	ldr r0, [r0, #4]
	cmp r0, #5
	addeq sp, sp, #0x24
	ldmeqia sp!, {r3, r4, r5, r6, pc}
_02243774:
	add r0, sp, #0x18
	mov r1, r6
	bl ov66_0223BA6C
	ldr r0, _022437F8 ; =0x0225B6DC
	add r1, sp, #0x18
	ldr r0, [r0, #0]
	bl ov66_02246B38
	mov r5, r0
	add r0, sp, #0x18
	bl ov66_0223BADC
	add r0, sp, #0xc
	mov r1, r6
	bl ov66_0223BA6C
	ldr r1, _022437F8 ; =0x0225B6DC
	add r0, sp, #0
	ldr r1, [r1, #0]
	add r2, sp, #0xc
	bl ov66_022467D4
	ldr r0, [sp]
	ldr r2, [r5, #0x14]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #1
	ldrne r0, [sp, #8]
	ldr r3, [r5, #0x10]
	mov r1, r4
	blx r3
	add r0, sp, #0
	bl ov66_0223BADC
	add r0, sp, #0xc
	bl ov66_0223BADC
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_022437F8: .word Unk_ov66_0225B6DC
	arm_func_end ov66_02243744

	arm_func_start ov66_022437FC
ov66_022437FC: ; 0x022437FC
	ldr r0, _02243814 ; =0x0225B6DC
	ldr r0, [r0, #0]
	cmp r0, #0
	ldrne r0, [r0, #4]
	cmpne r0, #5
	bx lr
	; .align 2, 0
_02243814: .word Unk_ov66_0225B6DC
	arm_func_end ov66_022437FC

	arm_func_start ov66_02243818
ov66_02243818: ; 0x02243818
	ldr r0, _02243830 ; =0x0225B6DC
	ldr r0, [r0, #0]
	cmp r0, #0
	ldrne r0, [r0, #4]
	cmpne r0, #5
	bx lr
	; .align 2, 0
_02243830: .word Unk_ov66_0225B6DC
	arm_func_end ov66_02243818

	arm_func_start ov66_02243834
ov66_02243834: ; 0x02243834
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _022438C8 ; =0x0225B6DC
	mov r4, r1
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _02243860
	ldr r0, [r3, #4]
	cmp r0, #5
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
_02243860:
	mov r2, #0
	add r1, sp, #0
	add r0, r3, #0x9c
	str r2, [sp]
	bl ov66_02236CA0
	cmp r4, #0
	bne _022438A8
	ldr r0, _022438C8 ; =0x0225B6DC
	mov r2, #3
	ldr r3, [r0, #0]
	mov r1, #5
	str r2, [r3, #0x58]
	str r1, [r3, #4]
	ldr r0, [r0, #0]
	mov r1, #1
	str r1, [r0, #0x60]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_022438A8:
	ldr r0, _022438C8 ; =0x0225B6DC
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, #5
	movne r0, #2
	strne r0, [r1, #4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_022438C8: .word Unk_ov66_0225B6DC
	arm_func_end ov66_02243834

	arm_func_start ov66_022438CC
ov66_022438CC: ; 0x022438CC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r0, _02243930 ; =0x0225B6DC
	mov r4, r2
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _022438F8
	ldr r0, [r1, #4]
	cmp r0, #5
	addeq sp, sp, #0xc
	ldmeqia sp!, {r3, r4, pc}
_022438F8:
	add r0, sp, #0
	bl ov66_02243934
	ldr r0, [sp]
	mov r2, #0x7f
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, sp, #1
	ldrne r1, [sp, #8]
	mov r0, r4
	bl strncpy
	add r0, sp, #0
	bl ov66_0223BADC
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02243930: .word Unk_ov66_0225B6DC
	arm_func_end ov66_022438CC

	arm_func_start ov66_02243934
ov66_02243934: ; 0x02243934
	ldr ip, _02243940 ; =ov66_0223B938
	add r1, r1, #0x18
	bx ip
	; .align 2, 0
_02243940: .word ov66_0223B938
	arm_func_end ov66_02243934

	arm_func_start ov66_02243944
ov66_02243944: ; 0x02243944
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x60
	ldr r2, _02243B5C ; =0x0225B6DC
	mov r4, r0
	ldr r0, [r2, #0]
	cmp r0, #0
	beq _02243970
	ldr r0, [r0, #4]
	cmp r0, #5
	addeq sp, sp, #0x60
	ldmeqia sp!, {r4, pc}
_02243970:
	cmp r1, #1
	bne _022439E4
	ldr r1, _02243B5C ; =0x0225B6DC
	add r0, sp, #0x54
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	bl ov66_022468DC
	ldr r0, _02243B5C ; =0x0225B6DC
	add r1, sp, #0x54
	ldr r0, [r0, #0]
	add r0, r0, #0xc
	bl ov66_0223BC5C
	add r0, sp, #0x54
	bl ov66_0223BADC
	ldr r1, _02243B5C ; =0x0225B6DC
	add r0, sp, #0x48
	ldr r1, [r1, #0]
	bl ov66_02243B64
	ldr r0, [sp, #0x48]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, sp, #0x49
	ldrne r1, [sp, #0x50]
	mov r0, r4
	bl ov66_02254258
	add r0, sp, #0x48
	bl ov66_0223BADC
	add sp, sp, #0x60
	ldmia sp!, {r4, pc}
_022439E4:
	cmp r1, #2
	bne _02243A58
	ldr r1, _02243B5C ; =0x0225B6DC
	add r0, sp, #0x3c
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	bl ov66_022468DC
	ldr r0, _02243B5C ; =0x0225B6DC
	add r1, sp, #0x3c
	ldr r0, [r0, #0]
	add r0, r0, #0xc
	bl ov66_0223BC5C
	add r0, sp, #0x3c
	bl ov66_0223BADC
	ldr r1, _02243B5C ; =0x0225B6DC
	add r0, sp, #0x30
	ldr r1, [r1, #0]
	bl ov66_02243B64
	ldr r0, [sp, #0x30]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, sp, #0x31
	ldrne r1, [sp, #0x38]
	mov r0, r4
	bl ov66_02254258
	add r0, sp, #0x30
	bl ov66_0223BADC
	add sp, sp, #0x60
	ldmia sp!, {r4, pc}
_02243A58:
	sub r0, r1, #3
	cmp r0, #1
	bhi _02243AD8
	ldr r1, _02243B5C ; =0x0225B6DC
	add r0, sp, #0x24
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	bl ov66_022468DC
	ldr r0, _02243B5C ; =0x0225B6DC
	add r1, sp, #0x24
	ldr r0, [r0, #0]
	add r0, r0, #0xc
	bl ov66_0223BC5C
	add r0, sp, #0x24
	bl ov66_0223BADC
	ldr r1, _02243B5C ; =0x0225B6DC
	add r0, sp, #0x18
	ldr r1, [r1, #0]
	bl ov66_02243B64
	ldr r0, [sp, #0x18]
	ldr r3, _02243B60 ; =0x02259204
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r2, sp, #0x19
	ldrne r2, [sp, #0x20]
	mov r0, r4
	mov r1, #2
	bl ov66_02254320
	add r0, sp, #0x18
	bl ov66_0223BADC
	add sp, sp, #0x60
	ldmia sp!, {r4, pc}
_02243AD8:
	cmp r1, #5
	addeq sp, sp, #0x60
	ldmeqia sp!, {r4, pc}
	cmp r1, #6
	addne sp, sp, #0x60
	ldmneia sp!, {r4, pc}
	ldr r1, _02243B5C ; =0x0225B6DC
	add r0, sp, #0xc
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	bl ov66_022468DC
	ldr r0, _02243B5C ; =0x0225B6DC
	add r1, sp, #0xc
	ldr r0, [r0, #0]
	add r0, r0, #0xc
	bl ov66_0223BC5C
	add r0, sp, #0xc
	bl ov66_0223BADC
	ldr r1, _02243B5C ; =0x0225B6DC
	add r0, sp, #0
	ldr r1, [r1, #0]
	bl ov66_02243B64
	ldr r0, [sp]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, sp, #1
	ldrne r1, [sp, #8]
	mov r0, r4
	bl ov66_02254258
	add r0, sp, #0
	bl ov66_0223BADC
	add sp, sp, #0x60
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02243B5C: .word Unk_ov66_0225B6DC
_02243B60: .word Unk_ov66_02259204
	arm_func_end ov66_02243944

	arm_func_start ov66_02243B64
ov66_02243B64: ; 0x02243B64
	ldr ip, _02243B70 ; =ov66_0223B938
	add r1, r1, #0xc
	bx ip
	; .align 2, 0
_02243B70: .word ov66_0223B938
	arm_func_end ov66_02243B64

	arm_func_start ov66_02243B74
ov66_02243B74: ; 0x02243B74
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x28
	ldr r0, _02243C6C ; =0x0225B6DC
	mov r6, r1
	ldr r1, [r0, #0]
	mov r7, r2
	cmp r1, #0
	beq _02243BA4
	ldr r0, [r1, #4]
	cmp r0, #5
	addeq sp, sp, #0x28
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02243BA4:
	add r0, sp, #0x1c
	mov r2, r7
	bl ov66_0224680C
	ldr r0, _02243C6C ; =0x0225B6DC
	ldr r5, [sp, #0x50]
	ldr r4, [r0, #0]
	ldr ip, _02243C70 ; =0x02259138
	add r3, sp, #0x10
	mov r8, #0
	add r0, sp, #0xc
	add r2, sp, #8
	add r1, r4, #0x90
	str ip, [sp, #0x10]
	str r5, [sp, #0x14]
	str r8, [sp, #0x18]
	str r3, [sp, #8]
	bl ov66_02243C94
	ldr r1, [sp, #0xc]
	add r0, r4, #0x94
	cmp r1, r0
	moveq sb, r8
	ldrne sb, [r1, #0xc]
	cmp r6, #1
	moveq r6, #1
	add r0, sp, #0x1c
	ldr r4, [sb, #0xc]
	movne r6, #0
	bl ov66_02243C7C
	mov r8, r0
	mov r0, sb
	ldr r1, [r0, #0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r1, r7
	ldr r7, [sp, #0x4c]
	ldr r3, [sp, #0x48]
	str r7, [sp]
	str r0, [sp, #4]
	mov r2, r8
	mov r0, r6
	blx r4
	ldr r0, _02243C6C ; =0x0225B6DC
	mov r1, r5
	ldr r0, [r0, #0]
	add r0, r0, #0x90
	bl ov66_0224640C
	add r0, sp, #0x1c
	bl ov66_0223B5D0
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02243C6C: .word Unk_ov66_0225B6DC
_02243C70: .word 0x02259138
	arm_func_end ov66_02243B74

	arm_func_start ov66_02243C74
ov66_02243C74: ; 0x02243C74
	ldr r0, [r0, #8]
	bx lr
	arm_func_end ov66_02243C74

	arm_func_start ov66_02243C7C
ov66_02243C7C: ; 0x02243C7C
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	ldrne r0, [r0]
	bx lr
	arm_func_end ov66_02243C7C

	arm_func_start ov66_02243C90
ov66_02243C90: ; 0x02243C90
	bx lr
	arm_func_end ov66_02243C90

	arm_func_start ov66_02243C94
ov66_02243C94: ; 0x02243C94
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	mov r6, r2
	mov r5, r0
	ldr r2, [r4, #4]
	mov r0, r4
	mov r1, r6
	add r3, r4, #4
	bl ov66_02243CF0
	add r1, r4, #4
	cmp r0, r1
	beq _02243CDC
	ldr r2, [r6, #0]
	ldr r1, [r0, #0xc]
	ldr r2, [r2, #4]
	ldr r1, [r1, #4]
	cmp r2, r1
	bhs _02243CE8
_02243CDC:
	add r0, r4, #4
	str r0, [r5, #0]
	ldmia sp!, {r4, r5, r6, pc}
_02243CE8:
	str r0, [r5, #0]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov66_02243C94

	arm_func_start ov66_02243CF0
ov66_02243CF0: ; 0x02243CF0
	cmp r2, #0
	beq _02243D20
	ldr r0, [r1, #0]
	ldr r1, [r0, #4]
_02243D00:
	ldr r0, [r2, #0xc]
	ldr r0, [r0, #4]
	cmp r0, r1
	movhs r3, r2
	ldrhs r2, [r2]
	ldrlo r2, [r2, #4]
	cmp r2, #0
	bne _02243D00
_02243D20:
	mov r0, r3
	bx lr
	arm_func_end ov66_02243CF0

	arm_func_start ov66_02243D28
ov66_02243D28: ; 0x02243D28
	cmp r1, #0
	bx lr
	arm_func_end ov66_02243D28

	arm_func_start ov66_02243D30
ov66_02243D30: ; 0x02243D30
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x58
	ldr r0, _02243EE8 ; =0x0225B6DC
	mov r4, r1
	ldr r0, [r0, #0]
	mov r6, r2
	mov r5, r3
	cmp r0, #0
	beq _02243D64
	ldr r0, [r0, #4]
	cmp r0, #5
	addeq sp, sp, #0x58
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02243D64:
	mov r0, #0
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	cmp r5, #0
	beq _02243DEC
	add r0, sp, #0x40
	mov r1, r6
	bl ov66_0223BA6C
	add r1, sp, #0x40
	ldr r0, _02243EE8 ; =0x0225B6DC
	str r1, [sp]
	ldr r1, [r0, #0]
	ldr r3, [sp, #0x78]
	add r0, sp, #0x34
	mov r2, r5
	bl ov66_02246DF0
	add r0, sp, #0x4c
	add r1, sp, #0x34
	cmp r0, r1
	beq _02243DDC
	mov r3, #0
	ldr r1, [sp, #0x34]
	ldr r5, [sp, #0x38]
	strb r3, [sp, #4]
	sub r2, sp, #4
	strb r3, [r2]
	ldr r3, [r2, #0]
	add r2, r1, r5, lsl #2
	bl ov66_02243EF0
_02243DDC:
	add r0, sp, #0x34
	bl ov66_0223B5D0
	add r0, sp, #0x40
	bl ov66_0223BADC
_02243DEC:
	ldr r0, _02243EE8 ; =0x0225B6DC
	ldr r8, [sp, #0x80]
	ldr r5, [r0, #0]
	ldr sb, _02243EEC ; =0x02259138
	add r3, sp, #0x10
	mov r7, #0
	add r0, sp, #0xc
	add r2, sp, #8
	add r1, r5, #0x90
	str sb, [sp, #0x10]
	str r8, [sp, #0x14]
	str r7, [sp, #0x18]
	str r3, [sp, #8]
	bl ov66_02243C94
	ldr r1, [sp, #0xc]
	add r0, r5, #0x94
	cmp r1, r0
	moveq r5, r7
	ldrne r5, [r1, #0xc]
	add r0, sp, #0x28
	mov r1, r6
	bl ov66_0223BA6C
	ldr r1, _02243EE8 ; =0x0225B6DC
	add r0, sp, #0x1c
	ldr r1, [r1, #0]
	add r2, sp, #0x28
	bl ov66_022467D4
	ldr r0, [sp, #0x1c]
	ldr r6, [sp, #0x50]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq sb, sp, #0x1d
	ldrne sb, [sp, #0x24]
	cmp r4, #1
	moveq sl, #1
	add r0, sp, #0x4c
	ldr r7, [r5, #0xc]
	movne sl, #0
	bl ov66_022364B0
	mov r4, r0
	mov r0, r5
	ldr r1, [r0, #0]
	ldr r1, [r1, #0xc]
	blx r1
	str r0, [sp]
	mov r1, sb
	mov r2, r6
	mov r3, r4
	mov r0, sl
	blx r7
	add r0, sp, #0x1c
	bl ov66_0223BADC
	add r0, sp, #0x28
	bl ov66_0223BADC
	ldr r0, _02243EE8 ; =0x0225B6DC
	mov r1, r8
	ldr r0, [r0, #0]
	add r0, r0, #0x90
	bl ov66_0224640C
	add r0, sp, #0x4c
	bl ov66_0223B5D0
	add sp, sp, #0x58
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02243EE8: .word Unk_ov66_0225B6DC
_02243EEC: .word 0x02259138
	arm_func_end ov66_02243D30

	arm_func_start ov66_02243EF0
ov66_02243EF0: ; 0x02243EF0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r5, r2
	mov r7, r0
	sub r2, r5, r6
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	ldr r3, [r7, #8]
	mov r4, r1, asr #2
	cmp r3, r1, asr #2
	bhs _02243F3C
	mov r2, #0
	sub r1, r4, r3
	strb r2, [sp]
	bl ov66_0224293C
	mov r2, r0
	mov r0, r7
	mov r1, r4
	bl ov66_022460E0
_02243F3C:
	sub r1, r5, r6
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r2, r0, asr #2
	ldr r0, [r7, #0]
	mov r1, r6
	mov r2, r2, lsl #2
	bl memmove
	str r4, [r7, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov66_02243EF0

	arm_func_start ov66_02243F64
ov66_02243F64: ; 0x02243F64
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x6c
	ldr r0, _02244134 ; =0x0225B6DC
	mov r5, r1
	ldr r0, [r0, #0]
	mov r4, r2
	mov r6, r3
	cmp r0, #0
	beq _02243F98
	ldr r0, [r0, #4]
	cmp r0, #5
	addeq sp, sp, #0x6c
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_02243F98:
	cmp r5, #1
	bne _02243FDC
	add r0, sp, #0x60
	mov r1, r4
	bl ov66_0223BA6C
	add r1, sp, #0x60
	ldr r0, _02244134 ; =0x0225B6DC
	str r1, [sp]
	ldr r1, [r0, #0]
	ldr r3, [sp, #0x90]
	add r0, sp, #0x54
	mov r2, r6
	bl ov66_02246DF0
	add r0, sp, #0x54
	bl ov66_0223B5D0
	add r0, sp, #0x60
	bl ov66_0223BADC
_02243FDC:
	add r0, sp, #0x48
	mov r1, r4
	bl ov66_0223BA6C
	ldr r0, _02244134 ; =0x0225B6DC
	add r1, sp, #0x48
	ldr r0, [r0, #0]
	bl ov66_022476C8
	add r0, sp, #0x48
	bl ov66_0223BADC
	ldr r0, _02244134 ; =0x0225B6DC
	ldr r8, [sp, #0x98]
	ldr r6, [r0, #0]
	ldr r0, _02244138 ; =0x02259138
	mov r1, #0
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	str r1, [sp, #0x14]
	str r0, [sp, #4]
	add r0, sp, #8
	add r1, r6, #0x90
	add r2, sp, #4
	str r8, [sp, #0x10]
	bl ov66_02243C94
	ldr r1, [sp, #8]
	add r0, r6, #0x94
	cmp r1, r0
	moveq r6, #0
	ldrne r6, [r1, #0xc]
	add r0, sp, #0x3c
	mov r1, r4
	bl ov66_0223BA6C
	ldr r1, _02244134 ; =0x0225B6DC
	add r0, sp, #0x30
	ldr r1, [r1, #0]
	add r2, sp, #0x3c
	bl ov66_022467D4
	ldr r0, [sp, #0x30]
	ldr r7, [r6, #0xc]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	mov r0, r6
	ldr r1, [r0, #0]
	addeq sb, sp, #0x31
	ldrne sb, [sp, #0x38]
	cmp r5, #1
	moveq sl, #1
	ldr r1, [r1, #0xc]
	movne sl, #0
	blx r1
	mov r3, r0
	mov r0, sl
	mov r2, sb
	mov r1, #0
	blx r7
	add r0, sp, #0x30
	bl ov66_0223BADC
	add r0, sp, #0x3c
	bl ov66_0223BADC
	ldr r0, _02244134 ; =0x0225B6DC
	mov r1, r8
	ldr r0, [r0, #0]
	add r0, r0, #0x90
	bl ov66_0224640C
	cmp r5, #0
	addne sp, sp, #0x6c
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	add r0, sp, #0x24
	mov r1, r4
	bl ov66_0223BA6C
	ldr r1, _02244134 ; =0x0225B6DC
	add r0, sp, #0x18
	ldr r1, [r1, #0]
	add r2, sp, #0x24
	bl ov66_022467D4
	ldr r0, [sp, #0x18]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #0x19
	ldrne r0, [sp, #0x20]
	bl ov66_022451C8
	add r0, sp, #0x18
	bl ov66_0223BADC
	add r0, sp, #0x24
	bl ov66_0223BADC
	add sp, sp, #0x6c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02244134: .word Unk_ov66_0225B6DC
_02244138: .word 0x02259138
	arm_func_end ov66_02243F64

	arm_func_start ov66_0224413C
ov66_0224413C: ; 0x0224413C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x6c
	ldr r4, _02244390 ; =0x0225B6DC
	mov r8, r0
	ldr r0, [r4, #0]
	mov r5, r1
	mov r7, r2
	mov r6, r3
	cmp r0, #0
	beq _02244174
	ldr r0, [r0, #4]
	cmp r0, #5
	addeq sp, sp, #0x6c
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02244174:
	cmp r5, #1
	bne _02244208
	add r0, sp, #0x60
	mov r1, r6
	bl ov66_0223BA6C
	ldr r0, _02244390 ; =0x0225B6DC
	add r1, sp, #0x60
	ldr r0, [r0, #0]
	bl ov66_02247704
	mov r4, r0
	add r0, sp, #0x60
	bl ov66_0223BADC
	cmp r4, #0
	beq _02244208
	ldr r0, _02244390 ; =0x0225B6DC
	mov r1, r6
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov66_02254E58
	mvn r1, #0
	cmp r4, r1
	moveq r5, #0
	moveq r7, #7
	beq _02244208
	cmp r0, r4
	bgt _022441E4
	cmp r0, r1
	bne _022441F0
_022441E4:
	mov r5, #0
	mov r7, #2
	b _02244208
_022441F0:
	ldr r0, _02244390 ; =0x0225B6DC
	mov r1, r6
	ldr r0, [r0, #0]
	mov r2, r4
	ldr r0, [r0, #0]
	bl ov66_02254D68
_02244208:
	cmp r5, #1
	bne _02244274
	ldr r1, _02244390 ; =0x0225B6DC
	add r0, sp, #0x54
	ldr r1, [r1, #0]
	bl ov66_02243B64
	add r0, sp, #0x48
	mov r1, r6
	bl ov66_0223BA6C
	ldr r0, _02244390 ; =0x0225B6DC
	add r1, sp, #0x54
	ldr r0, [r0, #0]
	add r2, sp, #0x48
	bl ov66_02246C2C
	add r0, sp, #0x48
	bl ov66_0223BADC
	add r0, sp, #0x54
	bl ov66_0223BADC
	mov r2, #0
	str r2, [sp]
	ldr r2, _02244394 ; =ov66_02243F64
	ldr r3, [sp, #0x88]
	mov r0, r8
	mov r1, r6
	bl ov66_02255104
	add sp, sp, #0x6c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02244274:
	add r0, sp, #0x3c
	mov r1, r6
	bl ov66_0223BA6C
	ldr r1, _02244390 ; =0x0225B6DC
	add r0, sp, #0x30
	ldr r1, [r1, #0]
	add r2, sp, #0x3c
	bl ov66_022467D4
	ldr r0, [sp, #0x30]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #0x31
	ldrne r0, [sp, #0x38]
	bl ov66_022451C8
	add r0, sp, #0x30
	bl ov66_0223BADC
	add r0, sp, #0x3c
	bl ov66_0223BADC
	ldr r0, _02244390 ; =0x0225B6DC
	ldr r5, [sp, #0x88]
	ldr r4, [r0, #0]
	ldr r0, _02244398 ; =0x02259138
	mov r1, #0
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	str r1, [sp, #0x14]
	str r0, [sp, #4]
	add r0, sp, #8
	add r1, r4, #0x90
	add r2, sp, #4
	str r5, [sp, #0x10]
	bl ov66_02243C94
	ldr r1, [sp, #8]
	add r0, r4, #0x94
	cmp r1, r0
	moveq r4, #0
	ldrne r4, [r1, #0xc]
	add r0, sp, #0x24
	mov r1, r6
	bl ov66_0223BA6C
	ldr r1, _02244390 ; =0x0225B6DC
	add r0, sp, #0x18
	ldr r1, [r1, #0]
	add r2, sp, #0x24
	bl ov66_022467D4
	ldr r0, [sp, #0x18]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	mov r0, r4
	ldr r1, [r0, #0]
	addeq r6, sp, #0x19
	ldrne r6, [sp, #0x20]
	ldr r1, [r1, #0xc]
	ldr r4, [r4, #0xc]
	blx r1
	mov r3, r0
	mov r1, r7
	mov r2, r6
	mov r0, #0
	blx r4
	add r0, sp, #0x18
	bl ov66_0223BADC
	add r0, sp, #0x24
	bl ov66_0223BADC
	ldr r0, _02244390 ; =0x0225B6DC
	mov r1, r5
	ldr r0, [r0, #0]
	add r0, r0, #0x90
	bl ov66_0224640C
	add sp, sp, #0x6c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02244390: .word Unk_ov66_0225B6DC
_02244394: .word ov66_02243F64
_02244398: .word 0x02259138
	arm_func_end ov66_0224413C

	arm_func_start ov66_0224439C
ov66_0224439C: ; 0x0224439C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	ldr r0, _02244520 ; =0x0225B6DC
	mov r7, r1
	ldr r0, [r0, #0]
	mov sb, r2
	cmp r0, #0
	beq _022443CC
	ldr r0, [r0, #4]
	cmp r0, #5
	addeq sp, sp, #0x40
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022443CC:
	cmp sb, #0
	addeq sp, sp, #0x40
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r3, #0
	mvneq fp, #0
	beq _0224440C
	add r0, sp, #0x34
	mov r1, r3
	bl ov66_0223BA6C
	ldr r0, _02244520 ; =0x0225B6DC
	add r1, sp, #0x34
	ldr r0, [r0, #0]
	bl ov66_022474F4
	mov fp, r0
	add r0, sp, #0x34
	bl ov66_0223BADC
_0224440C:
	ldr r0, _02244520 ; =0x0225B6DC
	ldr r8, [sp, #0x74]
	ldr r4, [r0, #0]
	ldr r6, _02244524 ; =0x02259138
	add r3, sp, #0x10
	mov r5, #0
	add r0, sp, #0xc
	add r2, sp, #8
	add r1, r4, #0x90
	str r6, [sp, #0x10]
	str r8, [sp, #0x14]
	str r5, [sp, #0x18]
	str r3, [sp, #8]
	bl ov66_02243C94
	add r0, r4, #0x94
	ldr r1, [sp, #0xc]
	mov r4, #0
	cmp r1, r0
	moveq r6, r5
	ldrne r6, [r1, #0xc]
	mov r5, r4
	cmp r7, #1
	bne _02244484
	ldr r0, [sp, #0x68]
	cmp r0, #0
	ble _02244484
	ldr r1, [sp, #0x6c]
	ldr r0, [sp, #0x70]
	ldr r4, [r1, #0]
	ldr r5, [r0, #0]
_02244484:
	add r0, sp, #0x28
	mov r1, sb
	bl ov66_0223BA6C
	ldr r1, _02244520 ; =0x0225B6DC
	add r0, sp, #0x1c
	ldr r1, [r1, #0]
	add r2, sp, #0x28
	bl ov66_022467D4
	ldr r0, [sp, #0x1c]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	mov r0, r6
	ldr r1, [r0, #0]
	addeq sb, sp, #0x1d
	ldrne sb, [sp, #0x24]
	cmp r7, #1
	moveq sl, #1
	ldr r7, [r6, #0xc]
	ldr r1, [r1, #0xc]
	movne sl, #0
	blx r1
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, sl
	mov r1, sb
	mov r2, fp
	mov r3, r4
	blx r7
	add r0, sp, #0x1c
	bl ov66_0223BADC
	add r0, sp, #0x28
	bl ov66_0223BADC
	ldr r0, _02244520 ; =0x0225B6DC
	mov r1, r8
	ldr r0, [r0, #0]
	add r0, r0, #0x90
	bl ov66_0224640C
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02244520: .word Unk_ov66_0225B6DC
_02244524: .word 0x02259138
	arm_func_end ov66_0224439C

	arm_func_start ov66_02244528
ov66_02244528: ; 0x02244528
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x34
	ldr r0, _0224461C ; =0x0225B6DC
	mov r7, r1
	ldr r0, [r0, #0]
	mov r6, r3
	cmp r0, #0
	beq _02244558
	ldr r0, [r0, #4]
	cmp r0, #5
	addeq sp, sp, #0x34
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_02244558:
	cmp r2, #0
	mvneq r4, #0
	beq _0224458C
	add r0, sp, #0x28
	mov r1, r2
	bl ov66_0223BA6C
	ldr r0, _0224461C ; =0x0225B6DC
	add r1, sp, #0x28
	ldr r0, [r0, #0]
	bl ov66_022474F4
	mov r4, r0
	add r0, sp, #0x28
	bl ov66_0223BADC
_0224458C:
	add r0, sp, #0x1c
	mov r1, r7
	bl ov66_0223BA6C
	ldr r0, _0224461C ; =0x0225B6DC
	add r1, sp, #0x1c
	ldr r0, [r0, #0]
	bl ov66_02246B38
	mov r5, r0
	add r0, sp, #0x1c
	bl ov66_0223BADC
	add r0, sp, #0x10
	mov r1, r7
	bl ov66_0223BA6C
	ldr r1, _0224461C ; =0x0225B6DC
	add r0, sp, #4
	ldr r1, [r1, #0]
	add r2, sp, #0x10
	bl ov66_022467D4
	ldr r0, [sp, #4]
	ldr r1, [r5, #0x14]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #5
	ldrne r0, [sp, #0xc]
	ldr r3, [sp, #0x48]
	str r1, [sp]
	ldr r5, [r5, #0xc]
	mov r1, r4
	mov r2, r6
	blx r5
	add r0, sp, #4
	bl ov66_0223BADC
	add r0, sp, #0x10
	bl ov66_0223BADC
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224461C: .word Unk_ov66_0225B6DC
	arm_func_end ov66_02244528

	arm_func_start ov66_02244620
ov66_02244620: ; 0x02244620
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x2c
	ldr r4, _02244750 ; =0x0225B6DC
	mov r8, r1
	ldr r1, [r4, #0]
	mov r7, r2
	mov r6, r3
	cmp r1, #0
	beq _02244654
	ldr r1, [r1, #4]
	cmp r1, #5
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_02244654:
	cmp r8, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r3, [sp, #0x48]
	mov r1, r7
	mov r2, r6
	bl ov66_022437FC
	ldr r0, _02244750 ; =0x0225B6DC
	ldr r5, [sp, #0x48]
	ldr r4, [r0, #0]
	ldr lr, _02244754 ; =0x02259138
	add r3, sp, #8
	mov ip, #0
	add r0, sp, #4
	add r2, sp, #0
	add r1, r4, #0x90
	str lr, [sp, #8]
	str r5, [sp, #0xc]
	str ip, [sp, #0x10]
	str r3, [sp]
	bl ov66_02243C94
	ldr r1, [sp, #4]
	add r0, r4, #0x94
	cmp r1, r0
	moveq r4, #0
	ldrne r4, [r1, #0xc]
	add r0, sp, #0x20
	mov r1, r7
	bl ov66_0223BA6C
	ldr r1, _02244750 ; =0x0225B6DC
	add r0, sp, #0x14
	ldr r1, [r1, #0]
	add r2, sp, #0x20
	bl ov66_022467D4
	ldr r0, [sp, #0x14]
	ldr r7, [r4, #0xc]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	mov r0, r4
	ldr r1, [r0, #0]
	addeq sb, sp, #0x15
	ldrne sb, [sp, #0x1c]
	cmp r8, #1
	moveq r8, #1
	ldr r1, [r1, #0xc]
	movne r8, #0
	blx r1
	mov r3, r0
	mov r0, r8
	mov r1, sb
	mov r2, r6
	blx r7
	add r0, sp, #0x14
	bl ov66_0223BADC
	add r0, sp, #0x20
	bl ov66_0223BADC
	ldr r0, _02244750 ; =0x0225B6DC
	mov r1, r5
	ldr r0, [r0, #0]
	add r0, r0, #0x90
	bl ov66_0224640C
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02244750: .word Unk_ov66_0225B6DC
_02244754: .word 0x02259138
	arm_func_end ov66_02244620

	arm_func_start ov66_02244758
ov66_02244758: ; 0x02244758
	ldr r0, _02244778 ; =0x0225B6DC
	mov r1, #3
	ldr r2, [r0, #0]
	mov r0, #5
	str r1, [r2, #0x58]
	str r0, [r2, #4]
	mov r0, #0
	bx lr
	; .align 2, 0
_02244778: .word Unk_ov66_0225B6DC
	arm_func_end ov66_02244758

	arm_func_start ov66_0224477C
ov66_0224477C: ; 0x0224477C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	ldr r0, _0224495C ; =0x0225B6DC
	ldr r1, [r0, #0]
	cmp r1, #0
	addeq sp, sp, #0x28
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	beq _022447B4
	ldr r0, [r1, #4]
	cmp r0, #5
	addeq sp, sp, #0x28
	moveq r0, #5
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022447B4:
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _022447C4
	bl ov66_0225448C
_022447C4:
	ldr r2, _0224495C ; =0x0225B6DC
	add r0, sp, #0xc
	add r1, sp, #0x1c
	ldr r5, [r2, #0]
	bl DWC_GetDateTime
	add r0, sp, #0xc
	add r1, sp, #0x1c
	bl RTC_ConvertDateTimeToSecond
	ldr r2, [r5, #0xa8]
	add r7, r5, #0xa0
	mov r6, r0
	mov sb, r1
	str r2, [sp, #8]
	cmp r2, r7
	beq _02244894
	mov fp, #1
	mov sl, #0
	add r4, sp, #8
_0224480C:
	ldr r1, [r2, #0x10]
	ldr r0, [r2, #0x14]
	subs r1, r6, r1
	ldr r8, [r2, #0x18]
	sbc r0, sb, r0
	ldr r3, [r2, #0x1c]
	subs r1, r8, r1
	sbcs r1, r3, r0
	bge _02244850
	str r6, [r2, #0x10]
	str sb, [r2, #0x14]
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	blx r1
	cmp r0, #0
	moveq r0, sl
	beq _02244854
_02244850:
	mov r0, fp
_02244854:
	cmp r0, #0
	bne _02244880
	ldr r8, [sp, #8]
	mov r0, r4
	bl ov66_0223AD6C
	add r0, sp, #4
	mov r2, r8
	add r1, r5, #0x9c
	str r8, [sp]
	bl ov66_0223AB54
	b _02244888
_02244880:
	mov r0, r4
	bl ov66_0223AD6C
_02244888:
	ldr r2, [sp, #8]
	cmp r2, r7
	bne _0224480C
_02244894:
	ldr r0, _0224495C ; =0x0225B6DC
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _022448B8
	ldr r0, [r3, #4]
	cmp r0, #5
	addeq sp, sp, #0x28
	moveq r0, #5
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022448B8:
	ldr r1, [r3, #0x54]
	ldr r0, _0224495C ; =0x0225B6DC
	cmp r1, #3
	ldr r2, [r0, #0]
	blo _022448F8
	mov r1, #0
	str r1, [r3, #0x54]
	ldr r2, [r0, #0]
	mov r1, #3
	str r1, [r2, #0x58]
	mov r1, #5
	str r1, [r2, #4]
	ldr r0, [r0, #0]
	add sp, sp, #0x28
	ldr r0, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022448F8:
	ldr r0, [r2, #4]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02244948
_02244908: ; jump table
	b _02244948 ; case 0
	b _02244948 ; case 1
	b _0224491C ; case 2
	b _02244948 ; case 3
	b _02244948 ; case 4
_0224491C:
	ldr r1, [r2, #0x5c]
	add r0, r1, #1
	str r0, [r2, #0x5c]
	cmp r1, #0x3c
	bne _02244948
	mov r0, #0
	str r0, [r2, #0x5c]
	ldr r0, [r2, #4]
	cmp r0, #5
	movne r0, #3
	strne r0, [r2, #4]
_02244948:
	ldr r0, _0224495C ; =0x0225B6DC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0224495C: .word Unk_ov66_0225B6DC
	arm_func_end ov66_0224477C

	arm_func_start ov66_02244960
ov66_02244960: ; 0x02244960
	ldr r0, _02244978 ; =0x0225B6DC
	ldr r0, [r0, #0]
	cmp r0, #0
	ldrne r0, [r0, #0x58]
	moveq r0, #0
	bx lr
	; .align 2, 0
_02244978: .word Unk_ov66_0225B6DC
	arm_func_end ov66_02244960

	arm_func_start ov66_0224497C
ov66_0224497C: ; 0x0224497C
	add r0, r0, #0x410
	add r0, r0, #0xa000
	bx lr
	arm_func_end ov66_0224497C

	arm_func_start ov66_02244988
ov66_02244988: ; 0x02244988
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	ldr r2, _02244A14 ; =0x0225B6DC
	mov r1, r0
	ldr r0, [r2, #0]
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, sp, #0xc
	bl ov66_0223BA6C
	ldr r1, _02244A14 ; =0x0225B6DC
	add r0, sp, #0
	ldr r1, [r1, #0]
	add r2, sp, #0xc
	bl ov66_022467C4
	ldr r0, [sp]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldr r0, _02244A14 ; =0x0225B6DC
	addeq r1, sp, #1
	ldr r0, [r0, #0]
	ldrne r1, [sp, #8]
	ldr r0, [r0, #0]
	bl ov66_02254F20
	cmp r0, #1
	moveq r4, #1
	add r0, sp, #0
	movne r4, #0
	bl ov66_0223BADC
	add r0, sp, #0xc
	bl ov66_0223BADC
	mov r0, r4
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02244A14: .word Unk_ov66_0225B6DC
	arm_func_end ov66_02244988

	arm_func_start ov66_02244A18
ov66_02244A18: ; 0x02244A18
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x13c
	ldr r4, _02244E30 ; =0x0225B6DC
	mov sl, r0
	ldr r0, [r4, #0]
	mov sb, r1
	cmp r0, #0
	mov r8, r2
	mov r7, r3
	addne sp, sp, #0x13c
	movne r0, #4
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, [sp, #0x160]
	add r0, sp, #0x130
	bl ov66_022468DC
	ldr r1, _02244E34 ; =0x02259208
	add r0, sp, #0x124
	bl ov66_0223BA6C
	ldr r1, _02244E38 ; =0x02259210
	add r0, sp, #0x118
	bl ov66_0223BA6C
	mov r4, #0
	mov r0, #0xac
	mov r5, r4
	bl ov66_02246290
	movs r6, r0
	beq _02244AE0
	add r0, sp, #0xf8
	mov r1, sb
	bl ov66_0223BA6C
	add r0, sp, #0xec
	mov r1, sl
	mov r4, #1
	bl ov66_0223BA6C
	ldr r1, [sp, #0x160]
	add r0, sp, #0x130
	str r1, [sp]
	str r0, [sp, #4]
	add r1, sp, #0x124
	str r1, [sp, #8]
	add r0, sp, #0x118
	str r0, [sp, #0xc]
	add r1, sp, #0xec
	add r2, sp, #0xf8
	mov r3, r8
	mov r0, r6
	str r7, [sp, #0x10]
	mov r5, r4
	bl ov66_02246588
	mov r6, r0
_02244AE0:
	ldr r0, _02244E30 ; =0x0225B6DC
	cmp r5, #0
	str r6, [r0, #0]
	beq _02244AF8
	add r0, sp, #0xec
	bl ov66_0223BADC
_02244AF8:
	cmp r4, #0
	beq _02244B08
	add r0, sp, #0xf8
	bl ov66_0223BADC
_02244B08:
	ldr r0, _02244E30 ; =0x0225B6DC
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02244B3C
	add r0, sp, #0x118
	bl ov66_0223BADC
	add r0, sp, #0x124
	bl ov66_0223BADC
	add r0, sp, #0x130
	bl ov66_0223BADC
	add sp, sp, #0x13c
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_02244B3C:
	bl ov66_02246368
	cmp r0, #0
	moveq r4, #1
	beq _02244DC8
	add r0, sp, #0x104
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r4, _02244E3C ; =ov66_02242C08
	ldr r3, _02244E40 ; =ov66_02242C24
	ldr r1, _02244E44 ; =ov66_022430D0
	ldr r2, _02244E48 ; =ov66_02242CE0
	ldr r0, _02244E30 ; =0x0225B6DC
	str r1, [sp, #0x110]
	ldr r1, [r0, #0]
	str r4, [sp, #0x104]
	str r3, [sp, #0x108]
	str r2, [sp, #0x10c]
	ldr r2, [r7, #8]
	add r0, sp, #0xe0
	str r2, [sp, #0x114]
	bl ov66_02244E68
	ldr r2, _02244E4C ; =0x02259218
	add r0, sp, #0xd4
	add r1, sp, #0xe0
	bl ov66_022379D0
	ldr r2, _02244E50 ; =0x0225921C
	add r0, sp, #0xc8
	add r1, sp, #0xd4
	bl ov66_022379D0
	ldr r1, _02244E30 ; =0x0225B6DC
	add r0, sp, #0xbc
	ldr r1, [r1, #0]
	bl ov66_02243B64
	ldr r1, _02244E30 ; =0x0225B6DC
	add r0, sp, #0xb0
	ldr r1, [r1, #0]
	bl ov66_02244E78
	ldr r1, _02244E30 ; =0x0225B6DC
	add r0, sp, #0xa4
	ldr r1, [r1, #0]
	bl ov66_02244E68
	ldr r1, _02244E30 ; =0x0225B6DC
	add r0, sp, #0x98
	ldr r1, [r1, #0]
	bl ov66_02244E88
	ldr r0, [sp, #0x98]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldr r0, [sp, #0xa4]
	addeq r1, sp, #0x99
	mov r0, r0, lsl #0x1f
	ldrne r1, [sp, #0xa0]
	movs r0, r0, lsr #0x1f
	ldr r0, [sp, #0xb0]
	addeq r4, sp, #0xa5
	mov r0, r0, lsl #0x1f
	ldrne r4, [sp, #0xac]
	movs r0, r0, lsr #0x1f
	ldr r0, [sp, #0xbc]
	addeq r3, sp, #0xb1
	mov r0, r0, lsl #0x1f
	ldrne r3, [sp, #0xb8]
	movs r0, r0, lsr #0x1f
	ldr r0, [sp, #0xc8]
	addeq r2, sp, #0xbd
	mov r0, r0, lsl #0x1f
	ldrne r2, [sp, #0xc4]
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #0xc9
	ldrne r0, [sp, #0xd0]
	str r4, [sp]
	str r1, [sp, #4]
	add r4, sp, #0x104
	str r4, [sp, #8]
	ldr r1, _02244E54 ; =ov66_02243944
	ldr r4, _02244E58 ; =ov66_022438CC
	str r1, [sp, #0xc]
	ldr r1, _02244E5C ; =ov66_02243834
	str r4, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r4, [r7, #8]
	ldr r1, _02244E60 ; =0x00001A0B
	str r4, [sp, #0x18]
	mov r4, #0
	str r4, [sp, #0x1c]
	bl ov66_022541CC
	mov r4, r0
	add r0, sp, #0x98
	bl ov66_0223BADC
	add r0, sp, #0xa4
	bl ov66_0223BADC
	add r0, sp, #0xb0
	bl ov66_0223BADC
	add r0, sp, #0xbc
	bl ov66_0223BADC
	add r0, sp, #0xc8
	bl ov66_0223BADC
	add r0, sp, #0xd4
	bl ov66_0223BADC
	add r0, sp, #0xe0
	bl ov66_0223BADC
	cmp r4, #0
	moveq r4, #2
	beq _02244DC8
	ldr r0, _02244E30 ; =0x0225B6DC
	ldr r2, _02244E30 ; =0x0225B6DC
	ldr r1, [r0, #0]
	str r4, [r1, #0]
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, #5
	movne r0, #1
	strne r0, [r1, #4]
	add r0, sp, #0x88
	add r1, sp, #0x7c
	ldr r5, [r2, #0]
	bl DWC_GetDateTime
	add r0, sp, #0x88
	add r1, sp, #0x7c
	bl RTC_ConvertDateTimeToSecond
	ldr r3, _02244E64 ; =ov66_02244758
	str r0, [sp, #0x2c]
	str r1, [sp, #0x30]
	mov r4, #0x1e
	mov r1, #0
	add r0, sp, #0x44
	add r2, sp, #0x2c
	str r4, [sp, #0x34]
	str r1, [sp, #0x38]
	str r5, [sp, #0x3c]
	str r3, [sp, #0x40]
	bl ov66_022369FC
	mov r0, #0
	add r2, sp, #0x48
	strb r0, [sp, #0x21]
	strb r0, [sp, #0x20]
	ldr r0, [sp, #0x44]
	add r7, sp, #0x64
	str r0, [sp, #0x60]
	add r1, r5, #0x9c
	add r6, r2, #8
	ldr r4, [r2, #0x10]
	ldr r0, [r2, #0x14]
	ldmia r2, {r2, r3}
	stmia r7, {r2, r3}
	add r5, r7, #8
	ldmia r6, {r2, r3}
	stmia r5, {r2, r3}
	str r0, [r7, #0x14]
	add r0, sp, #0x24
	add r2, sp, #0x60
	str r4, [r7, #0x10]
	bl ov66_0223AABC
	add r0, sp, #0x118
	bl ov66_0223BADC
	add r0, sp, #0x124
	bl ov66_0223BADC
	add r0, sp, #0x130
	bl ov66_0223BADC
	add sp, sp, #0x13c
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_02244DC8:
	bl ov66_022463D8
	ldr r0, _02244E30 ; =0x0225B6DC
	ldr r5, [r0, #0]
	cmp r5, #0
	beq _02244E0C
	beq _02244E00
	mov r0, r5
	bl ov66_02246754
	cmp r5, #0
	beq _02244E00
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl DWC_Free
_02244E00:
	ldr r0, _02244E30 ; =0x0225B6DC
	mov r1, #0
	str r1, [r0, #0]
_02244E0C:
	add r0, sp, #0x118
	bl ov66_0223BADC
	add r0, sp, #0x124
	bl ov66_0223BADC
	add r0, sp, #0x130
	bl ov66_0223BADC
	mov r0, r4
	add sp, sp, #0x13c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02244E30: .word Unk_ov66_0225B6DC
_02244E34: .word Unk_ov66_02259208
_02244E38: .word Unk_ov66_02259210
_02244E3C: .word ov66_02242C08
_02244E40: .word ov66_02242C24
_02244E44: .word ov66_022430D0
_02244E48: .word ov66_02242CE0
_02244E4C: .word Unk_ov66_02259218
_02244E50: .word Unk_ov66_0225921C
_02244E54: .word ov66_02243944
_02244E58: .word ov66_022438CC
_02244E5C: .word ov66_02243834
_02244E60: .word 0x00001A0B
_02244E64: .word ov66_02244758
	arm_func_end ov66_02244A18

	arm_func_start ov66_02244E68
ov66_02244E68: ; 0x02244E68
	ldr ip, _02244E74 ; =ov66_0223B938
	add r1, r1, #0x30
	bx ip
	; .align 2, 0
_02244E74: .word ov66_0223B938
	arm_func_end ov66_02244E68

	arm_func_start ov66_02244E78
ov66_02244E78: ; 0x02244E78
	ldr ip, _02244E84 ; =ov66_0223B938
	add r1, r1, #0x24
	bx ip
	; .align 2, 0
_02244E84: .word ov66_0223B938
	arm_func_end ov66_02244E78

	arm_func_start ov66_02244E88
ov66_02244E88: ; 0x02244E88
	ldr ip, _02244E94 ; =ov66_0223B938
	add r1, r1, #0x3c
	bx ip
	; .align 2, 0
_02244E94: .word ov66_0223B938
	arm_func_end ov66_02244E88

	arm_func_start ov66_02244E98
ov66_02244E98: ; 0x02244E98
	stmfd sp!, {r4, lr}
	ldr r0, _02244F40 ; =0x0225B6DC
	ldr r0, [r0, #0]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r0, #4]
	cmp r0, #4
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov66_022463D8
	ldr r0, _02244F40 ; =0x0225B6DC
	ldr r2, [r0, #0]
	ldr r1, [r2, #0x60]
	cmp r1, #0
	beq _02244F24
	ldr r0, [r2, #0]
	bl ov66_022543DC
	ldr r0, _02244F40 ; =0x0225B6DC
	ldr r4, [r0, #0]
	cmp r4, #0
	beq _02244F38
	beq _02244F14
	mov r0, r4
	bl ov66_02246754
	cmp r4, #0
	beq _02244F14
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl DWC_Free
_02244F14:
	ldr r0, _02244F40 ; =0x0225B6DC
	mov r1, #0
	str r1, [r0, #0]
	b _02244F38
_02244F24:
	mov r1, #4
	str r1, [r2, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov66_022543DC
_02244F38:
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02244F40: .word Unk_ov66_0225B6DC
	arm_func_end ov66_02244E98

	arm_func_start ov66_02244F44
ov66_02244F44: ; 0x02244F44
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x88
	ldr r4, _02245184 ; =0x0225B6DC
	mov r8, r0
	ldr r4, [r4, #0]
	mov r7, r1
	cmp r4, #0
	mov r6, r2
	mov r5, r3
	addeq sp, sp, #0x88
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	beq _02244F8C
	ldr r0, [r4, #4]
	cmp r0, #5
	addeq sp, sp, #0x88
	moveq r0, #7
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_02244F8C:
	cmp r4, #0
	beq _02244FB0
	ldr r0, _02245184 ; =0x0225B6DC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #3
	addne sp, sp, #0x88
	movne r0, #4
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_02244FB0:
	mov r0, r8
	bl strlen
	mov r0, #0x10
	bl ov66_02246290
	cmp r0, #0
	beq _02245004
	ldr r2, _02245188 ; =0x02259138
	ldr r1, _0224518C ; =0x0225B6E0
	str r2, [r0, #0]
	mov ip, #0
	ldr r2, [r1, #0]
	ldr r3, [sp, #0xa4]
	str ip, [r0, #4]
	str r3, [r0, #8]
	add ip, r2, #1
	ldr r3, _02245190 ; =0x02259180
	str r2, [r0, #4]
	ldr r2, [sp, #0xa0]
	str r3, [r0, #0]
	str ip, [r1]
	str r2, [r0, #0xc]
_02245004:
	str r0, [sp, #0x10]
	add r0, sp, #0x14
	add r2, sp, #0x10
	add r1, r4, #0x90
	bl ov66_02245F68
	mov r1, #0
	ldr r0, [sp, #0x10]
	strb r1, [sp, #0xc]
	strb r1, [sp, #0xd]
	ldr r1, [r0, #0]
	ldr r1, [r1, #8]
	blx r1
	mov r4, r0
	add r0, sp, #0x4c
	mov r1, r8
	bl ov66_0223BA6C
	ldr r1, _02245184 ; =0x0225B6DC
	add r0, sp, #0x40
	ldr r1, [r1, #0]
	add r2, sp, #0x4c
	bl ov66_022467C4
	ldr r0, [sp, #0x40]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, sp, #0x41
	ldrne r1, [sp, #0x48]
	add r0, sp, #0x34
	bl ov66_0223BA6C
	ldr r0, _02245184 ; =0x0225B6DC
	add r1, sp, #0x34
	ldr r0, [r0, #0]
	mov r2, r5
	mov r3, r6
	bl ov66_022469C8
	add r0, sp, #0x34
	bl ov66_0223BADC
	add r0, sp, #0x40
	bl ov66_0223BADC
	add r0, sp, #0x4c
	bl ov66_0223BADC
	add r0, sp, #0x58
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, _02245194 ; =ov66_022437FC
	ldr r2, _02245198 ; =ov66_022430EC
	str r0, [sp, #0x70]
	ldr r0, _0224519C ; =ov66_02243744
	str r2, [sp, #0x58]
	ldr r2, _022451A0 ; =ov66_022431E0
	str r0, [sp, #0x6c]
	ldr r0, _022451A4 ; =ov66_02243234
	str r2, [sp, #0x5c]
	ldr r2, _022451A8 ; =ov66_022434D0
	str r0, [sp, #0x60]
	ldr r0, _022451AC ; =ov66_02243670
	str r2, [sp, #0x64]
	ldr r2, _022451B0 ; =ov66_02243818
	str r0, [sp, #0x74]
	ldr r0, _022451B4 ; =ov66_02244528
	str r2, [sp, #0x78]
	ldr r2, _022451B8 ; =ov66_022435FC
	str r0, [sp, #0x80]
	str r2, [sp, #0x68]
	ldr r2, [r5, #0x14]
	mov r1, r8
	add r0, sp, #0x28
	str r2, [sp, #0x84]
	bl ov66_0223BA6C
	ldr r1, _02245184 ; =0x0225B6DC
	add r0, sp, #0x1c
	ldr r1, [r1, #0]
	add r2, sp, #0x28
	bl ov66_022467C4
	ldr r0, [sp, #0x1c]
	mov r2, #0
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, sp, #0x1d
	ldrne r1, [sp, #0x24]
	ldr r0, _022451BC ; =ov66_0224413C
	add r3, sp, #0x58
	stmia sp, {r0, r4}
	str r2, [sp, #8]
	ldr r0, _02245184 ; =0x0225B6DC
	mov r2, r7
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov66_02254584
	add r0, sp, #0x1c
	bl ov66_0223BADC
	add r0, sp, #0x28
	bl ov66_0223BADC
	mov r0, #0
	add sp, sp, #0x88
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02245184: .word Unk_ov66_0225B6DC
_02245188: .word 0x02259138
_0224518C: .word Unk_ov66_0225B6E0
_02245190: .word 0x02259180
_02245194: .word ov66_022437FC
_02245198: .word ov66_022430EC
_0224519C: .word ov66_02243744
_022451A0: .word ov66_022431E0
_022451A4: .word ov66_02243234
_022451A8: .word ov66_022434D0
_022451AC: .word ov66_02243670
_022451B0: .word ov66_02243818
_022451B4: .word ov66_02244528
_022451B8: .word ov66_022435FC
_022451BC: .word ov66_0224413C
	arm_func_end ov66_02244F44

	arm_func_start ov66_022451C0
ov66_022451C0: ; 0x022451C0
	ldr r0, [r0, #4]
	bx lr
	arm_func_end ov66_022451C0

	arm_func_start ov66_022451C8
ov66_022451C8: ; 0x022451C8
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x30
	ldr r1, _022452CC ; =0x0225B6DC
	mov r4, r0
	ldr r1, [r1, #0]
	cmp r1, #0
	addeq sp, sp, #0x30
	moveq r0, #4
	ldmeqia sp!, {r4, pc}
	beq _02245204
	ldr r0, [r1, #4]
	cmp r0, #5
	addeq sp, sp, #0x30
	moveq r0, #7
	ldmeqia sp!, {r4, pc}
_02245204:
	cmp r1, #0
	beq _02245228
	ldr r0, _022452CC ; =0x0225B6DC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #3
	addne sp, sp, #0x30
	movne r0, #4
	ldmneia sp!, {r4, pc}
_02245228:
	add r0, sp, #0x24
	mov r1, r4
	bl ov66_0223BA6C
	ldr r1, _022452CC ; =0x0225B6DC
	add r0, sp, #0x18
	ldr r1, [r1, #0]
	add r2, sp, #0x24
	bl ov66_022467C4
	ldr r0, [sp, #0x18]
	mov r2, #0
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldr r0, _022452CC ; =0x0225B6DC
	addeq r1, sp, #0x19
	ldr r0, [r0, #0]
	ldrne r1, [sp, #0x20]
	ldr r0, [r0, #0]
	bl ov66_022546D4
	add r0, sp, #0x18
	bl ov66_0223BADC
	add r0, sp, #0x24
	bl ov66_0223BADC
	add r0, sp, #0xc
	mov r1, r4
	bl ov66_0223BA6C
	ldr r1, _022452CC ; =0x0225B6DC
	add r0, sp, #0
	ldr r1, [r1, #0]
	add r2, sp, #0xc
	bl ov66_022467C4
	ldr r0, _022452CC ; =0x0225B6DC
	add r1, sp, #0
	ldr r0, [r0, #0]
	bl ov66_02247258
	add r0, sp, #0
	bl ov66_0223BADC
	add r0, sp, #0xc
	bl ov66_0223BADC
	mov r0, #0
	add sp, sp, #0x30
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022452CC: .word Unk_ov66_0225B6DC
	arm_func_end ov66_022451C8

	arm_func_start ov66_022452D0
ov66_022452D0: ; 0x022452D0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r2, _022453B8 ; =0x0225B6DC
	mov r5, r0
	ldr r2, [r2, #0]
	mov r4, r1
	cmp r2, #0
	addeq sp, sp, #0x18
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _02245310
	ldr r0, [r2, #4]
	cmp r0, #5
	addeq sp, sp, #0x18
	moveq r0, #7
	ldmeqia sp!, {r3, r4, r5, pc}
_02245310:
	cmp r2, #0
	beq _02245334
	ldr r0, _022453B8 ; =0x0225B6DC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #3
	addne sp, sp, #0x18
	movne r0, #4
	ldmneia sp!, {r3, r4, r5, pc}
_02245334:
	mov r0, r4
	bl strlen
	add r0, r0, #1
	cmp r0, #0x190
	addhi sp, sp, #0x18
	movhi r0, #3
	ldmhiia sp!, {r3, r4, r5, pc}
	add r0, sp, #0xc
	mov r1, r5
	bl ov66_0223BA6C
	ldr r1, _022453B8 ; =0x0225B6DC
	add r0, sp, #0
	ldr r1, [r1, #0]
	add r2, sp, #0xc
	bl ov66_022467C4
	ldr r0, [sp]
	mov r2, r4
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldr r0, _022453B8 ; =0x0225B6DC
	addeq r1, sp, #1
	ldr r0, [r0, #0]
	ldrne r1, [sp, #8]
	ldr r0, [r0, #0]
	mov r3, #3
	bl ov66_02254798
	add r0, sp, #0
	bl ov66_0223BADC
	add r0, sp, #0xc
	bl ov66_0223BADC
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022453B8: .word Unk_ov66_0225B6DC
	arm_func_end ov66_022452D0

	arm_func_start ov66_022453BC
ov66_022453BC: ; 0x022453BC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r2, _022454C0 ; =0x0225B6DC
	mov r6, r0
	ldr r4, [r2, #0]
	mov r5, r1
	cmp r4, #0
	addeq sp, sp, #0xc
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	beq _022453FC
	ldr r0, [r4, #4]
	cmp r0, #5
	addeq sp, sp, #0xc
	moveq r0, #7
	ldmeqia sp!, {r3, r4, r5, r6, pc}
_022453FC:
	cmp r4, #0
	beq _02245420
	ldr r0, _022454C0 ; =0x0225B6DC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #3
	addne sp, sp, #0xc
	movne r0, #4
	ldmneia sp!, {r3, r4, r5, r6, pc}
_02245420:
	mov r0, r5
	bl strlen
	add r0, r0, #1
	cmp r0, #0x190
	addhi sp, sp, #0xc
	movhi r0, #3
	ldmhiia sp!, {r3, r4, r5, r6, pc}
	add r0, sp, #0
	mov r1, r4
	mov r2, r6
	bl ov66_02247578
	ldr r1, _022454C4 ; =0x02259204
	add r0, sp, #0
	bl ov66_0223BEEC
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02245480
	add r0, sp, #0
	bl ov66_0223BADC
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, pc}
_02245480:
	ldr r0, [sp]
	mov r2, r5
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldr r0, _022454C0 ; =0x0225B6DC
	addeq r1, sp, #1
	ldr r0, [r0, #0]
	ldrne r1, [sp, #8]
	ldr r0, [r0, #0]
	mov r3, #3
	bl ov66_0225524C
	add r0, sp, #0
	bl ov66_0223BADC
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_022454C0: .word Unk_ov66_0225B6DC
_022454C4: .word Unk_ov66_02259204
	arm_func_end ov66_022453BC

	arm_func_start ov66_022454C8
ov66_022454C8: ; 0x022454C8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x38
	ldr r2, _022456A8 ; =0x0225B6DC
	mov r5, r0
	ldr r2, [r2, #0]
	mov r4, r1
	cmp r2, #0
	addeq sp, sp, #0x38
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	beq _0224551C
	ldr r0, [r2, #4]
	cmp r0, #5
	addeq sp, sp, #0x38
	moveq r0, #7
	ldmeqia sp!, {r3, r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
_0224551C:
	cmp r2, #0
	beq _02245548
	ldr r0, _022456A8 ; =0x0225B6DC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #3
	addne sp, sp, #0x38
	movne r0, #4
	ldmneia sp!, {r3, r4, r5, lr}
	addne sp, sp, #0x10
	bxne lr
_02245548:
	ldr r0, [sp, #0x54]
	bl strlen
	add r0, r0, #1
	cmp r0, #0x190
	bhi _02245570
	ldr r0, [sp, #0x50]
	bl strlen
	add r0, r0, #1
	cmp r0, #0x14
	bls _02245584
_02245570:
	add sp, sp, #0x38
	mov r0, #3
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_02245584:
	ldr r1, _022456AC ; =0x02259204
	add r0, sp, #0x2c
	bl ov66_0223BA6C
	mvn r0, #0
	cmp r4, r0
	bne _022455AC
	ldr r1, _022456AC ; =0x02259204
	add r0, sp, #0x2c
	bl ov66_022419DC
	b _02245610
_022455AC:
	ldr r1, _022456A8 ; =0x0225B6DC
	add r0, sp, #0x20
	ldr r1, [r1, #0]
	mov r2, r4
	bl ov66_02247578
	add r0, sp, #0x2c
	add r1, sp, #0x20
	bl ov66_0223BC5C
	add r0, sp, #0x20
	bl ov66_0223BADC
	ldr r1, _022456AC ; =0x02259204
	add r0, sp, #0x2c
	bl ov66_0223BEEC
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02245610
	add r0, sp, #0x2c
	bl ov66_0223BADC
	add sp, sp, #0x38
	mov r0, #3
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_02245610:
	add r0, sp, #0x14
	mov r1, r5
	bl ov66_0223BA6C
	ldr r1, _022456A8 ; =0x0225B6DC
	add r0, sp, #8
	ldr r1, [r1, #0]
	add r2, sp, #0x14
	bl ov66_022467C4
	ldr r0, [sp, #0x2c]
	add r3, sp, #0x54
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldr r0, [sp, #8]
	addeq r2, sp, #0x2d
	mov r0, r0, lsl #0x1f
	ldrne r2, [sp, #0x34]
	movs r0, r0, lsr #0x1f
	addeq r1, sp, #9
	ldrne r1, [sp, #0x10]
	add r0, sp, #0x50
	str r0, [sp]
	str r3, [sp, #4]
	ldr r0, _022456A8 ; =0x0225B6DC
	mov r3, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov66_02255450
	add r0, sp, #8
	bl ov66_0223BADC
	add r0, sp, #0x14
	bl ov66_0223BADC
	add r0, sp, #0x2c
	bl ov66_0223BADC
	mov r0, #0
	add sp, sp, #0x38
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_022456A8: .word Unk_ov66_0225B6DC
_022456AC: .word Unk_ov66_02259204
	arm_func_end ov66_022454C8

	arm_func_start ov66_022456B0
ov66_022456B0: ; 0x022456B0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x50
	ldr r2, _02245904 ; =0x0225B6DC
	mov r6, r0
	ldr r2, [r2, #0]
	mov r4, r1
	cmp r2, #0
	mov r5, r3
	addeq sp, sp, #0x50
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	beq _02245708
	ldr r0, [r2, #4]
	cmp r0, #5
	addeq sp, sp, #0x50
	moveq r0, #7
	ldmeqia sp!, {r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
_02245708:
	cmp r2, #0
	beq _02245734
	ldr r0, _02245904 ; =0x0225B6DC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #3
	addne sp, sp, #0x50
	movne r0, #4
	ldmneia sp!, {r4, r5, r6, lr}
	addne sp, sp, #0x10
	bxne lr
_02245734:
	ldr r0, [sp, #0x68]
	bl strlen
	add r0, r0, #1
	cmp r0, #0x14
	addhi sp, sp, #0x50
	movhi r0, #3
	ldmhiia sp!, {r4, r5, r6, lr}
	addhi sp, sp, #0x10
	bxhi lr
	ldr r1, _02245908 ; =0x02259204
	add r0, sp, #0x44
	bl ov66_0223BA6C
	mvn r0, #0
	cmp r4, r0
	bne _02245780
	ldr r1, _02245908 ; =0x02259204
	add r0, sp, #0x44
	bl ov66_022419DC
	b _022457E4
_02245780:
	ldr r1, _02245904 ; =0x0225B6DC
	add r0, sp, #0x38
	ldr r1, [r1, #0]
	mov r2, r4
	bl ov66_02247578
	add r0, sp, #0x44
	add r1, sp, #0x38
	bl ov66_0223BC5C
	add r0, sp, #0x38
	bl ov66_0223BADC
	ldr r1, _02245908 ; =0x02259204
	add r0, sp, #0x44
	bl ov66_0223BEEC
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _022457E4
	add r0, sp, #0x44
	bl ov66_0223BADC
	add sp, sp, #0x50
	mov r0, #3
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_022457E4:
	ldr r1, _02245904 ; =0x0225B6DC
	mov r0, #0x10
	ldr r4, [r1, #0]
	bl ov66_02246290
	cmp r0, #0
	beq _02245830
	ldr r2, _0224590C ; =0x02259138
	ldr r1, _02245910 ; =0x0225B6E0
	str r2, [r0, #0]
	mov r3, #0
	ldr r2, [sp, #0x70]
	str r3, [r0, #4]
	ldr ip, [r1]
	str r2, [r0, #8]
	ldr r2, _02245914 ; =0x02259168
	add r3, ip, #1
	stmia r0, {r2, ip}
	str r3, [r1, #0]
	str r5, [r0, #0xc]
_02245830:
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	add r2, sp, #0x14
	add r1, r4, #0x90
	bl ov66_02245F68
	mov r1, #0
	ldr r0, [sp, #0x14]
	strb r1, [sp, #0x10]
	strb r1, [sp, #0x11]
	ldr r1, [r0, #0]
	ldr r1, [r1, #8]
	blx r1
	mov r4, r0
	add r0, sp, #0x2c
	mov r1, r6
	bl ov66_0223BA6C
	ldr r1, _02245904 ; =0x0225B6DC
	add r0, sp, #0x20
	ldr r1, [r1, #0]
	add r2, sp, #0x2c
	bl ov66_022467C4
	ldr r0, [sp, #0x44]
	add r3, sp, #0x68
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldr r0, [sp, #0x20]
	addeq r2, sp, #0x45
	mov r0, r0, lsl #0x1f
	ldrne r2, [sp, #0x4c]
	movs r0, r0, lsr #0x1f
	addeq r1, sp, #0x21
	ldrne r1, [sp, #0x28]
	ldr r0, _02245918 ; =ov66_0224439C
	str r3, [sp]
	stmib sp, {r0, r4}
	mov r3, #0
	str r3, [sp, #0xc]
	ldr r0, _02245904 ; =0x0225B6DC
	mov r3, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov66_022557EC
	add r0, sp, #0x20
	bl ov66_0223BADC
	add r0, sp, #0x2c
	bl ov66_0223BADC
	add r0, sp, #0x44
	bl ov66_0223BADC
	mov r0, #0
	add sp, sp, #0x50
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_02245904: .word Unk_ov66_0225B6DC
_02245908: .word Unk_ov66_02259204
_0224590C: .word 0x02259138
_02245910: .word Unk_ov66_0225B6E0
_02245914: .word 0x02259168
_02245918: .word ov66_0224439C
	arm_func_end ov66_022456B0

	arm_func_start ov66_0224591C
ov66_0224591C: ; 0x0224591C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	ldr r3, _02245A68 ; =0x0225B6DC
	mov r7, r0
	ldr r4, [r3, #0]
	mov r6, r1
	cmp r4, #0
	mov r5, r2
	addeq sp, sp, #0x30
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	beq _02245960
	ldr r0, [r4, #4]
	cmp r0, #5
	addeq sp, sp, #0x30
	moveq r0, #7
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_02245960:
	cmp r4, #0
	beq _02245984
	ldr r0, _02245A68 ; =0x0225B6DC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #3
	addne sp, sp, #0x30
	movne r0, #4
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_02245984:
	mov r0, #0x10
	bl ov66_02246290
	cmp r0, #0
	beq _022459C0
	ldr r2, _02245A6C ; =0x02259138
	ldr r1, _02245A70 ; =0x0225B6E0
	str r2, [r0, #0]
	mov r2, #0
	ldr ip, [r1]
	stmib r0, {r2, r5}
	ldr r2, _02245A74 ; =0x022591B0
	add r3, ip, #1
	stmia r0, {r2, ip}
	str r3, [r1, #0]
	str r6, [r0, #0xc]
_022459C0:
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	add r2, sp, #0xc
	add r1, r4, #0x90
	bl ov66_02245F68
	mov r1, #0
	ldr r0, [sp, #0xc]
	strb r1, [sp, #8]
	strb r1, [sp, #9]
	ldr r1, [r0, #0]
	ldr r1, [r1, #8]
	blx r1
	mov r4, r0
	add r0, sp, #0x24
	mov r1, r7
	bl ov66_0223BA6C
	ldr r1, _02245A68 ; =0x0225B6DC
	add r0, sp, #0x18
	ldr r1, [r1, #0]
	add r2, sp, #0x24
	bl ov66_022467C4
	ldr r0, [sp, #0x18]
	mov r2, #0
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, sp, #0x19
	ldrne r1, [sp, #0x20]
	ldr r0, _02245A68 ; =0x0225B6DC
	str r4, [sp]
	str r2, [sp, #4]
	ldr r0, [r0, #0]
	ldr r2, _02245A78 ; =ov66_02243D28
	ldr r0, [r0, #0]
	ldr r3, _02245A7C ; =ov66_02243B74
	bl ov66_0225449C
	add r0, sp, #0x18
	bl ov66_0223BADC
	add r0, sp, #0x24
	bl ov66_0223BADC
	mov r0, #0
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02245A68: .word Unk_ov66_0225B6DC
_02245A6C: .word 0x02259138
_02245A70: .word Unk_ov66_0225B6E0
_02245A74: .word 0x022591B0
_02245A78: .word ov66_02243D28
_02245A7C: .word ov66_02243B74
	arm_func_end ov66_0224591C

	arm_func_start ov66_02245A80
ov66_02245A80: ; 0x02245A80
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	ldr r3, _02245C40 ; =0x0225B6DC
	mov r7, r0
	ldr r3, [r3, #0]
	mov r6, r1
	cmp r3, #0
	mov r5, r2
	addeq sp, sp, #0x44
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	beq _02245AC4
	ldr r0, [r3, #4]
	cmp r0, #5
	addeq sp, sp, #0x44
	moveq r0, #7
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_02245AC4:
	cmp r3, #0
	beq _02245AE8
	ldr r0, _02245C40 ; =0x0225B6DC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #3
	addne sp, sp, #0x44
	movne r0, #4
	ldmneia sp!, {r4, r5, r6, r7, pc}
_02245AE8:
	add r0, sp, #0x38
	mov r1, r7
	bl ov66_0223BA6C
	ldr r1, _02245C40 ; =0x0225B6DC
	add r0, sp, #0x2c
	ldr r1, [r1, #0]
	add r2, sp, #0x38
	bl ov66_022467C4
	ldr r0, [sp, #0x2c]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldr r0, _02245C40 ; =0x0225B6DC
	addeq r1, sp, #0x2d
	ldr r0, [r0, #0]
	ldrne r1, [sp, #0x34]
	ldr r0, [r0, #0]
	bl ov66_02254F20
	cmp r0, #0
	moveq r4, #1
	add r0, sp, #0x2c
	movne r4, #0
	bl ov66_0223BADC
	add r0, sp, #0x38
	bl ov66_0223BADC
	cmp r4, #0
	addne sp, sp, #0x44
	movne r0, #5
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r1, _02245C40 ; =0x0225B6DC
	mov r0, #0x10
	ldr r4, [r1, #0]
	bl ov66_02246290
	cmp r0, #0
	beq _02245B9C
	ldr r2, _02245C44 ; =0x02259138
	ldr r1, _02245C48 ; =0x0225B6E0
	str r2, [r0, #0]
	mov r2, #0
	ldr ip, [r1]
	stmib r0, {r2, r5}
	ldr r2, _02245C4C ; =0x02259198
	add r3, ip, #1
	stmia r0, {r2, ip}
	str r3, [r1, #0]
	str r6, [r0, #0xc]
_02245B9C:
	str r0, [sp, #8]
	add r0, sp, #0xc
	add r2, sp, #8
	add r1, r4, #0x90
	bl ov66_02245F68
	mov r1, #0
	ldr r0, [sp, #8]
	strb r1, [sp, #4]
	strb r1, [sp, #5]
	ldr r1, [r0, #0]
	ldr r1, [r1, #8]
	blx r1
	mov r4, r0
	add r0, sp, #0x20
	mov r1, r7
	bl ov66_0223BA6C
	ldr r1, _02245C40 ; =0x0225B6DC
	add r0, sp, #0x14
	ldr r1, [r1, #0]
	add r2, sp, #0x20
	bl ov66_022467C4
	ldr r0, [sp, #0x14]
	mov r2, #0
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, sp, #0x15
	ldrne r1, [sp, #0x1c]
	ldr r0, _02245C40 ; =0x0225B6DC
	str r2, [sp]
	ldr r0, [r0, #0]
	ldr r2, _02245C50 ; =ov66_02243D30
	ldr r0, [r0, #0]
	mov r3, r4
	bl ov66_02255104
	add r0, sp, #0x14
	bl ov66_0223BADC
	add r0, sp, #0x20
	bl ov66_0223BADC
	mov r0, #0
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_02245C40: .word Unk_ov66_0225B6DC
_02245C44: .word 0x02259138
_02245C48: .word Unk_ov66_0225B6E0
_02245C4C: .word 0x02259198
_02245C50: .word ov66_02243D30
	arm_func_end ov66_02245A80

	arm_func_start ov66_02245C54
ov66_02245C54: ; 0x02245C54
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	ldr r2, _02245D1C ; =0x0225B6DC
	mov r4, r1
	ldr r2, [r2, #0]
	mov r3, r0
	cmp r2, #0
	addeq sp, sp, #0x18
	moveq r0, #4
	ldmeqia sp!, {r4, pc}
	beq _02245C94
	ldr r0, [r2, #4]
	cmp r0, #5
	addeq sp, sp, #0x18
	moveq r0, #7
	ldmeqia sp!, {r4, pc}
_02245C94:
	cmp r2, #0
	beq _02245CB8
	ldr r0, _02245D1C ; =0x0225B6DC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #3
	addne sp, sp, #0x18
	movne r0, #4
	ldmneia sp!, {r4, pc}
_02245CB8:
	add r0, sp, #0xc
	mov r1, r3
	bl ov66_0223BA6C
	ldr r1, _02245D1C ; =0x0225B6DC
	add r0, sp, #0
	ldr r1, [r1, #0]
	add r2, sp, #0xc
	bl ov66_022467C4
	ldr r0, [sp]
	mov r2, r4
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldr r0, _02245D1C ; =0x0225B6DC
	addeq r1, sp, #1
	ldr r0, [r0, #0]
	ldrne r1, [sp, #8]
	ldr r0, [r0, #0]
	bl ov66_0225497C
	add r0, sp, #0
	bl ov66_0223BADC
	add r0, sp, #0xc
	bl ov66_0223BADC
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02245D1C: .word Unk_ov66_0225B6DC
	arm_func_end ov66_02245C54

	arm_func_start ov66_02245D20
ov66_02245D20: ; 0x02245D20
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	ldr r3, _02245E68 ; =0x0225B6DC
	mov r7, r0
	ldr r4, [r3, #0]
	mov r6, r1
	cmp r4, #0
	mov r5, r2
	addeq sp, sp, #0x2c
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	beq _02245D64
	ldr r0, [r4, #4]
	cmp r0, #5
	addeq sp, sp, #0x2c
	moveq r0, #7
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_02245D64:
	cmp r4, #0
	beq _02245D88
	ldr r0, _02245E68 ; =0x0225B6DC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #3
	addne sp, sp, #0x2c
	movne r0, #4
	ldmneia sp!, {r4, r5, r6, r7, pc}
_02245D88:
	mov r0, #0x10
	bl ov66_02246290
	cmp r0, #0
	beq _02245DC4
	ldr r2, _02245E6C ; =0x02259138
	ldr r1, _02245E70 ; =0x0225B6E0
	str r2, [r0, #0]
	mov r2, #0
	ldr ip, [r1]
	stmib r0, {r2, r5}
	ldr r2, _02245E74 ; =0x02259150
	add r3, ip, #1
	stmia r0, {r2, ip}
	str r3, [r1, #0]
	str r6, [r0, #0xc]
_02245DC4:
	str r0, [sp, #8]
	add r0, sp, #0xc
	add r2, sp, #8
	add r1, r4, #0x90
	bl ov66_02245F68
	mov r1, #0
	ldr r0, [sp, #8]
	strb r1, [sp, #4]
	strb r1, [sp, #5]
	ldr r1, [r0, #0]
	ldr r1, [r1, #8]
	blx r1
	mov r4, r0
	add r0, sp, #0x20
	mov r1, r7
	bl ov66_0223BA6C
	ldr r1, _02245E68 ; =0x0225B6DC
	add r0, sp, #0x14
	ldr r1, [r1, #0]
	add r2, sp, #0x20
	bl ov66_022467C4
	ldr r0, [sp, #0x14]
	mov r2, #0
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, sp, #0x15
	ldrne r1, [sp, #0x1c]
	ldr r0, _02245E68 ; =0x0225B6DC
	str r2, [sp]
	ldr r0, [r0, #0]
	ldr r2, _02245E78 ; =ov66_02244620
	ldr r0, [r0, #0]
	mov r3, r4
	bl ov66_02254B7C
	add r0, sp, #0x14
	bl ov66_0223BADC
	add r0, sp, #0x20
	bl ov66_0223BADC
	mov r0, #0
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_02245E68: .word Unk_ov66_0225B6DC
_02245E6C: .word 0x02259138
_02245E70: .word Unk_ov66_0225B6E0
_02245E74: .word 0x02259150
_02245E78: .word ov66_02244620
	arm_func_end ov66_02245D20

	arm_func_start ov66_02245E7C
ov66_02245E7C: ; 0x02245E7C
	stmfd sp!, {r4, lr}
	movs r4, r0
	beq _02245E98
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl DWC_Free
_02245E98:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_02245E7C

	arm_func_start ov66_02245EA0
ov66_02245EA0: ; 0x02245EA0
	bx lr
	arm_func_end ov66_02245EA0

	arm_func_start ov66_02245EA4
ov66_02245EA4: ; 0x02245EA4
	stmfd sp!, {r4, lr}
	movs r4, r0
	beq _02245EC0
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl DWC_Free
_02245EC0:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_02245EA4

	arm_func_start ov66_02245EC8
ov66_02245EC8: ; 0x02245EC8
	bx lr
	arm_func_end ov66_02245EC8

	arm_func_start ov66_02245ECC
ov66_02245ECC: ; 0x02245ECC
	stmfd sp!, {r4, lr}
	movs r4, r0
	beq _02245EE8
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl DWC_Free
_02245EE8:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_02245ECC

	arm_func_start ov66_02245EF0
ov66_02245EF0: ; 0x02245EF0
	bx lr
	arm_func_end ov66_02245EF0

	arm_func_start ov66_02245EF4
ov66_02245EF4: ; 0x02245EF4
	stmfd sp!, {r4, lr}
	movs r4, r0
	beq _02245F10
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl DWC_Free
_02245F10:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_02245EF4

	arm_func_start ov66_02245F18
ov66_02245F18: ; 0x02245F18
	bx lr
	arm_func_end ov66_02245F18

	arm_func_start ov66_02245F1C
ov66_02245F1C: ; 0x02245F1C
	stmfd sp!, {r4, lr}
	movs r4, r0
	beq _02245F38
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl DWC_Free
_02245F38:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_02245F1C

	arm_func_start ov66_02245F40
ov66_02245F40: ; 0x02245F40
	bx lr
	arm_func_end ov66_02245F40

	arm_func_start ov66_02245F44
ov66_02245F44: ; 0x02245F44
	stmfd sp!, {r4, lr}
	movs r4, r0
	beq _02245F60
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl DWC_Free
_02245F60:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_02245F44

	arm_func_start ov66_02245F68
ov66_02245F68: ; 0x02245F68
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	add ip, sp, #4
	mov r4, r2
	mov r5, r1
	mov r6, r0
	add r2, sp, #8
	add r3, sp, #5
	mov r0, r5
	mov r1, r4
	str ip, [sp]
	bl ov66_0224621C
	ldr r3, [sp, #8]
	mov r1, r0
	cmp r3, #0
	beq _02245FC0
	ldr r2, [r3, #0xc]
	ldr r0, [r4, #0]
	ldr r2, [r2, #4]
	ldr r0, [r0, #4]
	cmp r2, r0
	bhs _02245FEC
_02245FC0:
	str r4, [sp]
	ldrb r2, [sp, #5]
	ldrb r3, [sp, #4]
	mov r0, r5
	bl ov66_02246008
	ldr r1, _02246004 ; =0x02259128
	str r0, [r6, #0]
	ldrb r0, [r1, #1]
	add sp, sp, #0xc
	strb r0, [r6, #4]
	ldmia sp!, {r3, r4, r5, r6, pc}
_02245FEC:
	ldr r0, _02246004 ; =0x02259128
	str r3, [r6, #0]
	ldrb r0, [r0, #5]
	strb r0, [r6, #4]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_02246004: .word Unk_ov66_02259128
	arm_func_end ov66_02245F68

	arm_func_start ov66_02246008
ov66_02246008: ; 0x02246008
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r8, r0
	ldr r4, [r8]
	mvn r0, #0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r4, r0
	bne _0224603C
	ldr r0, _022460DC ; =0x0225923C
	bl printf
	bl abort
_0224603C:
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
	beq _022460D0
	mov r0, #0
	mov r2, r0
	bl DWC_Free
_022460D0:
	mov r0, r4
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_022460DC: .word Unk_ov66_0225923C
	arm_func_end ov66_02246008

	arm_func_start ov66_022460E0
ov66_022460E0: ; 0x022460E0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, [r5, #4]
	mov r0, #0
	strb r0, [sp, #2]
	ldr r1, [r5, #4]
	mov r4, r2
	sub r1, r1, r3
	str r1, [r5, #4]
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _02246128
	beq _0224611C
	mov r2, r0
	bl DWC_Free
_0224611C:
	mov r0, #0
	str r0, [r5, #0]
	str r0, [r5, #8]
_02246128:
	mov r3, #0
	strb r3, [sp]
	sub r0, sp, #4
	strb r3, [r0]
	ldr r2, [r0, #0]
	mov r0, r5
	mov r1, r4
	strb r3, [sp, #1]
	bl ov66_0224290C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_022460E0

	arm_func_start ov66_02246150
ov66_02246150: ; 0x02246150
	stmfd sp!, {r3, lr}
	ldr r3, [r1, #0]
	mov r3, r3, lsl #0x1f
	movs r3, r3, lsr #0x1f
	ldmneib r1, {r3, ip}
	bne _02246178
	ldrb r3, [r1]
	add ip, r1, #1
	mov r1, r3, lsl #0x18
	mov r3, r1, lsr #0x19
_02246178:
	mov r1, ip
	bl ov66_02246184
	ldmia sp!, {r3, pc}
	arm_func_end ov66_02246150

	arm_func_start ov66_02246184
ov66_02246184: ; 0x02246184
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr ip, [r0]
	mov ip, ip, lsl #0x1f
	movs ip, ip, lsr #0x1f
	ldrne lr, [r0, #8]
	ldrne r0, [r0, #4]
	bne _022461B0
	ldrb ip, [r0]
	add lr, r0, #1
	mov r0, ip, lsl #0x18
	mov r0, r0, lsr #0x19
_022461B0:
	cmp r2, r0
	bhs _02246214
	cmp r3, #0
	beq _02246214
	add ip, lr, r0
	add r4, lr, r2
	cmp r4, ip
	bhs _02246214
	mov r2, #0
_022461D4:
	mov r5, r1
	mov r6, r2
	cmp r3, #0
	bls _02246208
	ldrsb r7, [r4]
_022461E8:
	ldrsb r0, [r5]
	cmp r7, r0
	subeq r0, r4, lr
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r6, r6, #1
	cmp r6, r3
	add r5, r5, #1
	blo _022461E8
_02246208:
	add r4, r4, #1
	cmp r4, ip
	blo _022461D4
_02246214:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov66_02246184

	arm_func_start ov66_0224621C
ov66_0224621C: ; 0x0224621C
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
_02246250:
	ldr r4, [r1, #0]
	ldr r0, [r6, #0xc]
	ldr r5, [r4, #4]
	ldr r4, [r0, #4]
	mov r0, r6
	cmp r5, r4
	ldrlo r6, [r6]
	strlob lr, [r3]
	blo _02246284
	str r6, [r2, #0]
	ldr r6, [r6, #4]
	strb ip, [r3]
	strb ip, [r7]
_02246284:
	cmp r6, #0
	bne _02246250
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov66_0224621C
	.data


	.global Unk_ov66_02259128
Unk_ov66_02259128: ; 0x02259128
	.incbin "incbin/overlay66_data.bin", 0x408, 0x409 - 0x408

	.global Unk_ov66_02259129
Unk_ov66_02259129: ; 0x02259129
	.incbin "incbin/overlay66_data.bin", 0x409, 0x40A - 0x409

	.global Unk_ov66_0225912A
Unk_ov66_0225912A: ; 0x0225912A
	.incbin "incbin/overlay66_data.bin", 0x40A, 0x40B - 0x40A

	.global Unk_ov66_0225912B
Unk_ov66_0225912B: ; 0x0225912B
	.incbin "incbin/overlay66_data.bin", 0x40B, 0x40C - 0x40B

	.global Unk_ov66_0225912C
Unk_ov66_0225912C: ; 0x0225912C
	.incbin "incbin/overlay66_data.bin", 0x40C, 0x40D - 0x40C

	.global Unk_ov66_0225912D
Unk_ov66_0225912D: ; 0x0225912D
	.incbin "incbin/overlay66_data.bin", 0x40D, 0x410 - 0x40D

	.global Unk_ov66_02259130
Unk_ov66_02259130: ; 0x02259130
	.incbin "incbin/overlay66_data.bin", 0x410, 0x428 - 0x410

	.global Unk_ov66_02259148
Unk_ov66_02259148: ; 0x02259148
	.incbin "incbin/overlay66_data.bin", 0x428, 0x440 - 0x428

	.global Unk_ov66_02259160
Unk_ov66_02259160: ; 0x02259160
	.incbin "incbin/overlay66_data.bin", 0x440, 0x458 - 0x440

	.global Unk_ov66_02259178
Unk_ov66_02259178: ; 0x02259178
	.incbin "incbin/overlay66_data.bin", 0x458, 0x470 - 0x458

	.global Unk_ov66_02259190
Unk_ov66_02259190: ; 0x02259190
	.incbin "incbin/overlay66_data.bin", 0x470, 0x488 - 0x470

	.global Unk_ov66_022591A8
Unk_ov66_022591A8: ; 0x022591A8
	.incbin "incbin/overlay66_data.bin", 0x488, 0x4A0 - 0x488

	.global Unk_ov66_022591C0
Unk_ov66_022591C0: ; 0x022591C0
	.incbin "incbin/overlay66_data.bin", 0x4A0, 0x4A8 - 0x4A0

	.global Unk_ov66_022591C8
Unk_ov66_022591C8: ; 0x022591C8
	.incbin "incbin/overlay66_data.bin", 0x4A8, 0x4B8 - 0x4A8

	.global Unk_ov66_022591D8
Unk_ov66_022591D8: ; 0x022591D8
	.incbin "incbin/overlay66_data.bin", 0x4B8, 0x4BC - 0x4B8

	.global Unk_ov66_022591DC
Unk_ov66_022591DC: ; 0x022591DC
	.incbin "incbin/overlay66_data.bin", 0x4BC, 0x4C4 - 0x4BC

	.global Unk_ov66_022591E4
Unk_ov66_022591E4: ; 0x022591E4
	.incbin "incbin/overlay66_data.bin", 0x4C4, 0x4CC - 0x4C4

	.global Unk_ov66_022591EC
Unk_ov66_022591EC: ; 0x022591EC
	.incbin "incbin/overlay66_data.bin", 0x4CC, 0x4D0 - 0x4CC

	.global Unk_ov66_022591F0
Unk_ov66_022591F0: ; 0x022591F0
	.incbin "incbin/overlay66_data.bin", 0x4D0, 0x4DC - 0x4D0

	.global Unk_ov66_022591FC
Unk_ov66_022591FC: ; 0x022591FC
	.incbin "incbin/overlay66_data.bin", 0x4DC, 0x4E4 - 0x4DC

	.global Unk_ov66_02259204
Unk_ov66_02259204: ; 0x02259204
	.incbin "incbin/overlay66_data.bin", 0x4E4, 0x4E8 - 0x4E4

	.global Unk_ov66_02259208
Unk_ov66_02259208: ; 0x02259208
	.incbin "incbin/overlay66_data.bin", 0x4E8, 0x4F0 - 0x4E8

	.global Unk_ov66_02259210
Unk_ov66_02259210: ; 0x02259210
	.incbin "incbin/overlay66_data.bin", 0x4F0, 0x4F8 - 0x4F0

	.global Unk_ov66_02259218
Unk_ov66_02259218: ; 0x02259218
	.incbin "incbin/overlay66_data.bin", 0x4F8, 0x4FC - 0x4F8

	.global Unk_ov66_0225921C
Unk_ov66_0225921C: ; 0x0225921C
	.incbin "incbin/overlay66_data.bin", 0x4FC, 0x51C - 0x4FC

	.global Unk_ov66_0225923C
Unk_ov66_0225923C: ; 0x0225923C
	.incbin "incbin/overlay66_data.bin", 0x51C, 0x1A


	.bss


	.global Unk_ov66_0225B6DC
Unk_ov66_0225B6DC: ; 0x0225B6DC
	.space 0x4

	.global Unk_ov66_0225B6E0
Unk_ov66_0225B6E0: ; 0x0225B6E0
	.space 0x4

