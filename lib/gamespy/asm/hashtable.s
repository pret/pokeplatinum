	.include "macros/function.inc"
	.include "include/hashtable.inc"

	

	.text


	arm_func_start ov4_021EA1FC
ov4_021EA1FC: ; 0x021EA1FC
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr ip, [sp, #0x10]
	str r3, [sp]
	mov r3, r2
	mov r2, #4
	str ip, [sp, #4]
	bl ov4_021EA224
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021EA1FC

	arm_func_start ov4_021EA224
ov4_021EA224: ; 0x021EA224
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	movs r7, r3
	mov sl, r0
	mov sb, r1
	mov r8, r2
	ldr r6, [sp, #0x24]
	bne _021EA254
	ldr r0, _021EA344 ; =0x02217880
	ldr r1, _021EA348 ; =0x02217888
	ldr r2, _021EA34C ; =0x02217818
	mov r3, #0x38
	bl __msl_assertion_failed
_021EA254:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _021EA274
	ldr r0, _021EA350 ; =0x02217894
	ldr r1, _021EA348 ; =0x02217888
	ldr r2, _021EA34C ; =0x02217818
	mov r3, #0x39
	bl __msl_assertion_failed
_021EA274:
	cmp sl, #0
	bne _021EA290
	ldr r0, _021EA354 ; =0x0221789C
	ldr r1, _021EA348 ; =0x02217888
	ldr r2, _021EA34C ; =0x02217818
	mov r3, #0x3a
	bl __msl_assertion_failed
_021EA290:
	cmp sb, #0
	bne _021EA2AC
	ldr r0, _021EA358 ; =0x022178A8
	ldr r1, _021EA348 ; =0x02217888
	ldr r2, _021EA34C ; =0x02217818
	mov r3, #0x3b
	bl __msl_assertion_failed
_021EA2AC:
	mov r0, #0x14
	bl DWCi_GsMalloc
	movs r4, r0
	bne _021EA2D0
	ldr r0, _021EA35C ; =0x022178B4
	ldr r1, _021EA348 ; =0x02217888
	ldr r2, _021EA34C ; =0x02217818
	mov r3, #0x3e
	bl __msl_assertion_failed
_021EA2D0:
	mov r0, sb, lsl #2
	bl DWCi_GsMalloc
	str r0, [r4, #0]
	cmp r0, #0
	bne _021EA2F8
	ldr r0, _021EA360 ; =0x022178BC
	ldr r1, _021EA348 ; =0x02217888
	ldr r2, _021EA34C ; =0x02217818
	mov r3, #0x41
	bl __msl_assertion_failed
_021EA2F8:
	cmp sb, #0
	mov r5, #0
	ble _021EA328
_021EA304:
	mov r0, sl
	mov r1, r8
	mov r2, r6
	bl ov4_021E9A8C
	ldr r1, [r4, #0]
	str r0, [r1, r5, lsl #2]
	add r5, r5, #1
	cmp r5, sb
	blt _021EA304
_021EA328:
	str sb, [r4, #4]
	ldr r0, [sp, #0x20]
	str r6, [r4, #8]
	str r0, [r4, #0x10]
	mov r0, r4
	str r7, [r4, #0xc]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_021EA344: .word Unk_ov4_02217880
_021EA348: .word Unk_ov4_02217888
_021EA34C: .word Unk_ov4_02217818
_021EA350: .word Unk_ov4_02217894
_021EA354: .word Unk_ov4_0221789C
_021EA358: .word Unk_ov4_022178A8
_021EA35C: .word Unk_ov4_022178B4
_021EA360: .word Unk_ov4_022178BC
	arm_func_end ov4_021EA224

	arm_func_start ov4_021EA364
ov4_021EA364: ; 0x021EA364
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	bne _021EA384
	ldr r0, _021EA3CC ; =0x022178B4
	ldr r1, _021EA3D0 ; =0x02217888
	ldr r2, _021EA3D4 ; =0x02217824
	mov r3, #0x51
	bl __msl_assertion_failed
_021EA384:
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #4]
	mov r4, #0
	cmp r0, #0
	ble _021EA3B8
_021EA39C:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4, lsl #2]
	bl ov4_021E9B50
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EA39C
_021EA3B8:
	ldr r0, [r5, #0]
	bl DWCi_GsFree
	mov r0, r5
	bl DWCi_GsFree
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021EA3CC: .word Unk_ov4_022178B4
_021EA3D0: .word Unk_ov4_02217888
_021EA3D4: .word Unk_ov4_02217824
	arm_func_end ov4_021EA364

	arm_func_start ov4_021EA3D8
ov4_021EA3D8: ; 0x021EA3D8
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, #0
	bne _021EA3FC
	ldr r0, _021EA440 ; =0x022178B4
	ldr r1, _021EA444 ; =0x02217888
	ldr r2, _021EA448 ; =0x0221783C
	mov r3, #0x61
	bl __msl_assertion_failed
_021EA3FC:
	cmp r6, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	mov r4, #0
	cmp r0, #0
	ble _021EA438
_021EA418:
	ldr r0, [r6, #0]
	ldr r0, [r0, r4, lsl #2]
	bl ov4_021E9BBC
	ldr r1, [r6, #4]
	add r4, r4, #1
	cmp r4, r1
	add r5, r5, r0
	blt _021EA418
_021EA438:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021EA440: .word Unk_ov4_022178B4
_021EA444: .word Unk_ov4_02217888
_021EA448: .word Unk_ov4_0221783C
	arm_func_end ov4_021EA3D8

	arm_func_start ov4_021EA44C
ov4_021EA44C: ; 0x021EA44C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	movs r6, r0
	mov r5, r1
	bne _021EA474
	ldr r0, _021EA4E8 ; =0x022178B4
	ldr r1, _021EA4EC ; =0x02217888
	ldr r2, _021EA4F0 ; =0x02217830
	mov r3, #0x71
	bl __msl_assertion_failed
_021EA474:
	cmp r6, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r6, #4]
	ldr r2, [r6, #0xc]
	mov r0, r5
	blx r2
	mov r3, #0
	str r3, [sp]
	ldr r1, [r6, #0]
	mov r4, r0
	ldr r0, [r1, r4, lsl #2]
	ldr r2, [r6, #0x10]
	mov r1, r5
	bl ov4_021E9F18
	mov r2, r0
	mvn r0, #0
	cmp r2, r0
	ldr r0, [r6, #0]
	mov r1, r5
	bne _021EA4D8
	ldr r0, [r0, r4, lsl #2]
	bl ov4_021E9C2C
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
_021EA4D8:
	ldr r0, [r0, r4, lsl #2]
	bl ov4_021E9E98
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_021EA4E8: .word Unk_ov4_022178B4
_021EA4EC: .word Unk_ov4_02217888
_021EA4F0: .word Unk_ov4_02217830
	arm_func_end ov4_021EA44C

	arm_func_start ov4_021EA4F4
ov4_021EA4F4: ; 0x021EA4F4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	movs r6, r0
	mov r5, r1
	bne _021EA51C
	ldr r0, _021EA58C ; =0x022178B4
	ldr r1, _021EA590 ; =0x02217888
	ldr r2, _021EA594 ; =0x02217848
	mov r3, #0x82
	bl __msl_assertion_failed
_021EA51C:
	cmp r6, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r6, #4]
	ldr r2, [r6, #0xc]
	mov r0, r5
	blx r2
	mov r3, #0
	str r3, [sp]
	ldr r1, [r6, #0]
	mov r4, r0
	ldr r0, [r1, r4, lsl #2]
	ldr r2, [r6, #0x10]
	mov r1, r5
	bl ov4_021E9F18
	mov r1, r0
	mvn r0, #0
	cmp r1, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6, #0]
	ldr r0, [r0, r4, lsl #2]
	bl ov4_021E9E40
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_021EA58C: .word Unk_ov4_022178B4
_021EA590: .word Unk_ov4_02217888
_021EA594: .word Unk_ov4_02217848
	arm_func_end ov4_021EA4F4

	arm_func_start ov4_021EA598
ov4_021EA598: ; 0x021EA598
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	movs r6, r0
	mov r5, r1
	bne _021EA5C0
	ldr r0, _021EA62C ; =0x022178B4
	ldr r1, _021EA630 ; =0x02217888
	ldr r2, _021EA634 ; =0x02217854
	mov r3, #0x94
	bl __msl_assertion_failed
_021EA5C0:
	cmp r6, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r6, #4]
	ldr r2, [r6, #0xc]
	mov r0, r5
	blx r2
	mov r3, #0
	str r3, [sp]
	ldr r1, [r6, #0]
	mov r4, r0
	ldr r0, [r1, r4, lsl #2]
	ldr r2, [r6, #0x10]
	mov r1, r5
	bl ov4_021E9F18
	mov r1, r0
	mvn r0, #0
	cmp r1, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6, #0]
	ldr r0, [r0, r4, lsl #2]
	bl ov4_021E9BC4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_021EA62C: .word Unk_ov4_022178B4
_021EA630: .word Unk_ov4_02217888
_021EA634: .word Unk_ov4_02217854
	arm_func_end ov4_021EA598

	arm_func_start ov4_021EA638
ov4_021EA638: ; 0x021EA638
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r0
	mov r6, r1
	mov r5, r2
	bne _021EA660
	ldr r0, _021EA6C0 ; =0x022178B4
	ldr r1, _021EA6C4 ; =0x02217888
	ldr r2, _021EA6C8 ; =0x0221780C
	mov r3, #0xa7
	bl __msl_assertion_failed
_021EA660:
	cmp r6, #0
	bne _021EA67C
	ldr r0, _021EA6CC ; =0x022178CC
	ldr r1, _021EA6C4 ; =0x02217888
	ldr r2, _021EA6C8 ; =0x0221780C
	mov r3, #0xa8
	bl __msl_assertion_failed
_021EA67C:
	cmp r7, #0
	cmpne r6, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #4]
	mov r4, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
_021EA698:
	ldr r0, [r7, #0]
	mov r1, r6
	ldr r0, [r0, r4, lsl #2]
	mov r2, r5
	bl ov4_021E9FD0
	ldr r0, [r7, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EA698
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021EA6C0: .word Unk_ov4_022178B4
_021EA6C4: .word Unk_ov4_02217888
_021EA6C8: .word Unk_ov4_0221780C
_021EA6CC: .word Unk_ov4_022178CC
	arm_func_end ov4_021EA638

	arm_func_start ov4_021EA6D0
ov4_021EA6D0: ; 0x021EA6D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r2
	bne _021EA6F8
	ldr r0, _021EA730 ; =0x022178CC
	ldr r1, _021EA734 ; =0x02217888
	ldr r2, _021EA738 ; =0x02217860
	mov r3, #0xb6
	bl __msl_assertion_failed
_021EA6F8:
	ldr r0, [r7, #4]
	mov r4, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
_021EA708:
	ldr r0, [r7, #0]
	mov r1, r6
	ldr r0, [r0, r4, lsl #2]
	mov r2, r5
	bl ov4_021EA03C
	ldr r0, [r7, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EA708
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021EA730: .word Unk_ov4_022178CC
_021EA734: .word Unk_ov4_02217888
_021EA738: .word Unk_ov4_02217860
	arm_func_end ov4_021EA6D0

	arm_func_start ov4_021EA73C
ov4_021EA73C: ; 0x021EA73C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r2
	bne _021EA764
	ldr r0, _021EA7A8 ; =0x022178CC
	ldr r1, _021EA7AC ; =0x02217888
	ldr r2, _021EA7B0 ; =0x02217870
	mov r3, #0xd3
	bl __msl_assertion_failed
_021EA764:
	ldr r0, [r7, #4]
	mov r4, #0
	cmp r0, #0
	ble _021EA7A0
_021EA774:
	ldr r0, [r7, #0]
	mov r1, r6
	ldr r0, [r0, r4, lsl #2]
	mov r2, r5
	bl ov4_021EA09C
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EA774
_021EA7A0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021EA7A8: .word Unk_ov4_022178CC
_021EA7AC: .word Unk_ov4_02217888
_021EA7B0: .word Unk_ov4_02217870
	arm_func_end ov4_021EA73C

	.data


	.global Unk_ov4_0221780C
Unk_ov4_0221780C: ; 0x0221780C
	.ascii "TableMap"
	.space 0x4

	.global Unk_ov4_02217818
Unk_ov4_02217818: ; 0x02217818
	.asciz "TableNew2"
	.space 0x2

	.global Unk_ov4_02217824
Unk_ov4_02217824: ; 0x02217824
	.asciz "TableFree"
	.space 0x2

	.global Unk_ov4_02217830
Unk_ov4_02217830: ; 0x02217830
	.ascii "TableEnter"
	.space 0x2

	.global Unk_ov4_0221783C
Unk_ov4_0221783C: ; 0x0221783C
	.ascii "TableCount"
	.space 0x2

	.global Unk_ov4_02217848
Unk_ov4_02217848: ; 0x02217848
	.asciz "TableRemove"

	.global Unk_ov4_02217854
Unk_ov4_02217854: ; 0x02217854
	.asciz "TableLookup"

	.global Unk_ov4_02217860
Unk_ov4_02217860: ; 0x02217860
	.ascii "TableMapSafe"
	.space 0x4

	.global Unk_ov4_02217870
Unk_ov4_02217870: ; 0x02217870
	.asciz "TableMapSafe2"
	.space 0x2

	.global Unk_ov4_02217880
Unk_ov4_02217880: ; 0x02217880
	.ascii "hashFn"
	.space 0x2

	.global Unk_ov4_02217888
Unk_ov4_02217888: ; 0x02217888
	.asciz "hashtable.c"

	.global Unk_ov4_02217894
Unk_ov4_02217894: ; 0x02217894
	.ascii "compFn"
	.space 0x2

	.global Unk_ov4_0221789C
Unk_ov4_0221789C: ; 0x0221789C
	.ascii "elemSize"
	.space 0x4

	.global Unk_ov4_022178A8
Unk_ov4_022178A8: ; 0x022178A8
	.ascii "nBuckets"
	.space 0x4

	.global Unk_ov4_022178B4
Unk_ov4_022178B4: ; 0x022178B4
	.asciz "table"
	.space 0x2

	.global Unk_ov4_022178BC
Unk_ov4_022178BC: ; 0x022178BC
	.ascii "table->buckets"
	.space 0x2

	.global Unk_ov4_022178CC
Unk_ov4_022178CC: ; 0x022178CC
	.ascii "fn"
	.space 0x2

