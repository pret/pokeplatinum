	.include "macros/function.inc"
	.include "include/gbucket.inc"

	

	.text


	arm_func_start BucketNew
BucketNew: ; 0x021F5D7C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	movs r7, r0
	ldreq r0, _021F5E08 ; =0x0221AF70
	mov r6, r1
	ldreq r7, [r0, #4]
	mov r5, r2
	mov r4, r3
	cmp r7, #0
	bne _021F5DB8
	ldr r0, _021F5E0C ; =0x0221932C
	ldr r1, _021F5E10 ; =0x02219330
	ldr r2, _021F5E14 ; =0x02219310
	mov r3, #0x78
	bl __msl_assertion_failed
_021F5DB8:
	mov r0, r6
	bl goastrdup
	mov r3, #0
	mov r2, #1
	str r0, [sp]
	add r0, sp, #0
	mov r1, r4
	str r5, [sp, #4]
	str r3, [sp, #0xc]
	str r2, [sp, #8]
	bl DoSet
	ldr r0, [r7, #0]
	add r1, sp, #0
	bl TableEnter
	mov r0, r7
	mov r1, r6
	bl DoFind
	bl DoGet
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F5E08: .word Unk_ov4_0221AF70
_021F5E0C: .word Unk_ov4_0221932C
_021F5E10: .word Unk_ov4_02219330
_021F5E14: .word Unk_ov4_02219310
	arm_func_end BucketNew

	arm_func_start BucketSet
BucketSet: ; 0x021F5E18
	stmfd sp!, {r4, lr}
	mov r4, r2
	bl DoFind
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r2, #0
	mov r1, r4
	str r2, [r0, #8]
	bl DoSet
	ldmia sp!, {r4, pc}
	arm_func_end BucketSet

	arm_func_start BucketAdd
BucketAdd: ; 0x021F5E44
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl DoFind
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _021F5E94
	bl DoGet
	ldr r1, [r5, #0]
	ldr r0, [r0, #0]
	add r0, r1, r0
	bl bint
	mov r1, r0
	mov r0, r4
	bl DoSet
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F5E94:
	cmp r1, #1
	bne _021F5EC4
	bl DoGet
	mov r3, r0
	ldmia r5, {r0, r1}
	ldmia r3, {r2, r3}
	bl _d_add
	bl bfloat
	mov r1, r0
	mov r0, r4
	bl DoSet
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F5EC4:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl BucketConcat
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end BucketAdd

	arm_func_start BucketSub
BucketSub: ; 0x021F5ED8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	bl DoFind
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _021F5F20
	bl DoGet
	ldr r1, [r0, #0]
	ldr r0, [r5, #0]
	sub r0, r1, r0
	bl bint
	mov r1, r0
	mov r0, r4
	bl DoSet
	ldmia sp!, {r3, r4, r5, pc}
_021F5F20:
	cmp r1, #1
	bne _021F5F54
	bl DoGet
	ldr ip, [r0]
	ldr r1, [r0, #4]
	mov r0, ip
	ldmia r5, {r2, r3}
	bl _dsub
	bl bfloat
	mov r1, r0
	mov r0, r4
	bl DoSet
	ldmia sp!, {r3, r4, r5, pc}
_021F5F54:
	bl DoGet
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end BucketSub

	arm_func_start BucketMult
BucketMult: ; 0x021F5F5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	bl DoFind
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _021F5FA4
	bl DoGet
	ldr r1, [r5, #0]
	ldr r0, [r0, #0]
	mul r0, r1, r0
	bl bint
	mov r1, r0
	mov r0, r4
	bl DoSet
	ldmia sp!, {r3, r4, r5, pc}
_021F5FA4:
	cmp r1, #1
	bne _021F5FD4
	bl DoGet
	mov r3, r0
	ldmia r5, {r0, r1}
	ldmia r3, {r2, r3}
	bl _d_mul
	bl bfloat
	mov r1, r0
	mov r0, r4
	bl DoSet
	ldmia sp!, {r3, r4, r5, pc}
_021F5FD4:
	bl DoGet
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end BucketMult

	arm_func_start BucketDiv
BucketDiv: ; 0x021F5FDC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	bl DoFind
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _021F6024
	bl DoGet
	ldr r0, [r0, #0]
	ldr r1, [r5, #0]
	bl _s32_div_f
	bl bint
	mov r1, r0
	mov r0, r4
	bl DoSet
	ldmia sp!, {r3, r4, r5, pc}
_021F6024:
	cmp r1, #1
	bne _021F6058
	bl DoGet
	ldr ip, [r0]
	ldr r1, [r0, #4]
	mov r0, ip
	ldmia r5, {r2, r3}
	bl _d_div
	bl bfloat
	mov r1, r0
	mov r0, r4
	bl DoSet
	ldmia sp!, {r3, r4, r5, pc}
_021F6058:
	bl DoGet
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end BucketDiv

	arm_func_start BucketConcat
BucketConcat: ; 0x021F6060
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r2
	bl DoFind
	movs r6, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #4]
	cmp r0, #2
	beq _021F6098
	ldr r0, _021F60F8 ; =0x0221933C
	ldr r1, _021F60FC ; =0x02219330
	ldr r2, _021F6100 ; =0x0221931C
	mov r3, #0xd1
	bl __msl_assertion_failed
_021F6098:
	mov r0, r6
	bl DoGet
	mov r5, r0
	bl strlen
	mov r4, r0
	mov r0, r7
	bl strlen
	add r0, r4, r0
	add r0, r0, #1
	bl DWCi_GsMalloc
	mov r4, r0
	mov r1, r5
	bl strcpy
	mov r0, r4
	mov r1, r7
	bl strcat
	mov r0, r6
	mov r1, r4
	bl DoSet
	mov r0, r4
	bl DWCi_GsFree
	mov r0, r6
	bl DoGet
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F60F8: .word Unk_ov4_0221933C
_021F60FC: .word Unk_ov4_02219330
_021F6100: .word Unk_ov4_0221931C
	arm_func_end BucketConcat

	arm_func_start BucketAvg
BucketAvg: ; 0x021F6104
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r2
	bl DoFind
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _021F615C
	bl DoGet
	ldr r1, [r4, #8]
	add r1, r1, #1
	str r1, [r4, #8]
	ldr r2, [r7, #0]
	ldr r0, [r0, #0]
	mla r0, r1, r0, r2
	bl _s32_div_f
	bl bint
	mov r1, r0
	mov r0, r4
	bl DoSet
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F615C:
	cmp r1, #1
	bne _021F61D0
	bl DoGet
	ldr r1, [r4, #8]
	mov r5, r0
	add r6, r1, #1
	mov r0, r6
	str r6, [r4, #8]
	bl _d_itod
	ldmia r5, {r2, r3}
	bl _d_mul
	mov r2, r0
	mov r3, r1
	ldmia r7, {r0, r1}
	bl _d_add
	mov r5, r0
	mov r0, r6
	mov r6, r1
	bl _d_itod
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r6
	bl _d_div
	bl bfloat
	mov r1, r0
	mov r0, r4
	bl DoSet
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F61D0:
	bl DoGet
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end BucketAvg

	arm_func_start bint
bint: ; 0x021F61D8
	ldr r1, _021F61E8 ; =0x0221AF70
	str r0, [r1, #0]
	ldr r0, _021F61EC ; =0x0221AF70
	bx lr
	; .align 2, 0
_021F61E8: .word Unk_ov4_0221AF70
_021F61EC: .word Unk_ov4_0221AF70
	arm_func_end bint

	arm_func_start bfloat
bfloat: ; 0x021F61F0
	ldr r2, _021F6204 ; =0x0221AF70
	str r0, [r2, #8]
	ldr r0, _021F6208 ; =0x0221AF78
	str r1, [r2, #0xc]
	bx lr
	; .align 2, 0
_021F6204: .word Unk_ov4_0221AF70
_021F6208: .word Unk_ov4_0221AF78
	arm_func_end bfloat

	arm_func_start stripchars
stripchars: ; 0x021F620C
	ldrsb r3, [r0]
	mov r2, r0
	cmp r3, #0
	beq _021F6234
	mov r1, #0x2f
_021F6220:
	cmp r3, #0x5c
	streqb r1, [r0]
	ldrsb r3, [r0, #1]!
	cmp r3, #0
	bne _021F6220
_021F6234:
	mov r0, r2
	bx lr
	arm_func_end stripchars

	arm_func_start DoSet
DoSet: ; 0x021F623C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, r1
	cmp r0, #0
	ldreq r0, [r4]
	streq r0, [r5, #0xc]
	beq _021F62AC
	cmp r0, #1
	bne _021F6278
	ldr r1, [r4, #0]
	ldr r0, [r4, #4]
	str r1, [r5, #0xc]
	str r0, [r5, #0x10]
	b _021F62AC
_021F6278:
	cmp r0, #2
	bne _021F62AC
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021F6290
	bl DWCi_GsFree
_021F6290:
	cmp r4, #0
	moveq r0, #0
	beq _021F62A8
	mov r0, r4
	bl goastrdup
	bl stripchars
_021F62A8:
	str r0, [r5, #0xc]
_021F62AC:
	mov r0, r5
	bl DoGet
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end DoSet

	arm_func_start DoGet
DoGet: ; 0x021F62B8
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r1, [r0, #4]
	cmp r1, #2
	ldreq r0, [r0, #0xc]
	addne r0, r0, #0xc
	bx lr
	arm_func_end DoGet

	arm_func_start DoFind
DoFind: ; 0x021F62D8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	movs r5, r0
	ldreq r0, _021F6324 ; =0x0221AF70
	mov r4, r1
	ldreq r5, [r0, #4]
	cmp r5, #0
	bne _021F630C
	ldr r0, _021F6328 ; =0x0221932C
	ldr r1, _021F632C ; =0x02219330
	ldr r2, _021F6330 ; =0x02219308
	ldr r3, _021F6334 ; =0x00000153
	bl __msl_assertion_failed
_021F630C:
	str r4, [sp]
	ldr r0, [r5, #0]
	add r1, sp, #0
	bl TableLookup
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_021F6324: .word Unk_ov4_0221AF70
_021F6328: .word Unk_ov4_0221932C
_021F632C: .word Unk_ov4_02219330
_021F6330: .word Unk_ov4_02219308
_021F6334: .word 0x00000153
	arm_func_end DoFind

	.data


	.global Unk_ov4_02219308
Unk_ov4_02219308: ; 0x02219308
	.ascii "DoFind"
	.space 0x2

	.global Unk_ov4_02219310
Unk_ov4_02219310: ; 0x02219310
	.asciz "BucketNew"
	.space 0x2

	.global Unk_ov4_0221931C
Unk_ov4_0221931C: ; 0x0221931C
	.ascii "BucketConcat"
	.space 0x4

	.global Unk_ov4_0221932C
Unk_ov4_0221932C: ; 0x0221932C
	.asciz "set"

	.global Unk_ov4_02219330
Unk_ov4_02219330: ; 0x02219330
	.asciz "gbucket.c"
	.space 0x2

	.global Unk_ov4_0221933C
Unk_ov4_0221933C: ; 0x0221933C
	.ascii "pbucket->type == bt_string"
	.space 0x2



	.bss


	.global Unk_ov4_0221AF70
Unk_ov4_0221AF70: ; 0x0221AF70
	.space 0x4

	.global g_buckets
g_buckets: ; 0x0221AF74
	.space 0x4

	.global Unk_ov4_0221AF78
Unk_ov4_0221AF78: ; 0x0221AF78
	.space 0x8

